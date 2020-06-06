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
	<24.753637, 35.008434, 34.953800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359016, 34.945267, 34.970646>,  <24.122244, 34.907368, 34.980755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359016, 34.945267, 34.970646>,  <24.753637, 35.008434, 34.953800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.359016, 34.945267, 34.970646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074135, 0.662042, 0.745791,
		-0.145653, 0.732641, -0.664847,
		-0.986554, -0.157916, 0.042114,
		24.063049, 34.897892, 34.983280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498594, 35.101845, 35.028049>,  <24.753637, 35.008434, 34.953800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498594, 35.101845, 35.028049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881861, 35.216259, 35.024120>,  <26.111820, 35.284908, 35.021763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881861, 35.216259, 35.024120>,  <25.498594, 35.101845, 35.028049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881861, 35.216259, 35.024120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262613, 0.892311, 0.367174,
		0.113792, -0.349234, 0.930101,
		0.958168, 0.286038, -0.009825,
		26.169312, 35.302071, 35.021172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615803, 35.636608, 35.604752>,  <25.498594, 35.101845, 35.028049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615803, 35.636608, 35.604752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888277, 35.702263, 35.319363>,  <26.051762, 35.741657, 35.148129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888277, 35.702263, 35.319363>,  <25.615803, 35.636608, 35.604752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888277, 35.702263, 35.319363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188514, 0.981007, 0.045701,
		0.707424, 0.103369, 0.699190,
		0.681185, 0.164137, -0.713474,
		26.092632, 35.751503, 35.105320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138023, 36.119335, 35.766846>,  <25.615803, 35.636608, 35.604752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138023, 36.119335, 35.766846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127911, 36.137287, 35.367378>,  <26.121843, 36.148060, 35.127697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127911, 36.137287, 35.367378>,  <26.138023, 36.119335, 35.766846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127911, 36.137287, 35.367378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156223, 0.986541, 0.048294,
		0.987398, 0.157237, -0.017932,
		-0.025284, 0.044884, -0.998672,
		26.120325, 36.150753, 35.067776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529715, 36.740974, 35.633347>,  <26.138023, 36.119335, 35.766846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529715, 36.740974, 35.633347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314730, 36.636425, 35.312645>,  <26.185738, 36.573696, 35.120224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314730, 36.636425, 35.312645>,  <26.529715, 36.740974, 35.633347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314730, 36.636425, 35.312645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248056, 0.957692, -0.145927,
		0.805979, 0.120450, -0.579560,
		-0.537463, -0.261378, -0.801757,
		26.153490, 36.558010, 35.072117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857832, 37.145611, 35.048756>,  <26.529715, 36.740974, 35.633347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857832, 37.145611, 35.048756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471298, 37.155876, 34.946354>,  <26.239378, 37.162033, 34.884914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471298, 37.155876, 34.946354>,  <26.857832, 37.145611, 35.048756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471298, 37.155876, 34.946354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019584, 0.999463, 0.026256,
		0.256538, 0.020358, -0.966320,
		-0.966336, 0.025660, -0.256001,
		26.181398, 37.163574, 34.869553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770058, 37.723465, 34.446442>,  <26.857832, 37.145611, 35.048756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770058, 37.723465, 34.446442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439905, 37.684109, 34.668816>,  <26.241814, 37.660496, 34.802242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439905, 37.684109, 34.668816>,  <26.770058, 37.723465, 34.446442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439905, 37.684109, 34.668816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092363, 0.994963, 0.038956,
		-0.556970, -0.019195, -0.830311,
		-0.825381, -0.098387, 0.555938,
		26.192291, 37.654594, 34.835598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139849, 37.920128, 34.086308>,  <26.770058, 37.723465, 34.446442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139849, 37.920128, 34.086308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129395, 37.997734, 34.478569>,  <26.123121, 38.044296, 34.713924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129395, 37.997734, 34.478569>,  <26.139849, 37.920128, 34.086308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129395, 37.997734, 34.478569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159358, 0.967633, -0.195683,
		-0.986875, -0.161389, 0.005627,
		-0.026136, 0.194011, 0.980651,
		26.121553, 38.055939, 34.772766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834257, 38.452946, 34.083679>,  <26.139849, 37.920128, 34.086308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834257, 38.452946, 34.083679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988007, 38.476086, 34.452225>,  <26.080256, 38.489971, 34.673351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988007, 38.476086, 34.452225>,  <25.834257, 38.452946, 34.083679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988007, 38.476086, 34.452225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024752, 0.998322, -0.052358,
		-0.922846, -0.002680, 0.385160,
		0.384373, 0.057852, 0.921363,
		26.103319, 38.493443, 34.728634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485430, 38.990635, 34.412815>,  <25.834257, 38.452946, 34.083679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485430, 38.990635, 34.412815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798426, 38.970146, 34.661034>,  <25.986223, 38.957851, 34.809967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798426, 38.970146, 34.661034>,  <25.485430, 38.990635, 34.412815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798426, 38.970146, 34.661034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045607, 0.989219, 0.139160,
		-0.620989, -0.137193, 0.771720,
		0.782492, -0.051221, 0.620551,
		26.033173, 38.954781, 34.847198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299614, 39.311596, 35.020042>,  <25.485430, 38.990635, 34.412815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299614, 39.311596, 35.020042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699184, 39.330112, 35.020172>,  <25.938927, 39.341221, 35.020248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699184, 39.330112, 35.020172>,  <25.299614, 39.311596, 35.020042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699184, 39.330112, 35.020172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045188, 0.973566, 0.223891,
		0.010049, -0.223666, 0.974614,
		0.998928, 0.046291, 0.000324,
		25.998863, 39.343998, 35.020267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594503, 39.647141, 35.766506>,  <25.299614, 39.311596, 35.020042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594503, 39.647141, 35.766506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842154, 39.692074, 35.455620>,  <25.990744, 39.719032, 35.269089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842154, 39.692074, 35.455620>,  <25.594503, 39.647141, 35.766506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842154, 39.692074, 35.455620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177098, 0.944247, 0.277550,
		0.765064, -0.309482, 0.564711,
		0.619123, 0.112334, -0.777218,
		26.027891, 39.725773, 35.222454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267437, 39.859165, 35.966839>,  <25.594503, 39.647141, 35.766506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267437, 39.859165, 35.966839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171774, 39.990440, 35.601303>,  <26.114376, 40.069206, 35.381981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171774, 39.990440, 35.601303>,  <26.267437, 39.859165, 35.966839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171774, 39.990440, 35.601303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336182, 0.910925, 0.239159,
		0.910925, -0.250018, -0.328187,
		-0.239159, 0.328187, -0.913836,
		26.100025, 40.088898, 35.327152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866695, 40.258343, 35.634254>,  <26.267437, 39.859165, 35.966839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866695, 40.258343, 35.634254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514277, 40.385799, 35.494415>,  <26.302824, 40.462273, 35.410511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514277, 40.385799, 35.494415>,  <26.866695, 40.258343, 35.634254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514277, 40.385799, 35.494415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246880, 0.940180, 0.234757,
		0.403489, 0.120523, -0.907012,
		-0.881048, 0.318645, -0.349598,
		26.249962, 40.481392, 35.389534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692368, 40.371178, 34.931366>,  <26.866695, 40.258343, 35.634254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692368, 40.371178, 34.931366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843834, 40.628578, 34.665279>,  <26.934713, 40.783020, 34.505627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843834, 40.628578, 34.665279>,  <26.692368, 40.371178, 34.931366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843834, 40.628578, 34.665279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900768, -0.091082, 0.424643,
		0.212670, -0.760005, -0.614136,
		0.378667, 0.643503, -0.665218,
		26.957434, 40.821629, 34.465714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032124, 39.754028, 34.498348>,  <26.692368, 40.371178, 34.931366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032124, 39.754028, 34.498348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743196, 39.772476, 34.774357>,  <26.569839, 39.783543, 34.939960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743196, 39.772476, 34.774357>,  <27.032124, 39.754028, 34.498348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743196, 39.772476, 34.774357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189326, -0.972842, -0.133170,
		0.665140, -0.226830, 0.711433,
		-0.722318, 0.046116, 0.690021,
		26.526501, 39.786312, 34.981361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245586, 39.273781, 34.998447>,  <27.032124, 39.754028, 34.498348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245586, 39.273781, 34.998447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848724, 39.305290, 35.037281>,  <26.610607, 39.324196, 35.060581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848724, 39.305290, 35.037281>,  <27.245586, 39.273781, 34.998447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848724, 39.305290, 35.037281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056727, -0.975652, 0.211861,
		0.111412, 0.204691, 0.972466,
		-0.992154, 0.078769, 0.097088,
		26.551079, 39.328922, 35.066406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029232, 38.796017, 35.625423>,  <27.245586, 39.273781, 34.998447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029232, 38.796017, 35.625423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706486, 38.857029, 35.397141>,  <26.512838, 38.893639, 35.260170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706486, 38.857029, 35.397141>,  <27.029232, 38.796017, 35.625423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706486, 38.857029, 35.397141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205951, -0.978110, 0.029750,
		-0.553673, 0.141542, 0.820617,
		-0.806865, 0.152535, -0.570704,
		26.464426, 38.902790, 35.225929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480080, 38.575054, 35.971794>,  <27.029232, 38.796017, 35.625423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480080, 38.575054, 35.971794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383175, 38.554047, 35.584278>,  <26.325031, 38.541443, 35.351768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383175, 38.554047, 35.584278>,  <26.480080, 38.575054, 35.971794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383175, 38.554047, 35.584278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275377, -0.953746, 0.120570,
		-0.930310, 0.295991, 0.216595,
		-0.242264, -0.052523, -0.968788,
		26.310495, 38.538288, 35.293640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890612, 38.321320, 36.007427>,  <26.480080, 38.575054, 35.971794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890612, 38.321320, 36.007427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011097, 38.228794, 35.637398>,  <26.083387, 38.173279, 35.415379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011097, 38.228794, 35.637398>,  <25.890612, 38.321320, 36.007427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011097, 38.228794, 35.637398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284529, -0.947740, 0.144333,
		-0.910118, 0.219737, -0.351285,
		0.301211, -0.231310, -0.925077,
		26.101460, 38.159401, 35.359875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527784, 37.699547, 35.939770>,  <25.890612, 38.321320, 36.007427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527784, 37.699547, 35.939770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678942, 37.820587, 35.589767>,  <25.769636, 37.893211, 35.379768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678942, 37.820587, 35.589767>,  <25.527784, 37.699547, 35.939770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678942, 37.820587, 35.589767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105282, -0.924905, -0.365330,
		-0.919843, 0.230178, -0.317659,
		0.377895, 0.302603, -0.875001,
		25.792311, 37.911369, 35.327267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054836, 37.557487, 35.398655>,  <25.527784, 37.699547, 35.939770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054836, 37.557487, 35.398655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423483, 37.576054, 35.244526>,  <25.644670, 37.587193, 35.152050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423483, 37.576054, 35.244526>,  <25.054836, 37.557487, 35.398655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423483, 37.576054, 35.244526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071494, -0.955528, -0.286104,
		-0.381462, 0.291226, -0.877311,
		0.921616, 0.046415, -0.385318,
		25.699968, 37.589977, 35.128929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907444, 37.124786, 34.801151>,  <25.054836, 37.557487, 35.398655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907444, 37.124786, 34.801151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304247, 37.166267, 34.829906>,  <25.542328, 37.191158, 34.847160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304247, 37.166267, 34.829906>,  <24.907444, 37.124786, 34.801151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304247, 37.166267, 34.829906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123627, -0.912870, -0.389082,
		0.025271, 0.394859, -0.918394,
		0.992007, 0.103705, 0.071884,
		25.601849, 37.197380, 34.851471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149246, 36.848099, 34.208431>,  <24.907444, 37.124786, 34.801151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149246, 36.848099, 34.208431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458786, 36.842949, 34.461727>,  <25.644510, 36.839859, 34.613705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458786, 36.842949, 34.461727>,  <25.149246, 36.848099, 34.208431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458786, 36.842949, 34.461727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146028, -0.969232, -0.198156,
		0.616308, 0.245814, -0.748158,
		0.773848, -0.012873, 0.633241,
		25.690941, 36.839088, 34.651699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440248, 36.311001, 34.009995>,  <25.149246, 36.848099, 34.208431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440248, 36.311001, 34.009995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670509, 36.382397, 34.329185>,  <25.808666, 36.425236, 34.520699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670509, 36.382397, 34.329185>,  <25.440248, 36.311001, 34.009995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670509, 36.382397, 34.329185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400900, -0.912154, -0.085177,
		0.712675, 0.368942, -0.596638,
		0.575651, 0.178488, 0.797977,
		25.843204, 36.435944, 34.568577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146364, 36.276630, 33.761497>,  <25.440248, 36.311001, 34.009995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146364, 36.276630, 33.761497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123663, 36.223175, 34.157257>,  <26.110043, 36.191101, 34.394714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123663, 36.223175, 34.157257>,  <26.146364, 36.276630, 33.761497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123663, 36.223175, 34.157257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284619, -0.952044, -0.112269,
		0.956959, 0.275232, 0.092069,
		-0.056754, -0.133642, 0.989403,
		26.106636, 36.183083, 34.454079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686892, 35.859379, 33.958603>,  <26.146364, 36.276630, 33.761497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686892, 35.859379, 33.958603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438894, 35.805111, 34.267719>,  <26.290096, 35.772549, 34.453190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438894, 35.805111, 34.267719>,  <26.686892, 35.859379, 33.958603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438894, 35.805111, 34.267719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118169, -0.989848, -0.078971,
		0.775656, 0.042358, 0.629733,
		-0.619995, -0.135669, 0.772787,
		26.252895, 35.764412, 34.499554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044233, 35.382008, 34.389812>,  <26.686892, 35.859379, 33.958603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044233, 35.382008, 34.389812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658638, 35.361473, 34.494190>,  <26.427280, 35.349152, 34.556816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658638, 35.361473, 34.494190>,  <27.044233, 35.382008, 34.389812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658638, 35.361473, 34.494190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042391, -0.998308, -0.039794,
		0.262544, -0.027299, 0.964534,
		-0.963988, -0.051336, 0.260943,
		26.369442, 35.346073, 34.572472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832920, 34.956459, 35.013428>,  <27.044233, 35.382008, 34.389812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832920, 34.956459, 35.013428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582605, 34.931019, 34.702469>,  <26.432417, 34.915756, 34.515896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582605, 34.931019, 34.702469>,  <26.832920, 34.956459, 35.013428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582605, 34.931019, 34.702469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134404, -0.990554, -0.027154,
		-0.768325, -0.121478, 0.628427,
		-0.625789, -0.063601, -0.777395,
		26.394869, 34.911938, 34.469250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457279, 34.528236, 35.097660>,  <26.832920, 34.956459, 35.013428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457279, 34.528236, 35.097660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443083, 34.926975, 35.126022>,  <27.434565, 35.166218, 35.143040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443083, 34.926975, 35.126022>,  <27.457279, 34.528236, 35.097660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443083, 34.926975, 35.126022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782957, -0.016359, 0.621861,
		0.621063, 0.077586, -0.779911,
		-0.035489, 0.996851, 0.070906,
		27.432436, 35.226032, 35.147293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053885, 34.900986, 34.877533>,  <27.457279, 34.528236, 35.097660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053885, 34.900986, 34.877533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907877, 35.156605, 35.148350>,  <27.820272, 35.309975, 35.310841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907877, 35.156605, 35.148350>,  <28.053885, 34.900986, 34.877533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907877, 35.156605, 35.148350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844561, -0.078727, 0.529641,
		0.391766, 0.765130, -0.510976,
		-0.365017, 0.639045, 0.677041,
		27.798372, 35.348320, 35.351463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371433, 35.247704, 34.204563>,  <28.053885, 34.900986, 34.877533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371433, 35.247704, 34.204563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762136, 35.319729, 34.251080>,  <28.996559, 35.362942, 34.278988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762136, 35.319729, 34.251080>,  <28.371433, 35.247704, 34.204563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762136, 35.319729, 34.251080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213264, 0.761839, 0.611653,
		0.021538, -0.622237, 0.782532,
		0.976757, 0.180060, 0.116292,
		29.055164, 35.373749, 34.285969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418453, 35.518616, 34.893612>,  <28.371433, 35.247704, 34.204563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418453, 35.518616, 34.893612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789869, 35.575851, 34.756592>,  <29.012718, 35.610195, 34.674381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789869, 35.575851, 34.756592>,  <28.418453, 35.518616, 34.893612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789869, 35.575851, 34.756592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162292, 0.673424, 0.721222,
		0.333882, -0.725276, 0.602078,
		0.928539, 0.143090, -0.342551,
		29.068430, 35.618778, 34.653828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911795, 35.465076, 35.479164>,  <28.418453, 35.518616, 34.893612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911795, 35.465076, 35.479164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083815, 35.681480, 35.190063>,  <29.187027, 35.811321, 35.016602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083815, 35.681480, 35.190063>,  <28.911795, 35.465076, 35.479164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083815, 35.681480, 35.190063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036111, 0.810229, 0.585001,
		0.902084, -0.225479, 0.367973,
		0.430048, 0.541008, -0.722751,
		29.212830, 35.843784, 34.973240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279203, 35.911819, 35.825863>,  <28.911795, 35.465076, 35.479164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279203, 35.911819, 35.825863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217951, 36.046730, 35.454315>,  <29.181200, 36.127678, 35.231388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217951, 36.046730, 35.454315>,  <29.279203, 35.911819, 35.825863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217951, 36.046730, 35.454315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202997, 0.930643, 0.304460,
		0.967131, -0.141935, -0.210978,
		-0.153131, 0.337281, -0.928866,
		29.172010, 36.147915, 35.175655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765297, 35.428722, 35.535126>,  <29.279203, 35.911819, 35.825863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765297, 35.428722, 35.535126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716549, 35.692017, 35.237972>,  <29.687300, 35.849995, 35.059681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716549, 35.692017, 35.237972>,  <29.765297, 35.428722, 35.535126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716549, 35.692017, 35.237972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055284, 0.742795, 0.667232,
		0.991005, 0.122386, -0.054136,
		-0.121872, 0.658238, -0.742880,
		29.679987, 35.889488, 35.015110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097811, 36.056583, 35.695858>,  <29.765297, 35.428722, 35.535126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097811, 36.056583, 35.695858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892857, 36.224045, 35.395943>,  <29.769884, 36.324524, 35.215992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892857, 36.224045, 35.395943>,  <30.097811, 36.056583, 35.695858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892857, 36.224045, 35.395943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133049, 0.823870, 0.550941,
		0.848386, 0.382053, -0.366438,
		-0.512386, 0.418656, -0.749792,
		29.739141, 36.349640, 35.171005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378511, 36.714333, 35.621243>,  <30.097811, 36.056583, 35.695858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378511, 36.714333, 35.621243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031767, 36.736233, 35.423027>,  <29.823721, 36.749374, 35.304096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031767, 36.736233, 35.423027>,  <30.378511, 36.714333, 35.621243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031767, 36.736233, 35.423027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190405, 0.882250, 0.430560,
		0.460761, 0.467587, -0.754361,
		-0.866859, 0.054751, -0.495537,
		29.771709, 36.752659, 35.274364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406149, 37.396809, 35.294697>,  <30.378511, 36.714333, 35.621243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406149, 37.396809, 35.294697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012003, 37.329124, 35.302887>,  <29.775515, 37.288513, 35.307800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012003, 37.329124, 35.302887>,  <30.406149, 37.396809, 35.294697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012003, 37.329124, 35.302887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157696, 0.950638, 0.267243,
		-0.064683, 0.260104, -0.963412,
		-0.985367, -0.169212, 0.020473,
		29.716393, 37.278362, 35.309029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772541, 37.742420, 35.599335>,  <30.406149, 37.396809, 35.294697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772541, 37.742420, 35.599335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994829, 37.934975, 35.870464>,  <30.128202, 38.050507, 36.033142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994829, 37.934975, 35.870464>,  <29.772541, 37.742420, 35.599335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994829, 37.934975, 35.870464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608651, -0.319805, 0.726133,
		0.566322, -0.816082, 0.115276,
		0.555718, 0.481388, 0.677822,
		30.161545, 38.079391, 36.073811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060284, 37.225216, 36.140663>,  <29.772541, 37.742420, 35.599335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060284, 37.225216, 36.140663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948923, 37.592140, 36.254528>,  <29.882107, 37.812294, 36.322849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948923, 37.592140, 36.254528>,  <30.060284, 37.225216, 36.140663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948923, 37.592140, 36.254528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659511, -0.398044, 0.637657,
		0.698239, -0.010215, 0.715792,
		-0.278403, 0.917310, 0.284667,
		29.865402, 37.867332, 36.339928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292873, 37.171082, 36.322403>,  <30.060284, 37.225216, 36.140663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292873, 37.171082, 36.322403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186956, 37.471951, 36.081032>,  <29.123407, 37.652470, 35.936207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186956, 37.471951, 36.081032>,  <29.292873, 37.171082, 36.322403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186956, 37.471951, 36.081032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047227, -0.614901, -0.787189,
		-0.963149, -0.236939, 0.127297,
		-0.264791, 0.752168, -0.603431,
		29.107519, 37.697601, 35.900002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622087, 37.078465, 35.968037>,  <29.292873, 37.171082, 36.322403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622087, 37.078465, 35.968037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875851, 37.292271, 35.744671>,  <29.028109, 37.420555, 35.610653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875851, 37.292271, 35.744671>,  <28.622087, 37.078465, 35.968037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875851, 37.292271, 35.744671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084846, -0.766182, -0.636998,
		-0.768327, 0.356739, -0.531424,
		0.634409, 0.534512, -0.558410,
		29.066174, 37.452625, 35.577148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518877, 36.842945, 35.330540>,  <28.622087, 37.078465, 35.968037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518877, 36.842945, 35.330540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876322, 37.010838, 35.266933>,  <29.090788, 37.111572, 35.228771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876322, 37.010838, 35.266933>,  <28.518877, 36.842945, 35.330540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876322, 37.010838, 35.266933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277890, -0.795584, -0.538352,
		-0.352474, 0.436888, -0.827582,
		0.893610, 0.419732, -0.159016,
		29.144405, 37.136757, 35.219227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647848, 36.840405, 34.657879>,  <28.518877, 36.842945, 35.330540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647848, 36.840405, 34.657879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004827, 36.848476, 34.838158>,  <29.219015, 36.853317, 34.946323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004827, 36.848476, 34.838158>,  <28.647848, 36.840405, 34.657879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004827, 36.848476, 34.838158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302814, -0.767318, -0.565267,
		0.334423, 0.640949, -0.690902,
		0.892449, 0.020176, 0.450697,
		29.272562, 36.854530, 34.973366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106762, 36.912441, 34.139496>,  <28.647848, 36.840405, 34.657879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106762, 36.912441, 34.139496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259037, 36.714321, 34.451843>,  <29.350401, 36.595448, 34.639252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259037, 36.714321, 34.451843>,  <29.106762, 36.912441, 34.139496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259037, 36.714321, 34.451843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117944, -0.811548, -0.572258,
		0.917151, 0.309950, -0.250528,
		0.380687, -0.495299, 0.780869,
		29.373243, 36.565731, 34.686104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727383, 36.647400, 34.052670>,  <29.106762, 36.912441, 34.139496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727383, 36.647400, 34.052670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581066, 36.406612, 34.336594>,  <29.493277, 36.262142, 34.506947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581066, 36.406612, 34.336594>,  <29.727383, 36.647400, 34.052670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581066, 36.406612, 34.336594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283848, -0.798488, -0.530892,
		0.886356, 0.007283, 0.462948,
		-0.365792, -0.601967, 0.709812,
		29.471329, 36.226021, 34.549538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147333, 36.059219, 34.093483>,  <29.727383, 36.647400, 34.052670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147333, 36.059219, 34.093483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815601, 35.917152, 34.266029>,  <29.616562, 35.831913, 34.369556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815601, 35.917152, 34.266029>,  <30.147333, 36.059219, 34.093483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815601, 35.917152, 34.266029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186346, -0.903600, -0.385722,
		0.526775, -0.239507, 0.815564,
		-0.829327, -0.355166, 0.431362,
		29.566803, 35.810604, 34.395439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326696, 35.375271, 34.386070>,  <30.147333, 36.059219, 34.093483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326696, 35.375271, 34.386070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931860, 35.399120, 34.326607>,  <29.694958, 35.413429, 34.290928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931860, 35.399120, 34.326607>,  <30.326696, 35.375271, 34.386070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931860, 35.399120, 34.326607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000054, -0.928010, -0.372556,
		-0.160166, -0.367754, 0.916026,
		-0.987090, 0.059622, -0.148656,
		29.635733, 35.417007, 34.282009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016335, 34.768257, 34.587227>,  <30.326696, 35.375271, 34.386070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016335, 34.768257, 34.587227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767399, 34.928329, 34.318142>,  <29.618038, 35.024372, 34.156689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767399, 34.928329, 34.318142>,  <30.016335, 34.768257, 34.587227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767399, 34.928329, 34.318142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068297, -0.828389, -0.555973,
		-0.779762, -0.391948, 0.488208,
		-0.622339, 0.400184, -0.672716,
		29.580696, 35.048386, 34.116325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461039, 34.250511, 34.470310>,  <30.016335, 34.768257, 34.587227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461039, 34.250511, 34.470310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534319, 34.495613, 34.162811>,  <29.578287, 34.642673, 33.978313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534319, 34.495613, 34.162811>,  <29.461039, 34.250511, 34.470310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534319, 34.495613, 34.162811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221512, -0.787598, -0.574998,
		-0.957795, -0.064947, -0.280021,
		0.183200, 0.612758, -0.768743,
		29.589279, 34.679440, 33.932190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647058, 34.020897, 33.777596>,  <29.461039, 34.250511, 34.470310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647058, 34.020897, 33.777596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928125, 34.003380, 33.493526>,  <30.096766, 33.992870, 33.323086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928125, 34.003380, 33.493526>,  <29.647058, 34.020897, 33.777596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928125, 34.003380, 33.493526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384509, 0.863182, 0.327216,
		0.598677, -0.502991, 0.623367,
		0.702666, -0.043794, -0.710171,
		30.138926, 33.990242, 33.280476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258989, 34.287395, 34.018600>,  <29.647058, 34.020897, 33.777596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258989, 34.287395, 34.018600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304646, 34.349220, 33.626053>,  <30.332039, 34.386314, 33.390526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304646, 34.349220, 33.626053>,  <30.258989, 34.287395, 34.018600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304646, 34.349220, 33.626053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421251, 0.887094, 0.188713,
		0.899733, -0.434942, 0.036144,
		0.114142, 0.154566, -0.981367,
		30.338888, 34.395592, 33.331642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913652, 34.540234, 33.905502>,  <30.258989, 34.287395, 34.018600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913652, 34.540234, 33.905502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690525, 34.665375, 33.598007>,  <30.556648, 34.740459, 33.413509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690525, 34.665375, 33.598007>,  <30.913652, 34.540234, 33.905502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690525, 34.665375, 33.598007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432197, 0.900235, 0.052753,
		0.708550, -0.302820, -0.637383,
		-0.557820, 0.312853, -0.768739,
		30.523178, 34.759232, 33.367386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272278, 35.095760, 33.631580>,  <30.913652, 34.540234, 33.905502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272278, 35.095760, 33.631580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895050, 35.162186, 33.516312>,  <30.668713, 35.202042, 33.447151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895050, 35.162186, 33.516312>,  <31.272278, 35.095760, 33.631580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895050, 35.162186, 33.516312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169377, 0.985458, 0.013583,
		0.286235, -0.036000, -0.957483,
		-0.943070, 0.166064, -0.288170,
		30.612129, 35.212006, 33.429859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062498, 35.379601, 32.890865>,  <31.272278, 35.095760, 33.631580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062498, 35.379601, 32.890865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814035, 35.501949, 33.179478>,  <30.664957, 35.575359, 33.352646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814035, 35.501949, 33.179478>,  <31.062498, 35.379601, 32.890865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814035, 35.501949, 33.179478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336972, 0.935475, -0.106475,
		-0.707539, 0.176997, -0.684149,
		-0.621159, 0.305874, 0.721528,
		30.627687, 35.593712, 33.395935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806068, 35.543018, 32.895599>,  <31.062498, 35.379601, 32.890865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806068, 35.543018, 32.895599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046715, 35.850185, 32.983566>,  <32.191101, 36.034485, 33.036346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046715, 35.850185, 32.983566>,  <31.806068, 35.543018, 32.895599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046715, 35.850185, 32.983566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380166, 0.033124, 0.924325,
		0.702520, -0.639693, 0.311863,
		0.601614, 0.767917, 0.219919,
		32.227200, 36.080559, 33.049541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199623, 35.425262, 33.444538>,  <31.806068, 35.543018, 32.895599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199623, 35.425262, 33.444538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132603, 35.818237, 33.411671>,  <32.092388, 36.054020, 33.391949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132603, 35.818237, 33.411671>,  <32.199623, 35.425262, 33.444538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132603, 35.818237, 33.411671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402066, 0.008004, 0.915576,
		0.900149, 0.186446, 0.393662,
		-0.167554, 0.982433, -0.082168,
		32.082336, 36.112968, 33.387020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467041, 35.717350, 34.066051>,  <32.199623, 35.425262, 33.444538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467041, 35.717350, 34.066051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175026, 35.913975, 33.876141>,  <31.999815, 36.031948, 33.762196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175026, 35.913975, 33.876141>,  <32.467041, 35.717350, 34.066051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175026, 35.913975, 33.876141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551868, -0.014274, 0.833809,
		0.403089, 0.870728, 0.281696,
		-0.730042, 0.491558, -0.474773,
		31.956013, 36.061443, 33.733707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257668, 36.367771, 34.449646>,  <32.467041, 35.717350, 34.066051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257668, 36.367771, 34.449646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964283, 36.212502, 34.226452>,  <31.788252, 36.119339, 34.092533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964283, 36.212502, 34.226452>,  <32.257668, 36.367771, 34.449646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964283, 36.212502, 34.226452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663827, 0.232537, 0.710817,
		-0.146166, 0.891767, -0.428237,
		-0.733464, -0.388173, -0.557990,
		31.744244, 36.096050, 34.059055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872026, 36.861229, 33.974407>,  <32.257668, 36.367771, 34.449646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872026, 36.861229, 33.974407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505508, 36.973324, 34.088856>,  <31.285597, 37.040581, 34.157524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505508, 36.973324, 34.088856>,  <31.872026, 36.861229, 33.974407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505508, 36.973324, 34.088856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283981, 0.049131, -0.957570,
		-0.282408, -0.958671, 0.034565,
		-0.916297, 0.280241, 0.286120,
		31.230619, 37.057396, 34.174690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349483, 37.202332, 33.505634>,  <31.872026, 36.861229, 33.974407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349483, 37.202332, 33.505634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653633, 36.987301, 33.651428>,  <32.836124, 36.858284, 33.738903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653633, 36.987301, 33.651428>,  <32.349483, 37.202332, 33.505634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653633, 36.987301, 33.651428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402816, -0.049883, -0.913920,
		0.509480, 0.841740, 0.178614,
		0.760374, -0.537573, 0.364481,
		32.881744, 36.826031, 33.760773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868942, 37.517403, 33.298420>,  <32.349483, 37.202332, 33.505634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868942, 37.517403, 33.298420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969879, 37.130764, 33.316368>,  <33.030441, 36.898781, 33.327137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969879, 37.130764, 33.316368>,  <32.868942, 37.517403, 33.298420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969879, 37.130764, 33.316368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380942, 0.056609, -0.922864,
		0.889497, 0.249973, 0.382502,
		0.252345, -0.966596, 0.044871,
		33.045582, 36.840786, 33.329830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588554, 37.528721, 33.186810>,  <32.868942, 37.517403, 33.298420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588554, 37.528721, 33.186810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411289, 37.186157, 33.080856>,  <33.304932, 36.980618, 33.017284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411289, 37.186157, 33.080856>,  <33.588554, 37.528721, 33.186810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411289, 37.186157, 33.080856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537338, -0.017259, -0.843191,
		0.717548, -0.516004, 0.467831,
		-0.443164, -0.856413, -0.264884,
		33.278339, 36.929234, 33.001392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870617, 37.441414, 32.509266>,  <33.588554, 37.528721, 33.186810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870617, 37.441414, 32.509266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634785, 37.120438, 32.546101>,  <33.493286, 36.927853, 32.568203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634785, 37.120438, 32.546101>,  <33.870617, 37.441414, 32.509266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634785, 37.120438, 32.546101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254295, -0.292626, -0.921794,
		0.766637, -0.520051, 0.376584,
		-0.589578, -0.802445, 0.092091,
		33.457912, 36.879704, 32.573727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280655, 36.764515, 32.313889>,  <33.870617, 37.441414, 32.509266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280655, 36.764515, 32.313889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883488, 36.757511, 32.266899>,  <33.645187, 36.753307, 32.238705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883488, 36.757511, 32.266899>,  <34.280655, 36.764515, 32.313889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883488, 36.757511, 32.266899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117898, -0.025336, -0.992702,
		0.014409, -0.999526, 0.027221,
		-0.992921, -0.017513, -0.117477,
		33.585609, 36.752258, 32.231655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910667, 36.151600, 32.097260>,  <34.280655, 36.764515, 32.313889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910667, 36.151600, 32.097260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740700, 36.490101, 31.968704>,  <33.638718, 36.693203, 31.891571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740700, 36.490101, 31.968704>,  <33.910667, 36.151600, 32.097260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740700, 36.490101, 31.968704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143476, -0.287586, -0.946947,
		-0.893787, -0.448492, 0.000785,
		-0.424924, 0.846256, -0.321388,
		33.613224, 36.743977, 31.872288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199360, 36.217987, 31.762562>,  <33.910667, 36.151600, 32.097260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199360, 36.217987, 31.762562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475372, 36.469166, 31.618591>,  <33.640980, 36.619873, 31.532209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475372, 36.469166, 31.618591>,  <33.199360, 36.217987, 31.762562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475372, 36.469166, 31.618591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125138, -0.593304, -0.795192,
		-0.712882, 0.503665, -0.487977,
		0.690029, 0.627943, -0.359928,
		33.682381, 36.657547, 31.510612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005363, 36.423954, 31.064039>,  <33.199360, 36.217987, 31.762562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005363, 36.423954, 31.064039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399284, 36.452637, 31.127304>,  <33.635639, 36.469849, 31.165262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399284, 36.452637, 31.127304>,  <33.005363, 36.423954, 31.064039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399284, 36.452637, 31.127304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172597, -0.504695, -0.845868,
		0.019167, 0.860315, -0.509403,
		0.984806, 0.071709, 0.158161,
		33.694725, 36.474148, 31.174753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175270, 36.783131, 30.510736>,  <33.005363, 36.423954, 31.064039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175270, 36.783131, 30.510736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510391, 36.609589, 30.643314>,  <33.711464, 36.505463, 30.722862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510391, 36.609589, 30.643314>,  <33.175270, 36.783131, 30.510736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510391, 36.609589, 30.643314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093248, -0.484451, -0.869835,
		0.537951, 0.759657, -0.365418,
		0.837803, -0.433854, 0.331447,
		33.761734, 36.479431, 30.742748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612682, 36.666851, 29.877012>,  <33.175270, 36.783131, 30.510736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612682, 36.666851, 29.877012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789318, 36.433147, 30.149378>,  <33.895298, 36.292923, 30.312798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789318, 36.433147, 30.149378>,  <33.612682, 36.666851, 29.877012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789318, 36.433147, 30.149378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168412, -0.691449, -0.702521,
		0.881272, 0.424897, -0.206937,
		0.441585, -0.584261, 0.680912,
		33.921795, 36.257870, 30.353651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279945, 36.460846, 29.644760>,  <33.612682, 36.666851, 29.877012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279945, 36.460846, 29.644760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177597, 36.168762, 29.898159>,  <34.116188, 35.993511, 30.050200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177597, 36.168762, 29.898159>,  <34.279945, 36.460846, 29.644760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177597, 36.168762, 29.898159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174750, -0.679455, -0.712603,
		0.950786, -0.071628, 0.301455,
		-0.255868, -0.730212, 0.633499,
		34.100838, 35.949699, 30.088209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893898, 35.903198, 29.723278>,  <34.279945, 36.460846, 29.644760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893898, 35.903198, 29.723278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538803, 35.736732, 29.802002>,  <34.325748, 35.636852, 29.849237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538803, 35.736732, 29.802002>,  <34.893898, 35.903198, 29.723278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538803, 35.736732, 29.802002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214786, -0.752566, -0.622504,
		0.407177, -0.510346, 0.757465,
		-0.887735, -0.416162, 0.196812,
		34.272484, 35.611885, 29.861046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020782, 35.145195, 29.747410>,  <34.893898, 35.903198, 29.723278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020782, 35.145195, 29.747410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621956, 35.168564, 29.727655>,  <34.382660, 35.182583, 29.715803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621956, 35.168564, 29.727655>,  <35.020782, 35.145195, 29.747410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621956, 35.168564, 29.727655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025487, -0.862404, -0.505580,
		-0.072128, -0.502839, 0.861365,
		-0.997070, 0.058420, -0.049387,
		34.322834, 35.186089, 29.712839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799992, 34.579964, 29.993948>,  <35.020782, 35.145195, 29.747410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799992, 34.579964, 29.993948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465748, 34.681660, 29.799166>,  <34.265202, 34.742676, 29.682297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465748, 34.681660, 29.799166>,  <34.799992, 34.579964, 29.993948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465748, 34.681660, 29.799166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040365, -0.855641, -0.515993,
		-0.547841, -0.450824, 0.704718,
		-0.835608, 0.254237, -0.486953,
		34.215065, 34.757931, 29.653080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446339, 34.038567, 29.962650>,  <34.799992, 34.579964, 29.993948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446339, 34.038567, 29.962650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266438, 34.230824, 29.661530>,  <34.158497, 34.346176, 29.480858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266438, 34.230824, 29.661530>,  <34.446339, 34.038567, 29.962650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266438, 34.230824, 29.661530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085891, -0.815677, -0.572096,
		-0.889014, -0.321960, 0.325570,
		-0.449751, 0.480638, -0.752802,
		34.131512, 34.375015, 29.435690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006210, 33.529457, 29.737610>,  <34.446339, 34.038567, 29.962650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006210, 33.529457, 29.737610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062420, 33.811600, 29.459698>,  <34.096146, 33.980885, 29.292952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062420, 33.811600, 29.459698>,  <34.006210, 33.529457, 29.737610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062420, 33.811600, 29.459698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028733, -0.704352, -0.709269,
		-0.989660, 0.079710, -0.119249,
		0.140529, 0.705361, -0.694779,
		34.104580, 34.023209, 29.251265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479771, 33.385406, 29.231834>,  <34.006210, 33.529457, 29.737610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479771, 33.385406, 29.231834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765583, 33.593460, 29.044682>,  <33.937069, 33.718292, 28.932390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765583, 33.593460, 29.044682>,  <33.479771, 33.385406, 29.231834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765583, 33.593460, 29.044682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001481, -0.667650, -0.744474,
		-0.699605, 0.532641, -0.476284,
		0.714528, 0.520133, -0.467880,
		33.979942, 33.749500, 28.904318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267380, 33.242176, 28.570436>,  <33.479771, 33.385406, 29.231834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267380, 33.242176, 28.570436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633461, 33.394051, 28.516409>,  <33.853111, 33.485176, 28.483994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633461, 33.394051, 28.516409>,  <33.267380, 33.242176, 28.570436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633461, 33.394051, 28.516409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084640, -0.508784, -0.856723,
		-0.394006, 0.772643, -0.497777,
		0.915202, 0.379685, -0.135067,
		33.908020, 33.507957, 28.475889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213898, 33.561268, 27.899988>,  <33.267380, 33.242176, 28.570436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213898, 33.561268, 27.899988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593224, 33.464798, 27.982477>,  <33.820820, 33.406918, 28.031971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593224, 33.464798, 27.982477>,  <33.213898, 33.561268, 27.899988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593224, 33.464798, 27.982477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029347, -0.580450, -0.813767,
		0.315960, 0.777762, -0.543374,
		0.948318, -0.241172, 0.206224,
		33.877720, 33.392445, 28.044344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315243, 33.286057, 27.267351>,  <33.213898, 33.561268, 27.899988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315243, 33.286057, 27.267351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646034, 33.248920, 27.489159>,  <33.844509, 33.226639, 27.622244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646034, 33.248920, 27.489159>,  <33.315243, 33.286057, 27.267351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646034, 33.248920, 27.489159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454667, -0.469751, -0.756711,
		0.330743, 0.877903, -0.346259,
		0.826974, -0.092845, 0.554521,
		33.894127, 33.221066, 27.655516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872311, 33.614052, 27.044588>,  <33.315243, 33.286057, 27.267351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872311, 33.614052, 27.044588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003963, 33.287884, 27.235065>,  <34.082954, 33.092182, 27.349352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003963, 33.287884, 27.235065>,  <33.872311, 33.614052, 27.044588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003963, 33.287884, 27.235065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539131, -0.251743, -0.803718,
		0.775247, 0.521262, 0.356761,
		0.329136, -0.815421, 0.476192,
		34.102703, 33.043259, 27.377922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534847, 33.438831, 26.821800>,  <33.872311, 33.614052, 27.044588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534847, 33.438831, 26.821800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482933, 33.080391, 26.991581>,  <34.451786, 32.865326, 27.093449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482933, 33.080391, 26.991581>,  <34.534847, 33.438831, 26.821800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482933, 33.080391, 26.991581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477475, -0.431653, -0.765306,
		0.869007, 0.103340, 0.483887,
		-0.129785, -0.896101, 0.424452,
		34.443996, 32.811562, 27.118916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133320, 33.007317, 26.649708>,  <34.534847, 33.438831, 26.821800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133320, 33.007317, 26.649708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823231, 32.766891, 26.727430>,  <34.637177, 32.622639, 26.774063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823231, 32.766891, 26.727430>,  <35.133320, 33.007317, 26.649708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823231, 32.766891, 26.727430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433422, -0.729889, -0.528589,
		0.459537, -0.325558, 0.826340,
		-0.775223, -0.601060, 0.194307,
		34.590664, 32.586575, 26.785723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480141, 32.377041, 26.811644>,  <35.133320, 33.007317, 26.649708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480141, 32.377041, 26.811644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121349, 32.319405, 26.644466>,  <34.906075, 32.284824, 26.544161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121349, 32.319405, 26.644466>,  <35.480141, 32.377041, 26.811644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121349, 32.319405, 26.644466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395084, -0.685460, -0.611599,
		-0.198360, -0.713711, 0.671767,
		-0.896974, -0.144087, -0.417944,
		34.852257, 32.276180, 26.519083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453083, 31.666294, 26.557783>,  <35.480141, 32.377041, 26.811644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453083, 31.666294, 26.557783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119625, 31.777391, 26.366829>,  <34.919552, 31.844049, 26.252256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119625, 31.777391, 26.366829>,  <35.453083, 31.666294, 26.557783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119625, 31.777391, 26.366829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275228, -0.540470, -0.795073,
		-0.478838, -0.794198, 0.374117,
		-0.833645, 0.277744, -0.477383,
		34.869534, 31.860716, 26.223614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216450, 31.017923, 26.175577>,  <35.453083, 31.666294, 26.557783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216450, 31.017923, 26.175577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057182, 31.338160, 25.996464>,  <34.961620, 31.530302, 25.888996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057182, 31.338160, 25.996464>,  <35.216450, 31.017923, 26.175577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057182, 31.338160, 25.996464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125385, -0.436068, -0.891136,
		-0.908702, -0.410970, 0.073247,
		-0.398170, 0.800592, -0.447785,
		34.937733, 31.578337, 25.862127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714149, 30.747084, 25.741955>,  <35.216450, 31.017923, 26.175577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714149, 30.747084, 25.741955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807728, 31.118292, 25.625988>,  <34.863876, 31.341017, 25.556408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807728, 31.118292, 25.625988>,  <34.714149, 30.747084, 25.741955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807728, 31.118292, 25.625988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359945, -0.359673, -0.860857,
		-0.903166, 0.097040, -0.418179,
		0.233945, 0.928019, -0.289916,
		34.877911, 31.396698, 25.539013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417519, 30.842188, 25.073929>,  <34.714149, 30.747084, 25.741955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417519, 30.842188, 25.073929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717918, 31.104681, 25.103222>,  <34.898159, 31.262177, 25.120798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717918, 31.104681, 25.103222>,  <34.417519, 30.842188, 25.073929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717918, 31.104681, 25.103222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409142, -0.375412, -0.831666,
		-0.518274, 0.654541, -0.550425,
		0.750996, 0.656233, 0.073234,
		34.943218, 31.301552, 25.125193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504791, 30.907764, 24.416037>,  <34.417519, 30.842188, 25.073929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504791, 30.907764, 24.416037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841072, 31.054075, 24.575754>,  <35.042839, 31.141861, 24.671585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841072, 31.054075, 24.575754>,  <34.504791, 30.907764, 24.416037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841072, 31.054075, 24.575754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492411, -0.209607, -0.844746,
		-0.225292, 0.906793, -0.356328,
		0.840699, 0.365775, 0.399292,
		35.093281, 31.163807, 24.695541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830677, 31.334917, 23.921749>,  <34.504791, 30.907764, 24.416037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830677, 31.334917, 23.921749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144337, 31.281857, 24.164242>,  <35.332531, 31.250021, 24.309738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144337, 31.281857, 24.164242>,  <34.830677, 31.334917, 23.921749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144337, 31.281857, 24.164242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585760, -0.164399, -0.793636,
		0.204939, 0.977434, -0.051212,
		0.784146, -0.132649, 0.606233,
		35.379581, 31.242062, 24.346111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372643, 31.729687, 23.604582>,  <34.830677, 31.334917, 23.921749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372643, 31.729687, 23.604582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550144, 31.470512, 23.852217>,  <35.656643, 31.315008, 24.000797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550144, 31.470512, 23.852217>,  <35.372643, 31.729687, 23.604582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550144, 31.470512, 23.852217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542902, -0.355257, -0.760953,
		0.712982, 0.673776, 0.194119,
		0.443750, -0.647934, 0.619086,
		35.683270, 31.276133, 24.037943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141026, 31.769676, 23.511904>,  <35.372643, 31.729687, 23.604582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141026, 31.769676, 23.511904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112335, 31.413801, 23.692266>,  <36.095123, 31.200277, 23.800484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112335, 31.413801, 23.692266>,  <36.141026, 31.769676, 23.511904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112335, 31.413801, 23.692266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689272, -0.370968, -0.622324,
		0.720944, 0.266161, 0.639842,
		-0.071722, -0.889686, 0.450905,
		36.090820, 31.146896, 23.827538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811146, 31.584412, 23.472977>,  <36.141026, 31.769676, 23.511904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811146, 31.584412, 23.472977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617035, 31.241501, 23.541773>,  <36.500568, 31.035755, 23.583052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617035, 31.241501, 23.541773>,  <36.811146, 31.584412, 23.472977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617035, 31.241501, 23.541773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576585, -0.461635, -0.674124,
		0.657308, -0.227971, 0.718315,
		-0.485280, -0.857276, 0.171992,
		36.471451, 30.984318, 23.593370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252010, 31.072044, 23.601427>,  <36.811146, 31.584412, 23.472977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252010, 31.072044, 23.601427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934654, 30.854073, 23.492918>,  <36.744240, 30.723289, 23.427813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934654, 30.854073, 23.492918>,  <37.252010, 31.072044, 23.601427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934654, 30.854073, 23.492918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556109, -0.467626, -0.687073,
		0.247552, -0.695972, 0.674048,
		-0.793386, -0.544930, -0.271274,
		36.696640, 30.690594, 23.411535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372356, 30.393646, 23.746481>,  <37.252010, 31.072044, 23.601427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372356, 30.393646, 23.746481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087139, 30.379255, 23.466402>,  <36.916008, 30.370621, 23.298355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087139, 30.379255, 23.466402>,  <37.372356, 30.393646, 23.746481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087139, 30.379255, 23.466402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642425, -0.433529, -0.631935,
		-0.280820, -0.900421, 0.332238,
		-0.713042, -0.035978, -0.700197,
		36.873226, 30.368462, 23.256342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414509, 29.708736, 23.433794>,  <37.372356, 30.393646, 23.746481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414509, 29.708736, 23.433794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236382, 29.954216, 23.173006>,  <37.129505, 30.101503, 23.016533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236382, 29.954216, 23.173006>,  <37.414509, 29.708736, 23.433794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236382, 29.954216, 23.173006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546705, -0.390290, -0.740802,
		-0.709085, -0.686330, -0.161706,
		-0.445322, 0.613698, -0.651969,
		37.102783, 30.138325, 22.977415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193283, 29.298510, 22.910639>,  <37.414509, 29.708736, 23.433794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193283, 29.298510, 22.910639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207584, 29.662149, 22.744623>,  <37.216164, 29.880333, 22.645014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207584, 29.662149, 22.744623>,  <37.193283, 29.298510, 22.910639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207584, 29.662149, 22.744623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487397, -0.378424, -0.786918,
		-0.872448, -0.174154, -0.456623,
		0.035752, 0.909102, -0.415037,
		37.218311, 29.934879, 22.620111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994934, 29.174679, 22.235895>,  <37.193283, 29.298510, 22.910639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994934, 29.174679, 22.235895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198486, 29.518955, 22.229548>,  <37.320618, 29.725521, 22.225739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198486, 29.518955, 22.229548>,  <36.994934, 29.174679, 22.235895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198486, 29.518955, 22.229548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371664, -0.236298, -0.897792,
		-0.776471, 0.450970, -0.440135,
		0.508880, 0.860691, -0.015870,
		37.351151, 29.777163, 22.224787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071289, 29.279385, 21.595303>,  <36.994934, 29.174679, 22.235895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071289, 29.279385, 21.595303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310532, 29.569489, 21.731691>,  <37.454079, 29.743551, 21.813524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310532, 29.569489, 21.731691>,  <37.071289, 29.279385, 21.595303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310532, 29.569489, 21.731691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464637, 0.032840, -0.884892,
		-0.652975, 0.687690, -0.317341,
		0.598110, 0.725261, 0.340970,
		37.489964, 29.787067, 21.833982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183022, 29.837486, 21.022551>,  <37.071289, 29.279385, 21.595303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183022, 29.837486, 21.022551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487881, 29.850231, 21.281197>,  <37.670795, 29.857878, 21.436384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487881, 29.850231, 21.281197>,  <37.183022, 29.837486, 21.022551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487881, 29.850231, 21.281197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646873, -0.077708, -0.758628,
		0.026076, 0.996467, -0.079835,
		0.762151, 0.031861, 0.646614,
		37.716526, 29.859789, 21.475182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627686, 30.275812, 20.730118>,  <37.183022, 29.837486, 21.022551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627686, 30.275812, 20.730118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853394, 30.074892, 20.992201>,  <37.988819, 29.954340, 21.149450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853394, 30.074892, 20.992201>,  <37.627686, 30.275812, 20.730118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853394, 30.074892, 20.992201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733612, -0.058978, -0.677005,
		0.378701, 0.862681, 0.335213,
		0.564269, -0.502298, 0.655208,
		38.022675, 29.924202, 21.188763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177376, 30.642776, 20.756908>,  <37.627686, 30.275812, 20.730118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177376, 30.642776, 20.756908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269962, 30.264416, 20.847853>,  <38.325516, 30.037399, 20.902420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269962, 30.264416, 20.847853>,  <38.177376, 30.642776, 20.756908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269962, 30.264416, 20.847853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578554, -0.054045, -0.813852,
		0.782110, 0.319924, 0.534745,
		0.231470, -0.945900, 0.227363,
		38.339405, 29.980646, 20.916061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808411, 30.526363, 20.365849>,  <38.177376, 30.642776, 20.756908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808411, 30.526363, 20.365849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718037, 30.149580, 20.465179>,  <38.663815, 29.923510, 20.524778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718037, 30.149580, 20.465179>,  <38.808411, 30.526363, 20.365849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718037, 30.149580, 20.465179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614734, -0.335613, -0.713768,
		0.755683, -0.008608, 0.654881,
		-0.225931, -0.941961, 0.248325,
		38.650257, 29.866991, 20.539677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515388, 30.172791, 20.432278>,  <38.808411, 30.526363, 20.365849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515388, 30.172791, 20.432278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213692, 29.919340, 20.363422>,  <39.032673, 29.767269, 20.322109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213692, 29.919340, 20.363422>,  <39.515388, 30.172791, 20.432278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213692, 29.919340, 20.363422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546438, -0.460396, -0.699600,
		0.364035, -0.621732, 0.693490,
		-0.754244, -0.633628, -0.172138,
		38.987419, 29.729252, 20.311781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806599, 29.562317, 20.233768>,  <39.515388, 30.172791, 20.432278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806599, 29.562317, 20.233768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432171, 29.528519, 20.097164>,  <39.207512, 29.508240, 20.015202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432171, 29.528519, 20.097164>,  <39.806599, 29.562317, 20.233768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432171, 29.528519, 20.097164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327155, -0.566051, -0.756674,
		-0.129375, -0.820028, 0.557509,
		-0.936073, -0.084497, -0.341509,
		39.151348, 29.503170, 19.994711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862045, 28.929899, 20.081512>,  <39.806599, 29.562317, 20.233768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862045, 28.929899, 20.081512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547863, 29.075161, 19.881039>,  <39.359356, 29.162319, 19.760756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547863, 29.075161, 19.881039>,  <39.862045, 28.929899, 20.081512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547863, 29.075161, 19.881039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350452, -0.406490, -0.843771,
		-0.510146, -0.838382, 0.192009,
		-0.785452, 0.363156, -0.501182,
		39.312229, 29.184107, 19.730684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473221, 28.359161, 19.690889>,  <39.862045, 28.929899, 20.081512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473221, 28.359161, 19.690889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384911, 28.700712, 19.502357>,  <39.331924, 28.905643, 19.389238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384911, 28.700712, 19.502357>,  <39.473221, 28.359161, 19.690889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384911, 28.700712, 19.502357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279628, -0.407551, -0.869316,
		-0.934381, -0.323719, -0.148791,
		-0.220774, 0.853879, -0.471328,
		39.318680, 28.956877, 19.360960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878422, 28.132597, 19.373894>,  <39.473221, 28.359161, 19.690889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878422, 28.132597, 19.373894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053200, 28.440777, 19.188210>,  <39.158066, 28.625685, 19.076799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053200, 28.440777, 19.188210>,  <38.878422, 28.132597, 19.373894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053200, 28.440777, 19.188210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037124, -0.531091, -0.846501,
		-0.898724, 0.352638, -0.260658,
		0.436942, 0.770447, -0.464212,
		39.184280, 28.671911, 19.048946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513424, 28.295298, 18.759750>,  <38.878422, 28.132597, 19.373894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513424, 28.295298, 18.759750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884182, 28.435280, 18.705511>,  <39.106636, 28.519270, 18.672968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884182, 28.435280, 18.705511>,  <38.513424, 28.295298, 18.759750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884182, 28.435280, 18.705511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151058, -0.678610, -0.718797,
		-0.343566, 0.645769, -0.681868,
		0.926900, 0.349957, -0.135599,
		39.162251, 28.540266, 18.664831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641422, 28.565510, 18.071005>,  <38.513424, 28.295298, 18.759750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641422, 28.565510, 18.071005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995354, 28.447145, 18.214956>,  <39.207714, 28.376127, 18.301327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995354, 28.447145, 18.214956>,  <38.641422, 28.565510, 18.071005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995354, 28.447145, 18.214956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155523, -0.540521, -0.826831,
		0.439190, 0.787574, -0.432248,
		0.884830, -0.295911, 0.359878,
		39.260803, 28.358372, 18.322920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321632, 28.654524, 17.575375>,  <38.641422, 28.565510, 18.071005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321632, 28.654524, 17.575375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379581, 28.334597, 17.808374>,  <39.414352, 28.142641, 17.948174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379581, 28.334597, 17.808374>,  <39.321632, 28.654524, 17.575375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379581, 28.334597, 17.808374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011359, -0.587327, -0.809270,
		0.989385, 0.123859, -0.076004,
		0.144874, -0.799816, 0.582500,
		39.423042, 28.094652, 17.983124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933643, 28.221388, 17.594410>,  <39.321632, 28.654524, 17.575375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933643, 28.221388, 17.594410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591370, 28.021700, 17.648930>,  <39.386005, 27.901886, 17.681641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591370, 28.021700, 17.648930>,  <39.933643, 28.221388, 17.594410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591370, 28.021700, 17.648930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187281, -0.544270, -0.817738,
		0.482416, -0.674202, 0.559219,
		-0.855687, -0.499221, 0.136299,
		39.334663, 27.871933, 17.689819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943111, 27.491261, 17.583384>,  <39.933643, 28.221388, 17.594410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943111, 27.491261, 17.583384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682972, 27.340839, 17.847393>,  <39.526890, 27.250586, 18.005798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682972, 27.340839, 17.847393>,  <39.943111, 27.491261, 17.583384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682972, 27.340839, 17.847393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541192, -0.839087, 0.055182,
		0.533064, 0.393086, 0.749217,
		-0.650349, -0.376054, 0.660022,
		39.487865, 27.228024, 18.045401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685680, 27.612930, 17.296600>,  <39.943111, 27.491261, 17.583384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685680, 27.612930, 17.296600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818718, 27.792736, 17.628220>,  <40.898540, 27.900620, 17.827190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818718, 27.792736, 17.628220>,  <40.685680, 27.612930, 17.296600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818718, 27.792736, 17.628220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906694, 0.089390, -0.412209,
		-0.259402, 0.888790, -0.377840,
		0.332592, 0.449513, 0.829048,
		40.918495, 27.927589, 17.876934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812794, 28.327778, 17.207119>,  <40.685680, 27.612930, 17.296600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812794, 28.327778, 17.207119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059132, 28.623901, 17.099281>,  <41.206936, 28.801575, 17.034578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059132, 28.623901, 17.099281>,  <40.812794, 28.327778, 17.207119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059132, 28.623901, 17.099281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560180, 0.652053, 0.510906,
		0.554017, -0.163618, 0.816269,
		0.615844, 0.740308, -0.269593,
		41.243885, 28.845993, 17.018404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874065, 28.726259, 17.858107>,  <40.812794, 28.327778, 17.207119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874065, 28.726259, 17.858107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972130, 28.959497, 17.548294>,  <41.030968, 29.099440, 17.362408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972130, 28.959497, 17.548294>,  <40.874065, 28.726259, 17.858107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972130, 28.959497, 17.548294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507372, 0.757939, 0.410003,
		0.826116, 0.292457, 0.481664,
		0.245164, 0.583094, -0.774530,
		41.045681, 29.134426, 17.315935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142864, 29.327316, 18.105530>,  <40.874065, 28.726259, 17.858107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142864, 29.327316, 18.105530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993484, 29.429899, 17.748932>,  <40.903854, 29.491449, 17.534973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993484, 29.429899, 17.748932>,  <41.142864, 29.327316, 18.105530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993484, 29.429899, 17.748932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265230, 0.891388, 0.367533,
		0.888925, 0.373707, -0.264870,
		-0.373452, 0.256458, -0.891495,
		40.881451, 29.506836, 17.481483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488445, 29.917843, 17.786266>,  <41.142864, 29.327316, 18.105530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488445, 29.917843, 17.786266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104668, 29.914434, 17.673557>,  <40.874401, 29.912390, 17.605932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104668, 29.914434, 17.673557>,  <41.488445, 29.917843, 17.786266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104668, 29.914434, 17.673557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138340, 0.885139, 0.444287,
		0.245624, 0.465249, -0.850419,
		-0.959443, -0.008520, -0.281774,
		40.816833, 29.911879, 17.589025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241219, 30.564859, 17.415274>,  <41.488445, 29.917843, 17.786266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241219, 30.564859, 17.415274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944382, 30.394609, 17.622404>,  <40.766281, 30.292459, 17.746683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944382, 30.394609, 17.622404>,  <41.241219, 30.564859, 17.415274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944382, 30.394609, 17.622404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054408, 0.731733, 0.679417,
		-0.668086, 0.532363, -0.519855,
		-0.742092, -0.425625, 0.517826,
		40.721756, 30.266922, 17.777752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752361, 31.088884, 17.596754>,  <41.241219, 30.564859, 17.415274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752361, 31.088884, 17.596754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729115, 30.777550, 17.846815>,  <40.715164, 30.590748, 17.996851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729115, 30.777550, 17.846815>,  <40.752361, 31.088884, 17.596754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729115, 30.777550, 17.846815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098308, 0.627628, 0.772282,
		-0.993457, -0.016573, -0.112994,
		-0.058119, -0.778337, 0.625151,
		40.711678, 30.544048, 18.034361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124016, 31.210196, 18.037025>,  <40.752361, 31.088884, 17.596754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124016, 31.210196, 18.037025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313915, 30.928827, 18.248615>,  <40.427856, 30.760006, 18.375568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313915, 30.928827, 18.248615>,  <40.124016, 31.210196, 18.037025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313915, 30.928827, 18.248615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158861, 0.522665, 0.837606,
		-0.865665, -0.481687, 0.136389,
		0.474751, -0.703419, 0.528974,
		40.456341, 30.717802, 18.407307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597919, 30.979403, 18.655685>,  <40.124016, 31.210196, 18.037025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597919, 30.979403, 18.655685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979408, 30.907017, 18.751738>,  <40.208302, 30.863586, 18.809368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979408, 30.907017, 18.751738>,  <39.597919, 30.979403, 18.655685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979408, 30.907017, 18.751738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098717, 0.565900, 0.818543,
		-0.284014, -0.804369, 0.521849,
		0.953725, -0.180963, 0.240128,
		40.265526, 30.852728, 18.823776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621803, 30.823467, 19.345436>,  <39.597919, 30.979403, 18.655685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621803, 30.823467, 19.345436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995453, 30.948751, 19.276962>,  <40.219643, 31.023922, 19.235878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995453, 30.948751, 19.276962>,  <39.621803, 30.823467, 19.345436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995453, 30.948751, 19.276962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031919, 0.550972, 0.833913,
		0.355507, -0.773518, 0.524676,
		0.934128, 0.313209, -0.171185,
		40.275692, 31.042715, 19.225607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957596, 30.739914, 19.902721>,  <39.621803, 30.823467, 19.345436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957596, 30.739914, 19.902721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184719, 31.023796, 19.735912>,  <40.320992, 31.194126, 19.635826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184719, 31.023796, 19.735912>,  <39.957596, 30.739914, 19.902721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184719, 31.023796, 19.735912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060110, 0.541009, 0.838866,
		0.820963, -0.451248, 0.349850,
		0.567809, 0.709707, -0.417024,
		40.355061, 31.236708, 19.610806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377518, 30.998117, 20.401848>,  <39.957596, 30.739914, 19.902721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377518, 30.998117, 20.401848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398518, 31.302494, 20.143171>,  <40.411118, 31.485121, 19.987965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398518, 31.302494, 20.143171>,  <40.377518, 30.998117, 20.401848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398518, 31.302494, 20.143171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093076, 0.641039, 0.761844,
		0.994274, -0.100191, -0.037169,
		0.052503, 0.760941, -0.646693,
		40.414268, 31.530777, 19.949163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046738, 31.270432, 20.569984>,  <40.377518, 30.998117, 20.401848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046738, 31.270432, 20.569984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821732, 31.533079, 20.369017>,  <40.686726, 31.690668, 20.248436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821732, 31.533079, 20.369017>,  <41.046738, 31.270432, 20.569984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821732, 31.533079, 20.369017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132337, 0.671350, 0.729230,
		0.816124, 0.343718, -0.464542,
		-0.562519, 0.656618, -0.502418,
		40.652977, 31.730064, 20.218290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402561, 31.910883, 20.591906>,  <41.046738, 31.270432, 20.569984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402561, 31.910883, 20.591906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016666, 31.984058, 20.516214>,  <40.785130, 32.027966, 20.470798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016666, 31.984058, 20.516214>,  <41.402561, 31.910883, 20.591906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016666, 31.984058, 20.516214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036189, 0.804323, 0.593089,
		0.260701, 0.565329, -0.782584,
		-0.964741, 0.182940, -0.189229,
		40.727245, 32.038940, 20.459446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475933, 32.645588, 20.571907>,  <41.402561, 31.910883, 20.591906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475933, 32.645588, 20.571907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082752, 32.577450, 20.599562>,  <40.846844, 32.536568, 20.616154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082752, 32.577450, 20.599562>,  <41.475933, 32.645588, 20.571907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082752, 32.577450, 20.599562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088860, 0.769473, 0.632467,
		-0.160934, 0.615544, -0.771496,
		-0.982957, -0.170341, 0.069137,
		40.787865, 32.526348, 20.620302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112713, 33.362263, 20.540564>,  <41.475933, 32.645588, 20.571907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112713, 33.362263, 20.540564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883686, 33.085388, 20.716311>,  <40.746269, 32.919266, 20.821758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883686, 33.085388, 20.716311>,  <41.112713, 33.362263, 20.540564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883686, 33.085388, 20.716311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254958, 0.659667, 0.706990,
		-0.779205, 0.292780, -0.554183,
		-0.572569, -0.692184, 0.439369,
		40.711914, 32.877731, 20.848122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519581, 33.709560, 20.637421>,  <41.112713, 33.362263, 20.540564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519581, 33.709560, 20.637421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531414, 33.414066, 20.906757>,  <40.538513, 33.236771, 21.068359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531414, 33.414066, 20.906757>,  <40.519581, 33.709560, 20.637421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531414, 33.414066, 20.906757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327851, 0.629201, 0.704713,
		-0.944266, -0.241602, -0.223584,
		0.029580, -0.738739, 0.673343,
		40.540287, 33.192444, 21.108761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873264, 33.803455, 21.052605>,  <40.519581, 33.709560, 20.637421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873264, 33.803455, 21.052605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101685, 33.552704, 21.264612>,  <40.238739, 33.402252, 21.391817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101685, 33.552704, 21.264612>,  <39.873264, 33.803455, 21.052605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101685, 33.552704, 21.264612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437927, 0.313469, 0.842590,
		-0.694346, -0.713274, -0.095519,
		0.571055, -0.626879, 0.530017,
		40.273003, 33.364639, 21.423618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346798, 33.391090, 21.570152>,  <39.873264, 33.803455, 21.052605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346798, 33.391090, 21.570152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712578, 33.327408, 21.718975>,  <39.932045, 33.289200, 21.808270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712578, 33.327408, 21.718975>,  <39.346798, 33.391090, 21.570152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712578, 33.327408, 21.718975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374994, 0.012329, 0.926945,
		-0.152165, -0.987168, -0.048428,
		0.914454, -0.159208, 0.372058,
		39.986916, 33.279644, 21.830593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260914, 32.749271, 22.081684>,  <39.346798, 33.391090, 21.570152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260914, 32.749271, 22.081684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589371, 32.962135, 22.164181>,  <39.786446, 33.089855, 22.213678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589371, 32.962135, 22.164181>,  <39.260914, 32.749271, 22.081684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589371, 32.962135, 22.164181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333685, 0.154482, 0.929941,
		0.463019, -0.832429, 0.304426,
		0.821138, 0.532163, 0.206240,
		39.835712, 33.121784, 22.226053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597103, 32.499222, 22.737547>,  <39.260914, 32.749271, 22.081684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597103, 32.499222, 22.737547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761513, 32.863277, 22.716774>,  <39.860161, 33.081711, 22.704309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761513, 32.863277, 22.716774>,  <39.597103, 32.499222, 22.737547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761513, 32.863277, 22.716774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304113, 0.190597, 0.933374,
		0.859402, -0.367849, 0.355127,
		0.411028, 0.910143, -0.051932,
		39.884823, 33.136322, 22.701195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832817, 32.610458, 23.373348>,  <39.597103, 32.499222, 22.737547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832817, 32.610458, 23.373348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794426, 32.971172, 23.204794>,  <39.771389, 33.187603, 23.103661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794426, 32.971172, 23.204794>,  <39.832817, 32.610458, 23.373348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794426, 32.971172, 23.204794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326260, 0.371452, 0.869240,
		0.940395, 0.220912, 0.258565,
		-0.095981, 0.901788, -0.421386,
		39.765633, 33.241707, 23.078379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148830, 33.080093, 23.814837>,  <39.832817, 32.610458, 23.373348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148830, 33.080093, 23.814837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901657, 33.299862, 23.589874>,  <39.753353, 33.431725, 23.454897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901657, 33.299862, 23.589874>,  <40.148830, 33.080093, 23.814837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901657, 33.299862, 23.589874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447219, 0.342704, 0.826166,
		0.646651, 0.762030, 0.033944,
		-0.617931, 0.549421, -0.562404,
		39.716278, 33.464687, 23.421152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099846, 33.714100, 24.110754>,  <40.148830, 33.080093, 23.814837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099846, 33.714100, 24.110754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775612, 33.737041, 23.877630>,  <39.581070, 33.750805, 23.737757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775612, 33.737041, 23.877630>,  <40.099846, 33.714100, 24.110754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775612, 33.737041, 23.877630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513390, 0.409213, 0.754305,
		0.281753, 0.910635, -0.302258,
		-0.810584, 0.057352, -0.582807,
		39.532436, 33.754246, 23.702787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955349, 34.403385, 24.237112>,  <40.099846, 33.714100, 24.110754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955349, 34.403385, 24.237112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624962, 34.224819, 24.099426>,  <39.426727, 34.117680, 24.016815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624962, 34.224819, 24.099426>,  <39.955349, 34.403385, 24.237112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624962, 34.224819, 24.099426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524631, 0.385360, 0.759117,
		-0.206235, 0.807595, -0.552500,
		-0.825972, -0.446416, -0.344215,
		39.377171, 34.090893, 23.996162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442924, 34.847977, 24.139175>,  <39.955349, 34.403385, 24.237112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442924, 34.847977, 24.139175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266266, 34.494736, 24.202513>,  <39.160271, 34.282791, 24.240515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266266, 34.494736, 24.202513>,  <39.442924, 34.847977, 24.139175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266266, 34.494736, 24.202513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624755, 0.429377, 0.652164,
		-0.643918, 0.189101, -0.741357,
		-0.441647, -0.883106, 0.158341,
		39.133774, 34.229805, 24.250015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781532, 34.990494, 24.069105>,  <39.442924, 34.847977, 24.139175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781532, 34.990494, 24.069105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771656, 34.634571, 24.251377>,  <38.765732, 34.421017, 24.360741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771656, 34.634571, 24.251377>,  <38.781532, 34.990494, 24.069105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771656, 34.634571, 24.251377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630998, 0.367413, 0.683264,
		-0.775392, -0.270665, -0.570533,
		-0.024686, -0.889803, 0.455678,
		38.764252, 34.367630, 24.388081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122684, 34.847416, 24.153662>,  <38.781532, 34.990494, 24.069105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122684, 34.847416, 24.153662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279003, 34.583500, 24.410397>,  <38.372795, 34.425148, 24.564438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279003, 34.583500, 24.410397>,  <38.122684, 34.847416, 24.153662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279003, 34.583500, 24.410397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693560, 0.247382, 0.676592,
		-0.605190, -0.709559, -0.360931,
		0.390794, -0.659793, 0.641835,
		38.396240, 34.385563, 24.602947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641872, 34.495640, 24.521126>,  <38.122684, 34.847416, 24.153662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641872, 34.495640, 24.521126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949989, 34.440948, 24.770269>,  <38.134861, 34.408134, 24.919756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949989, 34.440948, 24.770269>,  <37.641872, 34.495640, 24.521126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949989, 34.440948, 24.770269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570359, 0.289110, 0.768834,
		-0.285197, -0.947481, 0.144715,
		0.770294, -0.136730, 0.622858,
		38.181076, 34.399929, 24.957127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402836, 34.180832, 25.139992>,  <37.641872, 34.495640, 24.521126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402836, 34.180832, 25.139992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730244, 34.396236, 25.220032>,  <37.926689, 34.525478, 25.268055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730244, 34.396236, 25.220032>,  <37.402836, 34.180832, 25.139992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730244, 34.396236, 25.220032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418380, 0.320083, 0.850003,
		0.393687, -0.779457, 0.487295,
		0.818516, 0.538510, 0.200097,
		37.975800, 34.557789, 25.280062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627552, 34.065071, 25.843187>,  <37.402836, 34.180832, 25.139992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627552, 34.065071, 25.843187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752518, 34.429050, 25.734093>,  <37.827496, 34.647438, 25.668636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752518, 34.429050, 25.734093>,  <37.627552, 34.065071, 25.843187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752518, 34.429050, 25.734093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311395, 0.369340, 0.875569,
		0.897459, -0.188609, 0.398741,
		0.312411, 0.909953, -0.272735,
		37.846241, 34.702038, 25.652271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916962, 34.334476, 26.481548>,  <37.627552, 34.065071, 25.843187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916962, 34.334476, 26.481548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864693, 34.634815, 26.222578>,  <37.833332, 34.815018, 26.067196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864693, 34.634815, 26.222578>,  <37.916962, 34.334476, 26.481548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864693, 34.634815, 26.222578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453327, 0.535510, 0.712547,
		0.881714, 0.386605, 0.270401,
		-0.130672, 0.750843, -0.647426,
		37.825493, 34.860069, 26.028351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115982, 34.948696, 26.796299>,  <37.916962, 34.334476, 26.481548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115982, 34.948696, 26.796299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929760, 35.120667, 26.486870>,  <37.818027, 35.223850, 26.301212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929760, 35.120667, 26.486870>,  <38.115982, 34.948696, 26.796299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929760, 35.120667, 26.486870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372884, 0.697420, 0.612016,
		0.802629, 0.573383, -0.164376,
		-0.465558, 0.429928, -0.773575,
		37.790092, 35.249645, 26.254797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213120, 35.593292, 26.953396>,  <38.115982, 34.948696, 26.796299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213120, 35.593292, 26.953396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908764, 35.574444, 26.694530>,  <37.726151, 35.563133, 26.539211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908764, 35.574444, 26.694530>,  <38.213120, 35.593292, 26.953396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908764, 35.574444, 26.694530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512399, 0.655550, 0.554708,
		0.398108, 0.753680, -0.522950,
		-0.760892, -0.047126, -0.647165,
		37.680496, 35.560307, 26.500381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103168, 36.244427, 26.715422>,  <38.213120, 35.593292, 26.953396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103168, 36.244427, 26.715422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746334, 36.083214, 26.633698>,  <37.532234, 35.986485, 26.584663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746334, 36.083214, 26.633698>,  <38.103168, 36.244427, 26.715422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746334, 36.083214, 26.633698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449879, 0.749901, 0.485033,
		-0.042271, 0.524608, -0.850294,
		-0.892089, -0.403032, -0.204311,
		37.478706, 35.962303, 26.572405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554821, 36.773540, 26.456806>,  <38.103168, 36.244427, 26.715422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554821, 36.773540, 26.456806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326077, 36.468662, 26.578156>,  <37.188828, 36.285736, 26.650965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326077, 36.468662, 26.578156>,  <37.554821, 36.773540, 26.456806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326077, 36.468662, 26.578156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635819, 0.645485, 0.423182,
		-0.518368, 0.049112, -0.853746,
		-0.571864, -0.762192, 0.303373,
		37.154518, 36.240005, 26.669167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773438, 36.871601, 26.286541>,  <37.554821, 36.773540, 26.456806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773438, 36.871601, 26.286541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810558, 36.634079, 26.606237>,  <36.832829, 36.491566, 26.798056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810558, 36.634079, 26.606237>,  <36.773438, 36.871601, 26.286541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810558, 36.634079, 26.606237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557724, 0.633957, 0.535763,
		-0.824822, -0.495474, -0.272349,
		0.092799, -0.593805, 0.799239,
		36.838398, 36.455936, 26.846008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065258, 36.860359, 26.595324>,  <36.773438, 36.871601, 26.286541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065258, 36.860359, 26.595324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291019, 36.707287, 26.887899>,  <36.426476, 36.615444, 27.063444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291019, 36.707287, 26.887899>,  <36.065258, 36.860359, 26.595324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291019, 36.707287, 26.887899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542130, 0.496367, 0.678022,
		-0.622528, -0.779214, 0.072690,
		0.564405, -0.382681, 0.731439,
		36.460342, 36.592484, 27.107330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581291, 36.687653, 27.142382>,  <36.065258, 36.860359, 26.595324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581291, 36.687653, 27.142382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940994, 36.689331, 27.317343>,  <36.156815, 36.690338, 27.422319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940994, 36.689331, 27.317343>,  <35.581291, 36.687653, 27.142382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940994, 36.689331, 27.317343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402399, 0.399989, 0.823459,
		-0.171502, -0.916510, 0.361380,
		0.899257, 0.004194, 0.437402,
		36.210770, 36.690590, 27.448563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391193, 36.464588, 27.726357>,  <35.581291, 36.687653, 27.142382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391193, 36.464588, 27.726357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746269, 36.636402, 27.792698>,  <35.959316, 36.739491, 27.832502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746269, 36.636402, 27.792698>,  <35.391193, 36.464588, 27.726357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746269, 36.636402, 27.792698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336805, 0.360136, 0.869980,
		0.313954, -0.828133, 0.464358,
		0.887691, 0.429532, 0.165853,
		36.012577, 36.765263, 27.842453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494053, 36.425655, 28.353094>,  <35.391193, 36.464588, 27.726357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494053, 36.425655, 28.353094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748222, 36.727001, 28.285343>,  <35.900723, 36.907806, 28.244694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748222, 36.727001, 28.285343>,  <35.494053, 36.425655, 28.353094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748222, 36.727001, 28.285343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243134, 0.403397, 0.882132,
		0.732890, -0.519343, 0.439494,
		0.635419, 0.753362, -0.169375,
		35.938847, 36.953011, 28.234531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778732, 36.521301, 28.947424>,  <35.494053, 36.425655, 28.353094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778732, 36.521301, 28.947424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905731, 36.863766, 28.784363>,  <35.981930, 37.069244, 28.686527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905731, 36.863766, 28.784363>,  <35.778732, 36.521301, 28.947424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905731, 36.863766, 28.784363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114296, 0.461313, 0.879845,
		0.941345, -0.232757, 0.244322,
		0.317499, 0.856162, -0.407652,
		36.000980, 37.120613, 28.662067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439316, 36.728817, 29.280279>,  <35.778732, 36.521301, 28.947424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439316, 36.728817, 29.280279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257977, 37.045502, 29.116493>,  <36.149174, 37.235512, 29.018221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257977, 37.045502, 29.116493>,  <36.439316, 36.728817, 29.280279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257977, 37.045502, 29.116493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221462, 0.344931, 0.912128,
		0.863383, 0.504193, 0.018961,
		-0.453349, 0.791715, -0.409467,
		36.121971, 37.283016, 28.993652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555740, 37.243706, 29.788807>,  <36.439316, 36.728817, 29.280279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555740, 37.243706, 29.788807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271919, 37.411808, 29.562559>,  <36.101627, 37.512669, 29.426811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271919, 37.411808, 29.562559>,  <36.555740, 37.243706, 29.788807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271919, 37.411808, 29.562559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301757, 0.544149, 0.782844,
		0.636773, 0.726147, -0.259288,
		-0.709551, 0.420252, -0.565619,
		36.059055, 37.537884, 29.392874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514935, 37.890327, 29.986862>,  <36.555740, 37.243706, 29.788807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514935, 37.890327, 29.986862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159554, 37.825943, 29.814936>,  <35.946323, 37.787312, 29.711779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159554, 37.825943, 29.814936>,  <36.514935, 37.890327, 29.986862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159554, 37.825943, 29.814936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436154, 0.587686, 0.681466,
		0.142906, 0.792916, -0.592336,
		-0.888452, -0.160964, -0.429818,
		35.893017, 37.777653, 29.685991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895035, 38.247398, 30.481348>,  <36.514935, 37.890327, 29.986862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895035, 38.247398, 30.481348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214943, 38.269398, 30.720461>,  <37.406887, 38.282597, 30.863930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214943, 38.269398, 30.720461>,  <36.895035, 38.247398, 30.481348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214943, 38.269398, 30.720461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583761, -0.303434, -0.753094,
		0.139972, 0.951264, -0.274781,
		0.799769, 0.054994, 0.597784,
		37.454872, 38.285896, 30.899796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438507, 38.746098, 30.100981>,  <36.895035, 38.247398, 30.481348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438507, 38.746098, 30.100981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675251, 38.550739, 30.357471>,  <37.817299, 38.433525, 30.511366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675251, 38.550739, 30.357471>,  <37.438507, 38.746098, 30.100981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675251, 38.550739, 30.357471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627559, -0.220029, -0.746831,
		0.505836, 0.844428, 0.176269,
		0.591861, -0.488393, 0.641227,
		37.852810, 38.404221, 30.549839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155518, 38.956913, 29.960054>,  <37.438507, 38.746098, 30.100981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155518, 38.956913, 29.960054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209862, 38.607002, 30.146091>,  <38.242470, 38.397057, 30.257713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209862, 38.607002, 30.146091>,  <38.155518, 38.956913, 29.960054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209862, 38.607002, 30.146091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544952, -0.326061, -0.772471,
		0.827387, 0.358403, 0.432411,
		0.135864, -0.874775, 0.465091,
		38.250622, 38.344570, 30.285618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877628, 38.789860, 29.970106>,  <38.155518, 38.956913, 29.960054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877628, 38.789860, 29.970106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727627, 38.426441, 30.043764>,  <38.637627, 38.208389, 30.087959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727627, 38.426441, 30.043764>,  <38.877628, 38.789860, 29.970106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727627, 38.426441, 30.043764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728045, -0.411609, -0.548204,
		0.573868, -0.071509, 0.815820,
		-0.375000, -0.908551, 0.184147,
		38.615128, 38.153877, 30.099009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466854, 38.384754, 30.109303>,  <38.877628, 38.789860, 29.970106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466854, 38.384754, 30.109303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173092, 38.131084, 30.012581>,  <38.996834, 37.978882, 29.954548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173092, 38.131084, 30.012581>,  <39.466854, 38.384754, 30.109303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173092, 38.131084, 30.012581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580854, -0.402993, -0.707252,
		0.351074, -0.659865, 0.664323,
		-0.734408, -0.634172, -0.241806,
		38.952770, 37.940834, 29.940039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809978, 37.661224, 30.167479>,  <39.466854, 38.384754, 30.109303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809978, 37.661224, 30.167479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472874, 37.614040, 29.957399>,  <39.270611, 37.585732, 29.831352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472874, 37.614040, 29.957399>,  <39.809978, 37.661224, 30.167479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472874, 37.614040, 29.957399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499751, -0.533962, -0.682006,
		-0.199985, -0.837239, 0.508956,
		-0.842766, -0.117961, -0.525196,
		39.220043, 37.578651, 29.799841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868374, 37.031395, 29.867886>,  <39.809978, 37.661224, 30.167479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868374, 37.031395, 29.867886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568165, 37.167896, 29.641521>,  <39.388039, 37.249798, 29.505703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568165, 37.167896, 29.641521>,  <39.868374, 37.031395, 29.867886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568165, 37.167896, 29.641521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267246, -0.626472, -0.732197,
		-0.604388, -0.700773, 0.378989,
		-0.750530, 0.341248, -0.565911,
		39.343006, 37.270271, 29.471748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444221, 36.406178, 29.546513>,  <39.868374, 37.031395, 29.867886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444221, 36.406178, 29.546513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392288, 36.725182, 29.310843>,  <39.361130, 36.916584, 29.169441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392288, 36.725182, 29.310843>,  <39.444221, 36.406178, 29.546513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392288, 36.725182, 29.310843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417441, -0.495015, -0.762039,
		-0.899382, -0.344881, -0.268644,
		-0.129830, 0.797507, -0.589175,
		39.353340, 36.964432, 29.134090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306179, 36.098160, 28.948231>,  <39.444221, 36.406178, 29.546513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306179, 36.098160, 28.948231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408588, 36.475014, 28.861658>,  <39.470032, 36.701126, 28.809715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408588, 36.475014, 28.861658>,  <39.306179, 36.098160, 28.948231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408588, 36.475014, 28.861658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314574, -0.292906, -0.902912,
		-0.914056, 0.163079, -0.371359,
		0.256019, 0.942131, -0.216432,
		39.485394, 36.757652, 28.796728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027016, 36.187508, 28.272642>,  <39.306179, 36.098160, 28.948231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027016, 36.187508, 28.272642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287884, 36.488590, 28.308655>,  <39.444405, 36.669239, 28.330261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287884, 36.488590, 28.308655>,  <39.027016, 36.187508, 28.272642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287884, 36.488590, 28.308655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260291, -0.110804, -0.959152,
		-0.711983, 0.648966, -0.268185,
		0.652173, 0.752705, 0.090030,
		39.483536, 36.714401, 28.335663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940655, 36.691227, 27.720488>,  <39.027016, 36.187508, 28.272642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940655, 36.691227, 27.720488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317448, 36.689659, 27.854744>,  <39.543522, 36.688721, 27.935297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317448, 36.689659, 27.854744>,  <38.940655, 36.691227, 27.720488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317448, 36.689659, 27.854744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323921, -0.251545, -0.912031,
		0.088001, 0.967838, -0.235682,
		0.941982, -0.003917, 0.335639,
		39.600044, 36.688484, 27.955435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376099, 37.095154, 27.140146>,  <38.940655, 36.691227, 27.720488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376099, 37.095154, 27.140146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646790, 36.911060, 27.370007>,  <39.809204, 36.800602, 27.507923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646790, 36.911060, 27.370007>,  <39.376099, 37.095154, 27.140146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646790, 36.911060, 27.370007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576530, -0.154158, -0.802401,
		0.457883, 0.874309, 0.161019,
		0.676724, -0.460238, 0.574652,
		39.849808, 36.772987, 27.542402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005554, 37.337029, 26.898800>,  <39.376099, 37.095154, 27.140146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005554, 37.337029, 26.898800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116215, 37.011257, 27.102825>,  <40.182610, 36.815792, 27.225241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116215, 37.011257, 27.102825>,  <40.005554, 37.337029, 26.898800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116215, 37.011257, 27.102825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667744, -0.218783, -0.711514,
		0.691073, 0.537433, 0.483306,
		0.276652, -0.814432, 0.510063,
		40.199211, 36.766926, 27.255844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615944, 37.236599, 26.623816>,  <40.005554, 37.337029, 26.898800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615944, 37.236599, 26.623816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531998, 36.881920, 26.788607>,  <40.481628, 36.669113, 26.887482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531998, 36.881920, 26.788607>,  <40.615944, 37.236599, 26.623816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531998, 36.881920, 26.788607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418818, -0.462274, -0.781597,
		0.883485, 0.008510, 0.468381,
		-0.209869, -0.886696, 0.411976,
		40.469036, 36.615910, 26.912199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339760, 36.922649, 26.494627>,  <40.615944, 37.236599, 26.623816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339760, 36.922649, 26.494627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057762, 36.644032, 26.548010>,  <40.888565, 36.476860, 26.580040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057762, 36.644032, 26.548010>,  <41.339760, 36.922649, 26.494627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057762, 36.644032, 26.548010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405907, -0.550591, -0.729444,
		0.581570, -0.460082, 0.670895,
		-0.704993, -0.696544, 0.133457,
		40.846264, 36.435070, 26.588047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739933, 36.316536, 26.634586>,  <41.339760, 36.922649, 26.494627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739933, 36.316536, 26.634586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370327, 36.212555, 26.522421>,  <41.148563, 36.150166, 26.455122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370327, 36.212555, 26.522421>,  <41.739933, 36.316536, 26.634586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370327, 36.212555, 26.522421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381425, -0.575180, -0.723660,
		0.026829, -0.775625, 0.630624,
		-0.924010, -0.259950, -0.280411,
		41.093124, 36.134571, 26.438297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814636, 35.603264, 26.545567>,  <41.739933, 36.316536, 26.634586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814636, 35.603264, 26.545567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488239, 35.713535, 26.342329>,  <41.292400, 35.779697, 26.220387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488239, 35.713535, 26.342329>,  <41.814636, 35.603264, 26.545567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488239, 35.713535, 26.342329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331671, -0.496611, -0.802105,
		-0.473433, -0.823036, 0.313805,
		-0.816000, 0.275662, -0.508089,
		41.243443, 35.796238, 26.189901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574123, 34.928905, 26.270714>,  <41.814636, 35.603264, 26.545567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574123, 34.928905, 26.270714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411755, 35.225685, 26.057272>,  <41.314335, 35.403755, 25.929207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411755, 35.225685, 26.057272>,  <41.574123, 34.928905, 26.270714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411755, 35.225685, 26.057272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219863, -0.487444, -0.845020,
		-0.887069, -0.460329, 0.034734,
		-0.405917, 0.741954, -0.533606,
		41.289978, 35.448273, 25.897190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083008, 34.603825, 25.912491>,  <41.574123, 34.928905, 26.270714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083008, 34.603825, 25.912491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192047, 34.929054, 25.706736>,  <41.257469, 35.124191, 25.583282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192047, 34.929054, 25.706736>,  <41.083008, 34.603825, 25.912491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192047, 34.929054, 25.706736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159972, -0.565497, -0.809087,
		-0.948736, 0.138266, -0.284222,
		0.272596, 0.813078, -0.514389,
		41.273827, 35.172977, 25.552420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795231, 34.501114, 25.283052>,  <41.083008, 34.603825, 25.912491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795231, 34.501114, 25.283052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100376, 34.754818, 25.232840>,  <41.283463, 34.907040, 25.202713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100376, 34.754818, 25.232840>,  <40.795231, 34.501114, 25.283052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100376, 34.754818, 25.232840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176218, -0.390760, -0.903468,
		-0.622083, 0.667101, -0.409864,
		0.762863, 0.634257, -0.125530,
		41.329235, 34.945095, 25.195181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734684, 34.741608, 24.582661>,  <40.795231, 34.501114, 25.283052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734684, 34.741608, 24.582661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112686, 34.844719, 24.663176>,  <41.339489, 34.906586, 24.711485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112686, 34.844719, 24.663176>,  <40.734684, 34.741608, 24.582661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112686, 34.844719, 24.663176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266267, -0.249017, -0.931178,
		-0.189914, 0.933564, -0.303960,
		0.945005, 0.257778, 0.201286,
		41.396187, 34.922050, 24.723560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010998, 35.222389, 24.124058>,  <40.734684, 34.741608, 24.582661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010998, 35.222389, 24.124058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285946, 34.982410, 24.287806>,  <41.450916, 34.838425, 24.386055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285946, 34.982410, 24.287806>,  <41.010998, 35.222389, 24.124058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285946, 34.982410, 24.287806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347281, -0.223540, -0.910728,
		0.637898, 0.768176, 0.054694,
		0.687373, -0.599946, 0.409369,
		41.492157, 34.802425, 24.410616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503956, 35.163666, 23.491184>,  <41.010998, 35.222389, 24.124058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503956, 35.163666, 23.491184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633778, 34.914734, 23.776104>,  <41.711670, 34.765373, 23.947056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633778, 34.914734, 23.776104>,  <41.503956, 35.163666, 23.491184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633778, 34.914734, 23.776104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644179, -0.405996, -0.648229,
		0.692603, 0.669233, 0.269125,
		0.324552, -0.622330, 0.712300,
		41.731144, 34.728035, 23.989794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114960, 35.103382, 23.276968>,  <41.503956, 35.163666, 23.491184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114960, 35.103382, 23.276968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086575, 34.792072, 23.526529>,  <42.069546, 34.605286, 23.676266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086575, 34.792072, 23.526529>,  <42.114960, 35.103382, 23.276968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086575, 34.792072, 23.526529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462321, -0.579902, -0.670800,
		0.883869, 0.240845, 0.400961,
		-0.070959, -0.778272, 0.623905,
		42.065289, 34.558590, 23.713701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841095, 34.818481, 23.309481>,  <42.114960, 35.103382, 23.276968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841095, 34.818481, 23.309481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562309, 34.548813, 23.407240>,  <42.395039, 34.387012, 23.465895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562309, 34.548813, 23.407240>,  <42.841095, 34.818481, 23.309481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562309, 34.548813, 23.407240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397740, -0.647015, -0.650519,
		0.596690, -0.356184, 0.719093,
		-0.696968, -0.674170, 0.244399,
		42.353218, 34.346561, 23.480560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246853, 34.176010, 23.462856>,  <42.841095, 34.818481, 23.309481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246853, 34.176010, 23.462856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868816, 34.057468, 23.407764>,  <42.641994, 33.986343, 23.374710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868816, 34.057468, 23.407764>,  <43.246853, 34.176010, 23.462856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868816, 34.057468, 23.407764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309752, -0.678028, -0.666582,
		0.104163, -0.672644, 0.732598,
		-0.945095, -0.296357, -0.137727,
		42.585289, 33.968563, 23.366446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214527, 33.535988, 23.654140>,  <43.246853, 34.176010, 23.462856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214527, 33.535988, 23.654140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894863, 33.593529, 23.420679>,  <42.703064, 33.628052, 23.280602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894863, 33.593529, 23.420679>,  <43.214527, 33.535988, 23.654140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894863, 33.593529, 23.420679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236779, -0.817118, -0.525598,
		-0.552523, -0.558233, 0.618945,
		-0.799158, 0.143852, -0.583655,
		42.655117, 33.636684, 23.245583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885731, 32.951729, 23.613516>,  <43.214527, 33.535988, 23.654140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885731, 32.951729, 23.613516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822685, 33.170605, 23.284700>,  <42.784859, 33.301929, 23.087412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822685, 33.170605, 23.284700>,  <42.885731, 32.951729, 23.613516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822685, 33.170605, 23.284700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288771, -0.770516, -0.568258,
		-0.944335, -0.326946, -0.036567,
		-0.157614, 0.547185, -0.822038,
		42.775402, 33.334759, 23.038090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427551, 32.571167, 23.243372>,  <42.885731, 32.951729, 23.613516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427551, 32.571167, 23.243372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617855, 32.800358, 22.976433>,  <42.732037, 32.937870, 22.816269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617855, 32.800358, 22.976433>,  <42.427551, 32.571167, 23.243372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617855, 32.800358, 22.976433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240910, -0.814587, -0.527645,
		-0.845941, 0.090261, -0.525583,
		0.475759, 0.572975, -0.667348,
		42.760582, 32.972252, 22.776228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202896, 32.220417, 22.648136>,  <42.427551, 32.571167, 23.243372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202896, 32.220417, 22.648136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513058, 32.453579, 22.551006>,  <42.699154, 32.593475, 22.492727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513058, 32.453579, 22.551006>,  <42.202896, 32.220417, 22.648136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513058, 32.453579, 22.551006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432410, -0.770391, -0.468530,
		-0.460179, 0.258301, -0.849421,
		0.775407, 0.582906, -0.242826,
		42.745682, 32.628452, 22.478159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146103, 32.303082, 21.908817>,  <42.202896, 32.220417, 22.648136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146103, 32.303082, 21.908817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524292, 32.396782, 21.999329>,  <42.751205, 32.453003, 22.053637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524292, 32.396782, 21.999329>,  <42.146103, 32.303082, 21.908817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524292, 32.396782, 21.999329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325662, -0.670027, -0.667089,
		-0.004655, 0.704406, -0.709782,
		0.945475, 0.234255, 0.226279,
		42.807934, 32.467060, 22.067213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534042, 32.467957, 21.224998>,  <42.146103, 32.303082, 21.908817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534042, 32.467957, 21.224998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828995, 32.376530, 21.479252>,  <43.005966, 32.321674, 21.631804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828995, 32.376530, 21.479252>,  <42.534042, 32.467957, 21.224998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828995, 32.376530, 21.479252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379084, -0.638821, -0.669480,
		0.559080, 0.734618, -0.384404,
		0.737377, -0.228571, 0.635634,
		43.050209, 32.307957, 21.669943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183670, 32.415726, 20.838207>,  <42.534042, 32.467957, 21.224998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183670, 32.415726, 20.838207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329845, 32.232677, 21.162439>,  <43.417549, 32.122849, 21.356979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329845, 32.232677, 21.162439>,  <43.183670, 32.415726, 20.838207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329845, 32.232677, 21.162439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494176, -0.642578, -0.585562,
		0.788825, 0.614556, -0.008679,
		0.365438, -0.457617, 0.810581,
		43.439476, 32.095394, 21.405613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880722, 32.296955, 20.787254>,  <43.183670, 32.415726, 20.838207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880722, 32.296955, 20.787254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770958, 32.005165, 21.037872>,  <43.705097, 31.830090, 21.188244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770958, 32.005165, 21.037872>,  <43.880722, 32.296955, 20.787254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770958, 32.005165, 21.037872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392226, -0.679802, -0.619700,
		0.877984, 0.075693, 0.472668,
		-0.274413, -0.729479, 0.626544,
		43.688633, 31.786322, 21.225836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395424, 31.791924, 20.752771>,  <43.880722, 32.296955, 20.787254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395424, 31.791924, 20.752771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097626, 31.595972, 20.934210>,  <43.918949, 31.478401, 21.043074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097626, 31.595972, 20.934210>,  <44.395424, 31.791924, 20.752771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097626, 31.595972, 20.934210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405617, -0.871536, -0.275501,
		0.530288, -0.021121, 0.847554,
		-0.744492, -0.489877, 0.453598,
		43.874279, 31.449009, 21.070290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761883, 31.257179, 21.190931>,  <44.395424, 31.791924, 20.752771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761883, 31.257179, 21.190931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382065, 31.133926, 21.167517>,  <44.154175, 31.059975, 21.153469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382065, 31.133926, 21.167517>,  <44.761883, 31.257179, 21.190931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382065, 31.133926, 21.167517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313454, -0.925812, -0.211234,
		0.010896, -0.218923, 0.975681,
		-0.949541, -0.308133, -0.058535,
		44.097202, 31.041487, 21.149956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721020, 30.637733, 21.650982>,  <44.761883, 31.257179, 21.190931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721020, 30.637733, 21.650982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458481, 30.634638, 21.349213>,  <44.300957, 30.632780, 21.168152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458481, 30.634638, 21.349213>,  <44.721020, 30.637733, 21.650982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458481, 30.634638, 21.349213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364887, -0.878477, -0.308441,
		-0.660354, -0.477723, 0.579408,
		-0.656346, -0.007738, -0.754420,
		44.261578, 30.632317, 21.122887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576904, 30.031477, 21.704098>,  <44.721020, 30.637733, 21.650982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576904, 30.031477, 21.704098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450825, 30.118721, 21.334648>,  <44.375175, 30.171068, 21.112978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450825, 30.118721, 21.334648>,  <44.576904, 30.031477, 21.704098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450825, 30.118721, 21.334648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210856, -0.932812, -0.292237,
		-0.925304, -0.286864, 0.248034,
		-0.315201, 0.218109, -0.923622,
		44.356266, 30.184155, 21.057562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895065, 29.440212, 21.395512>,  <44.576904, 30.031477, 21.704098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895065, 29.440212, 21.395512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154942, 29.203751, 21.586693>,  <45.310867, 29.061874, 21.701403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154942, 29.203751, 21.586693>,  <44.895065, 29.440212, 21.395512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154942, 29.203751, 21.586693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221019, 0.454677, 0.862798,
		-0.727361, -0.666187, 0.164742,
		0.649690, -0.591154, 0.477954,
		45.349850, 29.026403, 21.730080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539818, 29.187164, 22.046394>,  <44.895065, 29.440212, 21.395512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539818, 29.187164, 22.046394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931282, 29.173605, 22.127453>,  <45.166161, 29.165468, 22.176088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931282, 29.173605, 22.127453>,  <44.539818, 29.187164, 22.046394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931282, 29.173605, 22.127453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151738, 0.545749, 0.824095,
		-0.138532, -0.837263, 0.528962,
		0.978665, -0.033900, 0.202648,
		45.224880, 29.163435, 22.188248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495293, 28.970665, 22.723532>,  <44.539818, 29.187164, 22.046394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495293, 28.970665, 22.723532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854008, 29.132286, 22.651411>,  <45.069237, 29.229259, 22.608139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854008, 29.132286, 22.651411>,  <44.495293, 28.970665, 22.723532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854008, 29.132286, 22.651411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105068, 0.590321, 0.800301,
		0.429800, -0.698758, 0.571847,
		0.896790, 0.404052, -0.180302,
		45.123043, 29.253502, 22.597321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848896, 28.920212, 23.366724>,  <44.495293, 28.970665, 22.723532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848896, 28.920212, 23.366724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037426, 29.210403, 23.166113>,  <45.150543, 29.384520, 23.045746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037426, 29.210403, 23.166113>,  <44.848896, 28.920212, 23.366724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037426, 29.210403, 23.166113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175881, 0.634544, 0.752609,
		0.864244, -0.266516, 0.426676,
		0.471327, 0.725481, -0.501525,
		45.178825, 29.428047, 23.015656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228359, 29.275843, 23.874819>,  <44.848896, 28.920212, 23.366724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228359, 29.275843, 23.874819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203114, 29.525219, 23.563091>,  <45.187965, 29.674845, 23.376055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203114, 29.525219, 23.563091>,  <45.228359, 29.275843, 23.874819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203114, 29.525219, 23.563091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225599, 0.751750, 0.619658,
		0.972174, 0.214925, 0.093198,
		-0.063119, 0.623441, -0.779319,
		45.184177, 29.712252, 23.329296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497948, 29.805649, 24.156237>,  <45.228359, 29.275843, 23.874819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497948, 29.805649, 24.156237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319260, 29.948277, 23.828018>,  <45.212048, 30.033854, 23.631086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319260, 29.948277, 23.828018>,  <45.497948, 29.805649, 24.156237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319260, 29.948277, 23.828018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275080, 0.817980, 0.505212,
		0.851335, 0.451405, -0.267325,
		-0.446722, 0.356569, -0.820548,
		45.185242, 30.055246, 23.581854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714939, 30.563244, 24.071665>,  <45.497948, 29.805649, 24.156237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714939, 30.563244, 24.071665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375759, 30.503113, 23.868336>,  <45.172253, 30.467033, 23.746338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375759, 30.503113, 23.868336>,  <45.714939, 30.563244, 24.071665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375759, 30.503113, 23.868336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447981, 0.715865, 0.535584,
		0.283376, 0.681864, -0.674358,
		-0.847946, -0.150328, -0.508321,
		45.121376, 30.458015, 23.715839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542519, 31.214855, 23.755362>,  <45.714939, 30.563244, 24.071665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.542519, 31.214855, 23.755362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201611, 31.006557, 23.775242>,  <44.997066, 30.881578, 23.787170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201611, 31.006557, 23.775242>,  <45.542519, 31.214855, 23.755362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201611, 31.006557, 23.775242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433595, 0.756382, 0.489777,
		-0.292639, 0.395871, -0.870430,
		-0.852266, -0.520742, 0.049700,
		44.945930, 30.850334, 23.790152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075089, 31.767330, 23.651316>,  <45.542519, 31.214855, 23.755362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075089, 31.767330, 23.651316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881382, 31.446369, 23.790821>,  <44.765160, 31.253792, 23.874525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881382, 31.446369, 23.790821>,  <45.075089, 31.767330, 23.651316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881382, 31.446369, 23.790821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514008, 0.583500, 0.628747,
		-0.708012, 0.125214, -0.695011,
		-0.484267, -0.802402, 0.348764,
		44.736103, 31.205648, 23.895451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466660, 32.058655, 23.742012>,  <45.075089, 31.767330, 23.651316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466660, 32.058655, 23.742012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448143, 31.741833, 23.985487>,  <44.437031, 31.551739, 24.131573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448143, 31.741833, 23.985487>,  <44.466660, 32.058655, 23.742012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448143, 31.741833, 23.985487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542479, 0.531592, 0.650481,
		-0.838793, -0.300087, -0.454285,
		-0.046293, -0.792059, 0.608687,
		44.434254, 31.504215, 24.168093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806194, 32.158627, 23.970972>,  <44.466660, 32.058655, 23.742012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806194, 32.158627, 23.970972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948116, 31.866722, 24.204744>,  <44.033268, 31.691578, 24.345007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948116, 31.866722, 24.204744>,  <43.806194, 32.158627, 23.970972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948116, 31.866722, 24.204744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461941, 0.406638, 0.788198,
		-0.812851, -0.549627, -0.192832,
		0.354802, -0.729765, 0.584431,
		44.054558, 31.647793, 24.380074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200153, 31.687098, 24.175060>,  <43.806194, 32.158627, 23.970972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200153, 31.687098, 24.175060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514141, 31.696264, 24.422705>,  <43.702534, 31.701765, 24.571291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514141, 31.696264, 24.422705>,  <43.200153, 31.687098, 24.175060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514141, 31.696264, 24.422705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590185, 0.331606, 0.736016,
		-0.188435, -0.943140, 0.273825,
		0.784968, 0.022916, 0.619113,
		43.749630, 31.703138, 24.608438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788177, 31.665262, 24.714455>,  <43.200153, 31.687098, 24.175060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788177, 31.665262, 24.714455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152168, 31.752424, 24.855574>,  <43.370564, 31.804722, 24.940245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152168, 31.752424, 24.855574>,  <42.788177, 31.665262, 24.714455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152168, 31.752424, 24.855574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410488, 0.593873, 0.691964,
		-0.058733, -0.774488, 0.629856,
		0.909972, 0.217907, 0.352798,
		43.425159, 31.817797, 24.961412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760086, 31.343084, 25.361292>,  <42.788177, 31.665262, 24.714455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760086, 31.343084, 25.361292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034618, 31.633940, 25.355436>,  <43.199337, 31.808453, 25.351923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034618, 31.633940, 25.355436>,  <42.760086, 31.343084, 25.361292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034618, 31.633940, 25.355436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555095, 0.536737, 0.635439,
		0.469911, -0.427997, 0.772012,
		0.686334, 0.727139, -0.014640,
		43.240517, 31.852081, 25.351044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818481, 31.426159, 26.040457>,  <42.760086, 31.343084, 25.361292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818481, 31.426159, 26.040457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974468, 31.771578, 25.912571>,  <43.068058, 31.978828, 25.835840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974468, 31.771578, 25.912571>,  <42.818481, 31.426159, 26.040457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974468, 31.771578, 25.912571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426430, 0.477084, 0.768471,
		0.816141, -0.163339, 0.554287,
		0.389963, 0.863546, -0.319715,
		43.091457, 32.030643, 25.816656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068947, 31.777935, 26.647732>,  <42.818481, 31.426159, 26.040457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068947, 31.777935, 26.647732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082771, 32.077324, 26.382826>,  <43.091068, 32.256958, 26.223883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082771, 32.077324, 26.382826>,  <43.068947, 31.777935, 26.647732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082771, 32.077324, 26.382826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508181, 0.583763, 0.633225,
		0.860557, 0.314664, 0.400536,
		0.034565, 0.748470, -0.662267,
		43.093140, 32.301865, 26.184145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346844, 32.443428, 26.967722>,  <43.068947, 31.777935, 26.647732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346844, 32.443428, 26.967722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126762, 32.550156, 26.651220>,  <42.994713, 32.614193, 26.461319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126762, 32.550156, 26.651220>,  <43.346844, 32.443428, 26.967722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126762, 32.550156, 26.651220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344275, 0.790810, 0.506058,
		0.760757, 0.550844, -0.343248,
		-0.550203, 0.266815, -0.791256,
		42.961700, 32.630199, 26.413843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452141, 33.095650, 26.867567>,  <43.346844, 32.443428, 26.967722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452141, 33.095650, 26.867567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109009, 33.038792, 26.670013>,  <42.903130, 33.004677, 26.551481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109009, 33.038792, 26.670013>,  <43.452141, 33.095650, 26.867567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109009, 33.038792, 26.670013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442195, 0.693864, 0.568346,
		0.261897, 0.705937, -0.658076,
		-0.857831, -0.142149, -0.493882,
		42.851658, 32.996147, 26.521849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264782, 33.783123, 26.725893>,  <43.452141, 33.095650, 26.867567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264782, 33.783123, 26.725893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939266, 33.550869, 26.716053>,  <42.743958, 33.411518, 26.710148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939266, 33.550869, 26.716053>,  <43.264782, 33.783123, 26.725893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939266, 33.550869, 26.716053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479027, 0.646213, 0.594089,
		-0.329050, 0.495251, -0.804023,
		-0.813793, -0.580633, -0.024602,
		42.695129, 33.376678, 26.708672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598175, 34.221649, 26.615414>,  <43.264782, 33.783123, 26.725893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598175, 34.221649, 26.615414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439556, 33.880318, 26.750814>,  <42.344387, 33.675518, 26.832054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439556, 33.880318, 26.750814>,  <42.598175, 34.221649, 26.615414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439556, 33.880318, 26.750814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411571, 0.494852, 0.765331,
		-0.820586, 0.164171, -0.547436,
		-0.396545, -0.853329, 0.338500,
		42.320591, 33.624321, 26.852365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796646, 34.328732, 26.621552>,  <42.598175, 34.221649, 26.615414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796646, 34.328732, 26.621552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908627, 34.055393, 26.891268>,  <41.975815, 33.891392, 27.053097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908627, 34.055393, 26.891268>,  <41.796646, 34.328732, 26.621552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908627, 34.055393, 26.891268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423334, 0.542526, 0.725571,
		-0.861636, -0.488573, -0.137404,
		0.279949, -0.683346, 0.674290,
		41.992611, 33.850388, 27.093555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210846, 34.233738, 26.923878>,  <41.796646, 34.328732, 26.621552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210846, 34.233738, 26.923878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462704, 34.047077, 27.172321>,  <41.613819, 33.935081, 27.321388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462704, 34.047077, 27.172321>,  <41.210846, 34.233738, 26.923878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462704, 34.047077, 27.172321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494124, 0.376375, 0.783698,
		-0.599487, -0.800359, 0.006398,
		0.629648, -0.466655, 0.621108,
		41.651600, 33.907082, 27.358654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782227, 33.845287, 27.386591>,  <41.210846, 34.233738, 26.923878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782227, 33.845287, 27.386591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137489, 33.887131, 27.565578>,  <41.350647, 33.912235, 27.672972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137489, 33.887131, 27.565578>,  <40.782227, 33.845287, 27.386591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137489, 33.887131, 27.565578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448125, 0.412787, 0.792963,
		-0.101759, -0.904801, 0.413498,
		0.888160, 0.104608, 0.447469,
		41.403938, 33.918514, 27.699820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699245, 33.536995, 28.032600>,  <40.782227, 33.845287, 27.386591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699245, 33.536995, 28.032600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008736, 33.786861, 28.074816>,  <41.194431, 33.936783, 28.100145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008736, 33.786861, 28.074816>,  <40.699245, 33.536995, 28.032600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008736, 33.786861, 28.074816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391619, 0.340659, 0.854743,
		0.497977, -0.702668, 0.508209,
		0.773727, 0.624666, 0.105538,
		41.240852, 33.974262, 28.106478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858326, 33.635391, 28.676321>,  <40.699245, 33.536995, 28.032600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858326, 33.635391, 28.676321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078815, 33.955360, 28.581427>,  <41.211109, 34.147343, 28.524490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078815, 33.955360, 28.581427>,  <40.858326, 33.635391, 28.676321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078815, 33.955360, 28.581427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386166, 0.496640, 0.777319,
		0.739613, -0.336865, 0.582662,
		0.551225, 0.799919, -0.237236,
		41.244183, 34.195335, 28.510256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080563, 33.875633, 29.237066>,  <40.858326, 33.635391, 28.676321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080563, 33.875633, 29.237066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154613, 34.191891, 29.003616>,  <41.199043, 34.381645, 28.863546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154613, 34.191891, 29.003616>,  <41.080563, 33.875633, 29.237066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154613, 34.191891, 29.003616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144621, 0.609342, 0.779607,
		0.972015, -0.059920, 0.227147,
		0.185124, 0.790640, -0.583625,
		41.210152, 34.429081, 28.828529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766254, 34.227844, 29.518982>,  <41.080563, 33.875633, 29.237066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766254, 34.227844, 29.518982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522953, 34.477821, 29.323238>,  <41.376972, 34.627808, 29.205793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522953, 34.477821, 29.323238>,  <41.766254, 34.227844, 29.518982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522953, 34.477821, 29.323238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081856, 0.662622, 0.744467,
		0.789507, 0.412771, -0.454200,
		-0.608258, 0.624941, -0.489357,
		41.340477, 34.665302, 29.176432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114796, 34.901592, 29.576771>,  <41.766254, 34.227844, 29.518982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114796, 34.901592, 29.576771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730286, 34.960949, 29.483883>,  <41.499580, 34.996563, 29.428150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730286, 34.960949, 29.483883>,  <42.114796, 34.901592, 29.576771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730286, 34.960949, 29.483883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073602, 0.673791, 0.735247,
		0.265575, 0.723868, -0.636777,
		-0.961276, 0.148395, -0.232220,
		41.441902, 35.005466, 29.414217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965420, 35.684559, 29.771179>,  <42.114796, 34.901592, 29.576771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965420, 35.684559, 29.771179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602322, 35.525486, 29.717749>,  <41.384460, 35.430042, 29.685690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602322, 35.525486, 29.717749>,  <41.965420, 35.684559, 29.771179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602322, 35.525486, 29.717749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341994, 0.517089, 0.784639,
		-0.242966, 0.757937, -0.605391,
		-0.907749, -0.397681, -0.133575,
		41.329998, 35.406181, 29.677675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530807, 36.245312, 29.865479>,  <41.965420, 35.684559, 29.771179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530807, 36.245312, 29.865479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302765, 35.919727, 29.910118>,  <41.165939, 35.724377, 29.936901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302765, 35.919727, 29.910118>,  <41.530807, 36.245312, 29.865479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302765, 35.919727, 29.910118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440382, 0.417431, 0.794868,
		-0.693573, 0.404012, -0.596431,
		-0.570105, -0.813957, 0.111599,
		41.131733, 35.675541, 29.943598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853504, 36.487247, 29.860153>,  <41.530807, 36.245312, 29.865479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853504, 36.487247, 29.860153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876892, 36.137455, 30.052763>,  <40.890926, 35.927578, 30.168329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876892, 36.137455, 30.052763>,  <40.853504, 36.487247, 29.860153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876892, 36.137455, 30.052763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375463, 0.427671, 0.822268,
		-0.924992, -0.228872, -0.303329,
		0.058470, -0.874480, 0.481525,
		40.894432, 35.875111, 30.197220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213596, 36.449432, 30.189009>,  <40.853504, 36.487247, 29.860153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213596, 36.449432, 30.189009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478874, 36.234180, 30.397081>,  <40.638042, 36.105030, 30.521925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478874, 36.234180, 30.397081>,  <40.213596, 36.449432, 30.189009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478874, 36.234180, 30.397081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425576, 0.300593, 0.853539,
		-0.615675, -0.787442, -0.029662,
		0.663196, -0.538126, 0.520184,
		40.677834, 36.072742, 30.553137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840416, 36.353607, 30.766468>,  <40.213596, 36.449432, 30.189009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840416, 36.353607, 30.766468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191551, 36.222996, 30.906631>,  <40.402233, 36.144627, 30.990728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191551, 36.222996, 30.906631>,  <39.840416, 36.353607, 30.766468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191551, 36.222996, 30.906631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266903, 0.273984, 0.923957,
		-0.397706, -0.904605, 0.153360,
		0.877834, -0.326531, 0.350407,
		40.454903, 36.125038, 31.011753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683712, 35.868683, 31.338648>,  <39.840416, 36.353607, 30.766468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683712, 35.868683, 31.338648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050171, 36.021587, 31.386906>,  <40.270046, 36.113331, 31.415861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050171, 36.021587, 31.386906>,  <39.683712, 35.868683, 31.338648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050171, 36.021587, 31.386906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225439, 0.242494, 0.943596,
		0.331443, -0.891670, 0.308336,
		0.916146, 0.382259, 0.120644,
		40.325016, 36.136265, 31.423100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907738, 35.668369, 32.090084>,  <39.683712, 35.868683, 31.338648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907738, 35.668369, 32.090084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141991, 35.983681, 32.014557>,  <40.282543, 36.172867, 31.969240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141991, 35.983681, 32.014557>,  <39.907738, 35.668369, 32.090084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141991, 35.983681, 32.014557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086252, 0.292221, 0.952453,
		0.805973, -0.541503, 0.239126,
		0.585634, 0.788277, -0.188817,
		40.317680, 36.220165, 31.957912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348667, 35.564060, 32.553883>,  <39.907738, 35.668369, 32.090084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348667, 35.564060, 32.553883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396374, 35.937542, 32.418846>,  <40.424995, 36.161633, 32.337826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396374, 35.937542, 32.418846>,  <40.348667, 35.564060, 32.553883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396374, 35.937542, 32.418846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088093, 0.328726, 0.940308,
		0.988947, -0.141885, -0.043048,
		0.119264, 0.933706, -0.337592,
		40.432152, 36.217655, 32.317570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785572, 35.906715, 33.066273>,  <40.348667, 35.564060, 32.553883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785572, 35.906715, 33.066273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631702, 36.215832, 32.864353>,  <40.539379, 36.401302, 32.743202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631702, 36.215832, 32.864353>,  <40.785572, 35.906715, 33.066273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631702, 36.215832, 32.864353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109330, 0.581176, 0.806400,
		0.916554, 0.255013, -0.308054,
		-0.384676, 0.772789, -0.504799,
		40.516300, 36.447670, 32.712914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306194, 36.471115, 32.974186>,  <40.785572, 35.906715, 33.066273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306194, 36.471115, 32.974186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927223, 36.599094, 32.975540>,  <40.699841, 36.675880, 32.976353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927223, 36.599094, 32.975540>,  <41.306194, 36.471115, 32.974186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927223, 36.599094, 32.975540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158915, 0.461344, 0.872873,
		0.277714, 0.827523, -0.487935,
		-0.947429, 0.319950, 0.003384,
		40.642994, 36.695080, 32.976555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272346, 37.034336, 33.334934>,  <41.306194, 36.471115, 32.974186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272346, 37.034336, 33.334934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875214, 36.986576, 33.332710>,  <40.636936, 36.957920, 33.331375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875214, 36.986576, 33.332710>,  <41.272346, 37.034336, 33.334934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875214, 36.986576, 33.332710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062344, 0.477565, 0.876382,
		-0.101989, 0.870445, -0.481585,
		-0.992830, -0.119405, -0.005561,
		40.577366, 36.950756, 33.331043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981621, 37.653282, 33.706451>,  <41.272346, 37.034336, 33.334934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981621, 37.653282, 33.706451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696560, 37.372677, 33.707058>,  <40.525524, 37.204311, 33.707420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696560, 37.372677, 33.707058>,  <40.981621, 37.653282, 33.706451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696560, 37.372677, 33.707058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251763, 0.257771, 0.932829,
		-0.654783, 0.664403, -0.360317,
		-0.712653, -0.701515, 0.001512,
		40.482765, 37.162224, 33.707512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286453, 37.924072, 33.878265>,  <40.981621, 37.653282, 33.706451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286453, 37.924072, 33.878265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243889, 37.546783, 34.004124>,  <40.218349, 37.320408, 34.079639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243889, 37.546783, 34.004124>,  <40.286453, 37.924072, 33.878265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243889, 37.546783, 34.004124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066772, 0.308951, 0.948731,
		-0.992078, 0.121966, 0.030105,
		-0.106412, -0.943225, 0.314648,
		40.211964, 37.263817, 34.098518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032650, 38.199402, 34.471302>,  <40.286453, 37.924072, 33.878265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032650, 38.199402, 34.471302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006283, 37.803185, 34.519447>,  <39.990463, 37.565456, 34.548336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006283, 37.803185, 34.519447>,  <40.032650, 38.199402, 34.471302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006283, 37.803185, 34.519447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154353, 0.129300, 0.979518,
		-0.985814, 0.045986, -0.161415,
		-0.065915, -0.990538, 0.120368,
		39.986507, 37.506023, 34.555557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464371, 38.066021, 34.870010>,  <40.032650, 38.199402, 34.471302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464371, 38.066021, 34.870010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737907, 37.776321, 34.905411>,  <39.902031, 37.602501, 34.926651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737907, 37.776321, 34.905411>,  <39.464371, 38.066021, 34.870010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737907, 37.776321, 34.905411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096907, 0.030066, 0.994839,
		-0.723168, -0.688887, -0.049624,
		0.683840, -0.724244, 0.088501,
		39.943058, 37.559048, 34.931961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172947, 37.658268, 35.291180>,  <39.464371, 38.066021, 34.870010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172947, 37.658268, 35.291180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558186, 37.550812, 35.297855>,  <39.789330, 37.486336, 35.301861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558186, 37.550812, 35.297855>,  <39.172947, 37.658268, 35.291180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558186, 37.550812, 35.297855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097074, -0.288856, 0.952438,
		-0.251045, -0.918909, -0.304274,
		0.963096, -0.268642, 0.016687,
		39.847115, 37.470219, 35.302860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136494, 37.214127, 35.866287>,  <39.172947, 37.658268, 35.291180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136494, 37.214127, 35.866287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529903, 37.281181, 35.839214>,  <39.765949, 37.321415, 35.822971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529903, 37.281181, 35.839214>,  <39.136494, 37.214127, 35.866287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529903, 37.281181, 35.839214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086510, -0.107654, 0.990417,
		0.158742, -0.979954, -0.120382,
		0.983523, 0.167635, -0.067687,
		39.824959, 37.331470, 35.818909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396336, 36.623745, 36.132496>,  <39.136494, 37.214127, 35.866287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396336, 36.623745, 36.132496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654621, 36.928513, 36.152615>,  <39.809593, 37.111374, 36.164684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654621, 36.928513, 36.152615>,  <39.396336, 36.623745, 36.132496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654621, 36.928513, 36.152615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084002, -0.136352, 0.987093,
		0.758944, -0.633155, -0.152047,
		0.645715, 0.761920, 0.050297,
		39.848335, 37.157089, 36.167706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543831, 36.396446, 36.806576>,  <39.396336, 36.623745, 36.132496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543831, 36.396446, 36.806576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701271, 36.748981, 36.702019>,  <39.795734, 36.960503, 36.639286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701271, 36.748981, 36.702019>,  <39.543831, 36.396446, 36.806576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701271, 36.748981, 36.702019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121939, 0.231774, 0.965097,
		0.911160, -0.411732, -0.016244,
		0.393596, 0.881338, -0.261389,
		39.819351, 37.013382, 36.623604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210575, 36.565533, 37.309113>,  <39.543831, 36.396446, 36.806576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210575, 36.565533, 37.309113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070614, 36.901787, 37.143753>,  <39.986637, 37.103539, 37.044537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070614, 36.901787, 37.143753>,  <40.210575, 36.565533, 37.309113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070614, 36.901787, 37.143753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272235, 0.330998, 0.903509,
		0.896357, 0.428681, 0.113033,
		-0.349903, 0.840638, -0.413394,
		39.965641, 37.153976, 37.019733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475132, 37.038490, 37.753109>,  <40.210575, 36.565533, 37.309113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475132, 37.038490, 37.753109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161274, 37.179710, 37.549274>,  <39.972958, 37.264442, 37.426971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161274, 37.179710, 37.549274>,  <40.475132, 37.038490, 37.753109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161274, 37.179710, 37.549274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330639, 0.457009, 0.825724,
		0.524409, 0.816394, -0.241860,
		-0.784649, 0.353049, -0.509591,
		39.925880, 37.285625, 37.396397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493412, 37.671749, 38.073936>,  <40.475132, 37.038490, 37.753109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493412, 37.671749, 38.073936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134621, 37.647243, 37.898815>,  <39.919346, 37.632538, 37.793743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134621, 37.647243, 37.898815>,  <40.493412, 37.671749, 38.073936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134621, 37.647243, 37.898815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418865, 0.434444, 0.797377,
		0.141350, 0.898613, -0.415350,
		-0.896980, -0.061266, -0.437806,
		39.865528, 37.628864, 37.767475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094292, 38.187664, 38.318069>,  <40.493412, 37.671749, 38.073936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094292, 38.187664, 38.318069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782463, 37.994465, 38.158581>,  <39.595367, 37.878544, 38.062889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782463, 37.994465, 38.158581>,  <40.094292, 38.187664, 38.318069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782463, 37.994465, 38.158581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559082, 0.249708, 0.790615,
		-0.282304, 0.839259, -0.464703,
		-0.779571, -0.483001, -0.398721,
		39.548592, 37.849564, 38.038963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400005, 38.687809, 38.251232>,  <40.094292, 38.187664, 38.318069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400005, 38.687809, 38.251232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346062, 38.292576, 38.280907>,  <39.313694, 38.055435, 38.298710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346062, 38.292576, 38.280907>,  <39.400005, 38.687809, 38.251232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346062, 38.292576, 38.280907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559441, 0.137722, 0.817348,
		-0.817825, 0.068730, -0.571348,
		-0.134864, -0.988083, 0.074182,
		39.305603, 37.996151, 38.303162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586189, 38.580120, 38.209133>,  <39.400005, 38.687809, 38.251232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586189, 38.580120, 38.209133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765007, 38.282143, 38.407207>,  <38.872295, 38.103355, 38.526051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765007, 38.282143, 38.407207>,  <38.586189, 38.580120, 38.209133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765007, 38.282143, 38.407207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683088, 0.073114, 0.726667,
		-0.577534, -0.663104, -0.476180,
		0.447041, -0.744948, 0.495184,
		38.899120, 38.058659, 38.555763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199745, 37.939030, 38.207550>,  <38.586189, 38.580120, 38.209133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199745, 37.939030, 38.207550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420490, 37.966587, 38.539986>,  <38.552937, 37.983120, 38.739445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420490, 37.966587, 38.539986>,  <38.199745, 37.939030, 38.207550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420490, 37.966587, 38.539986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830850, -0.040256, 0.555039,
		0.071692, -0.996812, 0.035021,
		0.551859, 0.068889, 0.831087,
		38.586048, 37.987255, 38.789310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965038, 37.410854, 38.571289>,  <38.199745, 37.939030, 38.207550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965038, 37.410854, 38.571289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138893, 37.659939, 38.831543>,  <38.243206, 37.809387, 38.987694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138893, 37.659939, 38.831543>,  <37.965038, 37.410854, 38.571289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138893, 37.659939, 38.831543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807389, -0.050658, 0.587841,
		0.399013, -0.780813, 0.480749,
		0.434640, 0.622708, 0.650633,
		38.269283, 37.846752, 39.026733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909714, 37.111588, 39.217136>,  <37.965038, 37.410854, 38.571289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909714, 37.111588, 39.217136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995808, 37.496578, 39.283253>,  <38.047462, 37.727573, 39.322922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995808, 37.496578, 39.283253>,  <37.909714, 37.111588, 39.217136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995808, 37.496578, 39.283253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736035, 0.048640, 0.675194,
		0.641815, -0.266986, 0.718882,
		0.215234, 0.962472, 0.165293,
		38.060379, 37.785320, 39.332840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014027, 37.102921, 39.998859>,  <37.909714, 37.111588, 39.217136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014027, 37.102921, 39.998859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917049, 37.465061, 39.859402>,  <37.858864, 37.682346, 39.775726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917049, 37.465061, 39.859402>,  <38.014027, 37.102921, 39.998859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917049, 37.465061, 39.859402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679571, 0.097996, 0.727035,
		0.692390, 0.413197, 0.591494,
		-0.242444, 0.905354, -0.348648,
		37.844315, 37.736668, 39.754807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871971, 37.591801, 40.669910>,  <38.014027, 37.102921, 39.998859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871971, 37.591801, 40.669910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690983, 37.761959, 40.356400>,  <37.582390, 37.864056, 40.168293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690983, 37.761959, 40.356400>,  <37.871971, 37.591801, 40.669910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690983, 37.761959, 40.356400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777264, 0.242739, 0.580463,
		0.437180, 0.871846, 0.220813,
		-0.452475, 0.425397, -0.783775,
		37.555241, 37.889580, 40.121265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470219, 38.180550, 40.949444>,  <37.871971, 37.591801, 40.669910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470219, 38.180550, 40.949444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311581, 38.117840, 40.587643>,  <37.216396, 38.080212, 40.370560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311581, 38.117840, 40.587643>,  <37.470219, 38.180550, 40.949444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311581, 38.117840, 40.587643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916145, 0.130088, 0.379150,
		0.058223, 0.979029, -0.195224,
		-0.396595, -0.156779, -0.904507,
		37.192604, 38.070805, 40.316292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922939, 38.701004, 40.790222>,  <37.470219, 38.180550, 40.949444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922939, 38.701004, 40.790222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857998, 38.373753, 40.569565>,  <36.819035, 38.177402, 40.437172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857998, 38.373753, 40.569565>,  <36.922939, 38.701004, 40.790222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857998, 38.373753, 40.569565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915134, -0.084230, 0.394253,
		-0.369014, 0.568835, -0.735021,
		-0.162354, -0.818127, -0.551642,
		36.809292, 38.128315, 40.404072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768497, 38.927727, 41.465580>,  <36.922939, 38.701004, 40.790222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768497, 38.927727, 41.465580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536705, 38.651226, 41.638268>,  <36.397629, 38.485325, 41.741879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536705, 38.651226, 41.638268>,  <36.768497, 38.927727, 41.465580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536705, 38.651226, 41.638268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295439, -0.671861, -0.679205,
		0.759552, -0.266040, 0.593552,
		-0.579480, -0.691250, 0.431714,
		36.362862, 38.443851, 41.767780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478859, 38.234097, 41.203392>,  <36.768497, 38.927727, 41.465580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478859, 38.234097, 41.203392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824814, 38.088249, 41.341393>,  <37.032387, 38.000740, 41.424194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824814, 38.088249, 41.341393>,  <36.478859, 38.234097, 41.203392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824814, 38.088249, 41.341393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396914, -0.917505, 0.025358,
		0.307297, -0.158868, -0.938259,
		0.864886, -0.364616, 0.345004,
		37.084278, 37.978863, 41.444893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786842, 38.169411, 41.166203>,  <36.478859, 38.234097, 41.203392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786842, 38.169411, 41.166203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452179, 38.115746, 40.953789>,  <35.251381, 38.083546, 40.826340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452179, 38.115746, 40.953789>,  <35.786842, 38.169411, 41.166203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452179, 38.115746, 40.953789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269329, -0.743450, 0.612163,
		-0.476928, 0.655196, 0.585882,
		-0.836661, -0.134162, -0.531036,
		35.201180, 38.075497, 40.794479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155918, 37.647644, 40.974792>,  <35.786842, 38.169411, 41.166203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155918, 37.647644, 40.974792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967209, 37.754261, 40.638607>,  <35.853981, 37.818230, 40.436897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967209, 37.754261, 40.638607>,  <36.155918, 37.647644, 40.974792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967209, 37.754261, 40.638607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872152, 0.001044, -0.489233,
		-0.129525, -0.963822, -0.232959,
		-0.471777, 0.266544, -0.840465,
		35.825676, 37.834225, 40.386467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321167, 37.255207, 40.390182>,  <36.155918, 37.647644, 40.974792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321167, 37.255207, 40.390182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266094, 37.639404, 40.293442>,  <36.233051, 37.869923, 40.235397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266094, 37.639404, 40.293442>,  <36.321167, 37.255207, 40.390182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266094, 37.639404, 40.293442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786886, -0.042222, -0.615653,
		-0.601543, -0.275072, -0.749987,
		-0.137683, 0.960496, -0.241849,
		36.224789, 37.927551, 40.220886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428745, 37.361465, 39.632946>,  <36.321167, 37.255207, 40.390182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428745, 37.361465, 39.632946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532711, 37.684540, 39.844639>,  <36.595089, 37.878384, 39.971653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532711, 37.684540, 39.844639>,  <36.428745, 37.361465, 39.632946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532711, 37.684540, 39.844639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879539, 0.028201, -0.474990,
		-0.398569, 0.588933, -0.703065,
		0.259910, 0.807689, 0.529230,
		36.610683, 37.926846, 40.003407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612701, 37.919071, 39.153893>,  <36.428745, 37.361465, 39.632946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612701, 37.919071, 39.153893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800774, 37.952755, 39.505310>,  <36.913616, 37.972965, 39.716160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800774, 37.952755, 39.505310>,  <36.612701, 37.919071, 39.153893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800774, 37.952755, 39.505310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875117, 0.084634, -0.476453,
		-0.114476, 0.992848, -0.033898,
		0.470176, 0.084207, 0.878546,
		36.941826, 37.978016, 39.768875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022320, 38.573391, 39.172459>,  <36.612701, 37.919071, 39.153893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022320, 38.573391, 39.172459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186291, 38.336151, 39.449642>,  <37.284672, 38.193806, 39.615952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186291, 38.336151, 39.449642>,  <37.022320, 38.573391, 39.172459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186291, 38.336151, 39.449642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908755, 0.200398, -0.366066,
		0.078247, 0.779789, 0.621134,
		0.409928, -0.593102, 0.692957,
		37.309269, 38.158222, 39.657528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636654, 38.971630, 39.358707>,  <37.022320, 38.573391, 39.172459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636654, 38.971630, 39.358707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679550, 38.588669, 39.465942>,  <37.705288, 38.358891, 39.530285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679550, 38.588669, 39.465942>,  <37.636654, 38.971630, 39.358707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679550, 38.588669, 39.465942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929397, 0.000758, -0.369080,
		0.353157, 0.288742, 0.889892,
		0.107244, -0.957407, 0.268088,
		37.711723, 38.301445, 39.546368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335918, 38.853283, 39.324257>,  <37.636654, 38.971630, 39.358707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335918, 38.853283, 39.324257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204166, 38.498810, 39.454601>,  <38.125114, 38.286125, 39.532806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204166, 38.498810, 39.454601>,  <38.335918, 38.853283, 39.324257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204166, 38.498810, 39.454601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869582, -0.419180, -0.260991,
		0.367880, 0.197398, 0.908679,
		-0.329381, -0.886184, 0.325861,
		38.105350, 38.232956, 39.552361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950344, 38.651569, 39.788155>,  <38.335918, 38.853283, 39.324257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950344, 38.651569, 39.788155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724133, 38.388142, 39.589577>,  <38.588406, 38.230083, 39.470428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724133, 38.388142, 39.589577>,  <38.950344, 38.651569, 39.788155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724133, 38.388142, 39.589577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816283, -0.361054, -0.450912,
		0.117714, -0.660245, 0.741768,
		-0.565530, -0.658572, -0.496446,
		38.554474, 38.190571, 39.440643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298248, 38.077560, 39.883995>,  <38.950344, 38.651569, 39.788155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298248, 38.077560, 39.883995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086208, 38.062698, 39.545147>,  <38.958984, 38.053783, 39.341839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086208, 38.062698, 39.545147>,  <39.298248, 38.077560, 39.883995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086208, 38.062698, 39.545147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832741, -0.211087, -0.511845,
		-0.159800, -0.976761, 0.142836,
		-0.530101, -0.037153, -0.847120,
		38.927177, 38.051552, 39.291012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357780, 37.420769, 39.589981>,  <39.298248, 38.077560, 39.883995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357780, 37.420769, 39.589981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085274, 37.563068, 39.334072>,  <38.921768, 37.648449, 39.180527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085274, 37.563068, 39.334072>,  <39.357780, 37.420769, 39.589981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085274, 37.563068, 39.334072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505258, -0.403896, -0.762615,
		-0.529702, -0.842800, 0.095418,
		-0.681270, 0.355748, -0.639776,
		38.880894, 37.669792, 39.142139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277512, 36.916466, 39.073147>,  <39.357780, 37.420769, 39.589981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277512, 36.916466, 39.073147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168541, 37.263962, 38.907703>,  <39.103161, 37.472462, 38.808437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168541, 37.263962, 38.907703>,  <39.277512, 36.916466, 39.073147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168541, 37.263962, 38.907703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545154, -0.214848, -0.810337,
		-0.792838, -0.446235, -0.415069,
		-0.272424, 0.868743, -0.413607,
		39.086815, 37.524586, 38.783623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090458, 36.719383, 38.360638>,  <39.277512, 36.916466, 39.073147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090458, 36.719383, 38.360638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098488, 37.119282, 38.356514>,  <39.103306, 37.359222, 38.354038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098488, 37.119282, 38.356514>,  <39.090458, 36.719383, 38.360638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098488, 37.119282, 38.356514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434221, -0.018011, -0.900626,
		-0.900583, 0.013604, -0.434472,
		0.020077, 0.999745, -0.010314,
		39.104511, 37.419205, 38.353420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734806, 36.873196, 37.782032>,  <39.090458, 36.719383, 38.360638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734806, 36.873196, 37.782032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983032, 37.175518, 37.865612>,  <39.131969, 37.356911, 37.915760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983032, 37.175518, 37.865612>,  <38.734806, 36.873196, 37.782032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983032, 37.175518, 37.865612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509994, -0.186594, -0.839696,
		-0.595654, 0.627652, -0.501248,
		0.620566, 0.755802, 0.208954,
		39.169201, 37.402260, 37.928299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668911, 37.323586, 37.213322>,  <38.734806, 36.873196, 37.782032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668911, 37.323586, 37.213322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030087, 37.400330, 37.367146>,  <39.246792, 37.446377, 37.459442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030087, 37.400330, 37.367146>,  <38.668911, 37.323586, 37.213322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030087, 37.400330, 37.367146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348710, 0.195954, -0.916517,
		-0.251202, 0.961661, 0.110030,
		0.902939, 0.191862, 0.384564,
		39.300968, 37.457890, 37.482513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920197, 37.788177, 36.689339>,  <38.668911, 37.323586, 37.213322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920197, 37.788177, 36.689339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213772, 37.696163, 36.944969>,  <39.389915, 37.640957, 37.098347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213772, 37.696163, 36.944969>,  <38.920197, 37.788177, 36.689339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213772, 37.696163, 36.944969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655730, -0.005332, -0.754977,
		0.177078, 0.973168, 0.146927,
		0.733936, -0.230034, 0.639079,
		39.433952, 37.627151, 37.136692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429356, 38.311886, 36.615898>,  <38.920197, 37.788177, 36.689339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429356, 38.311886, 36.615898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580059, 37.958565, 36.727486>,  <39.670483, 37.746571, 36.794437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580059, 37.958565, 36.727486>,  <39.429356, 38.311886, 36.615898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580059, 37.958565, 36.727486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635189, 0.027153, -0.771879,
		0.674229, 0.468015, 0.571295,
		0.376763, -0.883303, 0.278970,
		39.693089, 37.693573, 36.811176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201103, 38.350819, 36.464928>,  <39.429356, 38.311886, 36.615898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201103, 38.350819, 36.464928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096546, 37.966072, 36.497150>,  <40.033813, 37.735226, 36.516483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096546, 37.966072, 36.497150>,  <40.201103, 38.350819, 36.464928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096546, 37.966072, 36.497150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311202, -0.162987, -0.936263,
		0.913689, -0.219659, 0.341938,
		-0.261390, -0.961865, 0.080561,
		40.018127, 37.677513, 36.521320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759998, 38.076473, 36.211067>,  <40.201103, 38.350819, 36.464928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759998, 38.076473, 36.211067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467392, 37.804588, 36.189644>,  <40.291828, 37.641457, 36.176788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467392, 37.804588, 36.189644>,  <40.759998, 38.076473, 36.211067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467392, 37.804588, 36.189644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295898, -0.245712, -0.923076,
		0.614266, -0.691098, 0.380869,
		-0.731521, -0.679712, -0.053562,
		40.247936, 37.600674, 36.173576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084381, 37.596645, 35.869427>,  <40.759998, 38.076473, 36.211067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084381, 37.596645, 35.869427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690281, 37.540283, 35.830601>,  <40.453819, 37.506466, 35.807304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690281, 37.540283, 35.830601>,  <41.084381, 37.596645, 35.869427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690281, 37.540283, 35.830601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134084, -0.283423, -0.949575,
		0.106291, -0.948586, 0.298137,
		-0.985253, -0.140907, -0.097065,
		40.394707, 37.498013, 35.801483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071438, 37.166634, 35.343601>,  <41.084381, 37.596645, 35.869427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071438, 37.166634, 35.343601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682861, 37.258297, 35.368206>,  <40.449715, 37.313293, 35.382969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682861, 37.258297, 35.368206>,  <41.071438, 37.166634, 35.343601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682861, 37.258297, 35.368206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108359, -0.197851, -0.974225,
		-0.211073, -0.953072, 0.217031,
		-0.971446, 0.229150, 0.061513,
		40.391430, 37.327045, 35.386658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763206, 36.551697, 35.015327>,  <41.071438, 37.166634, 35.343601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763206, 36.551697, 35.015327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545223, 36.886032, 34.988834>,  <40.414433, 37.086636, 34.972939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545223, 36.886032, 34.988834>,  <40.763206, 36.551697, 35.015327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545223, 36.886032, 34.988834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089594, -0.136590, -0.986568,
		-0.833662, -0.531705, 0.149323,
		-0.544959, 0.835843, -0.066233,
		40.381737, 37.136784, 34.968964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695557, 36.409359, 34.428211>,  <40.763206, 36.551697, 35.015327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695557, 36.409359, 34.428211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489151, 36.747070, 34.486080>,  <40.365307, 36.949696, 34.520802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489151, 36.747070, 34.486080>,  <40.695557, 36.409359, 34.428211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489151, 36.747070, 34.486080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246888, 0.015138, -0.968926,
		-0.820230, -0.535696, 0.200630,
		-0.516013, 0.844275, 0.144674,
		40.334347, 37.000351, 34.529484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020111, 36.053040, 34.381680>,  <40.695557, 36.409359, 34.428211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020111, 36.053040, 34.381680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089722, 36.435699, 34.288265>,  <40.131489, 36.665295, 34.232216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089722, 36.435699, 34.288265>,  <40.020111, 36.053040, 34.381680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089722, 36.435699, 34.288265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244307, -0.187800, -0.951338,
		-0.953955, 0.222610, 0.201035,
		0.174023, 0.956648, -0.233538,
		40.141930, 36.722694, 34.218204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118473, 35.227028, 34.369186>,  <40.020111, 36.053040, 34.381680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118473, 35.227028, 34.369186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213608, 35.019032, 34.697342>,  <40.270691, 34.894234, 34.894234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213608, 35.019032, 34.697342>,  <40.118473, 35.227028, 34.369186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213608, 35.019032, 34.697342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969554, 0.177779, -0.168403,
		-0.058279, 0.835464, 0.546446,
		0.237841, -0.519994, 0.820389,
		40.284962, 34.863033, 34.943459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658649, 35.711246, 34.782902>,  <40.118473, 35.227028, 34.369186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658649, 35.711246, 34.782902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665459, 35.315552, 34.841026>,  <40.669544, 35.078133, 34.875900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665459, 35.315552, 34.841026>,  <40.658649, 35.711246, 34.782902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665459, 35.315552, 34.841026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996848, 0.005531, -0.079146,
		0.077491, 0.146203, 0.986215,
		0.017027, -0.989239, 0.145313,
		40.670567, 35.018780, 34.884621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971218, 35.593216, 35.403938>,  <40.658649, 35.711246, 34.782902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971218, 35.593216, 35.403938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089371, 35.291012, 35.170029>,  <41.160263, 35.109692, 35.029682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089371, 35.291012, 35.170029>,  <40.971218, 35.593216, 35.403938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089371, 35.291012, 35.170029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942398, 0.129858, 0.308257,
		-0.156953, -0.642141, 0.750347,
		0.295383, -0.755508, -0.584771,
		41.177986, 35.064358, 34.994598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482815, 35.111835, 35.767235>,  <40.971218, 35.593216, 35.403938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482815, 35.111835, 35.767235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544117, 35.080250, 35.373222>,  <41.580898, 35.061298, 35.136814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544117, 35.080250, 35.373222>,  <41.482815, 35.111835, 35.767235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544117, 35.080250, 35.373222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986468, 0.070986, 0.147790,
		0.058253, -0.994347, 0.088773,
		0.153256, -0.078962, -0.985027,
		41.590096, 35.056561, 35.077713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153000, 34.808132, 35.659874>,  <41.482815, 35.111835, 35.767235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153000, 34.808132, 35.659874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061813, 34.997437, 35.319508>,  <42.007103, 35.111019, 35.115288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061813, 34.997437, 35.319508>,  <42.153000, 34.808132, 35.659874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061813, 34.997437, 35.319508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966404, 0.216541, -0.138467,
		0.118727, -0.853894, -0.506723,
		-0.227962, 0.473260, -0.850916,
		41.993423, 35.139416, 35.064232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613274, 34.608341, 35.207466>,  <42.153000, 34.808132, 35.659874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613274, 34.608341, 35.207466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483551, 34.978203, 35.127632>,  <42.405716, 35.200119, 35.079731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483551, 34.978203, 35.127632>,  <42.613274, 34.608341, 35.207466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483551, 34.978203, 35.127632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940985, 0.336934, 0.031961,
		0.096800, -0.177443, -0.979359,
		-0.324308, 0.924656, -0.199586,
		42.386257, 35.255600, 35.067757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743778, 34.902348, 34.426117>,  <42.613274, 34.608341, 35.207466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743778, 34.902348, 34.426117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751083, 35.127228, 34.756836>,  <42.755466, 35.262157, 34.955269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751083, 35.127228, 34.756836>,  <42.743778, 34.902348, 34.426117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751083, 35.127228, 34.756836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987220, 0.120795, -0.103948,
		-0.158313, 0.818132, -0.552809,
		0.018267, 0.562200, 0.826800,
		42.756565, 35.295887, 35.004875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055733, 35.667133, 34.272293>,  <42.743778, 34.902348, 34.426117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055733, 35.667133, 34.272293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170227, 35.619225, 34.652550>,  <43.238926, 35.590477, 34.880703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170227, 35.619225, 34.652550>,  <43.055733, 35.667133, 34.272293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170227, 35.619225, 34.652550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956829, -0.016524, -0.290182,
		0.050465, 0.992664, 0.109874,
		0.286238, -0.119775, 0.950643,
		43.256100, 35.583294, 34.937744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545963, 36.278881, 34.389046>,  <43.055733, 35.667133, 34.272293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545963, 36.278881, 34.389046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633362, 35.972050, 34.630325>,  <43.685802, 35.787952, 34.775093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633362, 35.972050, 34.630325>,  <43.545963, 36.278881, 34.389046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633362, 35.972050, 34.630325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969560, 0.100643, -0.223214,
		0.110514, 0.633612, 0.765717,
		0.218495, -0.767077, 0.603202,
		43.698910, 35.741928, 34.811287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811680, 36.593250, 35.019123>,  <43.545963, 36.278881, 34.389046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811680, 36.593250, 35.019123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928371, 36.243603, 34.863781>,  <43.998386, 36.033813, 34.770576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928371, 36.243603, 34.863781>,  <43.811680, 36.593250, 35.019123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928371, 36.243603, 34.863781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870406, 0.410949, -0.271136,
		0.396597, -0.258926, 0.880720,
		0.291727, -0.874116, -0.388352,
		44.015888, 35.981369, 34.747276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459152, 36.708565, 35.475128>,  <43.811680, 36.593250, 35.019123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459152, 36.708565, 35.475128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515404, 36.433689, 35.190033>,  <44.549156, 36.268764, 35.018974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515404, 36.433689, 35.190033>,  <44.459152, 36.708565, 35.475128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515404, 36.433689, 35.190033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969165, 0.242675, -0.042748,
		0.202340, -0.684748, 0.700128,
		0.140632, -0.687189, -0.712736,
		44.557594, 36.227531, 34.976212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896309, 36.096195, 35.766506>,  <44.459152, 36.708565, 35.475128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896309, 36.096195, 35.766506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955833, 36.206371, 35.386616>,  <44.991547, 36.272476, 35.158680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955833, 36.206371, 35.386616>,  <44.896309, 36.096195, 35.766506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955833, 36.206371, 35.386616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961364, 0.184632, 0.204180,
		0.231591, -0.943420, -0.237327,
		0.148809, 0.275444, -0.949730,
		45.000477, 36.289005, 35.101696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455105, 35.641182, 35.565285>,  <44.896309, 36.096195, 35.766506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455105, 35.641182, 35.565285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453751, 36.013596, 35.419315>,  <45.452938, 36.237045, 35.331734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453751, 36.013596, 35.419315>,  <45.455105, 35.641182, 35.565285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453751, 36.013596, 35.419315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909139, 0.154851, 0.386635,
		0.416478, -0.330452, -0.846964,
		-0.003389, 0.931033, -0.364919,
		45.452736, 36.292904, 35.309841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579201, 34.903801, 35.393234>,  <45.455105, 35.641182, 35.565285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579201, 34.903801, 35.393234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883904, 35.128654, 35.522064>,  <46.066727, 35.263565, 35.599361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883904, 35.128654, 35.522064>,  <45.579201, 34.903801, 35.393234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883904, 35.128654, 35.522064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627170, 0.515206, 0.584141,
		0.162428, -0.646971, 0.745014,
		0.761758, 0.562132, 0.322077,
		46.112431, 35.297295, 35.618687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856544, 34.778347, 36.131004>,  <45.579201, 34.903801, 35.393234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856544, 34.778347, 36.131004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849815, 35.162697, 36.020420>,  <45.845776, 35.393307, 35.954071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849815, 35.162697, 36.020420>,  <45.856544, 34.778347, 36.131004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849815, 35.162697, 36.020420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656296, 0.197981, 0.728065,
		0.754316, 0.193689, 0.627289,
		-0.016827, 0.960879, -0.276458,
		45.844769, 35.450962, 35.937481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.901299, 34.743877, 36.905350>,  <45.856544, 34.778347, 36.131004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.901299, 34.743877, 36.905350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726254, 35.052418, 36.720524>,  <45.621227, 35.237541, 36.609627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726254, 35.052418, 36.720524>,  <45.901299, 34.743877, 36.905350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726254, 35.052418, 36.720524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516265, 0.205193, 0.831485,
		0.736181, 0.602421, 0.308426,
		-0.437617, 0.771353, -0.462068,
		45.594967, 35.283825, 36.581905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359749, 35.278522, 36.678280>,  <45.901299, 34.743877, 36.905350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359749, 35.278522, 36.678280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622566, 35.308773, 36.378258>,  <46.780254, 35.326923, 36.198246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622566, 35.308773, 36.378258>,  <46.359749, 35.278522, 36.678280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622566, 35.308773, 36.378258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629458, 0.492458, 0.601056,
		0.414826, -0.867044, 0.275960,
		0.657041, 0.075629, -0.750052,
		46.819679, 35.331463, 36.153244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981476, 35.771126, 36.422203>,  <46.359749, 35.278522, 36.678280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981476, 35.771126, 36.422203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289257, 36.006378, 36.521843>,  <47.473927, 36.147530, 36.581627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289257, 36.006378, 36.521843>,  <46.981476, 35.771126, 36.422203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289257, 36.006378, 36.521843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635736, -0.667653, -0.387400,
		-0.061532, 0.456445, -0.887622,
		0.769450, 0.588131, 0.249097,
		47.520092, 36.182816, 36.596573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.222622, 36.065300, 35.807613>,  <46.981476, 35.771126, 36.422203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.222622, 36.065300, 35.807613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486389, 36.002136, 36.101616>,  <47.644650, 35.964237, 36.278019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486389, 36.002136, 36.101616>,  <47.222622, 36.065300, 35.807613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.486389, 36.002136, 36.101616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522066, -0.607312, -0.598848,
		0.540942, 0.778612, -0.318033,
		0.659416, -0.157908, 0.735007,
		47.684216, 35.954765, 36.322117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.335960, 35.292164, 35.561054>,  <47.222622, 36.065300, 35.807613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.335960, 35.292164, 35.561054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.416897, 34.994289, 35.306652>,  <47.465458, 34.815567, 35.154011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.416897, 34.994289, 35.306652>,  <47.335960, 35.292164, 35.561054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.416897, 34.994289, 35.306652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517898, 0.632565, -0.575884,
		0.831167, -0.212861, 0.513665,
		0.202343, -0.744682, -0.636008,
		47.477600, 34.770885, 35.115849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.021114, 35.356129, 35.424618>,  <47.335960, 35.292164, 35.561054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.021114, 35.356129, 35.424618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.854530, 35.167896, 35.113461>,  <47.754578, 35.054958, 34.926765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.854530, 35.167896, 35.113461>,  <48.021114, 35.356129, 35.424618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.854530, 35.167896, 35.113461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389582, 0.680716, -0.620365,
		0.821453, -0.561411, -0.100164,
		-0.416462, -0.470579, -0.777891,
		47.729591, 35.026722, 34.880093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.429173, 29.879623, 27.087778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127022, 29.786020, 26.842943>,  <37.945732, 29.729858, 26.696041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127022, 29.786020, 26.842943>,  <38.429173, 29.879623, 27.087778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127022, 29.786020, 26.842943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592589, 0.642669, 0.485608,
		0.279733, 0.729532, -0.624125,
		-0.755372, -0.234009, -0.612088,
		37.900410, 29.715818, 26.659317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081230, 30.580410, 26.895971>,  <38.429173, 29.879623, 27.087778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081230, 30.580410, 26.895971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813480, 30.292761, 26.821354>,  <37.652828, 30.120173, 26.776585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813480, 30.292761, 26.821354>,  <38.081230, 30.580410, 26.895971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813480, 30.292761, 26.821354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731228, 0.593358, 0.336498,
		-0.131297, 0.361649, -0.923023,
		-0.669378, -0.719121, -0.186542,
		37.612667, 30.077024, 26.765390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575367, 30.881136, 26.457113>,  <38.081230, 30.580410, 26.895971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575367, 30.881136, 26.457113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424538, 30.569365, 26.657236>,  <37.334038, 30.382301, 26.777309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424538, 30.569365, 26.657236>,  <37.575367, 30.881136, 26.457113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424538, 30.569365, 26.657236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793632, 0.550380, 0.259286,
		-0.477454, -0.299289, -0.826113,
		-0.377075, -0.779428, 0.500307,
		37.311417, 30.335537, 26.807329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808353, 30.856575, 26.378860>,  <37.575367, 30.881136, 26.457113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808353, 30.856575, 26.378860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873631, 30.663063, 26.722797>,  <36.912796, 30.546957, 26.929159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873631, 30.663063, 26.722797>,  <36.808353, 30.856575, 26.378860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873631, 30.663063, 26.722797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630356, 0.619312, 0.468085,
		-0.758959, -0.618395, -0.203885,
		0.163193, -0.483778, 0.859841,
		36.922588, 30.517929, 26.980749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203239, 31.012386, 26.710493>,  <36.808353, 30.856575, 26.378860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203239, 31.012386, 26.710493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401146, 30.856348, 27.021114>,  <36.519890, 30.762726, 27.207487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401146, 30.856348, 27.021114>,  <36.203239, 31.012386, 26.710493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401146, 30.856348, 27.021114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571681, 0.526912, 0.628924,
		-0.654515, -0.755109, 0.037687,
		0.494764, -0.390095, 0.776553,
		36.549576, 30.739319, 27.254080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743290, 30.687973, 27.233557>,  <36.203239, 31.012386, 26.710493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743290, 30.687973, 27.233557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078812, 30.770826, 27.434950>,  <36.280125, 30.820538, 27.555786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078812, 30.770826, 27.434950>,  <35.743290, 30.687973, 27.233557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078812, 30.770826, 27.434950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527968, 0.535169, 0.659428,
		-0.132860, -0.818957, 0.558263,
		0.838808, 0.207133, 0.503485,
		36.330456, 30.832966, 27.585995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520622, 30.671766, 27.859594>,  <35.743290, 30.687973, 27.233557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520622, 30.671766, 27.859594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875546, 30.836721, 27.942171>,  <36.088501, 30.935694, 27.991716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875546, 30.836721, 27.942171>,  <35.520622, 30.671766, 27.859594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875546, 30.836721, 27.942171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389248, 0.429631, 0.814802,
		0.247319, -0.803339, 0.541737,
		0.887310, 0.412386, 0.206442,
		36.141739, 30.960438, 28.004103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729820, 30.553513, 28.587372>,  <35.520622, 30.671766, 27.859594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729820, 30.553513, 28.587372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.938618, 30.874008, 28.470385>,  <36.063896, 31.066305, 28.400192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.938618, 30.874008, 28.470385>,  <35.729820, 30.553513, 28.587372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938618, 30.874008, 28.470385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217677, 0.456679, 0.862590,
		0.824704, -0.386604, 0.412795,
		0.521996, 0.801238, -0.292470,
		36.095215, 31.114380, 28.382643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204990, 30.780060, 29.200336>,  <35.729820, 30.553513, 28.587372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204990, 30.780060, 29.200336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185432, 31.097342, 28.957541>,  <36.173698, 31.287710, 28.811863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185432, 31.097342, 28.957541>,  <36.204990, 30.780060, 29.200336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185432, 31.097342, 28.957541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226731, 0.583038, 0.780167,
		0.972729, 0.175767, 0.151338,
		-0.048892, 0.793204, -0.606990,
		36.170765, 31.335302, 28.775444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541080, 31.253517, 29.582310>,  <36.204990, 30.780060, 29.200336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541080, 31.253517, 29.582310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.310947, 31.448151, 29.319332>,  <36.172867, 31.564930, 29.161545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.310947, 31.448151, 29.319332>,  <36.541080, 31.253517, 29.582310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310947, 31.448151, 29.319332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163906, 0.718906, 0.675506,
		0.801331, 0.496397, -0.333854,
		-0.575329, 0.486584, -0.657445,
		36.138348, 31.594126, 29.122099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797592, 31.967131, 29.523895>,  <36.541080, 31.253517, 29.582310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797592, 31.967131, 29.523895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417282, 31.952824, 29.400770>,  <36.189095, 31.944239, 29.326895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417282, 31.952824, 29.400770>,  <36.797592, 31.967131, 29.523895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417282, 31.952824, 29.400770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220222, 0.776828, 0.589949,
		0.218015, 0.628695, -0.746466,
		-0.950774, -0.035770, -0.307813,
		36.132050, 31.942093, 29.308426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611832, 32.661320, 29.421230>,  <36.797592, 31.967131, 29.523895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611832, 32.661320, 29.421230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258598, 32.474545, 29.439678>,  <36.046658, 32.362480, 29.450747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258598, 32.474545, 29.439678>,  <36.611832, 32.661320, 29.421230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258598, 32.474545, 29.439678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343621, 0.710518, 0.614076,
		-0.319502, 0.526436, -0.787899,
		-0.883087, -0.466937, 0.046118,
		35.993671, 32.334465, 29.453514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148785, 33.264954, 29.394512>,  <36.611832, 32.661320, 29.421230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148785, 33.264954, 29.394512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.934723, 32.949471, 29.515539>,  <35.806286, 32.760181, 29.588156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.934723, 32.949471, 29.515539>,  <36.148785, 33.264954, 29.394512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934723, 32.949471, 29.515539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474171, 0.576882, 0.665108,
		-0.699126, 0.212463, -0.682703,
		-0.535150, -0.788712, 0.302569,
		35.774178, 32.712856, 29.606310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521545, 33.559246, 29.554487>,  <36.148785, 33.264954, 29.394512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521545, 33.559246, 29.554487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555614, 33.221779, 29.766512>,  <35.576057, 33.019299, 29.893726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555614, 33.221779, 29.766512>,  <35.521545, 33.559246, 29.554487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555614, 33.221779, 29.766512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351727, 0.472288, 0.808228,
		-0.932220, -0.255277, -0.256515,
		0.085174, -0.843670, 0.530064,
		35.581165, 32.968678, 29.925531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217209, 33.794193, 30.084911>,  <35.521545, 33.559246, 29.554487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217209, 33.794193, 30.084911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326698, 33.430767, 30.211140>,  <35.392391, 33.212711, 30.286877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326698, 33.430767, 30.211140>,  <35.217209, 33.794193, 30.084911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326698, 33.430767, 30.211140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278905, 0.239024, 0.930097,
		-0.920482, -0.342603, -0.187977,
		0.273723, -0.908565, 0.315571,
		35.408813, 33.158199, 30.305811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616367, 33.444511, 30.484766>,  <35.217209, 33.794193, 30.084911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616367, 33.444511, 30.484766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.968700, 33.292892, 30.598232>,  <35.180099, 33.201923, 30.666313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.968700, 33.292892, 30.598232>,  <34.616367, 33.444511, 30.484766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968700, 33.292892, 30.598232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149787, 0.345273, 0.926472,
		-0.449116, -0.858553, 0.247350,
		0.880828, -0.379044, 0.283668,
		35.232948, 33.179180, 30.683332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517193, 33.245811, 31.253300>,  <34.616367, 33.444511, 30.484766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517193, 33.245811, 31.253300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910847, 33.269646, 31.186459>,  <35.147041, 33.283947, 31.146353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910847, 33.269646, 31.186459>,  <34.517193, 33.245811, 31.253300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910847, 33.269646, 31.186459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139005, 0.326285, 0.934995,
		0.110236, -0.943392, 0.312826,
		0.984137, 0.059586, -0.167104,
		35.206089, 33.287521, 31.136328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852768, 32.818947, 31.641638>,  <34.517193, 33.245811, 31.253300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852768, 32.818947, 31.641638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136326, 33.086395, 31.551823>,  <35.306461, 33.246864, 31.497932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136326, 33.086395, 31.551823>,  <34.852768, 32.818947, 31.641638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136326, 33.086395, 31.551823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239815, 0.070894, 0.968226,
		0.663292, -0.740219, -0.110089,
		0.708895, 0.668618, -0.224539,
		35.348995, 33.286980, 31.484461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509892, 32.528679, 31.885189>,  <34.852768, 32.818947, 31.641638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509892, 32.528679, 31.885189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556591, 32.925293, 31.862461>,  <35.584610, 33.163261, 31.848824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556591, 32.925293, 31.862461>,  <35.509892, 32.528679, 31.885189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556591, 32.925293, 31.862461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325044, 0.015913, 0.945565,
		0.938465, -0.128861, -0.320435,
		0.116748, 0.991535, -0.056819,
		35.591614, 33.222752, 31.845415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186615, 32.726082, 32.154919>,  <35.509892, 32.528679, 31.885189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186615, 32.726082, 32.154919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.978455, 33.067459, 32.166332>,  <35.853558, 33.272285, 32.173180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.978455, 33.067459, 32.166332>,  <36.186615, 32.726082, 32.154919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978455, 33.067459, 32.166332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125512, 0.043398, 0.991142,
		0.844645, 0.519376, -0.129702,
		-0.520405, 0.853443, 0.028532,
		35.822334, 33.323490, 32.174892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455788, 33.116211, 32.700287>,  <36.186615, 32.726082, 32.154919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455788, 33.116211, 32.700287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108704, 33.305374, 32.639057>,  <35.900452, 33.418873, 32.602318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108704, 33.305374, 32.639057>,  <36.455788, 33.116211, 32.700287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108704, 33.305374, 32.639057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055402, 0.214027, 0.975255,
		0.493973, 0.854720, -0.159513,
		-0.867711, 0.472912, -0.153077,
		35.848389, 33.447247, 32.593136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546974, 33.791431, 32.952957>,  <36.455788, 33.116211, 32.700287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546974, 33.791431, 32.952957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159275, 33.693203, 32.946671>,  <35.926655, 33.634266, 32.942898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159275, 33.693203, 32.946671>,  <36.546974, 33.791431, 32.952957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159275, 33.693203, 32.946671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075367, 0.235436, 0.968963,
		-0.234249, 0.940353, -0.246705,
		-0.969251, -0.245573, -0.015721,
		35.868500, 33.619530, 32.941956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236408, 33.950909, 32.565060>,  <36.546974, 33.791431, 32.952957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236408, 33.950909, 32.565060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842911, 33.931870, 32.495808>,  <36.606812, 33.920448, 32.454254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842911, 33.931870, 32.495808>,  <37.236408, 33.950909, 32.565060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842911, 33.931870, 32.495808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082069, 0.738431, -0.669317,
		0.159703, -0.672648, -0.722523,
		-0.983748, -0.047595, -0.173133,
		36.547787, 33.917591, 32.443867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474579, 34.194901, 33.254677>,  <37.236408, 33.950909, 32.565060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474579, 34.194901, 33.254677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743317, 34.243336, 33.546970>,  <37.904560, 34.272396, 33.722347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743317, 34.243336, 33.546970>,  <37.474579, 34.194901, 33.254677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743317, 34.243336, 33.546970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579066, -0.701020, -0.416238,
		0.461856, 0.702787, -0.541091,
		0.671842, 0.121085, 0.730731,
		37.944870, 34.279663, 33.766190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160980, 34.316586, 32.981930>,  <37.474579, 34.194901, 33.254677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160980, 34.316586, 32.981930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223011, 34.188271, 33.355679>,  <38.260227, 34.111282, 33.579926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223011, 34.188271, 33.355679>,  <38.160980, 34.316586, 32.981930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223011, 34.188271, 33.355679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570278, -0.743242, -0.349820,
		0.806682, 0.587098, 0.067684,
		0.155073, -0.320792, 0.934369,
		38.269531, 34.092033, 33.635990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849915, 34.321079, 33.063267>,  <38.160980, 34.316586, 32.981930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849915, 34.321079, 33.063267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701721, 34.066296, 33.333683>,  <38.612804, 33.913425, 33.495934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701721, 34.066296, 33.333683>,  <38.849915, 34.321079, 33.063267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701721, 34.066296, 33.333683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545107, -0.738413, -0.396994,
		0.752063, 0.221433, 0.620780,
		-0.370485, -0.636956, 0.676039,
		38.590576, 33.875210, 33.536495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455368, 34.089699, 33.424221>,  <38.849915, 34.321079, 33.063267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455368, 34.089699, 33.424221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164890, 33.822250, 33.488205>,  <38.990604, 33.661781, 33.526596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164890, 33.822250, 33.488205>,  <39.455368, 34.089699, 33.424221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164890, 33.822250, 33.488205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540587, -0.699106, -0.467993,
		0.424740, -0.253380, 0.869134,
		-0.726197, -0.668618, 0.159964,
		38.947033, 33.621666, 33.536194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772335, 33.539486, 33.617836>,  <39.455368, 34.089699, 33.424221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772335, 33.539486, 33.617836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.421062, 33.437508, 33.455952>,  <39.210297, 33.376320, 33.358822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.421062, 33.437508, 33.455952>,  <39.772335, 33.539486, 33.617836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421062, 33.437508, 33.455952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457692, -0.693691, -0.556157,
		-0.138954, -0.673643, 0.725877,
		-0.878185, -0.254948, -0.404712,
		39.157608, 33.361023, 33.334538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995449, 32.973164, 33.428581>,  <39.772335, 33.539486, 33.617836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995449, 32.973164, 33.428581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643147, 32.998234, 33.240822>,  <39.431763, 33.013275, 33.128166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643147, 32.998234, 33.240822>,  <39.995449, 32.973164, 33.428581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643147, 32.998234, 33.240822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305148, -0.682877, -0.663750,
		-0.362140, -0.727840, 0.582326,
		-0.880760, 0.062675, -0.469396,
		39.378918, 33.017036, 33.100002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706779, 32.250378, 33.256516>,  <39.995449, 32.973164, 33.428581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706779, 32.250378, 33.256516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548691, 32.517719, 33.004452>,  <39.453838, 32.678123, 32.853214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548691, 32.517719, 33.004452>,  <39.706779, 32.250378, 33.256516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548691, 32.517719, 33.004452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368095, -0.513289, -0.775267,
		-0.841609, -0.538360, -0.043157,
		-0.395221, 0.668358, -0.630157,
		39.430126, 32.718227, 32.815403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252342, 31.779327, 32.820034>,  <39.706779, 32.250378, 33.256516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252342, 31.779327, 32.820034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297619, 32.129093, 32.631317>,  <39.324787, 32.338951, 32.518085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297619, 32.129093, 32.631317>,  <39.252342, 31.779327, 32.820034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297619, 32.129093, 32.631317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205609, -0.485182, -0.849896,
		-0.972066, -0.000802, -0.234707,
		0.113194, 0.874413, -0.471794,
		39.331577, 32.391418, 32.489780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932728, 31.689220, 32.216728>,  <39.252342, 31.779327, 32.820034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932728, 31.689220, 32.216728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128868, 32.027401, 32.132103>,  <39.246552, 32.230309, 32.081326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128868, 32.027401, 32.132103>,  <38.932728, 31.689220, 32.216728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128868, 32.027401, 32.132103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153809, -0.322895, -0.933853,
		-0.857843, 0.425379, -0.288372,
		0.490355, 0.845453, -0.211566,
		39.275974, 32.281036, 32.068634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653809, 32.037357, 31.607557>,  <38.932728, 31.689220, 32.216728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653809, 32.037357, 31.607557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031216, 32.169117, 31.621830>,  <39.257660, 32.248173, 31.630394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031216, 32.169117, 31.621830>,  <38.653809, 32.037357, 31.607557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031216, 32.169117, 31.621830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128701, -0.265124, -0.955586,
		-0.305312, 0.906202, -0.292543,
		0.943515, 0.329403, 0.035684,
		39.314270, 32.267937, 31.632536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777977, 32.480434, 31.074335>,  <38.653809, 32.037357, 31.607557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777977, 32.480434, 31.074335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.148438, 32.349037, 31.148455>,  <39.370712, 32.270199, 31.192926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.148438, 32.349037, 31.148455>,  <38.777977, 32.480434, 31.074335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148438, 32.349037, 31.148455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048484, -0.383534, -0.922253,
		0.374024, 0.863130, -0.339283,
		0.926151, -0.328495, 0.185299,
		39.426281, 32.250488, 31.204044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373692, 32.663208, 30.540319>,  <38.777977, 32.480434, 31.074335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373692, 32.663208, 30.540319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.474609, 32.315472, 30.710308>,  <39.535160, 32.106831, 30.812302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.474609, 32.315472, 30.710308>,  <39.373692, 32.663208, 30.540319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474609, 32.315472, 30.710308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260240, -0.362042, -0.895098,
		0.932000, 0.336419, 0.134897,
		0.252290, -0.869337, 0.424973,
		39.550297, 32.054672, 30.837801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038013, 32.459835, 30.286158>,  <39.373692, 32.663208, 30.540319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038013, 32.459835, 30.286158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.846508, 32.127602, 30.399937>,  <39.731606, 31.928261, 30.468204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.846508, 32.127602, 30.399937>,  <40.038013, 32.459835, 30.286158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846508, 32.127602, 30.399937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296185, -0.457805, -0.838265,
		0.826472, -0.317086, 0.465189,
		-0.478768, -0.830585, 0.284447,
		39.702877, 31.878426, 30.485271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580246, 31.902798, 30.302580>,  <40.038013, 32.459835, 30.286158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580246, 31.902798, 30.302580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231197, 31.707663, 30.293186>,  <40.021770, 31.590582, 30.287550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231197, 31.707663, 30.293186>,  <40.580246, 31.902798, 30.302580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231197, 31.707663, 30.293186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339621, -0.571539, -0.746994,
		0.350992, -0.659815, 0.664416,
		-0.872618, -0.487839, -0.023482,
		39.969414, 31.561312, 30.286142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763111, 31.209818, 30.125132>,  <40.580246, 31.902798, 30.302580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763111, 31.209818, 30.125132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373131, 31.229877, 30.038458>,  <40.139141, 31.241913, 29.986454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373131, 31.229877, 30.038458>,  <40.763111, 31.209818, 30.125132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373131, 31.229877, 30.038458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137645, -0.629209, -0.764951,
		-0.174699, -0.775617, 0.606547,
		-0.974953, 0.050148, -0.216682,
		40.080647, 31.244923, 29.973454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550045, 30.562321, 30.089525>,  <40.763111, 31.209818, 30.125132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550045, 30.562321, 30.089525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258404, 30.748583, 29.888897>,  <40.083420, 30.860340, 29.768520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258404, 30.748583, 29.888897>,  <40.550045, 30.562321, 30.089525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258404, 30.748583, 29.888897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033462, -0.707729, -0.705691,
		-0.683583, -0.531307, 0.500427,
		-0.729105, 0.465653, -0.501570,
		40.039673, 30.888279, 29.738424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931026, 30.059191, 29.954180>,  <40.550045, 30.562321, 30.089525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931026, 30.059191, 29.954180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.909126, 30.355072, 29.685898>,  <39.895985, 30.532600, 29.524929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.909126, 30.355072, 29.685898>,  <39.931026, 30.059191, 29.954180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909126, 30.355072, 29.685898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035229, -0.669861, -0.741650,
		-0.997878, -0.064237, 0.010619,
		-0.054754, 0.739702, -0.670703,
		39.892700, 30.576982, 29.484686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.304031, 29.920294, 29.334213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531841, 30.188602, 29.144178>,  <39.668526, 30.349588, 29.030157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531841, 30.188602, 29.144178>,  <39.304031, 29.920294, 29.334213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531841, 30.188602, 29.144178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079939, -0.530041, -0.844195,
		-0.818079, 0.518767, -0.248250,
		0.569524, 0.670773, -0.475085,
		39.702698, 30.389835, 29.001654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026886, 29.828251, 28.648903>,  <39.304031, 29.920294, 29.334213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026886, 29.828251, 28.648903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.371548, 30.031225, 28.645922>,  <39.578346, 30.153009, 28.644133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.371548, 30.031225, 28.645922>,  <39.026886, 29.828251, 28.648903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371548, 30.031225, 28.645922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201359, -0.355328, -0.912796,
		-0.465834, 0.785016, -0.408348,
		0.861657, 0.507437, -0.007453,
		39.630043, 30.183456, 28.643686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003239, 30.231501, 28.121929>,  <39.026886, 29.828251, 28.648903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003239, 30.231501, 28.121929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.401661, 30.230396, 28.157383>,  <39.640717, 30.229734, 28.178656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.401661, 30.230396, 28.157383>,  <39.003239, 30.231501, 28.121929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401661, 30.230396, 28.157383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083283, -0.314204, -0.945695,
		0.030461, 0.949351, -0.312736,
		0.996060, -0.002761, 0.088636,
		39.700478, 30.229568, 28.183973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288136, 30.593685, 27.595993>,  <39.003239, 30.231501, 28.121929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288136, 30.593685, 27.595993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577930, 30.338192, 27.699640>,  <39.751808, 30.184896, 27.761829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577930, 30.338192, 27.699640>,  <39.288136, 30.593685, 27.595993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577930, 30.338192, 27.699640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254915, -0.100989, -0.961675,
		0.640423, 0.762771, 0.089658,
		0.724483, -0.638735, 0.259118,
		39.795277, 30.146572, 27.777376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878838, 30.760626, 27.103539>,  <39.288136, 30.593685, 27.595993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878838, 30.760626, 27.103539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.961880, 30.401615, 27.259151>,  <40.011707, 30.186209, 27.352520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.961880, 30.401615, 27.259151>,  <39.878838, 30.760626, 27.103539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961880, 30.401615, 27.259151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273038, -0.328724, -0.904097,
		0.939335, 0.293918, 0.176813,
		0.207607, -0.897526, 0.389033,
		40.024162, 30.132357, 27.375862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489517, 30.669449, 26.890228>,  <39.878838, 30.760626, 27.103539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489517, 30.669449, 26.890228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364826, 30.304703, 26.997057>,  <40.290012, 30.085855, 27.061155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364826, 30.304703, 26.997057>,  <40.489517, 30.669449, 26.890228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364826, 30.304703, 26.997057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387155, -0.378586, -0.840704,
		0.867718, -0.158675, 0.471050,
		-0.311731, -0.911863, 0.267074,
		40.271305, 30.031143, 27.077179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030807, 30.334686, 26.699587>,  <40.489517, 30.669449, 26.890228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030807, 30.334686, 26.699587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768021, 30.034832, 26.731676>,  <40.610348, 29.854919, 26.750929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768021, 30.034832, 26.731676>,  <41.030807, 30.334686, 26.699587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768021, 30.034832, 26.731676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440489, -0.468021, -0.766111,
		0.611851, -0.467974, 0.637682,
		-0.656968, -0.749638, 0.080222,
		40.570930, 29.809940, 26.755743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435806, 29.737068, 26.886497>,  <41.030807, 30.334686, 26.699587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435806, 29.737068, 26.886497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.102341, 29.582315, 26.728849>,  <40.902264, 29.489464, 26.634260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.102341, 29.582315, 26.728849>,  <41.435806, 29.737068, 26.886497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102341, 29.582315, 26.728849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534938, -0.388265, -0.750394,
		0.137291, -0.836405, 0.530640,
		-0.833662, -0.386881, -0.394120,
		40.852242, 29.466251, 26.610613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567356, 29.013224, 26.615578>,  <41.435806, 29.737068, 26.886497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567356, 29.013224, 26.615578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244080, 29.134811, 26.413815>,  <41.050114, 29.207764, 26.292757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244080, 29.134811, 26.413815>,  <41.567356, 29.013224, 26.615578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244080, 29.134811, 26.413815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406817, -0.331140, -0.851379,
		-0.425823, -0.893280, 0.143965,
		-0.808192, 0.303970, -0.504408,
		41.001621, 29.226002, 26.262491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259109, 28.462067, 26.309776>,  <41.567356, 29.013224, 26.615578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259109, 28.462067, 26.309776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107697, 28.758902, 26.088501>,  <41.016850, 28.937002, 25.955736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107697, 28.758902, 26.088501>,  <41.259109, 28.462067, 26.309776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107697, 28.758902, 26.088501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429534, -0.388570, -0.815177,
		-0.819885, -0.546186, -0.171664,
		-0.378535, 0.742088, -0.553189,
		40.994137, 28.981527, 25.922544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995991, 28.101736, 25.662012>,  <41.259109, 28.462067, 26.309776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995991, 28.101736, 25.662012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.078587, 28.486496, 25.590342>,  <41.128143, 28.717352, 25.547338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.078587, 28.486496, 25.590342>,  <40.995991, 28.101736, 25.662012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078587, 28.486496, 25.590342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268565, -0.231812, -0.934953,
		-0.940869, 0.144941, -0.306200,
		0.206493, 0.961902, -0.179178,
		41.140533, 28.775066, 25.536589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861622, 28.269854, 24.993887>,  <40.995991, 28.101736, 25.662012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861622, 28.269854, 24.993887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.059120, 28.614830, 25.038460>,  <41.177620, 28.821815, 25.065205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.059120, 28.614830, 25.038460>,  <40.861622, 28.269854, 24.993887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059120, 28.614830, 25.038460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394054, -0.107659, -0.912760,
		-0.775203, 0.494579, -0.393003,
		0.493742, 0.862439, 0.111433,
		41.207241, 28.873562, 25.071890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653938, 28.664598, 24.410503>,  <40.861622, 28.269854, 24.993887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653938, 28.664598, 24.410503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008247, 28.794640, 24.542999>,  <41.220833, 28.872665, 24.622498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008247, 28.794640, 24.542999>,  <40.653938, 28.664598, 24.410503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008247, 28.794640, 24.542999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393483, -0.147522, -0.907418,
		-0.246140, 0.934101, -0.258593,
		0.885769, 0.325104, 0.331242,
		41.273979, 28.892170, 24.642372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870026, 28.892681, 23.807829>,  <40.653938, 28.664598, 24.410503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870026, 28.892681, 23.807829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.206825, 28.891840, 24.023617>,  <41.408905, 28.891335, 24.153090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.206825, 28.891840, 24.023617>,  <40.870026, 28.892681, 23.807829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206825, 28.891840, 24.023617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537153, -0.089350, -0.838739,
		0.049966, 0.995998, -0.074103,
		0.842004, -0.002103, 0.539468,
		41.459427, 28.891209, 24.185457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371441, 29.293047, 23.453726>,  <40.870026, 28.892681, 23.807829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371441, 29.293047, 23.453726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.611393, 29.069761, 23.682997>,  <41.755363, 28.935789, 23.820560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.611393, 29.069761, 23.682997>,  <41.371441, 29.293047, 23.453726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611393, 29.069761, 23.682997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607933, -0.147724, -0.780125,
		0.520151, 0.816439, 0.250741,
		0.599883, -0.558216, 0.573179,
		41.791359, 28.902296, 23.854950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017578, 29.453461, 23.289953>,  <41.371441, 29.293047, 23.453726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017578, 29.453461, 23.289953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.083462, 29.087778, 23.438059>,  <42.122990, 28.868368, 23.526922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.083462, 29.087778, 23.438059>,  <42.017578, 29.453461, 23.289953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083462, 29.087778, 23.438059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728444, -0.140352, -0.670575,
		0.665012, 0.380166, 0.642832,
		0.164707, -0.914207, 0.370266,
		42.132874, 28.813517, 23.549139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764034, 29.364262, 23.330273>,  <42.017578, 29.453461, 23.289953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764034, 29.364262, 23.330273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.633652, 28.986130, 23.334312>,  <42.555424, 28.759251, 23.336737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.633652, 28.986130, 23.334312>,  <42.764034, 29.364262, 23.330273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633652, 28.986130, 23.334312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836816, -0.293475, -0.462181,
		0.439878, -0.142199, 0.886728,
		-0.325954, -0.945332, 0.010099,
		42.535866, 28.702530, 23.337341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369938, 28.883942, 23.407200>,  <42.764034, 29.364262, 23.330273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369938, 28.883942, 23.407200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.099209, 28.616169, 23.284712>,  <42.936771, 28.455505, 23.211218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.099209, 28.616169, 23.284712>,  <43.369938, 28.883942, 23.407200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099209, 28.616169, 23.284712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717368, -0.506430, -0.478448,
		0.165208, -0.543498, 0.822992,
		-0.676823, -0.669431, -0.306222,
		42.896160, 28.415340, 23.192844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766014, 28.277752, 23.433720>,  <43.369938, 28.883942, 23.407200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766014, 28.277752, 23.433720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.451565, 28.213982, 23.194857>,  <43.262897, 28.175720, 23.051538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.451565, 28.213982, 23.194857>,  <43.766014, 28.277752, 23.433720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451565, 28.213982, 23.194857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560484, -0.591121, -0.580029,
		-0.260521, -0.790670, 0.554048,
		-0.786121, -0.159425, -0.597157,
		43.215729, 28.166155, 23.015709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857155, 27.556774, 23.210596>,  <43.766014, 28.277752, 23.433720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857155, 27.556774, 23.210596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.584103, 27.719736, 22.967930>,  <43.420273, 27.817513, 22.822330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.584103, 27.719736, 22.967930>,  <43.857155, 27.556774, 23.210596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584103, 27.719736, 22.967930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323917, -0.575478, -0.750935,
		-0.655057, -0.709117, 0.260871,
		-0.682626, 0.407404, -0.606665,
		43.379314, 27.841957, 22.785931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649620, 26.980303, 22.811771>,  <43.857155, 27.556774, 23.210596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649620, 26.980303, 22.811771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.556961, 27.316238, 22.615400>,  <43.501366, 27.517799, 22.497578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.556961, 27.316238, 22.615400>,  <43.649620, 26.980303, 22.811771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556961, 27.316238, 22.615400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298634, -0.418894, -0.857523,
		-0.925827, -0.345253, -0.153767,
		-0.231650, 0.839839, -0.490927,
		43.487465, 27.568190, 22.468122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297234, 26.761965, 22.187860>,  <43.649620, 26.980303, 22.811771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297234, 26.761965, 22.187860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.470131, 27.115501, 22.116318>,  <43.573868, 27.327623, 22.073393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.470131, 27.115501, 22.116318>,  <43.297234, 26.761965, 22.187860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470131, 27.115501, 22.116318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396308, -0.364351, -0.842727,
		-0.810005, 0.293379, -0.507761,
		0.432241, 0.883842, -0.178858,
		43.599804, 27.380653, 22.062660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037121, 27.039293, 21.673191>,  <43.297234, 26.761965, 22.187860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037121, 27.039293, 21.673191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.416145, 27.166428, 21.686472>,  <43.643562, 27.242708, 21.694441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.416145, 27.166428, 21.686472>,  <43.037121, 27.039293, 21.673191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416145, 27.166428, 21.686472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182367, -0.452509, -0.872913,
		-0.262419, 0.833196, -0.486744,
		0.947564, 0.317836, 0.033201,
		43.700417, 27.261778, 21.696432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107056, 27.343090, 21.061235>,  <43.037121, 27.039293, 21.673191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107056, 27.343090, 21.061235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.457001, 27.197193, 21.188725>,  <43.666965, 27.109655, 21.265217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.457001, 27.197193, 21.188725>,  <43.107056, 27.343090, 21.061235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457001, 27.197193, 21.188725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203286, -0.320767, -0.925086,
		0.439652, 0.874112, -0.206480,
		0.874861, -0.364741, 0.318721,
		43.719460, 27.087770, 21.284340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385345, 27.530554, 20.838436>,  <43.107056, 27.343090, 21.061235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385345, 27.530554, 20.838436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178715, 27.349174, 20.547911>,  <42.054737, 27.240347, 20.373596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178715, 27.349174, 20.547911>,  <42.385345, 27.530554, 20.838436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178715, 27.349174, 20.547911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853559, 0.339790, 0.394943,
		0.067708, 0.823970, -0.562574,
		-0.516578, -0.453449, -0.726313,
		42.023743, 27.213140, 20.330017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865944, 28.018875, 20.673470>,  <42.385345, 27.530554, 20.838436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865944, 28.018875, 20.673470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.731724, 27.673803, 20.522110>,  <41.651192, 27.466761, 20.431293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.731724, 27.673803, 20.522110>,  <41.865944, 28.018875, 20.673470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731724, 27.673803, 20.522110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903893, 0.181727, 0.387237,
		-0.265297, 0.471971, -0.840750,
		-0.335551, -0.862681, -0.378400,
		41.631058, 27.414999, 20.408590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176586, 28.082806, 20.195417>,  <41.865944, 28.018875, 20.673470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176586, 28.082806, 20.195417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.206093, 27.737631, 20.395376>,  <41.223797, 27.530525, 20.515350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.206093, 27.737631, 20.395376>,  <41.176586, 28.082806, 20.195417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206093, 27.737631, 20.395376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915176, 0.140589, 0.377739,
		-0.396246, -0.485357, -0.779370,
		0.073767, -0.862939, 0.499895,
		41.228222, 27.478748, 20.545345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537727, 27.935865, 20.181257>,  <41.176586, 28.082806, 20.195417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537727, 27.935865, 20.181257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.708992, 27.715054, 20.467457>,  <40.811752, 27.582567, 20.639177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.708992, 27.715054, 20.467457>,  <40.537727, 27.935865, 20.181257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708992, 27.715054, 20.467457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795029, 0.146334, 0.588656,
		-0.429658, -0.820883, -0.376225,
		0.428163, -0.552030, 0.715499,
		40.837440, 27.549444, 20.682106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059383, 27.480539, 20.475298>,  <40.537727, 27.935865, 20.181257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059383, 27.480539, 20.475298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.318615, 27.503866, 20.779032>,  <40.474155, 27.517862, 20.961271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.318615, 27.503866, 20.779032>,  <40.059383, 27.480539, 20.475298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318615, 27.503866, 20.779032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752446, -0.104852, 0.650255,
		0.117542, -0.992776, -0.024068,
		0.648081, 0.058323, 0.759335,
		40.513039, 27.521362, 21.006832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779140, 27.108210, 20.964914>,  <40.059383, 27.480539, 20.475298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779140, 27.108210, 20.964914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.059742, 27.314079, 21.162098>,  <40.228104, 27.437601, 21.280409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.059742, 27.314079, 21.162098>,  <39.779140, 27.108210, 20.964914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059742, 27.314079, 21.162098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636854, 0.142251, 0.757748,
		0.319870, -0.845502, 0.427562,
		0.701499, 0.514676, 0.492960,
		40.270191, 27.468481, 21.309986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613655, 26.955873, 21.694866>,  <39.779140, 27.108210, 20.964914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613655, 26.955873, 21.694866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.848900, 27.278803, 21.714264>,  <39.990047, 27.472561, 21.725903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.848900, 27.278803, 21.714264>,  <39.613655, 26.955873, 21.694866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848900, 27.278803, 21.714264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553534, 0.358069, 0.751922,
		0.589679, -0.469060, 0.657466,
		0.588115, 0.807322, 0.048495,
		40.025333, 27.521000, 21.728813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878490, 26.982817, 22.433170>,  <39.613655, 26.955873, 21.694866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878490, 26.982817, 22.433170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839596, 27.352314, 22.284983>,  <39.816261, 27.574013, 22.196070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839596, 27.352314, 22.284983>,  <39.878490, 26.982817, 22.433170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839596, 27.352314, 22.284983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329303, 0.321405, 0.887839,
		0.939204, 0.208324, 0.272940,
		-0.097235, 0.923743, -0.370467,
		39.810425, 27.629436, 22.173843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130398, 27.381969, 22.953709>,  <39.878490, 26.982817, 22.433170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130398, 27.381969, 22.953709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.961197, 27.678694, 22.745560>,  <39.859676, 27.856730, 22.620670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.961197, 27.678694, 22.745560>,  <40.130398, 27.381969, 22.953709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961197, 27.678694, 22.745560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308439, 0.422111, 0.852460,
		0.852020, 0.521092, 0.050252,
		-0.422998, 0.741812, -0.520372,
		39.834297, 27.901237, 22.589447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349113, 28.056110, 23.275114>,  <40.130398, 27.381969, 22.953709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349113, 28.056110, 23.275114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.018978, 28.154196, 23.071669>,  <39.820896, 28.213047, 22.949600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.018978, 28.154196, 23.071669>,  <40.349113, 28.056110, 23.275114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018978, 28.154196, 23.071669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263465, 0.629457, 0.731006,
		0.499405, 0.737328, -0.454909,
		-0.825337, 0.245215, -0.508615,
		39.771378, 28.227760, 22.919085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283760, 28.676537, 23.413395>,  <40.349113, 28.056110, 23.275114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283760, 28.676537, 23.413395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.914345, 28.587807, 23.288263>,  <39.692696, 28.534569, 23.213184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.914345, 28.587807, 23.288263>,  <40.283760, 28.676537, 23.413395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914345, 28.587807, 23.288263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381467, 0.447535, 0.808824,
		-0.039415, 0.866318, -0.497936,
		-0.923542, -0.221826, -0.312831,
		39.637283, 28.521259, 23.194414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903816, 29.230364, 23.566599>,  <40.283760, 28.676537, 23.413395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903816, 29.230364, 23.566599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635597, 28.938723, 23.511799>,  <39.474667, 28.763737, 23.478918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635597, 28.938723, 23.511799>,  <39.903816, 29.230364, 23.566599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635597, 28.938723, 23.511799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594655, 0.417832, 0.686879,
		-0.443564, 0.542054, -0.713743,
		-0.670550, -0.729105, -0.136999,
		39.434433, 28.719992, 23.470699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305027, 29.592457, 23.608419>,  <39.903816, 29.230364, 23.566599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305027, 29.592457, 23.608419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265068, 29.209154, 23.715574>,  <39.241093, 28.979172, 23.779867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265068, 29.209154, 23.715574>,  <39.305027, 29.592457, 23.608419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265068, 29.209154, 23.715574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769665, 0.245052, 0.589547,
		-0.630583, -0.147286, -0.762018,
		-0.099902, -0.958257, 0.267886,
		39.235096, 28.921677, 23.795940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621017, 29.583536, 23.876337>,  <39.305027, 29.592457, 23.608419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621017, 29.583536, 23.876337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.764679, 29.237137, 24.015509>,  <38.850876, 29.029297, 24.099012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.764679, 29.237137, 24.015509>,  <38.621017, 29.583536, 23.876337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764679, 29.237137, 24.015509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525241, 0.120602, 0.842364,
		-0.771448, -0.485283, -0.411545,
		0.359152, -0.866000, 0.347929,
		38.872425, 28.977337, 24.119888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070541, 29.144114, 24.116371>,  <38.621017, 29.583536, 23.876337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070541, 29.144114, 24.116371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383919, 28.981873, 24.304710>,  <38.571945, 28.884529, 24.417713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383919, 28.981873, 24.304710>,  <38.070541, 29.144114, 24.116371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383919, 28.981873, 24.304710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518165, -0.008050, 0.855243,
		-0.343097, -0.914015, -0.216475,
		0.783447, -0.405601, 0.470849,
		38.618954, 28.860193, 24.445965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717628, 28.790867, 24.645191>,  <38.070541, 29.144114, 24.116371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717628, 28.790867, 24.645191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093880, 28.793146, 24.780947>,  <38.319630, 28.794514, 24.862400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093880, 28.793146, 24.780947>,  <37.717628, 28.790867, 24.645191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093880, 28.793146, 24.780947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339363, 0.036839, 0.939934,
		-0.007151, -0.999305, 0.036584,
		0.940628, 0.005694, 0.339391,
		38.376068, 28.794855, 24.882765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793411, 28.229427, 25.201876>,  <37.717628, 28.790867, 24.645191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793411, 28.229427, 25.201876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092987, 28.484005, 25.275661>,  <38.272732, 28.636751, 25.319933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092987, 28.484005, 25.275661>,  <37.793411, 28.229427, 25.201876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092987, 28.484005, 25.275661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432049, 0.257946, 0.864174,
		0.502415, -0.726915, 0.468161,
		0.748941, 0.636443, 0.184467,
		38.317669, 28.674938, 25.331001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905720, 28.117086, 25.885614>,  <37.793411, 28.229427, 25.201876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905720, 28.117086, 25.885614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033646, 28.476826, 25.766356>,  <38.110401, 28.692669, 25.694799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033646, 28.476826, 25.766356>,  <37.905720, 28.117086, 25.885614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033646, 28.476826, 25.766356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525797, 0.430234, 0.733782,
		0.788200, -0.077906, 0.610469,
		0.319810, 0.899350, -0.298147,
		38.129589, 28.746630, 25.676912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197193, 28.448576, 26.408968>,  <37.905720, 28.117086, 25.885614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197193, 28.448576, 26.408968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135483, 28.762018, 26.168249>,  <38.098457, 28.950083, 26.023817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135483, 28.762018, 26.168249>,  <38.197193, 28.448576, 26.408968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135483, 28.762018, 26.168249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421299, 0.498769, 0.757454,
		0.893703, 0.370395, 0.253183,
		-0.154278, 0.783605, -0.601799,
		38.089199, 28.997099, 25.987709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287968, 29.000114, 26.911650>,  <38.197193, 28.448576, 26.408968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287968, 29.000114, 26.911650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.098282, 29.159918, 26.597832>,  <37.984470, 29.255800, 26.409542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.098282, 29.159918, 26.597832>,  <38.287968, 29.000114, 26.911650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098282, 29.159918, 26.597832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594060, 0.512479, 0.620047,
		0.649776, 0.760104, -0.005695,
		-0.474219, 0.399508, -0.784544,
		37.956017, 29.279770, 26.362469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.601601, 32.020088, 31.634565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243797, 32.093277, 31.471413>,  <40.029114, 32.137192, 31.373522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243797, 32.093277, 31.471413>,  <40.601601, 32.020088, 31.634565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243797, 32.093277, 31.471413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312480, 0.396567, 0.863187,
		0.319691, 0.899587, -0.297559,
		-0.894513, 0.182972, -0.407882,
		39.975445, 32.148167, 31.349049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496803, 32.764645, 31.762329>,  <40.601601, 32.020088, 31.634565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496803, 32.764645, 31.762329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.131100, 32.608387, 31.719391>,  <39.911678, 32.514633, 31.693628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.131100, 32.608387, 31.719391>,  <40.496803, 32.764645, 31.762329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131100, 32.608387, 31.719391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269000, 0.387239, 0.881865,
		-0.302923, 0.835133, -0.459120,
		-0.914263, -0.390640, -0.107347,
		39.856819, 32.491196, 31.687187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070522, 33.299500, 31.849796>,  <40.496803, 32.764645, 31.762329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070522, 33.299500, 31.849796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825310, 32.989296, 31.910154>,  <39.678181, 32.803173, 31.946369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825310, 32.989296, 31.910154>,  <40.070522, 33.299500, 31.849796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825310, 32.989296, 31.910154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484587, 0.519935, 0.703451,
		-0.623989, 0.358120, -0.694542,
		-0.613036, -0.775512, 0.150893,
		39.641399, 32.756641, 31.955421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374088, 33.523212, 31.767859>,  <40.070522, 33.299500, 31.849796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374088, 33.523212, 31.767859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371517, 33.181847, 31.976334>,  <39.369976, 32.977028, 32.101418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371517, 33.181847, 31.976334>,  <39.374088, 33.523212, 31.767859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371517, 33.181847, 31.976334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511776, 0.450577, 0.731482,
		-0.859095, -0.262029, -0.439655,
		-0.006429, -0.853417, 0.521189,
		39.369587, 32.925823, 32.132690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793339, 33.464008, 31.956413>,  <39.374088, 33.523212, 31.767859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793339, 33.464008, 31.956413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994896, 33.231094, 32.211609>,  <39.115829, 33.091347, 32.364727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994896, 33.231094, 32.211609>,  <38.793339, 33.464008, 31.956413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994896, 33.231094, 32.211609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561916, 0.339976, 0.754101,
		-0.656006, -0.738482, -0.155886,
		0.503892, -0.582289, 0.637991,
		39.146065, 33.056408, 32.403008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279137, 33.282345, 32.436653>,  <38.793339, 33.464008, 31.956413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279137, 33.282345, 32.436653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615204, 33.191383, 32.633587>,  <38.816845, 33.136806, 32.751747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615204, 33.191383, 32.633587>,  <38.279137, 33.282345, 32.436653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615204, 33.191383, 32.633587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441254, 0.241141, 0.864376,
		-0.315287, -0.943471, 0.102256,
		0.840172, -0.227406, 0.492339,
		38.867256, 33.123161, 32.781288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018669, 32.824818, 33.049129>,  <38.279137, 33.282345, 32.436653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018669, 32.824818, 33.049129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364361, 33.013508, 33.119076>,  <38.571777, 33.126720, 33.161045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364361, 33.013508, 33.119076>,  <38.018669, 32.824818, 33.049129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364361, 33.013508, 33.119076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400170, 0.433918, 0.807205,
		0.304898, -0.767590, 0.563775,
		0.864235, 0.471721, 0.174866,
		38.623631, 33.155025, 33.171535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032623, 32.718849, 33.738911>,  <38.018669, 32.824818, 33.049129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032623, 32.718849, 33.738911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.306152, 33.003799, 33.675781>,  <38.470268, 33.174770, 33.637901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.306152, 33.003799, 33.675781>,  <38.032623, 32.718849, 33.738911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306152, 33.003799, 33.675781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356418, 0.514866, 0.779666,
		0.636676, -0.476899, 0.605980,
		0.683820, 0.712376, -0.157828,
		38.511299, 33.217510, 33.628433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181763, 33.088501, 34.509541>,  <38.032623, 32.718849, 33.738911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181763, 33.088501, 34.509541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.330914, 33.324142, 34.222790>,  <38.420403, 33.465527, 34.050739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.330914, 33.324142, 34.222790>,  <38.181763, 33.088501, 34.509541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330914, 33.324142, 34.222790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352598, 0.804604, 0.477794,
		0.858275, 0.074611, 0.507737,
		0.372878, 0.589106, -0.716880,
		38.442776, 33.500874, 34.007725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577541, 33.638977, 34.791626>,  <38.181763, 33.088501, 34.509541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577541, 33.638977, 34.791626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.475670, 33.773628, 34.429008>,  <38.414547, 33.854420, 34.211437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.475670, 33.773628, 34.429008>,  <38.577541, 33.638977, 34.791626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475670, 33.773628, 34.429008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348773, 0.842382, 0.410791,
		0.901939, 0.420798, -0.097132,
		-0.254682, 0.336632, -0.906541,
		38.399265, 33.874619, 34.157047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694740, 34.393520, 34.795216>,  <38.577541, 33.638977, 34.791626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694740, 34.393520, 34.795216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451473, 34.339825, 34.482265>,  <38.305515, 34.307606, 34.294495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451473, 34.339825, 34.482265>,  <38.694740, 34.393520, 34.795216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451473, 34.339825, 34.482265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344377, 0.932636, 0.107674,
		0.715221, 0.334917, -0.613424,
		-0.608164, -0.134239, -0.782379,
		38.269024, 34.299553, 34.247551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835995, 34.974045, 34.457115>,  <38.694740, 34.393520, 34.795216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835995, 34.974045, 34.457115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472298, 34.822449, 34.388245>,  <38.254078, 34.731491, 34.346924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472298, 34.822449, 34.388245>,  <38.835995, 34.974045, 34.457115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472298, 34.822449, 34.388245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397851, 0.912864, 0.091618,
		0.122451, 0.151803, -0.980797,
		-0.909242, -0.378992, -0.172176,
		38.199524, 34.708752, 34.336590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446915, 35.430370, 33.953701>,  <38.835995, 34.974045, 34.457115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446915, 35.430370, 33.953701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.199730, 35.227970, 34.194393>,  <38.051418, 35.106529, 34.338810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.199730, 35.227970, 34.194393>,  <38.446915, 35.430370, 33.953701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199730, 35.227970, 34.194393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411580, 0.860315, 0.300765,
		-0.669869, -0.061800, -0.739903,
		-0.617962, -0.506003, 0.601734,
		38.014339, 35.076168, 34.374912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079659, 35.865963, 34.097244>,  <38.446915, 35.430370, 33.953701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079659, 35.865963, 34.097244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.885113, 36.212299, 34.144180>,  <38.768387, 36.420101, 34.172344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.885113, 36.212299, 34.144180>,  <39.079659, 35.865963, 34.097244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885113, 36.212299, 34.144180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246931, -0.265028, 0.932086,
		0.838137, 0.424358, 0.342703,
		-0.486365, 0.865841, 0.117343,
		38.739204, 36.472050, 34.179382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575062, 36.233150, 33.678570>,  <39.079659, 35.865963, 34.097244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575062, 36.233150, 33.678570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.829613, 36.539688, 33.713760>,  <39.982346, 36.723610, 33.734875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.829613, 36.539688, 33.713760>,  <39.575062, 36.233150, 33.678570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829613, 36.539688, 33.713760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083305, 0.045113, -0.995502,
		-0.766865, 0.640846, -0.035131,
		0.636379, 0.766343, 0.087981,
		40.020527, 36.769592, 33.740154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333378, 36.822643, 33.259216>,  <39.575062, 36.233150, 33.678570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333378, 36.822643, 33.259216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732243, 36.832832, 33.287563>,  <39.971561, 36.838947, 33.304573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732243, 36.832832, 33.287563>,  <39.333378, 36.822643, 33.259216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732243, 36.832832, 33.287563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073662, -0.134257, -0.988205,
		-0.015656, 0.990619, -0.135752,
		0.997160, 0.025471, 0.070870,
		40.031391, 36.840473, 33.308823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461269, 37.221912, 32.728203>,  <39.333378, 36.822643, 33.259216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461269, 37.221912, 32.728203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801781, 37.034843, 32.823364>,  <40.006088, 36.922600, 32.880463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801781, 37.034843, 32.823364>,  <39.461269, 37.221912, 32.728203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801781, 37.034843, 32.823364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148104, -0.220807, -0.964007,
		0.503373, 0.855876, -0.118704,
		0.851281, -0.467675, 0.237907,
		40.057167, 36.894543, 32.894737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881073, 37.458706, 32.200993>,  <39.461269, 37.221912, 32.728203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881073, 37.458706, 32.200993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.064938, 37.138260, 32.354321>,  <40.175255, 36.945992, 32.446316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.064938, 37.138260, 32.354321>,  <39.881073, 37.458706, 32.200993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064938, 37.138260, 32.354321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306006, -0.262316, -0.915178,
		0.833710, 0.537968, 0.124570,
		0.459660, -0.801112, 0.383317,
		40.202835, 36.897926, 32.469315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510761, 37.440514, 31.920742>,  <39.881073, 37.458706, 32.200993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510761, 37.440514, 31.920742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493988, 37.063854, 32.054337>,  <40.483925, 36.837860, 32.134495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493988, 37.063854, 32.054337>,  <40.510761, 37.440514, 31.920742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493988, 37.063854, 32.054337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461140, -0.314788, -0.829613,
		0.886336, 0.119227, 0.447430,
		-0.041934, -0.941644, 0.333988,
		40.481407, 36.781361, 32.154533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128048, 37.123734, 31.595427>,  <40.510761, 37.440514, 31.920742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128048, 37.123734, 31.595427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885925, 36.834564, 31.728685>,  <40.740654, 36.661060, 31.808641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885925, 36.834564, 31.728685>,  <41.128048, 37.123734, 31.595427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885925, 36.834564, 31.728685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275552, -0.582956, -0.764352,
		0.746779, -0.370865, 0.552068,
		-0.605303, -0.722926, 0.333147,
		40.704334, 36.617687, 31.828629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523495, 36.484509, 31.743021>,  <41.128048, 37.123734, 31.595427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523495, 36.484509, 31.743021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.149811, 36.398174, 31.629412>,  <40.925602, 36.346375, 31.561247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.149811, 36.398174, 31.629412>,  <41.523495, 36.484509, 31.743021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149811, 36.398174, 31.629412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356555, -0.589748, -0.724615,
		-0.011102, -0.778211, 0.627905,
		-0.934209, -0.215837, -0.284022,
		40.869549, 36.333424, 31.544205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627731, 35.813877, 31.481068>,  <41.523495, 36.484509, 31.743021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627731, 35.813877, 31.481068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.271881, 35.914948, 31.328899>,  <41.058372, 35.975590, 31.237598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.271881, 35.914948, 31.328899>,  <41.627731, 35.813877, 31.481068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271881, 35.914948, 31.328899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156197, -0.614417, -0.773366,
		-0.429150, -0.747426, 0.507133,
		-0.889625, 0.252678, -0.380423,
		41.004993, 35.990749, 31.214773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449604, 35.192432, 31.157322>,  <41.627731, 35.813877, 31.481068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449604, 35.192432, 31.157322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.216118, 35.466724, 30.983402>,  <41.076027, 35.631302, 30.879051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.216118, 35.466724, 30.983402>,  <41.449604, 35.192432, 31.157322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216118, 35.466724, 30.983402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140770, -0.441916, -0.885943,
		-0.799664, -0.578342, 0.161422,
		-0.583713, 0.685734, -0.434798,
		41.041004, 35.672443, 30.852962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011833, 34.690186, 30.766834>,  <41.449604, 35.192432, 31.157322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011833, 34.690186, 30.766834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.983128, 35.050285, 30.595068>,  <40.965904, 35.266346, 30.492008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.983128, 35.050285, 30.595068>,  <41.011833, 34.690186, 30.766834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983128, 35.050285, 30.595068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033685, -0.428090, -0.903108,
		-0.996852, -0.079279, 0.000398,
		-0.071767, 0.900252, -0.429414,
		40.961597, 35.320362, 30.466244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532040, 34.560169, 30.246197>,  <41.011833, 34.690186, 30.766834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532040, 34.560169, 30.246197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683231, 34.915413, 30.141588>,  <40.773949, 35.128559, 30.078823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683231, 34.915413, 30.141588>,  <40.532040, 34.560169, 30.246197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683231, 34.915413, 30.141588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014435, -0.288097, -0.957493,
		-0.925700, 0.358141, -0.121716,
		0.377983, 0.888108, -0.261521,
		40.796627, 35.181847, 30.063131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142876, 34.851830, 29.682190>,  <40.532040, 34.560169, 30.246197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142876, 34.851830, 29.682190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.498238, 35.033642, 29.656471>,  <40.711456, 35.142731, 29.641041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.498238, 35.033642, 29.656471>,  <40.142876, 34.851830, 29.682190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498238, 35.033642, 29.656471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086647, -0.303574, -0.948860,
		-0.450808, 0.837401, -0.309081,
		0.888405, 0.454535, -0.064296,
		40.764759, 35.170002, 29.637182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158585, 35.283020, 29.048298>,  <40.142876, 34.851830, 29.682190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158585, 35.283020, 29.048298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.530910, 35.183182, 29.155090>,  <40.754307, 35.123280, 29.219166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.530910, 35.183182, 29.155090>,  <40.158585, 35.283020, 29.048298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530910, 35.183182, 29.155090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122273, -0.475736, -0.871048,
		0.344420, 0.843433, -0.412306,
		0.930819, -0.249592, 0.266982,
		40.810158, 35.108303, 29.235186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563740, 35.460037, 28.481680>,  <40.158585, 35.283020, 29.048298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563740, 35.460037, 28.481680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.790497, 35.211346, 28.697859>,  <40.926552, 35.062130, 28.827566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.790497, 35.211346, 28.697859>,  <40.563740, 35.460037, 28.481680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790497, 35.211346, 28.697859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448458, -0.317407, -0.835547,
		0.691024, 0.716036, 0.098882,
		0.566896, -0.621727, 0.540448,
		40.960567, 35.024826, 28.859993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657619, 36.069885, 28.317228>,  <40.563740, 35.460037, 28.481680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657619, 36.069885, 28.317228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427830, 36.285172, 28.070555>,  <40.289955, 36.414345, 27.922550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427830, 36.285172, 28.070555>,  <40.657619, 36.069885, 28.317228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427830, 36.285172, 28.070555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515975, 0.346746, 0.783286,
		0.635411, 0.768173, 0.078509,
		-0.574476, 0.538217, -0.616684,
		40.255486, 36.446636, 27.885550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795807, 36.748016, 28.499537>,  <40.657619, 36.069885, 28.317228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795807, 36.748016, 28.499537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.434128, 36.715118, 28.331890>,  <40.217121, 36.695377, 28.231302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.434128, 36.715118, 28.331890>,  <40.795807, 36.748016, 28.499537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434128, 36.715118, 28.331890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418786, 0.363490, 0.832162,
		0.083901, 0.927960, -0.363112,
		-0.904201, -0.082247, -0.419114,
		40.162868, 36.690445, 28.206156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505749, 37.492649, 28.614838>,  <40.795807, 36.748016, 28.499537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505749, 37.492649, 28.614838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.197334, 37.258446, 28.514690>,  <40.012287, 37.117924, 28.454601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.197334, 37.258446, 28.514690>,  <40.505749, 37.492649, 28.614838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197334, 37.258446, 28.514690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536754, 0.386017, 0.750257,
		-0.342635, 0.712862, -0.611906,
		-0.771036, -0.585507, -0.250369,
		39.966022, 37.082794, 28.439579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940544, 37.935204, 28.538300>,  <40.505749, 37.492649, 28.614838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940544, 37.935204, 28.538300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791473, 37.576286, 28.632942>,  <39.702030, 37.360935, 28.689728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791473, 37.576286, 28.632942>,  <39.940544, 37.935204, 28.538300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791473, 37.576286, 28.632942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542166, 0.417473, 0.729227,
		-0.753105, 0.143488, -0.642063,
		-0.372679, -0.897289, 0.236606,
		39.679668, 37.307098, 28.703924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223255, 38.068901, 28.541229>,  <39.940544, 37.935204, 28.538300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223255, 38.068901, 28.541229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262150, 37.710037, 28.713577>,  <39.285488, 37.494720, 28.816986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262150, 37.710037, 28.713577>,  <39.223255, 38.068901, 28.541229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262150, 37.710037, 28.713577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531799, 0.319101, 0.784451,
		-0.841269, -0.305414, -0.446081,
		0.097237, -0.897161, 0.430869,
		39.291321, 37.440887, 28.842838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530540, 37.782612, 28.619083>,  <39.223255, 38.068901, 28.541229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530540, 37.782612, 28.619083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.796959, 37.658730, 28.890514>,  <38.956810, 37.584400, 29.053373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.796959, 37.658730, 28.890514>,  <38.530540, 37.782612, 28.619083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796959, 37.658730, 28.890514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550122, 0.410410, 0.727276,
		-0.503733, -0.857699, 0.102978,
		0.666047, -0.309702, 0.678576,
		38.996773, 37.565819, 29.094088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167984, 37.468773, 29.091686>,  <38.530540, 37.782612, 28.619083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167984, 37.468773, 29.091686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.509624, 37.521801, 29.292856>,  <38.714611, 37.553619, 29.413557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.509624, 37.521801, 29.292856>,  <38.167984, 37.468773, 29.091686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509624, 37.521801, 29.292856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514066, 0.362091, 0.777577,
		-0.079018, -0.922667, 0.377415,
		0.854103, 0.132574, 0.502923,
		38.765854, 37.561573, 29.443733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946251, 37.198395, 29.711277>,  <38.167984, 37.468773, 29.091686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946251, 37.198395, 29.711277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.270489, 37.420891, 29.784521>,  <38.465031, 37.554390, 29.828468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.270489, 37.420891, 29.784521>,  <37.946251, 37.198395, 29.711277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270489, 37.420891, 29.784521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434694, 0.362007, 0.824616,
		0.392406, -0.748022, 0.535238,
		0.810591, 0.556249, 0.183107,
		38.513668, 37.587765, 29.839455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094727, 37.004238, 30.354097>,  <37.946251, 37.198395, 29.711277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094727, 37.004238, 30.354097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.260609, 37.357674, 30.267107>,  <38.360138, 37.569736, 30.214912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.260609, 37.357674, 30.267107>,  <38.094727, 37.004238, 30.354097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260609, 37.357674, 30.267107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486263, 0.417196, 0.767786,
		0.769137, -0.212651, 0.602668,
		0.414701, 0.883587, -0.217476,
		38.385017, 37.622749, 30.201864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371532, 37.251518, 30.935345>,  <38.094727, 37.004238, 30.354097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371532, 37.251518, 30.935345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323292, 37.582954, 30.716661>,  <38.294346, 37.781815, 30.585451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323292, 37.582954, 30.716661>,  <38.371532, 37.251518, 30.935345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323292, 37.582954, 30.716661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527560, 0.413021, 0.742356,
		0.840913, 0.377954, 0.387320,
		-0.120605, 0.828591, -0.546709,
		38.287109, 37.831532, 30.552649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440075, 37.733082, 31.416473>,  <38.371532, 37.251518, 30.935345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440075, 37.733082, 31.416473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243938, 37.924366, 31.125027>,  <38.126255, 38.039135, 30.950159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243938, 37.924366, 31.125027>,  <38.440075, 37.733082, 31.416473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243938, 37.924366, 31.125027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512243, 0.518241, 0.684860,
		0.705105, 0.709044, -0.009157,
		-0.490341, 0.478207, -0.728618,
		38.096836, 38.067829, 30.906441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567810, 38.459038, 31.615574>,  <38.440075, 37.733082, 31.416473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567810, 38.459038, 31.615574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.234806, 38.395226, 31.403353>,  <38.035004, 38.356937, 31.276020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.234806, 38.395226, 31.403353>,  <38.567810, 38.459038, 31.615574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234806, 38.395226, 31.403353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542025, 0.432705, 0.720400,
		0.114648, 0.887309, -0.446698,
		-0.832505, -0.159529, -0.530552,
		37.985054, 38.347366, 31.244186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.612209, 35.335884, 24.983629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242302, 35.203388, 24.908699>,  <42.020359, 35.123890, 24.863741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242302, 35.203388, 24.908699>,  <42.612209, 35.335884, 24.983629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242302, 35.203388, 24.908699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354202, 0.569289, 0.741924,
		-0.139114, 0.752456, -0.643784,
		-0.924764, -0.331242, -0.187325,
		41.964874, 35.104015, 24.852501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240734, 35.842880, 25.324034>,  <42.612209, 35.335884, 24.983629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240734, 35.842880, 25.324034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936085, 35.602829, 25.226248>,  <41.753296, 35.458797, 25.167576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936085, 35.602829, 25.226248>,  <42.240734, 35.842880, 25.324034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936085, 35.602829, 25.226248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608058, 0.531439, 0.589778,
		-0.224026, 0.597841, -0.769674,
		-0.761628, -0.600133, -0.244466,
		41.707596, 35.422791, 25.152908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725014, 36.284042, 24.957176>,  <42.240734, 35.842880, 25.324034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725014, 36.284042, 24.957176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542328, 35.965065, 25.114902>,  <41.432716, 35.773678, 25.209539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542328, 35.965065, 25.114902>,  <41.725014, 36.284042, 24.957176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542328, 35.965065, 25.114902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554759, 0.601807, 0.574517,
		-0.695451, 0.043641, -0.717247,
		-0.456717, -0.797448, 0.394317,
		41.405312, 35.725830, 25.233198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960838, 36.524681, 25.227705>,  <41.725014, 36.284042, 24.957176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960838, 36.524681, 25.227705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036053, 36.184307, 25.423891>,  <41.081181, 35.980083, 25.541603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036053, 36.184307, 25.423891>,  <40.960838, 36.524681, 25.227705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036053, 36.184307, 25.423891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572675, 0.310711, 0.758618,
		-0.797927, -0.423522, -0.428885,
		0.188032, -0.850934, 0.490465,
		41.092461, 35.929028, 25.571030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280464, 36.151352, 25.454348>,  <40.960838, 36.524681, 25.227705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280464, 36.151352, 25.454348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584557, 36.048470, 25.692978>,  <40.767010, 35.986740, 25.836157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584557, 36.048470, 25.692978>,  <40.280464, 36.151352, 25.454348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584557, 36.048470, 25.692978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509229, 0.334304, 0.793049,
		-0.403412, -0.906690, 0.123171,
		0.760226, -0.257203, 0.596576,
		40.812626, 35.971310, 25.871950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861771, 35.914574, 26.002899>,  <40.280464, 36.151352, 25.454348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861771, 35.914574, 26.002899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238537, 35.943821, 26.134016>,  <40.464596, 35.961369, 26.212687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238537, 35.943821, 26.134016>,  <39.861771, 35.914574, 26.002899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238537, 35.943821, 26.134016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335761, 0.182976, 0.924004,
		0.007586, -0.980394, 0.196899,
		0.941917, 0.073120, 0.327790,
		40.521111, 35.965759, 26.232353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880394, 35.553936, 26.665428>,  <39.861771, 35.914574, 26.002899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880394, 35.553936, 26.665428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180359, 35.818516, 26.661270>,  <40.360340, 35.977264, 26.658775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180359, 35.818516, 26.661270>,  <39.880394, 35.553936, 26.665428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180359, 35.818516, 26.661270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088249, 0.115603, 0.989368,
		0.655622, -0.741024, 0.145065,
		0.749915, 0.661453, -0.010397,
		40.405334, 36.016953, 26.658152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214592, 35.381763, 27.239792>,  <39.880394, 35.553936, 26.665428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214592, 35.381763, 27.239792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290092, 35.765125, 27.154148>,  <40.335392, 35.995140, 27.102762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290092, 35.765125, 27.154148>,  <40.214592, 35.381763, 27.239792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290092, 35.765125, 27.154148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077755, 0.231927, 0.969621,
		0.978942, -0.166367, 0.118296,
		0.188749, 0.958401, -0.214107,
		40.346718, 36.052647, 27.089916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604336, 35.644779, 27.741638>,  <40.214592, 35.381763, 27.239792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604336, 35.644779, 27.741638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477112, 35.993996, 27.593775>,  <40.400780, 36.203526, 27.505056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477112, 35.993996, 27.593775>,  <40.604336, 35.644779, 27.741638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477112, 35.993996, 27.593775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291354, 0.281030, 0.914404,
		0.902194, 0.398533, 0.164980,
		-0.318055, 0.873037, -0.369658,
		40.381695, 36.255905, 27.482878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191902, 35.447628, 28.060907>,  <40.604336, 35.644779, 27.741638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191902, 35.447628, 28.060907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216686, 35.127457, 28.299395>,  <41.231556, 34.935352, 28.442488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216686, 35.127457, 28.299395>,  <41.191902, 35.447628, 28.060907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216686, 35.127457, 28.299395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337663, -0.545332, -0.767200,
		0.939226, 0.248857, 0.236487,
		0.061959, -0.800427, 0.596220,
		41.235275, 34.887329, 28.478260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882668, 35.280670, 28.045589>,  <41.191902, 35.447628, 28.060907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882668, 35.280670, 28.045589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690865, 34.954189, 28.174517>,  <41.575783, 34.758301, 28.251873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690865, 34.954189, 28.174517>,  <41.882668, 35.280670, 28.045589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690865, 34.954189, 28.174517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412717, -0.533893, -0.737985,
		0.774428, -0.220843, 0.592865,
		-0.479506, -0.816202, 0.322316,
		41.547012, 34.709328, 28.271212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303577, 34.736996, 28.104658>,  <41.882668, 35.280670, 28.045589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303577, 34.736996, 28.104658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965508, 34.523247, 28.100105>,  <41.762665, 34.394997, 28.097374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965508, 34.523247, 28.100105>,  <42.303577, 34.736996, 28.104658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965508, 34.523247, 28.100105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428405, -0.664527, -0.612269,
		0.319617, -0.522349, 0.790568,
		-0.845171, -0.534374, -0.011383,
		41.711956, 34.362934, 28.096691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532818, 34.152920, 28.303612>,  <42.303577, 34.736996, 28.104658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532818, 34.152920, 28.303612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183304, 34.091373, 28.119081>,  <41.973595, 34.054443, 28.008364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183304, 34.091373, 28.119081>,  <42.532818, 34.152920, 28.303612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183304, 34.091373, 28.119081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398726, -0.769767, -0.498474,
		-0.278414, -0.619503, 0.733963,
		-0.873787, -0.153868, -0.461326,
		41.921169, 34.045212, 27.980684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468109, 33.466530, 28.313179>,  <42.532818, 34.152920, 28.303612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468109, 33.466530, 28.313179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239464, 33.599716, 28.013208>,  <42.102276, 33.679626, 27.833225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239464, 33.599716, 28.013208>,  <42.468109, 33.466530, 28.313179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239464, 33.599716, 28.013208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399139, -0.685705, -0.608684,
		-0.716901, -0.647257, 0.259059,
		-0.571613, 0.332965, -0.749929,
		42.067978, 33.699604, 27.788231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211384, 32.835445, 27.909206>,  <42.468109, 33.466530, 28.313179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211384, 32.835445, 27.909206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162766, 33.154247, 27.672560>,  <42.133595, 33.345528, 27.530571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162766, 33.154247, 27.672560>,  <42.211384, 32.835445, 27.909206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162766, 33.154247, 27.672560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305979, -0.536923, -0.786188,
		-0.944248, -0.276581, -0.178605,
		-0.121547, 0.797005, -0.591616,
		42.126301, 33.393349, 27.495075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942406, 32.517063, 27.349451>,  <42.211384, 32.835445, 27.909206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942406, 32.517063, 27.349451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070271, 32.867924, 27.206108>,  <42.146992, 33.078442, 27.120102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070271, 32.867924, 27.206108>,  <41.942406, 32.517063, 27.349451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070271, 32.867924, 27.206108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288913, -0.450422, -0.844778,
		-0.902410, 0.166513, -0.397405,
		0.319666, 0.877151, -0.358357,
		42.166172, 33.131069, 27.098600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717274, 32.619511, 26.602764>,  <41.942406, 32.517063, 27.349451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717274, 32.619511, 26.602764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046547, 32.838978, 26.661180>,  <42.244110, 32.970657, 26.696230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046547, 32.838978, 26.661180>,  <41.717274, 32.619511, 26.602764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046547, 32.838978, 26.661180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381694, -0.344361, -0.857744,
		-0.420325, 0.761827, -0.492897,
		0.823187, 0.548667, 0.146042,
		42.293503, 33.003578, 26.704992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745785, 32.846630, 25.934891>,  <41.717274, 32.619511, 26.602764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745785, 32.846630, 25.934891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094990, 32.888523, 26.125418>,  <42.304512, 32.913658, 26.239735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094990, 32.888523, 26.125418>,  <41.745785, 32.846630, 25.934891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094990, 32.888523, 26.125418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464109, -0.478485, -0.745422,
		0.149838, 0.871827, -0.466333,
		0.873013, 0.104737, 0.476318,
		42.356895, 32.919945, 26.268312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234924, 32.860909, 25.369837>,  <41.745785, 32.846630, 25.934891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234924, 32.860909, 25.369837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457321, 32.798935, 25.696486>,  <42.590759, 32.761753, 25.892475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457321, 32.798935, 25.696486>,  <42.234924, 32.860909, 25.369837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457321, 32.798935, 25.696486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692408, -0.457196, -0.558161,
		0.459832, 0.875767, -0.146922,
		0.555991, -0.154930, 0.816622,
		42.624119, 32.752457, 25.941471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873096, 33.134441, 25.177612>,  <42.234924, 32.860909, 25.369837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873096, 33.134441, 25.177612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953945, 32.896679, 25.488953>,  <43.002453, 32.754021, 25.675756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953945, 32.896679, 25.488953>,  <42.873096, 33.134441, 25.177612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953945, 32.896679, 25.488953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722572, -0.445965, -0.528210,
		0.661088, 0.669177, 0.339361,
		0.202122, -0.594405, 0.778350,
		43.014584, 32.718357, 25.722458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561329, 33.134926, 25.220783>,  <42.873096, 33.134441, 25.177612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561329, 33.134926, 25.220783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446461, 32.802105, 25.410612>,  <43.377541, 32.602413, 25.524509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446461, 32.802105, 25.410612>,  <43.561329, 33.134926, 25.220783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446461, 32.802105, 25.410612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566277, -0.547061, -0.616486,
		0.772570, 0.091702, 0.628273,
		-0.287171, -0.832055, 0.474572,
		43.360310, 32.552490, 25.552984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108082, 32.792305, 25.408184>,  <43.561329, 33.134926, 25.220783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108082, 32.792305, 25.408184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849628, 32.487099, 25.415220>,  <43.694557, 32.303974, 25.419441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849628, 32.487099, 25.415220>,  <44.108082, 32.792305, 25.408184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849628, 32.487099, 25.415220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598179, -0.520590, -0.609236,
		0.474016, -0.383127, 0.792794,
		-0.646135, -0.763020, 0.017590,
		43.655788, 32.258194, 25.420498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586437, 32.268967, 25.334179>,  <44.108082, 32.792305, 25.408184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586437, 32.268967, 25.334179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228767, 32.127697, 25.224115>,  <44.014164, 32.042934, 25.158077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228767, 32.127697, 25.224115>,  <44.586437, 32.268967, 25.334179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228767, 32.127697, 25.224115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440173, -0.581202, -0.684435,
		0.081802, -0.733125, 0.675156,
		-0.894179, -0.353174, -0.275158,
		43.960514, 32.021744, 25.141567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.731709, 29.969511, 22.931313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.013954, 30.204367, 23.089993>,  <36.183304, 30.345280, 23.185200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.013954, 30.204367, 23.089993>,  <35.731709, 29.969511, 22.931313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013954, 30.204367, 23.089993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536534, 0.077017, 0.840357,
		0.462854, -0.805814, 0.369365,
		0.705618, 0.587140, 0.396699,
		36.225639, 30.380508, 23.209002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611729, 30.007183, 23.660122>,  <35.731709, 29.969511, 22.931313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611729, 30.007183, 23.660122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900269, 30.284210, 23.660542>,  <36.073391, 30.450426, 23.660793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900269, 30.284210, 23.660542>,  <35.611729, 30.007183, 23.660122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900269, 30.284210, 23.660542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400549, 0.415957, 0.816419,
		0.564991, -0.589345, 0.577458,
		0.721350, 0.692570, 0.001049,
		36.116673, 30.491982, 23.660856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903202, 29.993742, 24.340271>,  <35.611729, 30.007183, 23.660122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903202, 29.993742, 24.340271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.973934, 30.351595, 24.176140>,  <36.016373, 30.566307, 24.077662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.973934, 30.351595, 24.176140>,  <35.903202, 29.993742, 24.340271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973934, 30.351595, 24.176140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304637, 0.446173, 0.841502,
		0.935909, -0.023804, 0.351436,
		0.176833, 0.894630, -0.410326,
		36.026985, 30.619984, 24.053041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139580, 30.354090, 24.850821>,  <35.903202, 29.993742, 24.340271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139580, 30.354090, 24.850821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.015587, 30.632071, 24.591297>,  <35.941193, 30.798859, 24.435583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.015587, 30.632071, 24.591297>,  <36.139580, 30.354090, 24.850821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015587, 30.632071, 24.591297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418168, 0.513213, 0.749499,
		0.853844, 0.503639, 0.131523,
		-0.309978, 0.694954, -0.648809,
		35.922592, 30.840557, 24.396654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401093, 30.963726, 25.083483>,  <36.139580, 30.354090, 24.850821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401093, 30.963726, 25.083483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.074524, 31.048779, 24.868727>,  <35.878582, 31.099810, 24.739874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.074524, 31.048779, 24.868727>,  <36.401093, 30.963726, 25.083483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074524, 31.048779, 24.868727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325788, 0.598045, 0.732260,
		0.476787, 0.772741, -0.418981,
		-0.816417, 0.212632, -0.536890,
		35.829597, 31.112568, 24.707661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268978, 31.650696, 25.152849>,  <36.401093, 30.963726, 25.083483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268978, 31.650696, 25.152849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910610, 31.515718, 25.037289>,  <35.695591, 31.434732, 24.967953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910610, 31.515718, 25.037289>,  <36.268978, 31.650696, 25.152849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910610, 31.515718, 25.037289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442218, 0.615847, 0.652055,
		-0.042113, 0.711945, -0.700972,
		-0.895918, -0.337442, -0.288900,
		35.641834, 31.414486, 24.950619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814426, 32.205448, 25.022123>,  <36.268978, 31.650696, 25.152849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814426, 32.205448, 25.022123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.573849, 31.897331, 25.106903>,  <35.429501, 31.712461, 25.157772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.573849, 31.897331, 25.106903>,  <35.814426, 32.205448, 25.022123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573849, 31.897331, 25.106903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599181, 0.610394, 0.518075,
		-0.528440, 0.184596, -0.828659,
		-0.601443, -0.770288, 0.211951,
		35.393417, 31.666245, 25.170488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156693, 32.570812, 25.109524>,  <35.814426, 32.205448, 25.022123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156693, 32.570812, 25.109524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.058788, 32.207176, 25.244366>,  <35.000046, 31.988995, 25.325272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.058788, 32.207176, 25.244366>,  <35.156693, 32.570812, 25.109524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058788, 32.207176, 25.244366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680819, 0.408696, 0.607827,
		-0.690345, -0.080734, -0.718961,
		-0.244764, -0.909093, 0.337107,
		34.985359, 31.934448, 25.345497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499729, 32.769531, 25.385651>,  <35.156693, 32.570812, 25.109524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499729, 32.769531, 25.385651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.587265, 32.402592, 25.518661>,  <34.639786, 32.182426, 25.598469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.587265, 32.402592, 25.518661>,  <34.499729, 32.769531, 25.385651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587265, 32.402592, 25.518661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405210, 0.224577, 0.886211,
		-0.887646, -0.328680, -0.322574,
		0.218837, -0.917352, 0.332529,
		34.652916, 32.127388, 25.618420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893711, 32.505104, 25.715034>,  <34.499729, 32.769531, 25.385651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893711, 32.505104, 25.715034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.187973, 32.280643, 25.866787>,  <34.364529, 32.145969, 25.957838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.187973, 32.280643, 25.866787>,  <33.893711, 32.505104, 25.715034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187973, 32.280643, 25.866787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289611, 0.245744, 0.925060,
		-0.612326, -0.790395, 0.018268,
		0.735651, -0.561147, 0.379382,
		34.408669, 32.112301, 25.980602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656487, 31.918341, 26.112391>,  <33.893711, 32.505104, 25.715034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656487, 31.918341, 26.112391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.015610, 32.037205, 26.242397>,  <34.231083, 32.108524, 26.320402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.015610, 32.037205, 26.242397>,  <33.656487, 31.918341, 26.112391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015610, 32.037205, 26.242397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391660, 0.201350, 0.897809,
		0.201350, -0.933356, 0.297160,
		-0.897809, -0.297160, -0.325016,
		34.284954, 32.126354, 26.339903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618397, 31.828150, 26.755095>,  <33.656487, 31.918341, 26.112391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618397, 31.828150, 26.755095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.941216, 32.063786, 26.771317>,  <34.134907, 32.205166, 26.781050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.941216, 32.063786, 26.771317>,  <33.618397, 31.828150, 26.755095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941216, 32.063786, 26.771317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148196, 0.135585, 0.979620,
		0.571583, -0.796613, 0.196724,
		0.807051, 0.589088, 0.040557,
		34.183331, 32.240513, 26.783484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018951, 31.687660, 27.518316>,  <33.618397, 31.828150, 26.755095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018951, 31.687660, 27.518316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.142136, 32.040863, 27.376637>,  <34.216045, 32.252785, 27.291628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.142136, 32.040863, 27.376637>,  <34.018951, 31.687660, 27.518316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142136, 32.040863, 27.376637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134678, 0.409008, 0.902538,
		0.941817, -0.230246, 0.244882,
		0.307964, 0.883006, -0.354202,
		34.234524, 32.305763, 27.270376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713192, 31.964008, 27.894463>,  <34.018951, 31.687660, 27.518316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713192, 31.964008, 27.894463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514435, 32.276749, 27.743837>,  <34.395180, 32.464394, 27.653461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514435, 32.276749, 27.743837>,  <34.713192, 31.964008, 27.894463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514435, 32.276749, 27.743837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041359, 0.454769, 0.889649,
		0.866824, 0.426489, -0.258310,
		-0.496897, 0.781852, -0.376565,
		34.365364, 32.511303, 27.630867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340626, 32.109566, 28.259544>,  <34.713192, 31.964008, 27.894463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340626, 32.109566, 28.259544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.587200, 31.967590, 28.540691>,  <35.735146, 31.882406, 28.709379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.587200, 31.967590, 28.540691>,  <35.340626, 32.109566, 28.259544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587200, 31.967590, 28.540691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534441, -0.466937, -0.704516,
		0.578253, 0.809933, -0.098146,
		0.616438, -0.354936, 0.702869,
		35.772133, 31.861109, 28.751553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989483, 32.280102, 27.932875>,  <35.340626, 32.109566, 28.259544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989483, 32.280102, 27.932875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.064220, 31.998571, 28.207020>,  <36.109062, 31.829653, 28.371508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.064220, 31.998571, 28.207020>,  <35.989483, 32.280102, 27.932875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064220, 31.998571, 28.207020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544167, -0.506692, -0.668689,
		0.817907, 0.497890, 0.288327,
		0.186841, -0.703824, 0.685363,
		36.120274, 31.787424, 28.412628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740841, 32.057335, 27.769804>,  <35.989483, 32.280102, 27.932875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740841, 32.057335, 27.769804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.546989, 31.773891, 27.974943>,  <36.430679, 31.603825, 28.098026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.546989, 31.773891, 27.974943>,  <36.740841, 32.057335, 27.769804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546989, 31.773891, 27.974943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460103, -0.705141, -0.539520,
		0.743937, -0.025504, 0.667763,
		-0.484627, -0.708608, 0.512846,
		36.401600, 31.561310, 28.128798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275951, 31.629005, 27.945141>,  <36.740841, 32.057335, 27.769804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275951, 31.629005, 27.945141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928234, 31.431952, 27.961327>,  <36.719604, 31.313719, 27.971039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928234, 31.431952, 27.961327>,  <37.275951, 31.629005, 27.945141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928234, 31.431952, 27.961327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413012, -0.768882, -0.488099,
		0.271568, -0.407589, 0.871850,
		-0.869294, -0.492637, 0.040464,
		36.667446, 31.284161, 27.973465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392467, 30.931940, 28.250418>,  <37.275951, 31.629005, 27.945141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392467, 30.931940, 28.250418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.059715, 30.893398, 28.031807>,  <36.860065, 30.870274, 27.900640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.059715, 30.893398, 28.031807>,  <37.392467, 30.931940, 28.250418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059715, 30.893398, 28.031807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394436, -0.795414, -0.460149,
		-0.390376, -0.598358, 0.699695,
		-0.831881, -0.096354, -0.546525,
		36.810150, 30.864492, 27.867849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282803, 30.239595, 28.212337>,  <37.392467, 30.931940, 28.250418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282803, 30.239595, 28.212337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061394, 30.369364, 27.905519>,  <36.928547, 30.447224, 27.721428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061394, 30.369364, 27.905519>,  <37.282803, 30.239595, 28.212337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061394, 30.369364, 27.905519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358182, -0.738748, -0.570926,
		-0.751877, -0.590764, 0.292711,
		-0.553522, 0.324423, -0.767049,
		36.895336, 30.466690, 27.675406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847343, 29.803133, 28.020613>,  <37.282803, 30.239595, 28.212337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847343, 29.803133, 28.020613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.884430, 30.025131, 27.689945>,  <36.906681, 30.158329, 27.491545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.884430, 30.025131, 27.689945>,  <36.847343, 29.803133, 28.020613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884430, 30.025131, 27.689945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220483, -0.821080, -0.526511,
		-0.970974, -0.133450, -0.198496,
		0.092719, 0.554994, -0.826671,
		36.912247, 30.191629, 27.441944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548092, 29.420021, 27.429623>,  <36.847343, 29.803133, 28.020613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548092, 29.420021, 27.429623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785755, 29.681826, 27.242607>,  <36.928352, 29.838907, 27.130398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785755, 29.681826, 27.242607>,  <36.548092, 29.420021, 27.429623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785755, 29.681826, 27.242607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267527, -0.708976, -0.652519,
		-0.758556, 0.262619, -0.596342,
		0.594156, 0.654510, -0.467541,
		36.964001, 29.878180, 27.102345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666321, 29.232483, 26.640747>,  <36.548092, 29.420021, 27.429623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666321, 29.232483, 26.640747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972988, 29.486588, 26.677967>,  <37.156990, 29.639051, 26.700298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972988, 29.486588, 26.677967>,  <36.666321, 29.232483, 26.640747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972988, 29.486588, 26.677967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515899, -0.523268, -0.678262,
		-0.382185, 0.568007, -0.728905,
		0.766670, 0.635263, 0.093049,
		37.202988, 29.677166, 26.705881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787399, 29.479563, 26.038469>,  <36.666321, 29.232483, 26.640747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787399, 29.479563, 26.038469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.142956, 29.552467, 26.206587>,  <37.356289, 29.596210, 26.307457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.142956, 29.552467, 26.206587>,  <36.787399, 29.479563, 26.038469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142956, 29.552467, 26.206587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458050, -0.338722, -0.821862,
		-0.007430, 0.923065, -0.384573,
		0.888896, 0.182260, 0.420293,
		37.409626, 29.607145, 26.332674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222305, 29.833303, 25.514284>,  <36.787399, 29.479563, 26.038469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222305, 29.833303, 25.514284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.487579, 29.686125, 25.774992>,  <37.646744, 29.597818, 25.931417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.487579, 29.686125, 25.774992>,  <37.222305, 29.833303, 25.514284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487579, 29.686125, 25.774992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554817, -0.342813, -0.758061,
		0.502360, 0.864347, -0.023206,
		0.663183, -0.367945, 0.651771,
		37.686535, 29.575741, 25.970524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870293, 29.985580, 25.203564>,  <37.222305, 29.833303, 25.514284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870293, 29.985580, 25.203564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944424, 29.696808, 25.470238>,  <37.988903, 29.523544, 25.630243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944424, 29.696808, 25.470238>,  <37.870293, 29.985580, 25.203564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944424, 29.696808, 25.470238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705868, -0.374207, -0.601431,
		0.683671, 0.582052, 0.440238,
		0.185324, -0.721931, 0.666686,
		38.000019, 29.480228, 25.670244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635902, 29.926191, 25.238127>,  <37.870293, 29.985580, 25.203564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635902, 29.926191, 25.238127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500999, 29.579149, 25.384289>,  <38.420059, 29.370924, 25.471987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500999, 29.579149, 25.384289>,  <38.635902, 29.926191, 25.238127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500999, 29.579149, 25.384289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689398, -0.491928, -0.531730,
		0.641086, 0.072583, 0.764029,
		-0.337253, -0.867605, 0.365407,
		38.399822, 29.318869, 25.493912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191086, 29.553823, 25.531677>,  <38.635902, 29.926191, 25.238127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191086, 29.553823, 25.531677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898575, 29.299780, 25.432180>,  <38.723068, 29.147354, 25.372482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898575, 29.299780, 25.432180>,  <39.191086, 29.553823, 25.531677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898575, 29.299780, 25.432180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637925, -0.507749, -0.579001,
		0.241431, -0.582087, 0.776457,
		-0.731274, -0.635111, -0.248742,
		38.679192, 29.109247, 25.357557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707611, 29.170036, 26.011358>,  <39.191086, 29.553823, 25.531677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707611, 29.170036, 26.011358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.051903, 29.252041, 26.197741>,  <40.258480, 29.301243, 26.309570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.051903, 29.252041, 26.197741>,  <39.707611, 29.170036, 26.011358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051903, 29.252041, 26.197741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494624, 0.120371, 0.860731,
		0.120371, -0.971330, 0.205010,
		-0.860731, -0.205010, -0.465954,
		40.310123, 29.313543, 26.337526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698471, 28.860479, 26.732609>,  <39.707611, 29.170036, 26.011358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698471, 28.860479, 26.732609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.965546, 29.158062, 26.743343>,  <40.125790, 29.336613, 26.749784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.965546, 29.158062, 26.743343>,  <39.698471, 28.860479, 26.732609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965546, 29.158062, 26.743343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291603, 0.228199, 0.928920,
		0.684955, -0.628053, 0.369306,
		0.667686, 0.743959, 0.026836,
		40.165852, 29.381250, 26.751394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044952, 28.816408, 27.237860>,  <39.698471, 28.860479, 26.732609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044952, 28.816408, 27.237860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.095055, 29.208595, 27.177208>,  <40.125118, 29.443907, 27.140816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.095055, 29.208595, 27.177208>,  <40.044952, 28.816408, 27.237860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095055, 29.208595, 27.177208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164477, 0.171242, 0.971403,
		0.978396, -0.096736, 0.182714,
		0.125258, 0.980469, -0.151631,
		40.132633, 29.502735, 27.131718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294575, 28.962994, 27.865416>,  <40.044952, 28.816408, 27.237860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294575, 28.962994, 27.865416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.193623, 29.316303, 27.707359>,  <40.133049, 29.528288, 27.612526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.193623, 29.316303, 27.707359>,  <40.294575, 28.962994, 27.865416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193623, 29.316303, 27.707359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047467, 0.419168, 0.906667,
		0.966463, 0.210070, -0.147717,
		-0.252382, 0.883272, -0.395139,
		40.117908, 29.581285, 27.588818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830021, 29.485401, 28.064783>,  <40.294575, 28.962994, 27.865416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830021, 29.485401, 28.064783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.512051, 29.715118, 27.986523>,  <40.321270, 29.852949, 27.939566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.512051, 29.715118, 27.986523>,  <40.830021, 29.485401, 28.064783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512051, 29.715118, 27.986523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095908, 0.437372, 0.894152,
		0.599079, 0.692019, -0.402757,
		-0.794925, 0.574295, -0.195650,
		40.273575, 29.887407, 27.927828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942436, 30.019457, 28.464226>,  <40.830021, 29.485401, 28.064783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942436, 30.019457, 28.464226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.564259, 30.109341, 28.369873>,  <40.337353, 30.163271, 28.313261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.564259, 30.109341, 28.369873>,  <40.942436, 30.019457, 28.464226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564259, 30.109341, 28.369873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083990, 0.531441, 0.842921,
		0.314770, 0.816747, -0.483575,
		-0.945445, 0.224710, -0.235880,
		40.280624, 30.176754, 28.299109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830864, 30.765972, 28.437136>,  <40.942436, 30.019457, 28.464226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830864, 30.765972, 28.437136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466896, 30.614376, 28.504568>,  <40.248516, 30.523418, 28.545029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466896, 30.614376, 28.504568>,  <40.830864, 30.765972, 28.437136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466896, 30.614376, 28.504568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093437, 0.583255, 0.806897,
		-0.404133, 0.718457, -0.566124,
		-0.909916, -0.378990, 0.168582,
		40.193920, 30.500679, 28.555143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325043, 31.375795, 28.528994>,  <40.830864, 30.765972, 28.437136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325043, 31.375795, 28.528994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.145645, 31.052572, 28.681778>,  <40.038006, 30.858639, 28.773449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.145645, 31.052572, 28.681778>,  <40.325043, 31.375795, 28.528994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145645, 31.052572, 28.681778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038205, 0.444292, 0.895067,
		-0.892968, 0.386841, -0.230135,
		-0.448496, -0.808059, 0.381959,
		40.011097, 30.810154, 28.796366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678253, 31.631420, 28.731867>,  <40.325043, 31.375795, 28.528994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678253, 31.631420, 28.731867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725250, 31.289288, 28.933701>,  <39.753448, 31.084007, 29.054800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725250, 31.289288, 28.933701>,  <39.678253, 31.631420, 28.731867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725250, 31.289288, 28.933701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353207, 0.438887, 0.826210,
		-0.928138, -0.275293, -0.250545,
		0.117489, -0.855331, 0.504584,
		39.760498, 31.032688, 29.085075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119976, 31.561199, 29.181198>,  <39.678253, 31.631420, 28.731867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119976, 31.561199, 29.181198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.419800, 31.350508, 29.341557>,  <39.599693, 31.224092, 29.437771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.419800, 31.350508, 29.341557>,  <39.119976, 31.561199, 29.181198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419800, 31.350508, 29.341557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141464, 0.464179, 0.874372,
		-0.646645, -0.712105, 0.273417,
		0.749559, -0.526729, 0.400896,
		39.644669, 31.192490, 29.461824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839504, 31.260300, 29.764170>,  <39.119976, 31.561199, 29.181198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839504, 31.260300, 29.764170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.234818, 31.256193, 29.825083>,  <39.472004, 31.253729, 29.861631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.234818, 31.256193, 29.825083>,  <38.839504, 31.260300, 29.764170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234818, 31.256193, 29.825083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134494, 0.413146, 0.900678,
		-0.072163, -0.910607, 0.406925,
		0.988283, -0.010267, 0.152285,
		39.531303, 31.253113, 29.870768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935928, 30.778147, 30.332569>,  <38.839504, 31.260300, 29.764170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935928, 30.778147, 30.332569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253166, 31.021782, 30.331146>,  <39.443508, 31.167963, 30.330294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253166, 31.021782, 30.331146>,  <38.935928, 30.778147, 30.332569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253166, 31.021782, 30.331146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202165, 0.268736, 0.941759,
		0.574571, -0.746184, 0.336269,
		0.793094, 0.609089, -0.003556,
		39.491093, 31.204508, 30.330080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224571, 30.778992, 31.001377>,  <38.935928, 30.778147, 30.332569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224571, 30.778992, 31.001377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362999, 31.109882, 30.824322>,  <39.446056, 31.308416, 30.718088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362999, 31.109882, 30.824322>,  <39.224571, 30.778992, 31.001377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362999, 31.109882, 30.824322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056164, 0.452679, 0.889903,
		0.936526, -0.332830, 0.110199,
		0.346071, 0.827228, -0.442639,
		39.466820, 31.358051, 30.691530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759308, 30.982504, 31.482229>,  <39.224571, 30.778992, 31.001377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759308, 30.982504, 31.482229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677097, 31.317410, 31.279547>,  <39.627769, 31.518353, 31.157938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677097, 31.317410, 31.279547>,  <39.759308, 30.982504, 31.482229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677097, 31.317410, 31.279547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268962, 0.546146, 0.793337,
		0.940967, 0.026767, -0.337439,
		-0.205526, 0.837262, -0.506706,
		39.615440, 31.568588, 31.127535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.751453, 31.551403, 25.504335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.443111, 31.592398, 25.252851>,  <44.258106, 31.616995, 25.101961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.443111, 31.592398, 25.252851>,  <44.751453, 31.551403, 25.504335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443111, 31.592398, 25.252851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461873, -0.589788, -0.662437,
		-0.438696, -0.801028, 0.407308,
		-0.770857, 0.102484, -0.628711,
		44.211853, 31.623144, 25.064238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574203, 30.893530, 25.352102>,  <44.751453, 31.551403, 25.504335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574203, 30.893530, 25.352102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.429401, 31.109579, 25.048204>,  <44.342518, 31.239208, 24.865866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.429401, 31.109579, 25.048204>,  <44.574203, 30.893530, 25.352102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429401, 31.109579, 25.048204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458088, -0.606747, -0.649626,
		-0.811853, -0.583201, -0.027778,
		-0.362008, 0.540125, -0.759746,
		44.320801, 31.271616, 24.820280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450523, 30.421335, 24.873026>,  <44.574203, 30.893530, 25.352102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450523, 30.421335, 24.873026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.446426, 30.752842, 24.649227>,  <44.443970, 30.951746, 24.514948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.446426, 30.752842, 24.649227>,  <44.450523, 30.421335, 24.873026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446426, 30.752842, 24.649227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295679, -0.531998, -0.793443,
		-0.955232, -0.173557, -0.239602,
		-0.010240, 0.828768, -0.559499,
		44.443356, 31.001472, 24.481377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038162, 30.264292, 24.443525>,  <44.450523, 30.421335, 24.873026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038162, 30.264292, 24.443525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.233479, 30.558449, 24.255579>,  <44.350666, 30.734943, 24.142811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.233479, 30.558449, 24.255579>,  <44.038162, 30.264292, 24.443525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233479, 30.558449, 24.255579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218131, -0.624175, -0.750216,
		-0.844982, 0.263828, -0.465189,
		0.488288, 0.735391, -0.469867,
		44.379963, 30.779066, 24.114618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799747, 30.315496, 23.767132>,  <44.038162, 30.264292, 24.443525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799747, 30.315496, 23.767132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.169994, 30.465473, 23.787714>,  <44.392143, 30.555458, 23.800064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.169994, 30.465473, 23.787714>,  <43.799747, 30.315496, 23.767132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169994, 30.465473, 23.787714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264681, -0.544162, -0.796136,
		-0.270502, 0.750539, -0.602926,
		0.925620, 0.374940, 0.051457,
		44.447681, 30.577955, 23.803150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982929, 30.550142, 23.053650>,  <43.799747, 30.315496, 23.767132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982929, 30.550142, 23.053650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.338528, 30.518017, 23.233976>,  <44.551888, 30.498741, 23.342173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.338528, 30.518017, 23.233976>,  <43.982929, 30.550142, 23.053650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338528, 30.518017, 23.233976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356363, -0.496898, -0.791263,
		0.287560, 0.864084, -0.413119,
		0.888996, -0.080316, 0.450816,
		44.605228, 30.493921, 23.369221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504486, 30.537848, 22.568689>,  <43.982929, 30.550142, 23.053650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504486, 30.537848, 22.568689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.717548, 30.381611, 22.869015>,  <44.845387, 30.287868, 23.049210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.717548, 30.381611, 22.869015>,  <44.504486, 30.537848, 22.568689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717548, 30.381611, 22.869015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534515, -0.532562, -0.656256,
		0.656183, 0.750876, -0.074892,
		0.532652, -0.390593, 0.750812,
		44.877342, 30.264433, 23.094259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183006, 30.622593, 22.397753>,  <44.504486, 30.537848, 22.568689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183006, 30.622593, 22.397753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.177959, 30.331671, 22.672232>,  <45.174931, 30.157118, 22.836918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.177959, 30.331671, 22.672232>,  <45.183006, 30.622593, 22.397753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177959, 30.331671, 22.672232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557512, -0.574800, -0.598987,
		0.830073, 0.375005, 0.412735,
		-0.012617, -0.727307, 0.686196,
		45.174175, 30.113478, 22.878090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763332, 30.348803, 22.306934>,  <45.183006, 30.622593, 22.397753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763332, 30.348803, 22.306934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.617069, 30.064604, 22.547428>,  <45.529312, 29.894085, 22.691725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.617069, 30.064604, 22.547428>,  <45.763332, 30.348803, 22.306934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617069, 30.064604, 22.547428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340251, -0.703300, -0.624178,
		0.866328, -0.023665, 0.498916,
		-0.365658, -0.710499, 0.601236,
		45.507370, 29.851454, 22.727798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.272964, 29.785820, 22.476419>,  <45.763332, 30.348803, 22.306934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.272964, 29.785820, 22.476419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.914730, 29.610428, 22.506516>,  <45.699791, 29.505192, 22.524574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.914730, 29.610428, 22.506516>,  <46.272964, 29.785820, 22.476419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914730, 29.610428, 22.506516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209210, -0.564341, -0.798593,
		0.392630, -0.699466, 0.597150,
		-0.895585, -0.438482, 0.075242,
		45.646053, 29.478884, 22.529087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456146, 29.030680, 22.322926>,  <46.272964, 29.785820, 22.476419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456146, 29.030680, 22.322926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.057751, 29.051559, 22.293848>,  <45.818714, 29.064087, 22.276402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.057751, 29.051559, 22.293848>,  <46.456146, 29.030680, 22.322926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057751, 29.051559, 22.293848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016246, -0.693318, -0.720448,
		-0.088004, -0.718738, 0.689689,
		-0.995988, 0.052198, -0.072692,
		45.758953, 29.067219, 22.272041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114624, 28.275492, 22.325186>,  <46.456146, 29.030680, 22.322926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114624, 28.275492, 22.325186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.889149, 28.536549, 22.122677>,  <45.753864, 28.693182, 22.001171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.889149, 28.536549, 22.122677>,  <46.114624, 28.275492, 22.325186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889149, 28.536549, 22.122677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105365, -0.551109, -0.827754,
		-0.819238, -0.519941, 0.241889,
		-0.563690, 0.652641, -0.506273,
		45.720043, 28.732342, 21.970795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456158, 27.913723, 22.118378>,  <46.114624, 28.275492, 22.325186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456158, 27.913723, 22.118378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.587997, 28.212093, 21.886875>,  <45.667103, 28.391115, 21.747974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.587997, 28.212093, 21.886875>,  <45.456158, 27.913723, 22.118378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587997, 28.212093, 21.886875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192128, -0.547189, -0.814660,
		-0.924365, 0.379707, -0.037041,
		0.329600, 0.745926, -0.578755,
		45.686878, 28.435871, 21.713249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876682, 28.262154, 21.714205>,  <45.456158, 27.913723, 22.118378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876682, 28.262154, 21.714205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.238247, 28.228069, 21.546549>,  <45.455185, 28.207619, 21.445955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.238247, 28.228069, 21.546549>,  <44.876682, 28.262154, 21.714205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238247, 28.228069, 21.546549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357804, -0.687561, -0.631851,
		-0.234343, 0.721109, -0.651985,
		0.903913, -0.085213, -0.419141,
		45.509422, 28.202505, 21.420807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144577, 28.562557, 21.913677>,  <44.876682, 28.262154, 21.714205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144577, 28.562557, 21.913677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.977543, 28.200886, 21.949638>,  <43.877323, 27.983883, 21.971214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.977543, 28.200886, 21.949638>,  <44.144577, 28.562557, 21.913677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977543, 28.200886, 21.949638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528484, 0.322168, 0.785438,
		-0.739141, 0.280475, -0.612376,
		-0.417584, -0.904180, 0.089901,
		43.852268, 27.929632, 21.976608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446014, 28.749697, 21.902336>,  <44.144577, 28.562557, 21.913677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446014, 28.749697, 21.902336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449924, 28.386080, 22.068970>,  <43.452271, 28.167910, 22.168951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449924, 28.386080, 22.068970>,  <43.446014, 28.749697, 21.902336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449924, 28.386080, 22.068970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597902, 0.328615, 0.731113,
		-0.801510, -0.256224, -0.540306,
		0.009776, -0.909044, 0.416585,
		43.452858, 28.113367, 22.193945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730320, 28.572870, 21.949509>,  <43.446014, 28.749697, 21.902336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730320, 28.572870, 21.949509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.941467, 28.343430, 22.200056>,  <43.068157, 28.205765, 22.350384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.941467, 28.343430, 22.200056>,  <42.730320, 28.572870, 21.949509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941467, 28.343430, 22.200056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664732, 0.180032, 0.725065,
		-0.528665, -0.799105, -0.286259,
		0.527867, -0.573602, 0.626367,
		43.099827, 28.171349, 22.387966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192665, 28.056845, 22.195782>,  <42.730320, 28.572870, 21.949509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192665, 28.056845, 22.195782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.502926, 28.087467, 22.446381>,  <42.689083, 28.105841, 22.596741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.502926, 28.087467, 22.446381>,  <42.192665, 28.056845, 22.195782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502926, 28.087467, 22.446381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630806, 0.060873, 0.773549,
		0.021083, -0.995205, 0.095509,
		0.775654, 0.076556, 0.626498,
		42.735622, 28.110434, 22.634331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077263, 27.588787, 22.743858>,  <42.192665, 28.056845, 22.195782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077263, 27.588787, 22.743858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.339962, 27.855206, 22.885317>,  <42.497581, 28.015057, 22.970192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.339962, 27.855206, 22.885317>,  <42.077263, 27.588787, 22.743858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339962, 27.855206, 22.885317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508392, 0.044681, 0.859966,
		0.556976, -0.744570, 0.367957,
		0.656745, 0.666047, 0.353648,
		42.536987, 28.055019, 22.991411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104126, 27.480448, 23.425316>,  <42.077263, 27.588787, 22.743858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104126, 27.480448, 23.425316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.241302, 27.855684, 23.405811>,  <42.323608, 28.080826, 23.394108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.241302, 27.855684, 23.405811>,  <42.104126, 27.480448, 23.425316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241302, 27.855684, 23.405811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459055, 0.212652, 0.862582,
		0.819550, -0.273426, 0.503562,
		0.342936, 0.938092, -0.048761,
		42.344185, 28.137112, 23.391182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456692, 27.717524, 24.088049>,  <42.104126, 27.480448, 23.425316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456692, 27.717524, 24.088049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.318199, 28.050461, 23.914921>,  <42.235104, 28.250223, 23.811045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.318199, 28.050461, 23.914921>,  <42.456692, 27.717524, 24.088049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318199, 28.050461, 23.914921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385739, 0.294248, 0.874428,
		0.855179, 0.469708, 0.219189,
		-0.346230, 0.832341, -0.432819,
		42.214329, 28.300163, 23.785074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552841, 28.133196, 24.567198>,  <42.456692, 27.717524, 24.088049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552841, 28.133196, 24.567198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.313957, 28.367006, 24.347498>,  <42.170628, 28.507292, 24.215677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.313957, 28.367006, 24.347498>,  <42.552841, 28.133196, 24.567198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313957, 28.367006, 24.347498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267060, 0.500795, 0.823336,
		0.756323, 0.638384, -0.142974,
		-0.597206, 0.584525, -0.549250,
		42.134796, 28.542364, 24.182722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545727, 28.686762, 25.012093>,  <42.552841, 28.133196, 24.567198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545727, 28.686762, 25.012093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.231556, 28.754541, 24.773968>,  <42.043053, 28.795210, 24.631094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.231556, 28.754541, 24.773968>,  <42.545727, 28.686762, 25.012093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231556, 28.754541, 24.773968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508354, 0.372090, 0.776611,
		0.353107, 0.912598, -0.206108,
		-0.785425, 0.169451, -0.595310,
		41.995930, 28.805376, 24.595375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399395, 29.359999, 25.145447>,  <42.545727, 28.686762, 25.012093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399395, 29.359999, 25.145447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.063202, 29.196867, 25.002750>,  <41.861485, 29.098988, 24.917131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.063202, 29.196867, 25.002750>,  <42.399395, 29.359999, 25.145447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063202, 29.196867, 25.002750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525833, 0.455075, 0.718614,
		-0.130727, 0.791569, -0.596932,
		-0.840482, -0.407829, -0.356743,
		41.811058, 29.074518, 24.895727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004227, 29.899750, 25.182447>,  <42.399395, 29.359999, 25.145447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004227, 29.899750, 25.182447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.762413, 29.583166, 25.146399>,  <41.617325, 29.393215, 25.124769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.762413, 29.583166, 25.146399>,  <42.004227, 29.899750, 25.182447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762413, 29.583166, 25.146399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616959, 0.393651, 0.681470,
		-0.503880, 0.467577, -0.726276,
		-0.604539, -0.791461, -0.090123,
		41.581051, 29.345728, 25.119362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263916, 30.078794, 25.296751>,  <42.004227, 29.899750, 25.182447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263916, 30.078794, 25.296751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210869, 29.686090, 25.351244>,  <41.179039, 29.450468, 25.383940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210869, 29.686090, 25.351244>,  <41.263916, 30.078794, 25.296751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210869, 29.686090, 25.351244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725960, 0.189790, 0.661031,
		-0.674829, -0.011233, -0.737889,
		-0.132619, -0.981760, 0.136231,
		41.171082, 29.391562, 25.392113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561256, 29.992592, 25.196449>,  <41.263916, 30.078794, 25.296751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561256, 29.992592, 25.196449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.693371, 29.689545, 25.421635>,  <40.772640, 29.507717, 25.556746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.693371, 29.689545, 25.421635>,  <40.561256, 29.992592, 25.196449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693371, 29.689545, 25.421635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716422, 0.187101, 0.672110,
		-0.614533, -0.625308, -0.480977,
		0.330285, -0.757616, 0.562965,
		40.792458, 29.462259, 25.590525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034454, 29.542305, 25.450367>,  <40.561256, 29.992592, 25.196449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034454, 29.542305, 25.450367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.317982, 29.463678, 25.721348>,  <40.488098, 29.416502, 25.883936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.317982, 29.463678, 25.721348>,  <40.034454, 29.542305, 25.450367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317982, 29.463678, 25.721348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673547, 0.096697, 0.732792,
		-0.209552, -0.975710, -0.063858,
		0.708817, -0.196570, 0.677450,
		40.530628, 29.404707, 25.924583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610352, 28.977064, 25.218096>,  <40.034454, 29.542305, 25.450367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610352, 28.977064, 25.218096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.231884, 28.904280, 25.111027>,  <39.004803, 28.860609, 25.046785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.231884, 28.904280, 25.111027>,  <39.610352, 28.977064, 25.218096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231884, 28.904280, 25.111027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315543, -0.334455, -0.888016,
		0.072061, -0.924678, 0.373869,
		-0.946171, -0.181963, -0.267675,
		38.948032, 28.849691, 25.030724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608505, 28.299978, 25.009420>,  <39.610352, 28.977064, 25.218096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608505, 28.299978, 25.009420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.302265, 28.485678, 24.831282>,  <39.118523, 28.597097, 24.724400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.302265, 28.485678, 24.831282>,  <39.608505, 28.299978, 25.009420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302265, 28.485678, 24.831282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240347, -0.435722, -0.867398,
		-0.596735, -0.771116, 0.222008,
		-0.765598, 0.464248, -0.445346,
		39.072586, 28.624952, 24.697678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462704, 27.860600, 24.436501>,  <39.608505, 28.299978, 25.009420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462704, 27.860600, 24.436501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.274197, 28.200350, 24.341448>,  <39.161091, 28.404200, 24.284416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.274197, 28.200350, 24.341448>,  <39.462704, 27.860600, 24.436501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274197, 28.200350, 24.341448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065010, -0.302143, -0.951043,
		-0.879592, -0.432747, 0.197608,
		-0.471267, 0.849376, -0.237630,
		39.132816, 28.455162, 24.270159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950436, 27.709520, 23.985903>,  <39.462704, 27.860600, 24.436501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950436, 27.709520, 23.985903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.002144, 28.098751, 23.909578>,  <39.033169, 28.332289, 23.863783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.002144, 28.098751, 23.909578>,  <38.950436, 27.709520, 23.985903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002144, 28.098751, 23.909578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014796, -0.194298, -0.980831,
		-0.991499, 0.123972, -0.039515,
		0.129273, 0.973077, -0.190812,
		39.040924, 28.390675, 23.852335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438293, 27.890064, 23.442003>,  <38.950436, 27.709520, 23.985903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438293, 27.890064, 23.442003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.754833, 28.134531, 23.435846>,  <38.944759, 28.281210, 23.432152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.754833, 28.134531, 23.435846>,  <38.438293, 27.890064, 23.442003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754833, 28.134531, 23.435846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081992, -0.131047, -0.987980,
		-0.605836, 0.780579, -0.153815,
		0.791354, 0.611165, -0.015392,
		38.992241, 28.317881, 23.431229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482178, 28.073427, 22.799072>,  <38.438293, 27.890064, 23.442003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482178, 28.073427, 22.799072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835365, 28.209013, 22.928978>,  <39.047276, 28.290363, 23.006922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835365, 28.209013, 22.928978>,  <38.482178, 28.073427, 22.799072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835365, 28.209013, 22.928978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374296, -0.090803, -0.922853,
		-0.283323, 0.936407, -0.207049,
		0.882967, 0.338963, 0.324766,
		39.100254, 28.310701, 23.026407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674576, 28.558851, 22.279936>,  <38.482178, 28.073427, 22.799072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674576, 28.558851, 22.279936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.003422, 28.440710, 22.474623>,  <39.200729, 28.369825, 22.591434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.003422, 28.440710, 22.474623>,  <38.674576, 28.558851, 22.279936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003422, 28.440710, 22.474623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452604, -0.179549, -0.873448,
		0.345367, 0.938364, -0.013931,
		0.822114, -0.295355, 0.486717,
		39.250057, 28.352104, 22.620638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734550, 29.212830, 21.992899>,  <38.674576, 28.558851, 22.279936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734550, 29.212830, 21.992899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537407, 29.458231, 21.746096>,  <38.419121, 29.605471, 21.598013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537407, 29.458231, 21.746096>,  <38.734550, 29.212830, 21.992899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537407, 29.458231, 21.746096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546226, 0.333822, 0.768245,
		0.677291, 0.715666, 0.170582,
		-0.492863, 0.613502, -0.617010,
		38.389549, 29.642282, 21.560993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763805, 29.937349, 22.263885>,  <38.734550, 29.212830, 21.992899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763805, 29.937349, 22.263885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.437992, 29.880705, 22.038858>,  <38.242504, 29.846718, 21.903841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.437992, 29.880705, 22.038858>,  <38.763805, 29.937349, 22.263885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437992, 29.880705, 22.038858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559630, 0.447267, 0.697686,
		0.152818, 0.883118, -0.443564,
		-0.814531, -0.141612, -0.562570,
		38.193634, 29.838221, 21.870087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425827, 30.530117, 22.286758>,  <38.763805, 29.937349, 22.263885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425827, 30.530117, 22.286758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143208, 30.278887, 22.156338>,  <37.973637, 30.128149, 22.078085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143208, 30.278887, 22.156338>,  <38.425827, 30.530117, 22.286758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143208, 30.278887, 22.156338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685333, 0.492472, 0.536462,
		-0.176367, 0.602490, -0.778396,
		-0.706551, -0.628074, -0.326051,
		37.931244, 30.090466, 22.058523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903618, 30.908211, 21.974205>,  <38.425827, 30.530117, 22.286758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903618, 30.908211, 21.974205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.735409, 30.567284, 22.098602>,  <37.634483, 30.362728, 22.173241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.735409, 30.567284, 22.098602>,  <37.903618, 30.908211, 21.974205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735409, 30.567284, 22.098602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651586, 0.522235, 0.550188,
		-0.631347, 0.028726, -0.774968,
		-0.420520, -0.852318, 0.310994,
		37.609253, 30.311588, 22.191900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241848, 31.120174, 22.125338>,  <37.903618, 30.908211, 21.974205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241848, 31.120174, 22.125338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228504, 30.742168, 22.255466>,  <37.220497, 30.515366, 22.333544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228504, 30.742168, 22.255466>,  <37.241848, 31.120174, 22.125338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228504, 30.742168, 22.255466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671698, 0.262230, 0.692862,
		-0.740073, -0.195401, -0.643513,
		-0.033363, -0.945015, 0.325320,
		37.218494, 30.458664, 22.353062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488010, 30.846827, 22.089449>,  <37.241848, 31.120174, 22.125338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488010, 30.846827, 22.089449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676201, 30.633686, 22.370794>,  <36.789116, 30.505802, 22.539602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676201, 30.633686, 22.370794>,  <36.488010, 30.846827, 22.089449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676201, 30.633686, 22.370794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749723, 0.178991, 0.637086,
		-0.465367, -0.827063, -0.315278,
		0.470478, -0.532850, 0.703364,
		36.817345, 30.473831, 22.581804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000443, 30.324972, 22.329210>,  <36.488010, 30.846827, 22.089449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000443, 30.324972, 22.329210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283352, 30.379484, 22.606684>,  <36.453098, 30.412191, 22.773169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283352, 30.379484, 22.606684>,  <36.000443, 30.324972, 22.329210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283352, 30.379484, 22.606684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706585, 0.104990, 0.699796,
		0.022534, -0.985092, 0.170546,
		0.707269, 0.136274, 0.693685,
		36.495533, 30.420368, 22.814789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.830441, 30.330074, 19.890333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.999554, 30.283667, 20.249842>,  <44.101021, 30.255823, 20.465548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.999554, 30.283667, 20.249842>,  <43.830441, 30.330074, 19.890333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999554, 30.283667, 20.249842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372172, 0.882048, 0.288929,
		-0.826281, -0.456653, 0.329738,
		0.422785, -0.116017, 0.898773,
		44.126389, 30.248861, 20.519474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294838, 30.450748, 20.259071>,  <43.830441, 30.330074, 19.890333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294838, 30.450748, 20.259071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.582344, 30.495966, 20.533470>,  <43.754848, 30.523096, 20.698109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.582344, 30.495966, 20.533470>,  <43.294838, 30.450748, 20.259071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582344, 30.495966, 20.533470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537961, 0.715468, 0.445762,
		-0.440418, -0.689439, 0.575070,
		0.718770, 0.113044, 0.685996,
		43.797974, 30.529879, 20.739269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939419, 30.478802, 20.893705>,  <43.294838, 30.450748, 20.259071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939419, 30.478802, 20.893705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.279350, 30.672890, 20.976027>,  <43.483307, 30.789343, 21.025419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.279350, 30.672890, 20.976027>,  <42.939419, 30.478802, 20.893705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279350, 30.672890, 20.976027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493125, 0.594136, 0.635477,
		0.186072, -0.641531, 0.744187,
		0.849827, 0.485222, 0.205803,
		43.534298, 30.818457, 21.037767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951942, 30.684362, 21.642797>,  <42.939419, 30.478802, 20.893705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951942, 30.684362, 21.642797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.230049, 30.922159, 21.481213>,  <43.396912, 31.064837, 21.384262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.230049, 30.922159, 21.481213>,  <42.951942, 30.684362, 21.642797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230049, 30.922159, 21.481213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142387, 0.664816, 0.733312,
		0.704512, -0.452324, 0.546869,
		0.695261, 0.594494, -0.403966,
		43.438629, 31.100508, 21.360023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395283, 30.917616, 22.161308>,  <42.951942, 30.684362, 21.642797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395283, 30.917616, 22.161308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.441849, 31.183084, 21.865746>,  <43.469788, 31.342365, 21.688408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.441849, 31.183084, 21.865746>,  <43.395283, 30.917616, 22.161308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441849, 31.183084, 21.865746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159861, 0.746787, 0.645565,
		0.980251, 0.042971, 0.193030,
		0.116412, 0.663674, -0.738909,
		43.476772, 31.382187, 21.644073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697495, 31.489302, 22.498934>,  <43.395283, 30.917616, 22.161308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697495, 31.489302, 22.498934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.609325, 31.657688, 22.146978>,  <43.556423, 31.758720, 21.935806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.609325, 31.657688, 22.146978>,  <43.697495, 31.489302, 22.498934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609325, 31.657688, 22.146978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170118, 0.871657, 0.459644,
		0.960454, 0.251002, -0.120521,
		-0.220424, 0.420965, -0.879887,
		43.543198, 31.783978, 21.883013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009945, 32.113499, 22.514088>,  <43.697495, 31.489302, 22.498934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009945, 32.113499, 22.514088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.705383, 32.165577, 22.260061>,  <43.522644, 32.196823, 22.107645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.705383, 32.165577, 22.260061>,  <44.009945, 32.113499, 22.514088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705383, 32.165577, 22.260061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149351, 0.918044, 0.367273,
		0.630835, 0.374492, -0.679560,
		-0.761407, 0.130195, -0.635066,
		43.476963, 32.204636, 22.069542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000584, 32.783966, 22.474707>,  <44.009945, 32.113499, 22.514088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000584, 32.783966, 22.474707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.642445, 32.688423, 22.324345>,  <43.427563, 32.631096, 22.234127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.642445, 32.688423, 22.324345>,  <44.000584, 32.783966, 22.474707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642445, 32.688423, 22.324345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387079, 0.834804, 0.391500,
		0.220293, 0.496032, -0.839895,
		-0.895344, -0.238861, -0.375905,
		43.373840, 32.616764, 22.211573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731777, 33.434174, 22.177912>,  <44.000584, 32.783966, 22.474707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731777, 33.434174, 22.177912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.420563, 33.188740, 22.231842>,  <43.233833, 33.041481, 22.264200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.420563, 33.188740, 22.231842>,  <43.731777, 33.434174, 22.177912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420563, 33.188740, 22.231842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546151, 0.766694, 0.337488,
		-0.310447, 0.188943, -0.931624,
		-0.778037, -0.613580, 0.134826,
		43.187153, 33.004665, 22.272289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077930, 33.698528, 21.830793>,  <43.731777, 33.434174, 22.177912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077930, 33.698528, 21.830793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.980549, 33.463409, 22.139395>,  <42.922119, 33.322338, 22.324556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.980549, 33.463409, 22.139395>,  <43.077930, 33.698528, 21.830793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980549, 33.463409, 22.139395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589371, 0.721393, 0.363639,
		-0.770306, -0.366173, -0.522059,
		-0.243455, -0.587800, 0.771506,
		42.907513, 33.287071, 22.370846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378078, 33.940929, 21.993216>,  <43.077930, 33.698528, 21.830793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378078, 33.940929, 21.993216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.499199, 33.747028, 22.321442>,  <42.571873, 33.630688, 22.518377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.499199, 33.747028, 22.321442>,  <42.378078, 33.940929, 21.993216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499199, 33.747028, 22.321442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612793, 0.560387, 0.557181,
		-0.729929, -0.671551, -0.127367,
		0.302800, -0.484752, 0.820565,
		42.590038, 33.601604, 22.567612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762569, 33.898205, 22.288450>,  <42.378078, 33.940929, 21.993216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762569, 33.898205, 22.288450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.013775, 33.800812, 22.584103>,  <42.164497, 33.742378, 22.761494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.013775, 33.800812, 22.584103>,  <41.762569, 33.898205, 22.288450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013775, 33.800812, 22.584103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545489, 0.539660, 0.641256,
		-0.555011, -0.805906, 0.206100,
		0.628016, -0.243479, 0.739131,
		42.202179, 33.727768, 22.805841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237335, 33.216164, 22.308359>,  <41.762569, 33.898205, 22.288450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237335, 33.216164, 22.308359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.858387, 33.237343, 22.182062>,  <40.631020, 33.250050, 22.106285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.858387, 33.237343, 22.182062>,  <41.237335, 33.216164, 22.308359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858387, 33.237343, 22.182062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243238, -0.522206, -0.817396,
		-0.208161, -0.851174, 0.481842,
		-0.947367, 0.052947, -0.315741,
		40.574177, 33.253227, 22.087339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059261, 32.541447, 22.170883>,  <41.237335, 33.216164, 22.308359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059261, 32.541447, 22.170883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.814438, 32.766003, 21.948092>,  <40.667545, 32.900738, 21.814417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.814438, 32.766003, 21.948092>,  <41.059261, 32.541447, 22.170883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814438, 32.766003, 21.948092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065559, -0.665866, -0.743186,
		-0.788094, -0.491385, 0.370741,
		-0.612054, 0.561394, -0.556979,
		40.630821, 32.934422, 21.780998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469196, 32.095985, 21.930588>,  <41.059261, 32.541447, 22.170883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469196, 32.095985, 21.930588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.529011, 32.400055, 21.677677>,  <40.564899, 32.582497, 21.525930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.529011, 32.400055, 21.677677>,  <40.469196, 32.095985, 21.930588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529011, 32.400055, 21.677677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108461, -0.622996, -0.774669,
		-0.982789, 0.184421, -0.010713,
		0.149539, 0.760174, -0.632276,
		40.573872, 32.628109, 21.487995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903004, 32.090054, 21.503887>,  <40.469196, 32.095985, 21.930588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903004, 32.090054, 21.503887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.167595, 32.305630, 21.295277>,  <40.326351, 32.434975, 21.170111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.167595, 32.305630, 21.295277>,  <39.903004, 32.090054, 21.503887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167595, 32.305630, 21.295277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251167, -0.496046, -0.831176,
		-0.706654, 0.680796, -0.192760,
		0.661479, 0.538939, -0.521526,
		40.366039, 32.467312, 21.138819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505444, 32.155014, 20.874056>,  <39.903004, 32.090054, 21.503887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505444, 32.155014, 20.874056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878414, 32.272072, 20.789265>,  <40.102196, 32.342308, 20.738390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878414, 32.272072, 20.789265>,  <39.505444, 32.155014, 20.874056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878414, 32.272072, 20.789265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040036, -0.499347, -0.865477,
		-0.359131, 0.815481, -0.453888,
		0.932428, 0.292648, -0.211980,
		40.158142, 32.359867, 20.725670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486382, 32.387886, 20.202162>,  <39.505444, 32.155014, 20.874056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486382, 32.387886, 20.202162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.876301, 32.314201, 20.252510>,  <40.110252, 32.269993, 20.282719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.876301, 32.314201, 20.252510>,  <39.486382, 32.387886, 20.202162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876301, 32.314201, 20.252510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002008, -0.556909, -0.830571,
		0.223097, 0.809889, -0.542502,
		0.974794, -0.184208, 0.125871,
		40.168739, 32.258938, 20.290272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945675, 32.630142, 19.642437>,  <39.486382, 32.387886, 20.202162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945675, 32.630142, 19.642437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.154865, 32.342216, 19.825024>,  <40.280380, 32.169460, 19.934576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.154865, 32.342216, 19.825024>,  <39.945675, 32.630142, 19.642437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154865, 32.342216, 19.825024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143283, -0.453678, -0.879571,
		0.840217, 0.525400, -0.134126,
		0.522977, -0.719813, 0.456469,
		40.311760, 32.126274, 19.961964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487164, 32.552109, 19.181227>,  <39.945675, 32.630142, 19.642437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487164, 32.552109, 19.181227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.481316, 32.223003, 19.408506>,  <40.477806, 32.025539, 19.544874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.481316, 32.223003, 19.408506>,  <40.487164, 32.552109, 19.181227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481316, 32.223003, 19.408506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170409, -0.561996, -0.809395,
		0.985265, 0.084994, 0.148422,
		-0.014619, -0.822761, 0.568199,
		40.476929, 31.976175, 19.578966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003323, 32.102581, 18.945702>,  <40.487164, 32.552109, 19.181227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003323, 32.102581, 18.945702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.814621, 31.820663, 19.157631>,  <40.701401, 31.651512, 19.284788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.814621, 31.820663, 19.157631>,  <41.003323, 32.102581, 18.945702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814621, 31.820663, 19.157631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290982, -0.691672, -0.660999,
		0.832333, -0.157659, 0.531380,
		-0.471753, -0.704794, 0.529825,
		40.673096, 31.609226, 19.316578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461590, 31.474632, 18.882771>,  <41.003323, 32.102581, 18.945702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461590, 31.474632, 18.882771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.106667, 31.339794, 19.008663>,  <40.893715, 31.258892, 19.084198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.106667, 31.339794, 19.008663>,  <41.461590, 31.474632, 18.882771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106667, 31.339794, 19.008663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069862, -0.772815, -0.630774,
		0.455859, -0.537702, 0.709274,
		-0.887306, -0.337095, 0.314729,
		40.840473, 31.238665, 19.103083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531456, 30.781229, 19.109215>,  <41.461590, 31.474632, 18.882771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531456, 30.781229, 19.109215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.141033, 30.768318, 19.023167>,  <40.906780, 30.760572, 18.971537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.141033, 30.768318, 19.023167>,  <41.531456, 30.781229, 19.109215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141033, 30.768318, 19.023167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153205, -0.804050, -0.574484,
		-0.154426, -0.593685, 0.789741,
		-0.976054, -0.032277, -0.215122,
		40.848217, 30.758635, 18.958630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258137, 29.981827, 19.080355>,  <41.531456, 30.781229, 19.109215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258137, 29.981827, 19.080355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009678, 30.220816, 18.877493>,  <40.860603, 30.364208, 18.755775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009678, 30.220816, 18.877493>,  <41.258137, 29.981827, 19.080355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009678, 30.220816, 18.877493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027093, -0.630373, -0.775819,
		-0.783226, -0.495638, 0.375367,
		-0.621146, 0.597472, -0.507153,
		40.823334, 30.400057, 18.725348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708157, 29.540056, 18.823055>,  <41.258137, 29.981827, 19.080355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708157, 29.540056, 18.823055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.708118, 29.855192, 18.576702>,  <40.708096, 30.044273, 18.428890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.708118, 29.855192, 18.576702>,  <40.708157, 29.540056, 18.823055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708118, 29.855192, 18.576702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030350, -0.615596, -0.787477,
		-0.999539, -0.018767, -0.023852,
		-0.000095, 0.787838, -0.615882,
		40.708092, 30.091543, 18.391937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175827, 29.317816, 18.331001>,  <40.708157, 29.540056, 18.823055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175827, 29.317816, 18.331001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.418938, 29.597610, 18.180628>,  <40.564804, 29.765488, 18.090403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.418938, 29.597610, 18.180628>,  <40.175827, 29.317816, 18.331001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418938, 29.597610, 18.180628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015885, -0.462602, -0.886424,
		-0.793949, 0.544719, -0.270048,
		0.607777, 0.699486, -0.375935,
		40.601273, 29.807457, 18.067848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544899, 29.749321, 18.429092>,  <40.175827, 29.317816, 18.331001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544899, 29.749321, 18.429092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.415134, 29.418423, 18.612579>,  <39.337276, 29.219883, 18.722672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.415134, 29.418423, 18.612579>,  <39.544899, 29.749321, 18.429092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415134, 29.418423, 18.612579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506581, 0.561481, 0.654305,
		-0.798830, -0.020110, -0.601220,
		-0.324416, -0.827245, 0.458715,
		39.317810, 29.170250, 18.750195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828934, 29.824177, 18.559626>,  <39.544899, 29.749321, 18.429092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828934, 29.824177, 18.559626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.954517, 29.564035, 18.836313>,  <39.029865, 29.407951, 19.002325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.954517, 29.564035, 18.836313>,  <38.828934, 29.824177, 18.559626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954517, 29.564035, 18.836313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549772, 0.469456, 0.690913,
		-0.774069, -0.597203, -0.210158,
		0.313956, -0.650353, 0.691717,
		39.048702, 29.368929, 19.043829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335754, 29.878563, 19.144613>,  <38.828934, 29.824177, 18.559626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335754, 29.878563, 19.144613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.609879, 29.655008, 19.331373>,  <38.774353, 29.520876, 19.443430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.609879, 29.655008, 19.331373>,  <38.335754, 29.878563, 19.144613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609879, 29.655008, 19.331373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456620, 0.169682, 0.873330,
		-0.567315, -0.811700, -0.138913,
		0.685311, -0.558884, 0.466902,
		38.815472, 29.487343, 19.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929192, 29.418089, 19.554214>,  <38.335754, 29.878563, 19.144613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929192, 29.418089, 19.554214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.302547, 29.447453, 19.694721>,  <38.526562, 29.465071, 19.779026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.302547, 29.447453, 19.694721>,  <37.929192, 29.418089, 19.554214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302547, 29.447453, 19.694721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352473, 0.003754, 0.935815,
		0.067377, -0.997295, 0.029378,
		0.933394, 0.073408, 0.351266,
		38.582565, 29.469475, 19.800100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888863, 28.942089, 20.137819>,  <37.929192, 29.418089, 19.554214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888863, 28.942089, 20.137819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.211952, 29.175741, 20.169775>,  <38.405804, 29.315931, 20.188948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.211952, 29.175741, 20.169775>,  <37.888863, 28.942089, 20.137819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211952, 29.175741, 20.169775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103309, 0.006824, 0.994626,
		0.580445, -0.811632, 0.065858,
		0.807719, 0.584129, 0.079888,
		38.454269, 29.350981, 20.193741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315197, 28.656021, 20.622997>,  <37.888863, 28.942089, 20.137819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315197, 28.656021, 20.622997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.392677, 29.048367, 20.615187>,  <38.439167, 29.283773, 20.610500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.392677, 29.048367, 20.615187>,  <38.315197, 28.656021, 20.622997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392677, 29.048367, 20.615187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213219, 0.061516, 0.975066,
		0.957610, -0.184711, 0.221055,
		0.193704, 0.980866, -0.019525,
		38.450787, 29.342627, 20.609329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764362, 28.793434, 21.171658>,  <38.315197, 28.656021, 20.622997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764362, 28.793434, 21.171658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.605389, 29.153307, 21.099415>,  <38.510006, 29.369230, 21.056068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.605389, 29.153307, 21.099415>,  <38.764362, 28.793434, 21.171658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605389, 29.153307, 21.099415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098547, 0.153835, 0.983170,
		0.912324, 0.408543, 0.027522,
		-0.397433, 0.899682, -0.180608,
		38.486160, 29.423212, 21.045233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241993, 28.679712, 21.698843>,  <38.764362, 28.793434, 21.171658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241993, 28.679712, 21.698843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.428249, 28.461811, 21.977818>,  <39.540005, 28.331070, 22.145203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.428249, 28.461811, 21.977818>,  <39.241993, 28.679712, 21.698843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428249, 28.461811, 21.977818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545730, -0.443649, -0.710883,
		0.696673, 0.711631, 0.090705,
		0.465645, -0.544754, 0.697437,
		39.567944, 28.298386, 22.187048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938354, 28.799120, 21.702271>,  <39.241993, 28.679712, 21.698843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938354, 28.799120, 21.702271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905159, 28.428852, 21.849918>,  <39.885242, 28.206692, 21.938507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905159, 28.428852, 21.849918>,  <39.938354, 28.799120, 21.702271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905159, 28.428852, 21.849918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647225, -0.331711, -0.686344,
		0.757769, 0.181943, 0.626645,
		-0.082989, -0.925670, 0.369118,
		39.880260, 28.151152, 21.960653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600487, 28.698158, 21.727617>,  <39.938354, 28.799120, 21.702271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600487, 28.698158, 21.727617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.422180, 28.340376, 21.741676>,  <40.315197, 28.125706, 21.750113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.422180, 28.340376, 21.741676>,  <40.600487, 28.698158, 21.727617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422180, 28.340376, 21.741676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700146, -0.372858, -0.608911,
		0.557750, -0.246825, 0.792460,
		-0.445770, -0.894457, 0.035148,
		40.288448, 28.072039, 21.752220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172859, 28.249828, 21.929817>,  <40.600487, 28.698158, 21.727617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172859, 28.249828, 21.929817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.893936, 28.020445, 21.757812>,  <40.726582, 27.882814, 21.654610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.893936, 28.020445, 21.757812>,  <41.172859, 28.249828, 21.929817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893936, 28.020445, 21.757812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702455, -0.427420, -0.569095,
		0.142557, -0.698897, 0.700872,
		-0.697305, -0.573459, -0.430012,
		40.684746, 27.848408, 21.628809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518745, 27.600462, 21.812843>,  <41.172859, 28.249828, 21.929817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518745, 27.600462, 21.812843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.200012, 27.547256, 21.577095>,  <41.008770, 27.515333, 21.435646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.200012, 27.547256, 21.577095>,  <41.518745, 27.600462, 21.812843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200012, 27.547256, 21.577095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567022, -0.501510, -0.653432,
		-0.208660, -0.854865, 0.475043,
		-0.796836, -0.133015, -0.589372,
		40.960960, 27.507353, 21.400284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526936, 26.922033, 21.593143>,  <41.518745, 27.600462, 21.812843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526936, 26.922033, 21.593143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.290936, 27.092773, 21.319004>,  <41.149338, 27.195217, 21.154520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.290936, 27.092773, 21.319004>,  <41.526936, 26.922033, 21.593143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290936, 27.092773, 21.319004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523310, -0.444238, -0.727186,
		-0.614858, -0.787687, 0.038723,
		-0.589997, 0.426852, -0.685347,
		41.113937, 27.220829, 21.113400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125313, 26.336596, 21.117893>,  <41.526936, 26.922033, 21.593143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125313, 26.336596, 21.117893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.208912, 26.689104, 20.948339>,  <41.259071, 26.900610, 20.846607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.208912, 26.689104, 20.948339>,  <41.125313, 26.336596, 21.117893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208912, 26.689104, 20.948339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664159, -0.446070, -0.599929,
		-0.717783, -0.156139, -0.678534,
		0.209001, 0.881273, -0.423882,
		41.271614, 26.953485, 20.821175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307087, 26.160999, 20.459332>,  <41.125313, 26.336596, 21.117893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307087, 26.160999, 20.459332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.404095, 26.547592, 20.425634>,  <41.462299, 26.779547, 20.405416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.404095, 26.547592, 20.425634>,  <41.307087, 26.160999, 20.459332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404095, 26.547592, 20.425634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841380, -0.252769, -0.477690,
		-0.482973, 0.044969, -0.874480,
		0.242523, 0.966481, -0.084245,
		41.476852, 26.837536, 20.400360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318569, 26.379040, 19.752525>,  <41.307087, 26.160999, 20.459332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318569, 26.379040, 19.752525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.548649, 26.630945, 19.961349>,  <41.686699, 26.782087, 20.086643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.548649, 26.630945, 19.961349>,  <41.318569, 26.379040, 19.752525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548649, 26.630945, 19.961349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741091, -0.131003, -0.658500,
		-0.346307, 0.765662, -0.542063,
		0.575201, 0.629761, 0.522058,
		41.721210, 26.819874, 20.117968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.623009, 33.424957, 32.854294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012188, 33.514339, 32.877769>,  <35.245693, 33.567970, 32.891857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012188, 33.514339, 32.877769>,  <34.623009, 33.424957, 32.854294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012188, 33.514339, 32.877769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088476, -0.125689, -0.988116,
		-0.213424, 0.966576, -0.142060,
		0.972945, 0.223456, 0.058694,
		35.304073, 33.581375, 32.895378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727982, 34.015602, 32.357708>,  <34.623009, 33.424957, 32.854294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727982, 34.015602, 32.357708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078934, 33.840530, 32.436340>,  <35.289505, 33.735489, 32.483521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078934, 33.840530, 32.436340>,  <34.727982, 34.015602, 32.357708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078934, 33.840530, 32.436340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185708, -0.068009, -0.980249,
		0.442404, 0.896556, 0.021611,
		0.877378, -0.437679, 0.196585,
		35.342148, 33.709229, 32.495316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224819, 34.495956, 32.070202>,  <34.727982, 34.015602, 32.357708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224819, 34.495956, 32.070202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361168, 34.120819, 32.096298>,  <35.442978, 33.895737, 32.111958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361168, 34.120819, 32.096298>,  <35.224819, 34.495956, 32.070202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361168, 34.120819, 32.096298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158203, -0.011184, -0.987343,
		0.926704, 0.346877, 0.144558,
		0.340870, -0.937844, 0.065241,
		35.463428, 33.839466, 32.115871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806065, 34.455654, 31.488577>,  <35.224819, 34.495956, 32.070202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806065, 34.455654, 31.488577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735065, 34.083614, 31.617210>,  <35.692467, 33.860390, 31.694389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735065, 34.083614, 31.617210>,  <35.806065, 34.455654, 31.488577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735065, 34.083614, 31.617210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041920, -0.319329, -0.946716,
		0.983228, -0.181521, 0.017691,
		-0.177498, -0.930096, 0.321582,
		35.681816, 33.804585, 31.713686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228600, 34.099979, 31.036310>,  <35.806065, 34.455654, 31.488577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228600, 34.099979, 31.036310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.963043, 33.845367, 31.193323>,  <35.803711, 33.692600, 31.287531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.963043, 33.845367, 31.193323>,  <36.228600, 34.099979, 31.036310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963043, 33.845367, 31.193323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124071, -0.423867, -0.897186,
		0.737469, -0.644332, 0.202425,
		-0.663887, -0.636532, 0.392532,
		35.763878, 33.654408, 31.311083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488140, 33.506706, 30.951420>,  <36.228600, 34.099979, 31.036310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488140, 33.506706, 30.951420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095600, 33.438343, 30.986607>,  <35.860077, 33.397327, 31.007719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095600, 33.438343, 30.986607>,  <36.488140, 33.506706, 30.951420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095600, 33.438343, 30.986607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028741, -0.582969, -0.811986,
		0.190054, -0.794316, 0.577011,
		-0.981353, -0.170905, 0.087967,
		35.801193, 33.387074, 31.012997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418385, 32.753311, 31.078081>,  <36.488140, 33.506706, 30.951420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418385, 32.753311, 31.078081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.053299, 32.877869, 30.972258>,  <35.834248, 32.952602, 30.908764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.053299, 32.877869, 30.972258>,  <36.418385, 32.753311, 31.078081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053299, 32.877869, 30.972258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031960, -0.699890, -0.713535,
		-0.407350, -0.642797, 0.648751,
		-0.912713, 0.311392, -0.264557,
		35.779484, 32.971287, 30.892891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026566, 32.224010, 30.853199>,  <36.418385, 32.753311, 31.078081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026566, 32.224010, 30.853199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809532, 32.517960, 30.690443>,  <35.679310, 32.694328, 30.592791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809532, 32.517960, 30.690443>,  <36.026566, 32.224010, 30.853199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809532, 32.517960, 30.690443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072189, -0.523394, -0.849027,
		-0.836891, -0.431299, 0.337037,
		-0.542588, 0.734874, -0.406889,
		35.646755, 32.738422, 30.568377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503391, 31.860636, 30.643900>,  <36.026566, 32.224010, 30.853199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503391, 31.860636, 30.643900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554958, 32.190018, 30.422884>,  <35.585899, 32.387646, 30.290274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554958, 32.190018, 30.422884>,  <35.503391, 31.860636, 30.643900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554958, 32.190018, 30.422884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041458, -0.552229, -0.832661,
		-0.990788, 0.130254, -0.037055,
		0.128920, 0.823454, -0.552542,
		35.593636, 32.437054, 30.257122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474174, 31.496082, 30.081587>,  <35.503391, 31.860636, 30.643900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474174, 31.496082, 30.081587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512730, 31.884859, 29.995758>,  <35.535862, 32.118126, 29.944262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512730, 31.884859, 29.995758>,  <35.474174, 31.496082, 30.081587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512730, 31.884859, 29.995758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018737, -0.217309, -0.975923,
		-0.995168, 0.090046, -0.039157,
		0.096387, 0.971941, -0.214572,
		35.541645, 32.176441, 29.931387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921844, 31.712912, 29.619200>,  <35.474174, 31.496082, 30.081587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921844, 31.712912, 29.619200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254349, 31.931368, 29.577763>,  <35.453854, 32.062443, 29.552900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254349, 31.931368, 29.577763>,  <34.921844, 31.712912, 29.619200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254349, 31.931368, 29.577763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136793, -0.381604, -0.914148,
		-0.538782, 0.745729, -0.391922,
		0.831265, 0.546139, -0.103591,
		35.503727, 32.095211, 29.546686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954205, 32.018841, 28.896891>,  <34.921844, 31.712912, 29.619200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954205, 32.018841, 28.896891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331573, 31.987633, 29.025808>,  <35.557995, 31.968906, 29.103159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331573, 31.987633, 29.025808>,  <34.954205, 32.018841, 28.896891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331573, 31.987633, 29.025808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271663, -0.375488, -0.886120,
		0.190156, 0.923537, -0.333046,
		0.943419, -0.078024, 0.322292,
		35.614601, 31.964226, 29.122496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804295, 32.591007, 28.366917>,  <34.954205, 32.018841, 28.896891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804295, 32.591007, 28.366917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634502, 32.818172, 28.084841>,  <34.532627, 32.954472, 27.915594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634502, 32.818172, 28.084841>,  <34.804295, 32.591007, 28.366917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634502, 32.818172, 28.084841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342544, 0.620230, 0.705676,
		0.838141, 0.541105, -0.068741,
		-0.424480, 0.567910, -0.705192,
		34.507160, 32.988544, 27.873283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139542, 33.139881, 28.158558>,  <34.804295, 32.591007, 28.366917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139542, 33.139881, 28.158558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751286, 33.226868, 28.117462>,  <34.518330, 33.279060, 28.092804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751286, 33.226868, 28.117462>,  <35.139542, 33.139881, 28.158558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751286, 33.226868, 28.117462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089267, 0.722376, 0.685715,
		0.223339, 0.656414, -0.720583,
		-0.970645, 0.217471, -0.102739,
		34.460091, 33.292110, 28.086641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206646, 33.740910, 28.468628>,  <35.139542, 33.139881, 28.158558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206646, 33.740910, 28.468628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809792, 33.694962, 28.448723>,  <34.571678, 33.667393, 28.436781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809792, 33.694962, 28.448723>,  <35.206646, 33.740910, 28.468628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809792, 33.694962, 28.448723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118742, 0.737649, 0.664661,
		-0.039644, 0.665341, -0.745486,
		-0.992133, -0.114870, -0.049761,
		34.512150, 33.660500, 28.433794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829552, 34.404846, 28.206486>,  <35.206646, 33.740910, 28.468628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829552, 34.404846, 28.206486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560844, 34.211040, 28.430618>,  <34.399620, 34.094757, 28.565098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560844, 34.211040, 28.430618>,  <34.829552, 34.404846, 28.206486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560844, 34.211040, 28.430618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242718, 0.858642, 0.451467,
		-0.699865, 0.167280, -0.694411,
		-0.671772, -0.484512, 0.560331,
		34.359314, 34.065685, 28.598717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176147, 34.776470, 28.233122>,  <34.829552, 34.404846, 28.206486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176147, 34.776470, 28.233122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128136, 34.538101, 28.550730>,  <34.099331, 34.395081, 28.741295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128136, 34.538101, 28.550730>,  <34.176147, 34.776470, 28.233122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128136, 34.538101, 28.550730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318157, 0.780709, 0.537838,
		-0.940409, -0.188067, -0.283303,
		-0.120028, -0.595923, 0.794021,
		34.092129, 34.359325, 28.788937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578945, 35.021095, 28.489771>,  <34.176147, 34.776470, 28.233122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578945, 35.021095, 28.489771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775867, 34.826252, 28.778315>,  <33.894020, 34.709347, 28.951441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775867, 34.826252, 28.778315>,  <33.578945, 35.021095, 28.489771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775867, 34.826252, 28.778315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282717, 0.694329, 0.661799,
		-0.823231, -0.529747, 0.204106,
		0.492303, -0.487109, 0.721362,
		33.923557, 34.680119, 28.994722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160633, 35.120716, 29.023214>,  <33.578945, 35.021095, 28.489771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160633, 35.120716, 29.023214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500687, 35.033043, 29.214731>,  <33.704720, 34.980438, 29.329641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500687, 35.033043, 29.214731>,  <33.160633, 35.120716, 29.023214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500687, 35.033043, 29.214731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315457, 0.516048, 0.796355,
		-0.421624, -0.828042, 0.369566,
		0.850129, -0.219180, 0.478790,
		33.755726, 34.967289, 29.358368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032375, 35.066483, 29.695398>,  <33.160633, 35.120716, 29.023214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032375, 35.066483, 29.695398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428185, 35.122059, 29.711119>,  <33.665668, 35.155403, 29.720551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428185, 35.122059, 29.711119>,  <33.032375, 35.066483, 29.695398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428185, 35.122059, 29.711119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111236, 0.559978, 0.821006,
		0.092061, -0.816775, 0.569565,
		0.989521, 0.138938, 0.039303,
		33.725040, 35.163742, 29.722910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260002, 35.004333, 30.381842>,  <33.032375, 35.066483, 29.695398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260002, 35.004333, 30.381842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580452, 35.164757, 30.204145>,  <33.772720, 35.261013, 30.097528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580452, 35.164757, 30.204145>,  <33.260002, 35.004333, 30.381842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580452, 35.164757, 30.204145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208303, 0.509007, 0.835178,
		0.561080, -0.761618, 0.324235,
		0.801124, 0.401062, -0.444240,
		33.820789, 35.285076, 30.070873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735714, 35.004459, 30.943865>,  <33.260002, 35.004333, 30.381842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735714, 35.004459, 30.943865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.833294, 35.279205, 30.670017>,  <33.891842, 35.444054, 30.505709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.833294, 35.279205, 30.670017>,  <33.735714, 35.004459, 30.943865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833294, 35.279205, 30.670017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200275, 0.655049, 0.728561,
		0.948882, -0.314847, 0.022239,
		0.243953, 0.686864, -0.684620,
		33.906479, 35.485264, 30.464632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369991, 35.351597, 31.161644>,  <33.735714, 35.004459, 30.943865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369991, 35.351597, 31.161644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226559, 35.629265, 30.911987>,  <34.140499, 35.795864, 30.762194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226559, 35.629265, 30.911987>,  <34.369991, 35.351597, 31.161644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226559, 35.629265, 30.911987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301960, 0.718911, 0.626089,
		0.883313, 0.036036, -0.467396,
		-0.358578, 0.694167, -0.624143,
		34.118984, 35.837517, 30.724745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855274, 35.950016, 31.125862>,  <34.369991, 35.351597, 31.161644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855274, 35.950016, 31.125862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516541, 36.123878, 31.003256>,  <34.313301, 36.228195, 30.929693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516541, 36.123878, 31.003256>,  <34.855274, 35.950016, 31.125862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516541, 36.123878, 31.003256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186760, 0.782622, 0.593821,
		0.497990, 0.445623, -0.743926,
		-0.846833, 0.434653, -0.306514,
		34.262489, 36.254272, 30.911303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991077, 36.614929, 31.249611>,  <34.855274, 35.950016, 31.125862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991077, 36.614929, 31.249611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592960, 36.591064, 31.219038>,  <34.354092, 36.576744, 31.200695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592960, 36.591064, 31.219038>,  <34.991077, 36.614929, 31.249611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592960, 36.591064, 31.219038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095102, 0.754344, 0.649555,
		0.018900, 0.653763, -0.756464,
		-0.995288, -0.059664, -0.076432,
		34.294373, 36.573166, 31.196108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695129, 37.253372, 31.027254>,  <34.991077, 36.614929, 31.249611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695129, 37.253372, 31.027254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425449, 37.053181, 31.244501>,  <34.263641, 36.933064, 31.374849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425449, 37.053181, 31.244501>,  <34.695129, 37.253372, 31.027254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425449, 37.053181, 31.244501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135542, 0.806739, 0.575152,
		-0.726007, 0.314152, -0.611738,
		-0.674198, -0.500480, 0.543117,
		34.223190, 36.903038, 31.407436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972431, 37.162666, 30.357277>,  <34.695129, 37.253372, 31.027254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972431, 37.162666, 30.357277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918636, 37.540913, 30.238804>,  <34.886360, 37.767860, 30.167721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918636, 37.540913, 30.238804>,  <34.972431, 37.162666, 30.357277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918636, 37.540913, 30.238804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533029, -0.182936, -0.826084,
		-0.835341, -0.268969, -0.479439,
		-0.134484, 0.945616, -0.296182,
		34.878292, 37.824596, 30.149950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581860, 37.288872, 29.700502>,  <34.972431, 37.162666, 30.357277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581860, 37.288872, 29.700502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856205, 37.576168, 29.747349>,  <35.020813, 37.748547, 29.775457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856205, 37.576168, 29.747349>,  <34.581860, 37.288872, 29.700502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856205, 37.576168, 29.747349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478239, -0.323546, -0.816459,
		-0.548525, 0.615989, -0.565401,
		0.685863, 0.718245, 0.117117,
		35.061962, 37.791641, 29.782484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704899, 37.594681, 29.118820>,  <34.581860, 37.288872, 29.700502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704899, 37.594681, 29.118820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.065678, 37.677135, 29.270613>,  <35.282143, 37.726608, 29.361689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.065678, 37.677135, 29.270613>,  <34.704899, 37.594681, 29.118820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065678, 37.677135, 29.270613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426841, -0.292036, -0.855875,
		-0.065606, 0.933929, -0.351388,
		0.901944, 0.206137, 0.379480,
		35.336262, 37.738976, 29.384457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019615, 37.860500, 28.611847>,  <34.704899, 37.594681, 29.118820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019615, 37.860500, 28.611847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.323681, 37.765633, 28.853807>,  <35.506119, 37.708714, 28.998983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.323681, 37.765633, 28.853807>,  <35.019615, 37.860500, 28.611847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323681, 37.765633, 28.853807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558985, -0.235844, -0.794929,
		0.331192, 0.942407, -0.046709,
		0.760163, -0.237165, 0.604901,
		35.551731, 37.694485, 29.035278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528255, 38.274715, 28.368952>,  <35.019615, 37.860500, 28.611847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528255, 38.274715, 28.368952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687847, 37.966877, 28.568365>,  <35.783604, 37.782173, 28.688013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687847, 37.966877, 28.568365>,  <35.528255, 38.274715, 28.368952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687847, 37.966877, 28.568365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438591, -0.317290, -0.840812,
		0.805266, 0.554119, 0.210946,
		0.398979, -0.769597, 0.498534,
		35.807541, 37.735996, 28.717926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196396, 38.336449, 28.151834>,  <35.528255, 38.274715, 28.368952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196396, 38.336449, 28.151834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.124050, 37.972740, 28.301777>,  <36.080643, 37.754517, 28.391743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.124050, 37.972740, 28.301777>,  <36.196396, 38.336449, 28.151834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124050, 37.972740, 28.301777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506394, -0.412831, -0.757057,
		0.843121, 0.052901, 0.535115,
		-0.180863, -0.909270, 0.374855,
		36.069790, 37.699959, 28.414234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679298, 37.926701, 27.887043>,  <36.196396, 38.336449, 28.151834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679298, 37.926701, 27.887043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460648, 37.615353, 28.010551>,  <36.329456, 37.428543, 28.084656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460648, 37.615353, 28.010551>,  <36.679298, 37.926701, 27.887043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460648, 37.615353, 28.010551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383487, -0.560489, -0.734022,
		0.744403, -0.282828, 0.604874,
		-0.546628, -0.778370, 0.308769,
		36.296658, 37.381840, 28.103182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106262, 37.374641, 28.160498>,  <36.679298, 37.926701, 27.887043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106262, 37.374641, 28.160498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775055, 37.195511, 28.025543>,  <36.576328, 37.088032, 27.944571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775055, 37.195511, 28.025543>,  <37.106262, 37.374641, 28.160498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775055, 37.195511, 28.025543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560681, -0.665720, -0.492396,
		-0.004097, -0.596882, 0.802319,
		-0.828022, -0.447828, -0.337388,
		36.526649, 37.061161, 27.924328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334808, 36.788509, 28.091728>,  <37.106262, 37.374641, 28.160498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334808, 36.788509, 28.091728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995682, 36.742878, 27.884579>,  <36.792206, 36.715500, 27.760288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995682, 36.742878, 27.884579>,  <37.334808, 36.788509, 28.091728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995682, 36.742878, 27.884579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470405, -0.612611, -0.635159,
		-0.244797, -0.782109, 0.573045,
		-0.847817, -0.114078, -0.517873,
		36.741337, 36.708656, 27.729218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178711, 36.020901, 28.081194>,  <37.334808, 36.788509, 28.091728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178711, 36.020901, 28.081194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981129, 36.182495, 27.773220>,  <36.862579, 36.279453, 27.588436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981129, 36.182495, 27.773220>,  <37.178711, 36.020901, 28.081194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981129, 36.182495, 27.773220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299449, -0.752291, -0.586846,
		-0.816295, -0.520432, 0.250625,
		-0.493957, 0.403990, -0.769934,
		36.832943, 36.303692, 27.542240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769787, 35.496132, 27.731365>,  <37.178711, 36.020901, 28.081194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769787, 35.496132, 27.731365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786003, 35.783321, 27.453409>,  <36.795734, 35.955635, 27.286636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786003, 35.783321, 27.453409>,  <36.769787, 35.496132, 27.731365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786003, 35.783321, 27.453409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320552, -0.668046, -0.671536,
		-0.946363, -0.195523, -0.257231,
		0.040542, 0.717973, -0.694890,
		36.798164, 35.998714, 27.244942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508148, 35.207001, 27.025351>,  <36.769787, 35.496132, 27.731365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508148, 35.207001, 27.025351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699509, 35.539619, 26.912457>,  <36.814327, 35.739189, 26.844719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699509, 35.539619, 26.912457>,  <36.508148, 35.207001, 27.025351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699509, 35.539619, 26.912457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364520, -0.480456, -0.797676,
		-0.798908, 0.278732, -0.532968,
		0.478405, 0.831547, -0.282237,
		36.843029, 35.789085, 26.827785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422100, 35.310051, 26.277414>,  <36.508148, 35.207001, 27.025351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422100, 35.310051, 26.277414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.752583, 35.502205, 26.395138>,  <36.950871, 35.617496, 26.465771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.752583, 35.502205, 26.395138>,  <36.422100, 35.310051, 26.277414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752583, 35.502205, 26.395138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508727, -0.411727, -0.756094,
		-0.242043, 0.774409, -0.584556,
		0.826203, 0.480387, 0.294308,
		37.000443, 35.646320, 26.483431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605152, 35.609867, 25.737099>,  <36.422100, 35.310051, 26.277414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605152, 35.609867, 25.737099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937721, 35.584328, 25.957886>,  <37.137260, 35.569004, 26.090357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937721, 35.584328, 25.957886>,  <36.605152, 35.609867, 25.737099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937721, 35.584328, 25.957886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481087, -0.414333, -0.772582,
		0.278025, 0.907883, -0.313768,
		0.831419, -0.063847, 0.551965,
		37.187145, 35.565174, 26.123476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227684, 35.764599, 25.211710>,  <36.605152, 35.609867, 25.737099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227684, 35.764599, 25.211710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395397, 35.612106, 25.541283>,  <37.496025, 35.520611, 25.739027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395397, 35.612106, 25.541283>,  <37.227684, 35.764599, 25.211710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395397, 35.612106, 25.541283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645009, -0.513577, -0.565864,
		0.638879, 0.768700, 0.030566,
		0.419282, -0.381234, 0.823932,
		37.521183, 35.497738, 25.788462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926144, 35.948906, 25.351627>,  <37.227684, 35.764599, 25.211710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926144, 35.948906, 25.351627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855309, 35.598904, 25.531853>,  <37.812805, 35.388905, 25.639988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855309, 35.598904, 25.531853>,  <37.926144, 35.948906, 25.351627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855309, 35.598904, 25.531853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721369, -0.426831, -0.545382,
		0.669526, 0.228440, 0.706789,
		-0.177092, -0.875003, 0.450564,
		37.802181, 35.336403, 25.667023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588573, 35.722107, 25.433708>,  <37.926144, 35.948906, 25.351627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588573, 35.722107, 25.433708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.362972, 35.400822, 25.510393>,  <38.227612, 35.208050, 25.556404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.362972, 35.400822, 25.510393>,  <38.588573, 35.722107, 25.433708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362972, 35.400822, 25.510393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716502, -0.591414, -0.369939,
		0.410519, -0.071285, 0.909061,
		-0.564002, -0.803211, 0.191711,
		38.193771, 35.159859, 25.567907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071175, 35.158131, 25.613407>,  <38.588573, 35.722107, 25.433708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071175, 35.158131, 25.613407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.728436, 34.979351, 25.510607>,  <38.522793, 34.872082, 25.448927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.728436, 34.979351, 25.510607>,  <39.071175, 35.158131, 25.613407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728436, 34.979351, 25.510607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515538, -0.737158, -0.436827,
		0.005788, -0.506789, 0.862051,
		-0.856847, -0.446949, -0.257002,
		38.471382, 34.845268, 25.433506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165031, 34.456364, 25.738588>,  <39.071175, 35.158131, 25.613407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165031, 34.456364, 25.738588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.851955, 34.436256, 25.490438>,  <38.664108, 34.424194, 25.341549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.851955, 34.436256, 25.490438>,  <39.165031, 34.456364, 25.738588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851955, 34.436256, 25.490438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570790, -0.455395, -0.683238,
		-0.248171, -0.888869, 0.385127,
		-0.782694, -0.050267, -0.620373,
		38.617146, 34.421177, 25.304327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102951, 33.734177, 25.508554>,  <39.165031, 34.456364, 25.738588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102951, 33.734177, 25.508554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.890564, 33.934635, 25.235226>,  <38.763134, 34.054909, 25.071228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.890564, 33.934635, 25.235226>,  <39.102951, 33.734177, 25.508554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890564, 33.934635, 25.235226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434847, -0.530973, -0.727307,
		-0.727314, -0.683314, 0.064005,
		-0.530964, 0.501148, -0.683321,
		38.731274, 34.084980, 25.030230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896088, 33.218342, 24.903269>,  <39.102951, 33.734177, 25.508554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896088, 33.218342, 24.903269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827755, 33.586536, 24.762691>,  <38.786755, 33.807453, 24.678345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827755, 33.586536, 24.762691>,  <38.896088, 33.218342, 24.903269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827755, 33.586536, 24.762691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213909, -0.313534, -0.925170,
		-0.961800, -0.233225, -0.143340,
		-0.170831, 0.920490, -0.351445,
		38.776505, 33.862682, 24.657257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567139, 33.073994, 24.325033>,  <38.896088, 33.218342, 24.903269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567139, 33.073994, 24.325033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.717865, 33.442036, 24.282305>,  <38.808300, 33.662861, 24.256668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.717865, 33.442036, 24.282305>,  <38.567139, 33.073994, 24.325033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717865, 33.442036, 24.282305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305912, -0.232467, -0.923243,
		-0.874315, 0.315217, -0.369070,
		0.376818, 0.920107, -0.106820,
		38.830910, 33.718067, 24.250259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374485, 33.395130, 23.551212>,  <38.567139, 33.073994, 24.325033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374485, 33.395130, 23.551212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.684227, 33.605846, 23.691425>,  <38.870071, 33.732277, 23.775553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.684227, 33.605846, 23.691425>,  <38.374485, 33.395130, 23.551212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684227, 33.605846, 23.691425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455013, -0.078613, -0.887008,
		-0.439709, 0.846353, -0.300570,
		0.774351, 0.526789, 0.350534,
		38.916531, 33.763882, 23.796585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506409, 33.756020, 22.975809>,  <38.374485, 33.395130, 23.551212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506409, 33.756020, 22.975809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828671, 33.766586, 23.212530>,  <39.022026, 33.772926, 23.354563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828671, 33.766586, 23.212530>,  <38.506409, 33.756020, 22.975809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828671, 33.766586, 23.212530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591797, -0.080597, -0.802048,
		0.026508, 0.996397, -0.080568,
		0.805651, 0.026420, 0.591801,
		39.070366, 33.774513, 23.390070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938339, 34.275642, 22.775898>,  <38.506409, 33.756020, 22.975809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938339, 34.275642, 22.775898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.180092, 34.017460, 22.962711>,  <39.325142, 33.862553, 23.074799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.180092, 34.017460, 22.962711>,  <38.938339, 34.275642, 22.775898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180092, 34.017460, 22.962711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643084, 0.049196, -0.764214,
		0.470288, 0.762214, 0.444814,
		0.604378, -0.645453, 0.467031,
		39.361404, 33.823826, 23.102821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687622, 34.528481, 22.731613>,  <38.938339, 34.275642, 22.775898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687622, 34.528481, 22.731613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.698845, 34.137215, 22.813980>,  <39.705578, 33.902454, 22.863400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.698845, 34.137215, 22.813980>,  <39.687622, 34.528481, 22.731613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698845, 34.137215, 22.813980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753780, -0.114591, -0.647059,
		0.656528, 0.173373, 0.734107,
		0.028061, -0.978167, 0.205917,
		39.707264, 33.843765, 22.875755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356861, 34.301590, 22.507923>,  <39.687622, 34.528481, 22.731613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356861, 34.301590, 22.507923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.204849, 33.943008, 22.599085>,  <40.113640, 33.727859, 22.653782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.204849, 33.943008, 22.599085>,  <40.356861, 34.301590, 22.507923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204849, 33.943008, 22.599085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553074, -0.417720, -0.720846,
		0.741407, -0.147897, 0.654554,
		-0.380032, -0.896458, 0.227903,
		40.090839, 33.674072, 22.667456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909634, 33.903912, 22.455158>,  <40.356861, 34.301590, 22.507923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909634, 33.903912, 22.455158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.598259, 33.657337, 22.407751>,  <40.411434, 33.509392, 22.379307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.598259, 33.657337, 22.407751>,  <40.909634, 33.903912, 22.455158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598259, 33.657337, 22.407751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486543, -0.473211, -0.734402,
		0.396629, -0.629347, 0.668287,
		-0.778435, -0.616436, -0.118516,
		40.364727, 33.472408, 22.372196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391605, 33.638199, 23.020287>,  <40.909634, 33.903912, 22.455158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391605, 33.638199, 23.020287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.757080, 33.760994, 23.126825>,  <41.976364, 33.834671, 23.190748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.757080, 33.760994, 23.126825>,  <41.391605, 33.638199, 23.020287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757080, 33.760994, 23.126825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383303, 0.432982, 0.815846,
		0.135129, -0.847518, 0.513278,
		0.913684, 0.306986, 0.266348,
		42.031185, 33.853088, 23.206730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447788, 33.511093, 23.834942>,  <41.391605, 33.638199, 23.020287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447788, 33.511093, 23.834942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.711971, 33.779774, 23.700712>,  <41.870483, 33.940983, 23.620174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.711971, 33.779774, 23.700712>,  <41.447788, 33.511093, 23.834942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711971, 33.779774, 23.700712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238433, 0.611401, 0.754546,
		0.712000, -0.418335, 0.563961,
		0.660459, 0.671703, -0.335572,
		41.910110, 33.981285, 23.600040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909309, 33.494617, 24.371141>,  <41.447788, 33.511093, 23.834942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909309, 33.494617, 24.371141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.925926, 33.831223, 24.155689>,  <41.935898, 34.033188, 24.026417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.925926, 33.831223, 24.155689>,  <41.909309, 33.494617, 24.371141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925926, 33.831223, 24.155689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201618, 0.535067, 0.820398,
		0.978583, 0.074515, 0.191894,
		0.041544, 0.841516, -0.538631,
		41.938389, 34.083679, 23.994101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063335, 33.897251, 24.971306>,  <41.909309, 33.494617, 24.371141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063335, 33.897251, 24.971306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.994568, 34.139763, 24.660728>,  <41.953308, 34.285271, 24.474382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.994568, 34.139763, 24.660728>,  <42.063335, 33.897251, 24.971306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994568, 34.139763, 24.660728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251424, 0.735071, 0.629648,
		0.952486, 0.303465, 0.026060,
		-0.171920, 0.606283, -0.776444,
		41.942993, 34.321648, 24.427795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528915, 34.439617, 25.062309>,  <42.063335, 33.897251, 24.971306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528915, 34.439617, 25.062309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.192291, 34.529861, 24.865990>,  <41.990318, 34.584007, 24.748198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.192291, 34.529861, 24.865990>,  <42.528915, 34.439617, 25.062309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192291, 34.529861, 24.865990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261939, 0.624183, 0.736059,
		0.472410, 0.747994, -0.466190,
		-0.841556, 0.225609, -0.490799,
		41.939823, 34.597546, 24.718750>
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
