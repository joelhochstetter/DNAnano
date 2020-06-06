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
	<24.441771, 35.244789, 34.658009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382582, 34.919506, 34.883144>,  <24.347069, 34.724335, 35.018227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382582, 34.919506, 34.883144>,  <24.441771, 35.244789, 34.658009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382582, 34.919506, 34.883144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544592, 0.408056, 0.732742,
		-0.825545, 0.414945, 0.382487,
		-0.147971, -0.813211, 0.562844,
		24.338190, 34.675545, 35.051998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.249187, 35.497250, 35.355026>,  <24.441771, 35.244789, 34.658009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.249187, 35.497250, 35.355026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.439672, 35.146435, 35.329617>,  <24.553963, 34.935947, 35.314369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.439672, 35.146435, 35.329617>,  <24.249187, 35.497250, 35.355026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.439672, 35.146435, 35.329617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797713, 0.400486, 0.450849,
		-0.369967, -0.265377, 0.890336,
		0.476212, -0.877033, -0.063528,
		24.582537, 34.883324, 35.310558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419031, 35.282604, 36.055092>,  <24.249187, 35.497250, 35.355026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419031, 35.282604, 36.055092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659136, 35.095432, 35.795639>,  <24.803200, 34.983131, 35.639965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659136, 35.095432, 35.795639>,  <24.419031, 35.282604, 36.055092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659136, 35.095432, 35.795639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799649, 0.366995, 0.475264,
		0.015658, -0.803965, 0.594470,
		0.600263, -0.467926, -0.648636,
		24.839214, 34.955055, 35.601048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010761, 35.069481, 36.432384>,  <24.419031, 35.282604, 36.055092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010761, 35.069481, 36.432384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134270, 35.080788, 36.052097>,  <25.208374, 35.087574, 35.823925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134270, 35.080788, 36.052097>,  <25.010761, 35.069481, 36.432384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134270, 35.080788, 36.052097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940087, 0.142842, 0.309567,
		0.144559, -0.989341, 0.017513,
		0.308769, 0.028287, -0.950717,
		25.226902, 35.089268, 35.766884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616142, 34.584412, 36.345978>,  <25.010761, 35.069481, 36.432384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616142, 34.584412, 36.345978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613136, 34.886597, 36.083916>,  <25.611332, 35.067905, 35.926678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613136, 34.886597, 36.083916>,  <25.616142, 34.584412, 36.345978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613136, 34.886597, 36.083916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926620, 0.251562, 0.279449,
		0.375924, -0.604976, -0.701915,
		-0.007515, 0.755460, -0.655152,
		25.610882, 35.113235, 35.887371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254826, 34.554016, 35.852509>,  <25.616142, 34.584412, 36.345978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254826, 34.554016, 35.852509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129614, 34.933064, 35.877914>,  <26.054487, 35.160492, 35.893158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129614, 34.933064, 35.877914>,  <26.254826, 34.554016, 35.852509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129614, 34.933064, 35.877914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936109, 0.296555, 0.189092,
		0.160350, 0.118651, -0.979903,
		-0.313031, 0.947617, 0.063517,
		26.035704, 35.217350, 35.896969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636120, 35.065582, 35.366199>,  <26.254826, 34.554016, 35.852509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636120, 35.065582, 35.366199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500507, 35.238010, 35.700680>,  <26.419140, 35.341469, 35.901367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500507, 35.238010, 35.700680>,  <26.636120, 35.065582, 35.366199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500507, 35.238010, 35.700680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917806, 0.346767, 0.193353,
		-0.206618, 0.833023, -0.513207,
		-0.339031, 0.431074, 0.836202,
		26.398798, 35.367332, 35.951542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729929, 35.815208, 35.354763>,  <26.636120, 35.065582, 35.366199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729929, 35.815208, 35.354763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735050, 35.677361, 35.730225>,  <26.738123, 35.594650, 35.955502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735050, 35.677361, 35.730225>,  <26.729929, 35.815208, 35.354763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735050, 35.677361, 35.730225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820970, 0.539522, 0.186884,
		-0.570829, 0.768215, 0.289828,
		0.012802, -0.344619, 0.938655,
		26.738892, 35.573975, 36.011822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942495, 36.386898, 35.741932>,  <26.729929, 35.815208, 35.354763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942495, 36.386898, 35.741932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008228, 36.092007, 36.004074>,  <27.047668, 35.915070, 36.161358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008228, 36.092007, 36.004074>,  <26.942495, 36.386898, 35.741932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008228, 36.092007, 36.004074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834991, 0.457680, 0.305481,
		-0.525151, 0.497012, 0.690793,
		0.164334, -0.737230, 0.655352,
		27.057529, 35.870838, 36.200680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961435, 36.673717, 36.450455>,  <26.942495, 36.386898, 35.741932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961435, 36.673717, 36.450455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167809, 36.331081, 36.447380>,  <27.291632, 36.125500, 36.445534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167809, 36.331081, 36.447380>,  <26.961435, 36.673717, 36.450455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167809, 36.331081, 36.447380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834023, 0.500250, 0.232713,
		-0.195495, -0.126475, 0.972515,
		0.515933, -0.856595, -0.007686,
		27.322588, 36.074104, 36.445076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424267, 36.795147, 37.041607>,  <26.961435, 36.673717, 36.450455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424267, 36.795147, 37.041607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553717, 36.495285, 36.810684>,  <27.631388, 36.315369, 36.672131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553717, 36.495285, 36.810684>,  <27.424267, 36.795147, 37.041607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553717, 36.495285, 36.810684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931819, 0.358434, 0.056916,
		0.164258, -0.556364, 0.814542,
		0.323626, -0.749656, -0.577306,
		27.650805, 36.270390, 36.637493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914881, 36.393810, 37.414429>,  <27.424267, 36.795147, 37.041607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914881, 36.393810, 37.414429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963306, 36.363716, 37.018513>,  <27.992361, 36.345661, 36.780964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963306, 36.363716, 37.018513>,  <27.914881, 36.393810, 37.414429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963306, 36.363716, 37.018513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959188, 0.265563, 0.097134,
		0.255544, -0.961153, 0.104317,
		0.121063, -0.075237, -0.989789,
		27.999626, 36.341145, 36.721577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618195, 36.609676, 37.040558>,  <27.914881, 36.393810, 37.414429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618195, 36.609676, 37.040558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843494, 36.635517, 36.711056>,  <28.978674, 36.651024, 36.513355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843494, 36.635517, 36.711056>,  <28.618195, 36.609676, 37.040558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843494, 36.635517, 36.711056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673777, -0.541175, -0.503145,
		-0.478303, 0.838425, -0.261288,
		0.563251, 0.064606, -0.823756,
		29.012470, 36.654900, 36.463928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323792, 36.945290, 36.500256>,  <28.618195, 36.609676, 37.040558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323792, 36.945290, 36.500256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589514, 36.664375, 36.397896>,  <28.748947, 36.495827, 36.336479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589514, 36.664375, 36.397896>,  <28.323792, 36.945290, 36.500256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589514, 36.664375, 36.397896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745721, -0.599377, -0.290942,
		0.050945, 0.384106, -0.921883,
		0.664308, -0.702290, -0.255901,
		28.788807, 36.453690, 36.321125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268641, 36.634590, 35.768864>,  <28.323792, 36.945290, 36.500256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268641, 36.634590, 35.768864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404716, 36.403198, 36.065411>,  <28.486362, 36.264362, 36.243340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404716, 36.403198, 36.065411>,  <28.268641, 36.634590, 35.768864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404716, 36.403198, 36.065411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806942, -0.584379, -0.085707,
		0.482820, -0.569084, -0.665604,
		0.340191, -0.578484, 0.741368,
		28.506773, 36.229652, 36.287823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257633, 35.905846, 35.565697>,  <28.268641, 36.634590, 35.768864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257633, 35.905846, 35.565697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239983, 35.950211, 35.962837>,  <28.229391, 35.976830, 36.201122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239983, 35.950211, 35.962837>,  <28.257633, 35.905846, 35.565697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239983, 35.950211, 35.962837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890753, -0.454350, 0.011164,
		0.452339, -0.883893, 0.118841,
		-0.044128, 0.110908, 0.992850,
		28.226744, 35.983482, 36.260693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090624, 35.309601, 35.856678>,  <28.257633, 35.905846, 35.565697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090624, 35.309601, 35.856678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963148, 35.601952, 36.098095>,  <27.886662, 35.777363, 36.242943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963148, 35.601952, 36.098095>,  <28.090624, 35.309601, 35.856678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963148, 35.601952, 36.098095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872909, -0.474464, 0.113636,
		0.369411, -0.490621, 0.789193,
		-0.318691, 0.730873, 0.603540,
		27.867540, 35.821213, 36.279156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858015, 34.879299, 36.493176>,  <28.090624, 35.309601, 35.856678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858015, 34.879299, 36.493176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702343, 35.246628, 36.464272>,  <27.608940, 35.467026, 36.446930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702343, 35.246628, 36.464272>,  <27.858015, 34.879299, 36.493176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702343, 35.246628, 36.464272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899897, -0.362269, 0.242791,
		0.196783, 0.159515, 0.967384,
		-0.389182, 0.918323, -0.072259,
		27.585588, 35.522125, 36.442593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398777, 34.896408, 36.999599>,  <27.858015, 34.879299, 36.493176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398777, 34.896408, 36.999599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278887, 35.184616, 36.749474>,  <27.206953, 35.357540, 36.599396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278887, 35.184616, 36.749474>,  <27.398777, 34.896408, 36.999599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278887, 35.184616, 36.749474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953086, -0.255227, 0.162747,
		-0.042336, 0.644761, 0.763211,
		-0.299725, 0.720516, -0.625318,
		27.188969, 35.400772, 36.561878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664696, 35.134098, 37.259930>,  <27.398777, 34.896408, 36.999599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664696, 35.134098, 37.259930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696672, 35.271885, 36.885777>,  <26.715858, 35.354557, 36.661285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696672, 35.271885, 36.885777>,  <26.664696, 35.134098, 37.259930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696672, 35.271885, 36.885777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974127, -0.172004, -0.146596,
		-0.211389, 0.922905, 0.321808,
		0.079942, 0.344471, -0.935387,
		26.720655, 35.375225, 36.605160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007727, 35.551216, 37.123699>,  <26.664696, 35.134098, 37.259930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007727, 35.551216, 37.123699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273441, 35.653587, 36.842781>,  <26.432871, 35.715008, 36.674229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273441, 35.653587, 36.842781>,  <26.007727, 35.551216, 37.123699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273441, 35.653587, 36.842781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733959, 0.045447, -0.677672,
		-0.141517, 0.965627, 0.218029,
		0.664287, 0.255926, -0.702299,
		26.472727, 35.730366, 36.632092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907293, 36.223591, 36.793583>,  <26.007727, 35.551216, 37.123699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907293, 36.223591, 36.793583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068459, 35.948971, 36.551487>,  <26.165157, 35.784199, 36.406231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068459, 35.948971, 36.551487>,  <25.907293, 36.223591, 36.793583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068459, 35.948971, 36.551487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830293, 0.004039, -0.557313,
		0.385066, 0.727075, -0.568406,
		0.402913, -0.686546, -0.605241,
		26.189333, 35.743008, 36.369915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517372, 36.303513, 36.294403>,  <25.907293, 36.223591, 36.793583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517372, 36.303513, 36.294403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684950, 35.964779, 36.163345>,  <25.785496, 35.761539, 36.084709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684950, 35.964779, 36.163345>,  <25.517372, 36.303513, 36.294403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684950, 35.964779, 36.163345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780191, -0.151113, -0.607015,
		0.464531, 0.509933, -0.724002,
		0.418943, -0.846837, -0.327648,
		25.810633, 35.710728, 36.065052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628952, 36.098564, 35.541740>,  <25.517372, 36.303513, 36.294403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628952, 36.098564, 35.541740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538298, 35.779327, 35.765057>,  <25.483904, 35.587784, 35.899048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538298, 35.779327, 35.765057>,  <25.628952, 36.098564, 35.541740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538298, 35.779327, 35.765057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864684, -0.098952, -0.492474,
		0.448282, -0.594357, -0.667670,
		-0.226638, -0.798090, 0.558289,
		25.470306, 35.539902, 35.932545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698812, 35.866779, 34.803329>,  <25.628952, 36.098564, 35.541740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698812, 35.866779, 34.803329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687002, 35.616096, 35.114807>,  <25.679916, 35.465687, 35.301693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687002, 35.616096, 35.114807>,  <25.698812, 35.866779, 34.803329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687002, 35.616096, 35.114807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760774, -0.491212, -0.424185,
		0.648345, -0.604935, -0.462281,
		-0.029526, -0.626710, 0.778693,
		25.678144, 35.428085, 35.348415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792940, 35.110073, 34.606148>,  <25.698812, 35.866779, 34.803329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792940, 35.110073, 34.606148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602982, 35.104366, 34.958118>,  <25.489006, 35.100941, 35.169300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602982, 35.104366, 34.958118>,  <25.792940, 35.110073, 34.606148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602982, 35.104366, 34.958118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718627, -0.570867, -0.397097,
		0.507986, -0.820918, 0.260850,
		-0.474895, -0.014266, 0.879927,
		25.460512, 35.100086, 35.222095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721626, 34.450623, 34.828297>,  <25.792940, 35.110073, 34.606148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721626, 34.450623, 34.828297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441793, 34.630802, 35.050171>,  <25.273893, 34.738911, 35.183296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441793, 34.630802, 35.050171>,  <25.721626, 34.450623, 34.828297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441793, 34.630802, 35.050171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662593, -0.699548, -0.267586,
		0.267495, -0.554730, 0.787859,
		-0.699583, 0.450452, 0.554686,
		25.231918, 34.765938, 35.216576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317095, 34.179047, 34.366199>,  <25.721626, 34.450623, 34.828297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317095, 34.179047, 34.366199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560154, 34.434681, 34.554810>,  <26.705990, 34.588062, 34.667976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560154, 34.434681, 34.554810>,  <26.317095, 34.179047, 34.366199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560154, 34.434681, 34.554810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593883, -0.759826, 0.264514,
		0.527322, 0.119297, -0.841249,
		0.607647, 0.639087, 0.471521,
		26.742449, 34.626408, 34.696266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016733, 33.961010, 34.174812>,  <26.317095, 34.179047, 34.366199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016733, 33.961010, 34.174812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057934, 34.151581, 34.524078>,  <27.082653, 34.265923, 34.733639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057934, 34.151581, 34.524078>,  <27.016733, 33.961010, 34.174812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057934, 34.151581, 34.524078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737684, -0.625446, 0.254242,
		0.667243, 0.617931, -0.415870,
		0.103000, 0.476422, 0.873163,
		27.088835, 34.294506, 34.786026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650667, 34.406620, 34.254532>,  <27.016733, 33.961010, 34.174812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650667, 34.406620, 34.254532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509443, 34.263123, 34.600170>,  <27.424709, 34.177025, 34.807552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509443, 34.263123, 34.600170>,  <27.650667, 34.406620, 34.254532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509443, 34.263123, 34.600170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869564, -0.466643, 0.161561,
		0.345264, 0.808424, 0.476701,
		-0.353059, -0.358741, 0.864092,
		27.403526, 34.155499, 34.859398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049839, 34.625038, 34.835861>,  <27.650667, 34.406620, 34.254532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049839, 34.625038, 34.835861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884647, 34.277313, 34.944485>,  <27.785532, 34.068680, 35.009659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884647, 34.277313, 34.944485>,  <28.049839, 34.625038, 34.835861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884647, 34.277313, 34.944485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863411, -0.278840, 0.420439,
		-0.289772, 0.408099, 0.865729,
		-0.412981, -0.869312, 0.271557,
		27.760754, 34.016521, 35.025951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745874, 34.866257, 34.858688>,  <28.049839, 34.625038, 34.835861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745874, 34.866257, 34.858688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032623, 35.103020, 34.711319>,  <29.204674, 35.245079, 34.622898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032623, 35.103020, 34.711319>,  <28.745874, 34.866257, 34.858688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032623, 35.103020, 34.711319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674158, 0.723233, -0.149819,
		0.177777, 0.355777, 0.917507,
		0.716873, 0.591910, -0.368423,
		29.247684, 35.280594, 34.600792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795328, 35.550484, 35.204613>,  <28.745874, 34.866257, 34.858688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795328, 35.550484, 35.204613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934315, 35.587917, 34.831409>,  <29.017708, 35.610378, 34.607487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934315, 35.587917, 34.831409>,  <28.795328, 35.550484, 35.204613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934315, 35.587917, 34.831409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690390, 0.698848, -0.187014,
		0.634530, 0.709122, 0.307439,
		0.347469, 0.093587, -0.933010,
		29.038555, 35.615993, 34.551506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077126, 36.192822, 35.063316>,  <28.795328, 35.550484, 35.204613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077126, 36.192822, 35.063316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905622, 36.034695, 34.738380>,  <28.802721, 35.939819, 34.543419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905622, 36.034695, 34.738380>,  <29.077126, 36.192822, 35.063316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905622, 36.034695, 34.738380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673259, 0.739393, -0.004465,
		0.602402, 0.545000, -0.583170,
		-0.428758, -0.395314, -0.812338,
		28.776995, 35.916100, 34.494678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932432, 36.803108, 34.690964>,  <29.077126, 36.192822, 35.063316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932432, 36.803108, 34.690964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702351, 36.514668, 34.536484>,  <28.564302, 36.341602, 34.443794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702351, 36.514668, 34.536484>,  <28.932432, 36.803108, 34.690964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702351, 36.514668, 34.536484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813231, 0.555058, 0.174831,
		0.088295, 0.414636, -0.905694,
		-0.575204, -0.721101, -0.386204,
		28.529789, 36.298336, 34.420624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191708, 37.111401, 34.049992>,  <28.932432, 36.803108, 34.690964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191708, 37.111401, 34.049992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107487, 36.745792, 33.911293>,  <29.056953, 36.526428, 33.828075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107487, 36.745792, 33.911293>,  <29.191708, 37.111401, 34.049992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107487, 36.745792, 33.911293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870940, 0.336481, -0.358111,
		0.443995, 0.226592, -0.866905,
		-0.210552, -0.914022, -0.346744,
		29.044321, 36.471584, 33.807270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833313, 37.143406, 33.373726>,  <29.191708, 37.111401, 34.049992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833313, 37.143406, 33.373726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741726, 36.779675, 33.512695>,  <28.686773, 36.561436, 33.596077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741726, 36.779675, 33.512695>,  <28.833313, 37.143406, 33.373726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741726, 36.779675, 33.512695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957406, 0.145865, -0.249195,
		0.175923, -0.389678, -0.903992,
		-0.228966, -0.909326, 0.347419,
		28.673037, 36.506878, 33.616920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420534, 36.842766, 32.862240>,  <28.833313, 37.143406, 33.373726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420534, 36.842766, 32.862240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332449, 36.627048, 33.187366>,  <28.279598, 36.497620, 33.382442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332449, 36.627048, 33.187366>,  <28.420534, 36.842766, 32.862240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332449, 36.627048, 33.187366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973249, 0.065511, -0.220214,
		0.065511, -0.839566, -0.539293,
		0.220214, 0.539293, -0.812815,
		28.266384, 36.465260, 33.431210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847239, 36.503025, 32.696045>,  <28.420534, 36.842766, 32.862240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847239, 36.503025, 32.696045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849819, 36.504055, 33.096035>,  <27.851368, 36.504673, 33.336029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849819, 36.504055, 33.096035>,  <27.847239, 36.503025, 32.696045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849819, 36.504055, 33.096035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998904, 0.046385, 0.006325,
		-0.046371, -0.998922, 0.002324,
		0.006426, 0.002028, 0.999977,
		27.851755, 36.504826, 33.396027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476410, 35.954781, 32.900318>,  <27.847239, 36.503025, 32.696045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476410, 35.954781, 32.900318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435043, 36.257706, 33.158241>,  <27.410223, 36.439461, 33.312996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435043, 36.257706, 33.158241>,  <27.476410, 35.954781, 32.900318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435043, 36.257706, 33.158241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993139, -0.043039, -0.108734,
		-0.054594, -0.651631, 0.756569,
		-0.103417, 0.757314, 0.644810,
		27.404018, 36.484901, 33.351685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934881, 35.614025, 33.293510>,  <27.476410, 35.954781, 32.900318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934881, 35.614025, 33.293510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662458, 35.822163, 33.499580>,  <26.499004, 35.947044, 33.623222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662458, 35.822163, 33.499580>,  <26.934881, 35.614025, 33.293510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662458, 35.822163, 33.499580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010756, -0.710606, 0.703508,
		0.732151, 0.473588, 0.489560,
		-0.681057, 0.520340, 0.515177,
		26.458141, 35.978264, 33.654133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815136, 35.265091, 33.937954>,  <26.934881, 35.614025, 33.293510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815136, 35.265091, 33.937954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553757, 35.561104, 34.001644>,  <26.396929, 35.738712, 34.039860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553757, 35.561104, 34.001644>,  <26.815136, 35.265091, 33.937954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553757, 35.561104, 34.001644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284498, -0.435024, 0.854292,
		0.701473, 0.512937, 0.494805,
		-0.653450, 0.740034, 0.159228,
		26.357721, 35.783115, 34.049412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949331, 35.604881, 34.552147>,  <26.815136, 35.265091, 33.937954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949331, 35.604881, 34.552147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559101, 35.626316, 34.466930>,  <26.324963, 35.639175, 34.415802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559101, 35.626316, 34.466930>,  <26.949331, 35.604881, 34.552147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559101, 35.626316, 34.466930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214189, -0.447399, 0.868307,
		-0.048785, 0.892728, 0.447947,
		-0.975573, 0.053586, -0.213039,
		26.266430, 35.642391, 34.403019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487141, 36.141857, 34.448112>,  <26.949331, 35.604881, 34.552147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487141, 36.141857, 34.448112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630632, 36.195869, 34.078663>,  <27.716728, 36.228279, 33.856995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630632, 36.195869, 34.078663>,  <27.487141, 36.141857, 34.448112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630632, 36.195869, 34.078663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857846, -0.437769, 0.269181,
		-0.367984, -0.888889, -0.272881,
		0.358731, 0.135035, -0.923622,
		27.738253, 36.236382, 33.801575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983332, 35.633514, 34.328186>,  <27.487141, 36.141857, 34.448112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983332, 35.633514, 34.328186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069267, 35.903027, 34.045383>,  <28.120829, 36.064735, 33.875702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069267, 35.903027, 34.045383>,  <27.983332, 35.633514, 34.328186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069267, 35.903027, 34.045383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949812, -0.312683, -0.009368,
		-0.227381, -0.669510, -0.707145,
		0.214840, 0.673785, -0.707006,
		28.133718, 36.105164, 33.833282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425121, 35.196831, 33.835655>,  <27.983332, 35.633514, 34.328186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425121, 35.196831, 33.835655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495218, 35.590168, 33.816345>,  <28.537275, 35.826168, 33.804760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495218, 35.590168, 33.816345>,  <28.425121, 35.196831, 33.835655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495218, 35.590168, 33.816345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982026, -0.171095, 0.079694,
		0.070107, -0.061372, -0.995650,
		0.175242, 0.983341, -0.048274,
		28.547791, 35.885170, 33.801865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061533, 35.365135, 33.364120>,  <28.425121, 35.196831, 33.835655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061533, 35.365135, 33.364120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022448, 35.636280, 33.655586>,  <28.998997, 35.798965, 33.830467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022448, 35.636280, 33.655586>,  <29.061533, 35.365135, 33.364120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022448, 35.636280, 33.655586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961902, -0.123521, 0.243901,
		0.255337, 0.724739, -0.639966,
		-0.097715, 0.677862, 0.728667,
		28.993134, 35.839638, 33.874187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605904, 35.891068, 33.389351>,  <29.061533, 35.365135, 33.364120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605904, 35.891068, 33.389351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447327, 35.826839, 33.750916>,  <29.352180, 35.788303, 33.967854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447327, 35.826839, 33.750916>,  <29.605904, 35.891068, 33.389351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447327, 35.826839, 33.750916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901659, -0.253365, 0.350452,
		0.172748, 0.953952, 0.245221,
		-0.396445, -0.160566, 0.903908,
		29.328394, 35.778671, 34.022087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137449, 36.060593, 33.987965>,  <29.605904, 35.891068, 33.389351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137449, 36.060593, 33.987965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876326, 35.798084, 34.139301>,  <29.719652, 35.640579, 34.230103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876326, 35.798084, 34.139301>,  <30.137449, 36.060593, 33.987965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876326, 35.798084, 34.139301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742560, -0.455609, 0.490942,
		-0.149814, 0.601436, 0.784748,
		-0.652809, -0.656273, 0.378346,
		29.680483, 35.601204, 34.252804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284685, 35.969715, 34.730591>,  <30.137449, 36.060593, 33.987965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284685, 35.969715, 34.730591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114931, 35.632568, 34.598248>,  <30.013079, 35.430279, 34.518841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114931, 35.632568, 34.598248>,  <30.284685, 35.969715, 34.730591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114931, 35.632568, 34.598248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610610, -0.536204, 0.582786,
		-0.668621, 0.045301, 0.742222,
		-0.424384, -0.842872, -0.330856,
		29.987616, 35.379707, 34.498989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583374, 35.567020, 35.190884>,  <30.284685, 35.969715, 34.730591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583374, 35.567020, 35.190884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339041, 35.251659, 35.161739>,  <30.192440, 35.062443, 35.144253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339041, 35.251659, 35.161739>,  <30.583374, 35.567020, 35.190884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339041, 35.251659, 35.161739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518282, -0.328586, -0.789566,
		0.598554, -0.520054, 0.609325,
		-0.610833, -0.788401, -0.072857,
		30.155790, 35.015141, 35.139881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919495, 35.047329, 35.552006>,  <30.583374, 35.567020, 35.190884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919495, 35.047329, 35.552006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244286, 35.280354, 35.537506>,  <31.439159, 35.420170, 35.528805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244286, 35.280354, 35.537506>,  <30.919495, 35.047329, 35.552006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244286, 35.280354, 35.537506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461387, -0.678639, -0.571464,
		-0.357515, 0.447289, -0.819826,
		0.811976, 0.582564, -0.036250,
		31.487879, 35.455124, 35.526630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179214, 35.257786, 34.896572>,  <30.919495, 35.047329, 35.552006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179214, 35.257786, 34.896572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525251, 35.269020, 35.096901>,  <31.732874, 35.275761, 35.217098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525251, 35.269020, 35.096901>,  <31.179214, 35.257786, 34.896572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525251, 35.269020, 35.096901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406548, -0.624101, -0.667246,
		0.293822, 0.780839, -0.551325,
		0.865094, 0.028088, 0.500823,
		31.784781, 35.277447, 35.247147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682276, 35.643749, 34.455528>,  <31.179214, 35.257786, 34.896572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682276, 35.643749, 34.455528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822294, 35.360691, 34.701031>,  <31.906305, 35.190857, 34.848331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822294, 35.360691, 34.701031>,  <31.682276, 35.643749, 34.455528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822294, 35.360691, 34.701031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230134, -0.570163, -0.788640,
		0.908022, 0.417309, -0.036730,
		0.350048, -0.707649, 0.613757,
		31.927309, 35.148396, 34.885159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669815, 36.251854, 34.780766>,  <31.682276, 35.643749, 34.455528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669815, 36.251854, 34.780766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447504, 36.574863, 34.701752>,  <31.314117, 36.768669, 34.654343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447504, 36.574863, 34.701752>,  <31.669815, 36.251854, 34.780766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447504, 36.574863, 34.701752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831292, 0.542160, -0.122541,
		0.008140, -0.232313, -0.972607,
		-0.555776, 0.807523, -0.197533,
		31.280771, 36.817120, 34.642490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918274, 36.689480, 34.238617>,  <31.669815, 36.251854, 34.780766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918274, 36.689480, 34.238617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798681, 36.997707, 34.463772>,  <31.726925, 37.182644, 34.598866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798681, 36.997707, 34.463772>,  <31.918274, 36.689480, 34.238617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798681, 36.997707, 34.463772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903201, 0.418872, -0.093672,
		-0.307957, 0.480391, -0.821211,
		-0.298983, 0.770565, 0.562884,
		31.708986, 37.228878, 34.632637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526741, 36.870052, 34.328861>,  <31.918274, 36.689480, 34.238617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526741, 36.870052, 34.328861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403637, 36.763752, 34.694298>,  <32.329773, 36.699970, 34.913559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403637, 36.763752, 34.694298>,  <32.526741, 36.870052, 34.328861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403637, 36.763752, 34.694298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813058, 0.425267, 0.397599,
		-0.494185, 0.865172, 0.085191,
		-0.307763, -0.265753, 0.913596,
		32.311310, 36.684025, 34.968376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917034, 37.275703, 34.700100>,  <32.526741, 36.870052, 34.328861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917034, 37.275703, 34.700100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819660, 37.040089, 35.008327>,  <32.761234, 36.898720, 35.193264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819660, 37.040089, 35.008327>,  <32.917034, 37.275703, 34.700100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819660, 37.040089, 35.008327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744842, 0.395334, 0.537514,
		-0.621247, 0.704801, 0.342503,
		-0.243437, -0.589039, 0.770566,
		32.746628, 36.863377, 35.239498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568729, 37.753769, 35.239704>,  <32.917034, 37.275703, 34.700100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568729, 37.753769, 35.239704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797050, 37.441841, 35.342510>,  <32.934044, 37.254684, 35.404194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797050, 37.441841, 35.342510>,  <32.568729, 37.753769, 35.239704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797050, 37.441841, 35.342510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621951, 0.615003, 0.484715,
		-0.536057, -0.116827, 0.836058,
		0.570806, -0.779823, 0.257016,
		32.968292, 37.207893, 35.419617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780708, 37.861294, 35.905132>,  <32.568729, 37.753769, 35.239704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780708, 37.861294, 35.905132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032711, 37.569214, 35.799374>,  <33.183914, 37.393967, 35.735920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032711, 37.569214, 35.799374>,  <32.780708, 37.861294, 35.905132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032711, 37.569214, 35.799374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775374, 0.572387, 0.266776,
		-0.043463, -0.373075, 0.926782,
		0.630006, -0.730198, -0.264395,
		33.221714, 37.350155, 35.720055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293571, 37.803947, 36.411388>,  <32.780708, 37.861294, 35.905132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293571, 37.803947, 36.411388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496574, 37.645607, 36.105255>,  <33.618378, 37.550602, 35.921577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496574, 37.645607, 36.105255>,  <33.293571, 37.803947, 36.411388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496574, 37.645607, 36.105255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856017, 0.332986, 0.395417,
		0.098316, -0.855815, 0.507854,
		0.507512, -0.395856, -0.765330,
		33.648827, 37.526852, 35.875656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851425, 37.593777, 36.675354>,  <33.293571, 37.803947, 36.411388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851425, 37.593777, 36.675354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955708, 37.622868, 36.290283>,  <34.018276, 37.640324, 36.059242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955708, 37.622868, 36.290283>,  <33.851425, 37.593777, 36.675354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955708, 37.622868, 36.290283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937117, 0.220604, 0.270455,
		0.232041, -0.972648, -0.010645,
		0.260709, 0.072732, -0.962674,
		34.033920, 37.644688, 36.001480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537422, 37.235462, 36.650406>,  <33.851425, 37.593777, 36.675354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537422, 37.235462, 36.650406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484592, 37.520119, 36.374401>,  <34.452896, 37.690914, 36.208797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484592, 37.520119, 36.374401>,  <34.537422, 37.235462, 36.650406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484592, 37.520119, 36.374401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968042, 0.242320, 0.064625,
		0.213195, -0.659429, -0.720903,
		-0.132073, 0.711642, -0.690016,
		34.444969, 37.733612, 36.167397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066071, 37.165882, 36.062462>,  <34.537422, 37.235462, 36.650406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066071, 37.165882, 36.062462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963764, 37.552471, 36.071487>,  <34.902382, 37.784424, 36.076904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963764, 37.552471, 36.071487>,  <35.066071, 37.165882, 36.062462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963764, 37.552471, 36.071487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952484, 0.247928, 0.176935,
		0.165409, 0.066745, -0.983964,
		-0.255762, 0.966476, 0.022564,
		34.887035, 37.842415, 36.078259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379509, 37.581654, 35.548546>,  <35.066071, 37.165882, 36.062462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379509, 37.581654, 35.548546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304821, 37.806427, 35.870876>,  <35.260010, 37.941292, 36.064274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304821, 37.806427, 35.870876>,  <35.379509, 37.581654, 35.548546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304821, 37.806427, 35.870876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959432, 0.280684, 0.026580,
		-0.211247, 0.778102, -0.591550,
		-0.186721, 0.561938, 0.805830,
		35.248806, 37.975010, 36.112625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624512, 38.256508, 35.428135>,  <35.379509, 37.581654, 35.548546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624512, 38.256508, 35.428135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655113, 38.176956, 35.818947>,  <35.673473, 38.129227, 36.053436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655113, 38.176956, 35.818947>,  <35.624512, 38.256508, 35.428135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655113, 38.176956, 35.818947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967502, 0.251671, -0.024527,
		-0.241013, 0.947159, 0.211665,
		0.076501, -0.198875, 0.977035,
		35.678062, 38.117294, 36.112057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512039, 38.643150, 36.097569>,  <35.624512, 38.256508, 35.428135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512039, 38.643150, 36.097569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332951, 38.999001, 36.061539>,  <35.225498, 39.212509, 36.039921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332951, 38.999001, 36.061539>,  <35.512039, 38.643150, 36.097569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332951, 38.999001, 36.061539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678921, -0.403773, -0.613215,
		-0.581900, -0.213398, 0.784763,
		-0.447725, 0.889623, -0.090075,
		35.198631, 39.265888, 36.034515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876949, 38.468559, 36.090942>,  <35.512039, 38.643150, 36.097569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876949, 38.468559, 36.090942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903870, 38.829048, 35.919701>,  <34.920021, 39.045341, 35.816956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903870, 38.829048, 35.919701>,  <34.876949, 38.468559, 36.090942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903870, 38.829048, 35.919701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621754, -0.297693, -0.724432,
		-0.780316, 0.314927, 0.540303,
		0.067299, 0.901221, -0.428102,
		34.924061, 39.099415, 35.791271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268078, 38.641968, 36.019249>,  <34.876949, 38.468559, 36.090942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268078, 38.641968, 36.019249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446495, 38.889732, 35.760830>,  <34.553547, 39.038391, 35.605778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446495, 38.889732, 35.760830>,  <34.268078, 38.641968, 36.019249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446495, 38.889732, 35.760830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699550, -0.208974, -0.683345,
		-0.558275, 0.756746, 0.340094,
		0.446048, 0.619407, -0.646047,
		34.580311, 39.075554, 35.567017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777954, 39.178696, 35.885048>,  <34.268078, 38.641968, 36.019249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777954, 39.178696, 35.885048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045059, 39.118881, 35.593369>,  <34.205322, 39.082993, 35.418362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045059, 39.118881, 35.593369>,  <33.777954, 39.178696, 35.885048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045059, 39.118881, 35.593369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730495, -0.319931, -0.603341,
		-0.143072, 0.935565, -0.322875,
		0.667763, -0.149537, -0.729199,
		34.245388, 39.074020, 35.374607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470295, 39.475719, 35.255505>,  <33.777954, 39.178696, 35.885048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470295, 39.475719, 35.255505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762749, 39.249378, 35.103058>,  <33.938221, 39.113575, 35.011589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762749, 39.249378, 35.103058>,  <33.470295, 39.475719, 35.255505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762749, 39.249378, 35.103058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606612, -0.283568, -0.742705,
		0.312189, 0.774209, -0.550580,
		0.731136, -0.565853, -0.381117,
		33.982090, 39.079624, 34.988724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322357, 39.402733, 34.589252>,  <33.470295, 39.475719, 35.255505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322357, 39.402733, 34.589252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615299, 39.130436, 34.595512>,  <33.791065, 38.967060, 34.599266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615299, 39.130436, 34.595512>,  <33.322357, 39.402733, 34.589252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615299, 39.130436, 34.595512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367093, -0.414074, -0.832938,
		0.573492, 0.604266, -0.553145,
		0.732359, -0.680739, 0.015647,
		33.835007, 38.926212, 34.600208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544502, 39.262920, 33.757702>,  <33.322357, 39.402733, 34.589252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544502, 39.262920, 33.757702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664776, 38.953163, 33.980381>,  <33.736938, 38.767311, 34.113987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664776, 38.953163, 33.980381>,  <33.544502, 39.262920, 33.757702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664776, 38.953163, 33.980381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377954, -0.632669, -0.675930,
		0.875638, -0.007166, -0.482915,
		0.300682, -0.774389, 0.556697,
		33.754982, 38.720848, 34.147388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795956, 38.781116, 33.371254>,  <33.544502, 39.262920, 33.757702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795956, 38.781116, 33.371254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697884, 38.562553, 33.691586>,  <33.639042, 38.431416, 33.883785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697884, 38.562553, 33.691586>,  <33.795956, 38.781116, 33.371254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697884, 38.562553, 33.691586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411282, -0.689402, -0.596299,
		0.877916, -0.475564, -0.055704,
		-0.245176, -0.546411, 0.800827,
		33.624332, 38.398632, 33.931835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120579, 38.069180, 33.262585>,  <33.795956, 38.781116, 33.371254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120579, 38.069180, 33.262585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825100, 38.026031, 33.528725>,  <33.647812, 38.000141, 33.688408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825100, 38.026031, 33.528725>,  <34.120579, 38.069180, 33.262585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825100, 38.026031, 33.528725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399273, -0.725258, -0.560876,
		0.543050, -0.679974, 0.492679,
		-0.738700, -0.107870, 0.665347,
		33.603489, 37.993671, 33.728329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027443, 37.346767, 33.352901>,  <34.120579, 38.069180, 33.262585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027443, 37.346767, 33.352901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685932, 37.520573, 33.467628>,  <33.481026, 37.624855, 33.536465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685932, 37.520573, 33.467628>,  <34.027443, 37.346767, 33.352901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685932, 37.520573, 33.467628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517458, -0.647394, -0.559569,
		-0.057454, -0.626164, 0.777571,
		-0.853777, 0.434510, 0.286818,
		33.429798, 37.650925, 33.553673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591900, 36.793919, 33.463348>,  <34.027443, 37.346767, 33.352901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591900, 36.793919, 33.463348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332661, 37.096855, 33.431332>,  <33.177116, 37.278618, 33.412121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332661, 37.096855, 33.431332>,  <33.591900, 36.793919, 33.463348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332661, 37.096855, 33.431332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507091, -0.507568, -0.696587,
		-0.568177, -0.410871, 0.712994,
		-0.648100, 0.757337, -0.080040,
		33.138229, 37.324055, 33.407318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042839, 36.459957, 33.277294>,  <33.591900, 36.793919, 33.463348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042839, 36.459957, 33.277294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942421, 36.837944, 33.193371>,  <32.882172, 37.064735, 33.143017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942421, 36.837944, 33.193371>,  <33.042839, 36.459957, 33.277294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942421, 36.837944, 33.193371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658950, -0.325606, -0.678060,
		-0.709058, -0.031968, 0.704425,
		-0.251042, 0.944965, -0.209808,
		32.867107, 37.121433, 33.130428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296268, 36.587826, 33.407902>,  <33.042839, 36.459957, 33.277294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296268, 36.587826, 33.407902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417332, 36.868565, 33.149971>,  <32.489967, 37.037010, 32.995213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417332, 36.868565, 33.149971>,  <32.296268, 36.587826, 33.407902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417332, 36.868565, 33.149971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724932, -0.269717, -0.633818,
		-0.618768, 0.659286, 0.427164,
		0.302654, 0.701851, -0.644830,
		32.508129, 37.079121, 32.956524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706179, 36.708092, 33.043793>,  <32.296268, 36.587826, 33.407902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706179, 36.708092, 33.043793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993706, 36.889290, 32.832855>,  <32.166222, 36.998009, 32.706291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993706, 36.889290, 32.832855>,  <31.706179, 36.708092, 33.043793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993706, 36.889290, 32.832855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525533, -0.142493, -0.838755,
		-0.455099, 0.880049, 0.135640,
		0.718818, 0.453000, -0.527344,
		32.209351, 37.025188, 32.674652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402414, 37.175125, 32.671940>,  <31.706179, 36.708092, 33.043793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402414, 37.175125, 32.671940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731707, 37.061371, 32.475407>,  <31.929283, 36.993118, 32.357487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731707, 37.061371, 32.475407>,  <31.402414, 37.175125, 32.671940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731707, 37.061371, 32.475407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560536, -0.270089, -0.782848,
		0.089929, 0.919878, -0.381756,
		0.823233, -0.284389, -0.491336,
		31.978676, 36.976055, 32.328007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291302, 37.443237, 31.986198>,  <31.402414, 37.175125, 32.671940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291302, 37.443237, 31.986198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557951, 37.146057, 31.962065>,  <31.717941, 36.967751, 31.947584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557951, 37.146057, 31.962065>,  <31.291302, 37.443237, 31.986198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557951, 37.146057, 31.962065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530893, -0.416415, -0.738073,
		0.523225, 0.524049, -0.672018,
		0.666625, -0.742948, -0.060336,
		31.757938, 36.923172, 31.943964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293541, 37.347969, 31.339884>,  <31.291302, 37.443237, 31.986198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293541, 37.347969, 31.339884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470371, 37.017765, 31.480230>,  <31.576469, 36.819645, 31.564438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470371, 37.017765, 31.480230>,  <31.293541, 37.347969, 31.339884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470371, 37.017765, 31.480230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367133, -0.523423, -0.768923,
		0.818403, 0.211106, -0.534463,
		0.442074, -0.825508, 0.350867,
		31.602993, 36.770111, 31.585491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728264, 37.064835, 30.831844>,  <31.293541, 37.347969, 31.339884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728264, 37.064835, 30.831844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626942, 36.769390, 31.081738>,  <31.566149, 36.592125, 31.231674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626942, 36.769390, 31.081738>,  <31.728264, 37.064835, 30.831844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626942, 36.769390, 31.081738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399888, -0.508090, -0.762846,
		0.880866, -0.443057, -0.166660,
		-0.253306, -0.738611, 0.624732,
		31.550949, 36.547806, 31.269157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665102, 36.460949, 30.436733>,  <31.728264, 37.064835, 30.831844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665102, 36.460949, 30.436733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478594, 36.322620, 30.762432>,  <31.366688, 36.239624, 30.957851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478594, 36.322620, 30.762432>,  <31.665102, 36.460949, 30.436733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478594, 36.322620, 30.762432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488683, -0.666556, -0.562932,
		0.737414, -0.660389, 0.141801,
		-0.466272, -0.345819, 0.814248,
		31.338713, 36.218876, 31.006706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793552, 35.735237, 30.459368>,  <31.665102, 36.460949, 30.436733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793552, 35.735237, 30.459368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455793, 35.787739, 30.667122>,  <31.253138, 35.819241, 30.791775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455793, 35.787739, 30.667122>,  <31.793552, 35.735237, 30.459368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455793, 35.787739, 30.667122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465346, -0.660047, -0.589738,
		0.265413, -0.739669, 0.618422,
		-0.844399, 0.131256, 0.519387,
		31.202475, 35.827114, 30.822937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521343, 35.100086, 30.527420>,  <31.793552, 35.735237, 30.459368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521343, 35.100086, 30.527420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209612, 35.343586, 30.586842>,  <31.022573, 35.489685, 30.622494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209612, 35.343586, 30.586842>,  <31.521343, 35.100086, 30.527420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209612, 35.343586, 30.586842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562358, -0.574895, -0.594348,
		-0.276409, -0.546732, 0.790368,
		-0.779328, 0.608753, 0.148553,
		30.975813, 35.526211, 30.631407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961380, 34.653221, 30.798414>,  <31.521343, 35.100086, 30.527420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961380, 34.653221, 30.798414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772917, 34.982170, 30.670841>,  <30.659838, 35.179539, 30.594297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772917, 34.982170, 30.670841>,  <30.961380, 34.653221, 30.798414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772917, 34.982170, 30.670841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462956, -0.538336, -0.704177,
		-0.750786, -0.184129, 0.634363,
		-0.471160, 0.822369, -0.318932,
		30.631569, 35.228882, 30.575161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179075, 34.595139, 30.763004>,  <30.961380, 34.653221, 30.798414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179075, 34.595139, 30.763004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245934, 34.890232, 30.501373>,  <30.286049, 35.067287, 30.344395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245934, 34.890232, 30.501373>,  <30.179075, 34.595139, 30.763004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245934, 34.890232, 30.501373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601241, -0.449512, -0.660642,
		-0.781391, 0.503681, 0.368420,
		0.167144, 0.737729, -0.654078,
		30.296076, 35.111549, 30.305149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449255, 34.764755, 30.482855>,  <30.179075, 34.595139, 30.763004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449255, 34.764755, 30.482855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726892, 34.891663, 30.224375>,  <29.893475, 34.967808, 30.069286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726892, 34.891663, 30.224375>,  <29.449255, 34.764755, 30.482855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726892, 34.891663, 30.224375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573787, -0.298275, -0.762759,
		-0.434744, 0.900207, -0.024987,
		0.694094, 0.317267, -0.646200,
		29.935122, 34.986843, 30.030514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029024, 35.163967, 29.964556>,  <29.449255, 34.764755, 30.482855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029024, 35.163967, 29.964556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385223, 35.073254, 29.806782>,  <29.598944, 35.018826, 29.712116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385223, 35.073254, 29.806782>,  <29.029024, 35.163967, 29.964556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385223, 35.073254, 29.806782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425682, -0.109194, -0.898260,
		0.160640, 0.967805, -0.193774,
		0.890500, -0.226783, -0.394436,
		29.652374, 35.005219, 29.688452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048130, 35.516052, 29.256142>,  <29.029024, 35.163967, 29.964556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048130, 35.516052, 29.256142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321642, 35.224178, 29.256485>,  <29.485748, 35.049053, 29.256691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321642, 35.224178, 29.256485>,  <29.048130, 35.516052, 29.256142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321642, 35.224178, 29.256485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311243, -0.292723, -0.904124,
		0.659981, 0.617953, -0.427269,
		0.683778, -0.729689, 0.000858,
		29.526775, 35.005272, 29.256742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444521, 35.551022, 28.669260>,  <29.048130, 35.516052, 29.256142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444521, 35.551022, 28.669260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500526, 35.169224, 28.774582>,  <29.534130, 34.940144, 28.837774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500526, 35.169224, 28.774582>,  <29.444521, 35.551022, 28.669260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500526, 35.169224, 28.774582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336207, -0.295955, -0.894078,
		0.931322, 0.036660, -0.362347,
		0.140015, -0.954498, 0.263305,
		29.542530, 34.882874, 28.853573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895973, 35.306190, 28.039734>,  <29.444521, 35.551022, 28.669260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895973, 35.306190, 28.039734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718487, 35.004890, 28.233940>,  <29.611996, 34.824108, 28.350464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718487, 35.004890, 28.233940>,  <29.895973, 35.306190, 28.039734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718487, 35.004890, 28.233940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158203, -0.467420, -0.869765,
		0.882093, -0.462739, 0.088235,
		-0.443717, -0.753254, 0.485515,
		29.585371, 34.778915, 28.379595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255125, 34.647717, 27.782352>,  <29.895973, 35.306190, 28.039734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255125, 34.647717, 27.782352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907915, 34.535469, 27.946201>,  <29.699589, 34.468121, 28.044510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907915, 34.535469, 27.946201>,  <30.255125, 34.647717, 27.782352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907915, 34.535469, 27.946201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198364, -0.560296, -0.804189,
		0.455176, -0.779310, 0.430687,
		-0.868025, -0.280614, 0.409620,
		29.647509, 34.451286, 28.069088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248520, 33.914902, 27.618607>,  <30.255125, 34.647717, 27.782352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248520, 33.914902, 27.618607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871117, 34.032421, 27.679895>,  <29.644674, 34.102932, 27.716669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871117, 34.032421, 27.679895>,  <30.248520, 33.914902, 27.618607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871117, 34.032421, 27.679895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320379, -0.690839, -0.648150,
		-0.084574, -0.660623, 0.745938,
		-0.943506, 0.293799, 0.153223,
		29.588064, 34.120560, 27.725863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845482, 33.319885, 27.679037>,  <30.248520, 33.914902, 27.618607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845482, 33.319885, 27.679037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608278, 33.621662, 27.566496>,  <29.465956, 33.802727, 27.498970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608278, 33.621662, 27.566496>,  <29.845482, 33.319885, 27.679037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608278, 33.621662, 27.566496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341128, -0.551915, -0.760935,
		-0.729363, -0.355264, 0.584652,
		-0.593011, 0.754438, -0.281355,
		29.430374, 33.847992, 27.482090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316544, 32.921028, 27.353827>,  <29.845482, 33.319885, 27.679037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316544, 32.921028, 27.353827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268925, 33.306152, 27.256813>,  <29.240355, 33.537228, 27.198605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268925, 33.306152, 27.256813>,  <29.316544, 32.921028, 27.353827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268925, 33.306152, 27.256813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402876, -0.270101, -0.874492,
		-0.907480, -0.006394, 0.420047,
		-0.119046, 0.962811, -0.242535,
		29.233212, 33.594997, 27.184053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742273, 32.948177, 27.097389>,  <29.316544, 32.921028, 27.353827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742273, 32.948177, 27.097389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900173, 33.288273, 26.958096>,  <28.994913, 33.492329, 26.874519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900173, 33.288273, 26.958096>,  <28.742273, 32.948177, 27.097389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900173, 33.288273, 26.958096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374909, -0.196969, -0.905895,
		-0.838819, 0.488158, 0.241009,
		0.394749, 0.850238, -0.348236,
		29.018599, 33.543343, 26.853624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239553, 33.405281, 26.716608>,  <28.742273, 32.948177, 27.097389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239553, 33.405281, 26.716608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593288, 33.539764, 26.587046>,  <28.805529, 33.620453, 26.509308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593288, 33.539764, 26.587046>,  <28.239553, 33.405281, 26.716608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593288, 33.539764, 26.587046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378901, 0.111562, -0.918688,
		-0.272735, 0.935156, 0.226048,
		0.884336, 0.336208, -0.323905,
		28.858589, 33.640629, 26.489874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093252, 33.804749, 26.246265>,  <28.239553, 33.405281, 26.716608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093252, 33.804749, 26.246265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479322, 33.791183, 26.142508>,  <28.710964, 33.783047, 26.080254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479322, 33.791183, 26.142508>,  <28.093252, 33.804749, 26.246265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479322, 33.791183, 26.142508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225829, 0.392513, -0.891591,
		0.132048, 0.919121, 0.371187,
		0.965176, -0.033908, -0.259395,
		28.768875, 33.781010, 26.064690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159254, 34.397659, 25.808628>,  <28.093252, 33.804749, 26.246265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159254, 34.397659, 25.808628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463745, 34.165066, 25.693804>,  <28.646441, 34.025509, 25.624910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463745, 34.165066, 25.693804>,  <28.159254, 34.397659, 25.808628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463745, 34.165066, 25.693804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193244, 0.219145, -0.956364,
		0.619021, 0.783485, 0.054451,
		0.761230, -0.581487, -0.287059,
		28.692114, 33.990620, 25.607687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482918, 34.753700, 25.235167>,  <28.159254, 34.397659, 25.808628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482918, 34.753700, 25.235167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602163, 34.371895, 25.233269>,  <28.673712, 34.142811, 25.232130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602163, 34.371895, 25.233269>,  <28.482918, 34.753700, 25.235167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602163, 34.371895, 25.233269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027196, -0.003523, -0.999624,
		0.954143, 0.298132, -0.027010,
		0.298115, -0.954518, -0.004746,
		28.691597, 34.085541, 25.231844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853895, 34.684395, 24.713121>,  <28.482918, 34.753700, 25.235167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853895, 34.684395, 24.713121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755766, 34.296841, 24.726225>,  <28.696888, 34.064308, 24.734087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755766, 34.296841, 24.726225>,  <28.853895, 34.684395, 24.713121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755766, 34.296841, 24.726225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211076, 0.020403, -0.977257,
		0.946184, -0.246659, -0.209514,
		-0.245324, -0.968888, 0.032759,
		28.682169, 34.006176, 24.736053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889606, 34.444088, 24.097349>,  <28.853895, 34.684395, 24.713121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889606, 34.444088, 24.097349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695543, 34.124420, 24.239309>,  <28.579105, 33.932621, 24.324486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695543, 34.124420, 24.239309>,  <28.889606, 34.444088, 24.097349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695543, 34.124420, 24.239309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255913, -0.258328, -0.931544,
		0.836140, -0.542770, -0.079187,
		-0.485158, -0.799167, 0.354901,
		28.549995, 33.884670, 24.345779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189808, 33.829685, 23.857553>,  <28.889606, 34.444088, 24.097349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189808, 33.829685, 23.857553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818800, 33.716522, 23.955259>,  <28.596195, 33.648624, 24.013884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818800, 33.716522, 23.955259>,  <29.189808, 33.829685, 23.857553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818800, 33.716522, 23.955259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121918, -0.388779, -0.913229,
		0.353328, -0.876819, 0.326108,
		-0.927521, -0.282911, 0.244267,
		28.540545, 33.631649, 24.028540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008684, 33.191662, 23.434237>,  <29.189808, 33.829685, 23.857553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008684, 33.191662, 23.434237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635550, 33.269249, 23.555691>,  <28.411669, 33.315800, 23.628563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635550, 33.269249, 23.555691>,  <29.008684, 33.191662, 23.434237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635550, 33.269249, 23.555691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360044, -0.469771, -0.806030,
		-0.013703, -0.861215, 0.508055,
		-0.932835, 0.193967, 0.303638,
		28.355700, 33.327438, 23.646782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671566, 32.597340, 23.370682>,  <29.008684, 33.191662, 23.434237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671566, 32.597340, 23.370682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373941, 32.864437, 23.379627>,  <28.195368, 33.024696, 23.384995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373941, 32.864437, 23.379627>,  <28.671566, 32.597340, 23.370682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373941, 32.864437, 23.379627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472117, -0.501807, -0.724773,
		-0.472731, -0.549837, 0.688625,
		-0.744064, 0.667734, 0.022368,
		28.150724, 33.064758, 23.386335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058514, 32.185032, 23.299391>,  <28.671566, 32.597340, 23.370682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058514, 32.185032, 23.299391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952652, 32.559422, 23.206522>,  <27.889135, 32.784058, 23.150801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952652, 32.559422, 23.206522>,  <28.058514, 32.185032, 23.299391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952652, 32.559422, 23.206522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455128, -0.333486, -0.825618,
		-0.850187, -0.112834, 0.514248,
		-0.264652, 0.935978, -0.232172,
		27.873257, 32.840214, 23.136871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457867, 32.126244, 23.047405>,  <28.058514, 32.185032, 23.299391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457867, 32.126244, 23.047405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568651, 32.470474, 22.876432>,  <27.635122, 32.677013, 22.773849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568651, 32.470474, 22.876432>,  <27.457867, 32.126244, 23.047405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568651, 32.470474, 22.876432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246852, -0.366179, -0.897206,
		-0.928631, 0.354005, 0.111017,
		0.276963, 0.860578, -0.427432,
		27.651739, 32.728649, 22.748203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017408, 32.217999, 22.553024>,  <27.457867, 32.126244, 23.047405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017408, 32.217999, 22.553024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290064, 32.487263, 22.438332>,  <27.453657, 32.648823, 22.369516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290064, 32.487263, 22.438332>,  <27.017408, 32.217999, 22.553024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290064, 32.487263, 22.438332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391874, 0.004933, -0.920006,
		-0.617900, 0.739477, 0.267158,
		0.681641, 0.673164, -0.286733,
		27.494556, 32.689213, 22.352312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532537, 32.606640, 22.164726>,  <27.017408, 32.217999, 22.553024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532537, 32.606640, 22.164726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908855, 32.641407, 22.033669>,  <27.134645, 32.662266, 21.955034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908855, 32.641407, 22.033669>,  <26.532537, 32.606640, 22.164726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908855, 32.641407, 22.033669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305758, -0.199721, -0.930926,
		-0.146350, 0.975990, -0.161321,
		0.940794, 0.086916, -0.327646,
		27.191093, 32.667480, 21.935375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570263, 33.032207, 21.521555>,  <26.532537, 32.606640, 22.164726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570263, 33.032207, 21.521555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910408, 32.821892, 21.529848>,  <27.114494, 32.695702, 21.534824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910408, 32.821892, 21.529848>,  <26.570263, 33.032207, 21.521555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910408, 32.821892, 21.529848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092574, -0.188274, -0.977744,
		0.517990, 0.829517, -0.208775,
		0.850362, -0.525789, 0.020733,
		27.165516, 32.664154, 21.536068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075352, 33.408272, 21.256367>,  <26.570263, 33.032207, 21.521555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075352, 33.408272, 21.256367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219873, 33.040394, 21.194901>,  <27.306587, 32.819668, 21.158022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219873, 33.040394, 21.194901>,  <27.075352, 33.408272, 21.256367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219873, 33.040394, 21.194901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231280, 0.248038, -0.940738,
		0.903310, 0.304354, 0.302325,
		0.361305, -0.919699, -0.153664,
		27.328264, 32.764484, 21.148802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021595, 34.143574, 21.249123>,  <27.075352, 33.408272, 21.256367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021595, 34.143574, 21.249123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928230, 33.961304, 21.592722>,  <26.872211, 33.851944, 21.798882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928230, 33.961304, 21.592722>,  <27.021595, 34.143574, 21.249123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928230, 33.961304, 21.592722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871514, -0.293760, -0.392644,
		0.431257, -0.840278, -0.328558,
		-0.233413, -0.455673, 0.859000,
		26.858206, 33.824600, 21.850422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969950, 34.180851, 20.467014>,  <27.021595, 34.143574, 21.249123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969950, 34.180851, 20.467014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304798, 33.990059, 20.359890>,  <27.505707, 33.875584, 20.295614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304798, 33.990059, 20.359890>,  <26.969950, 34.180851, 20.467014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304798, 33.990059, 20.359890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487930, -0.429754, -0.759760,
		0.247294, 0.766684, -0.592487,
		0.837120, -0.476977, -0.267813,
		27.555935, 33.846966, 20.279547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597216, 34.288136, 20.536087>,  <26.969950, 34.180851, 20.467014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597216, 34.288136, 20.536087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805399, 34.420609, 20.221270>,  <27.930309, 34.500092, 20.032379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805399, 34.420609, 20.221270>,  <27.597216, 34.288136, 20.536087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805399, 34.420609, 20.221270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639665, 0.459358, 0.616294,
		0.565644, -0.824200, 0.027228,
		0.520457, 0.331186, -0.787045,
		27.961536, 34.519966, 19.985155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154833, 34.102829, 20.710968>,  <27.597216, 34.288136, 20.536087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154833, 34.102829, 20.710968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172415, 34.428013, 20.478706>,  <28.182964, 34.623123, 20.339350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172415, 34.428013, 20.478706>,  <28.154833, 34.102829, 20.710968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172415, 34.428013, 20.478706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621126, 0.432991, 0.653239,
		0.782477, -0.389373, -0.485920,
		0.043954, 0.812962, -0.580655,
		28.185600, 34.671902, 20.304510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948584, 34.401787, 20.593294>,  <28.154833, 34.102829, 20.710968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948584, 34.401787, 20.593294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655565, 34.671509, 20.630573>,  <28.479753, 34.833344, 20.652941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655565, 34.671509, 20.630573>,  <28.948584, 34.401787, 20.593294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655565, 34.671509, 20.630573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518145, 0.463551, 0.718781,
		0.441479, 0.574830, -0.688961,
		-0.732545, 0.674308, 0.093197,
		28.435802, 34.873802, 20.658533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240204, 35.121647, 20.535566>,  <28.948584, 34.401787, 20.593294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240204, 35.121647, 20.535566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914545, 35.057346, 20.758753>,  <28.719151, 35.018768, 20.892664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914545, 35.057346, 20.758753>,  <29.240204, 35.121647, 20.535566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914545, 35.057346, 20.758753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393550, 0.553785, 0.733785,
		-0.426947, 0.816996, -0.387600,
		-0.814147, -0.160747, 0.557966,
		28.670301, 35.009121, 20.926142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934923, 35.707874, 20.710749>,  <29.240204, 35.121647, 20.535566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934923, 35.707874, 20.710749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861311, 35.450050, 21.007580>,  <28.817144, 35.295357, 21.185678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861311, 35.450050, 21.007580>,  <28.934923, 35.707874, 20.710749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861311, 35.450050, 21.007580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635893, 0.497623, 0.589925,
		-0.749515, 0.580445, 0.318292,
		-0.184030, -0.644558, 0.742077,
		28.806103, 35.256683, 21.230204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865772, 36.133724, 21.337067>,  <28.934923, 35.707874, 20.710749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865772, 36.133724, 21.337067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948570, 35.766674, 21.472778>,  <28.998249, 35.546444, 21.554205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948570, 35.766674, 21.472778>,  <28.865772, 36.133724, 21.337067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948570, 35.766674, 21.472778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749012, 0.371738, 0.548445,
		-0.629392, 0.140601, 0.764262,
		0.206994, -0.917628, 0.339281,
		29.010668, 35.491386, 21.574562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053219, 36.169559, 22.047264>,  <28.865772, 36.133724, 21.337067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053219, 36.169559, 22.047264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234623, 35.821232, 21.971371>,  <29.343466, 35.612236, 21.925835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234623, 35.821232, 21.971371>,  <29.053219, 36.169559, 22.047264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234623, 35.821232, 21.971371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780023, 0.284829, 0.557169,
		-0.431154, -0.400677, 0.808433,
		0.453510, -0.870822, -0.189732,
		29.370676, 35.559986, 21.914452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230686, 35.951851, 22.717024>,  <29.053219, 36.169559, 22.047264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230686, 35.951851, 22.717024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443445, 35.741932, 22.451189>,  <29.571100, 35.615982, 22.291689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443445, 35.741932, 22.451189>,  <29.230686, 35.951851, 22.717024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443445, 35.741932, 22.451189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783619, 0.007558, 0.621196,
		-0.320976, -0.851196, 0.415258,
		0.531898, -0.524793, -0.664588,
		29.603014, 35.584496, 22.251812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319866, 35.375267, 23.018122>,  <29.230686, 35.951851, 22.717024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319866, 35.375267, 23.018122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618414, 35.421631, 22.755976>,  <29.797543, 35.449448, 22.598688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618414, 35.421631, 22.755976>,  <29.319866, 35.375267, 23.018122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618414, 35.421631, 22.755976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651222, 0.075925, 0.755080,
		0.137281, -0.990353, -0.018816,
		0.746367, 0.115912, -0.655363,
		29.842323, 35.456406, 22.559366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886211, 35.018867, 23.332712>,  <29.319866, 35.375267, 23.018122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886211, 35.018867, 23.332712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081970, 35.238110, 23.061398>,  <30.199425, 35.369656, 22.898609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081970, 35.238110, 23.061398>,  <29.886211, 35.018867, 23.332712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081970, 35.238110, 23.061398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650646, 0.288385, 0.702491,
		0.580646, -0.785121, -0.215488,
		0.489396, 0.548105, -0.678286,
		30.228788, 35.402542, 22.857912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494703, 34.952801, 23.485682>,  <29.886211, 35.018867, 23.332712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494703, 34.952801, 23.485682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518240, 35.290699, 23.272911>,  <30.532362, 35.493439, 23.145248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518240, 35.290699, 23.272911>,  <30.494703, 34.952801, 23.485682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518240, 35.290699, 23.272911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499832, 0.436316, 0.748195,
		0.864121, -0.309900, -0.396556,
		0.058842, 0.844743, -0.531928,
		30.535892, 35.544121, 23.113333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151699, 35.118881, 23.577065>,  <30.494703, 34.952801, 23.485682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151699, 35.118881, 23.577065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985720, 35.461182, 23.453444>,  <30.886131, 35.666561, 23.379271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985720, 35.461182, 23.453444>,  <31.151699, 35.118881, 23.577065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985720, 35.461182, 23.453444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474936, 0.493449, 0.728659,
		0.776050, 0.155575, -0.611181,
		-0.414948, 0.855748, -0.309053,
		30.861235, 35.717907, 23.360727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708933, 35.553070, 23.520969>,  <31.151699, 35.118881, 23.577065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708933, 35.553070, 23.520969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410618, 35.819363, 23.530773>,  <31.231628, 35.979137, 23.536655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410618, 35.819363, 23.530773>,  <31.708933, 35.553070, 23.520969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410618, 35.819363, 23.530773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533292, 0.574563, 0.620868,
		0.399248, 0.476108, -0.783532,
		-0.745789, 0.665731, 0.024512,
		31.186882, 36.019081, 23.538126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025108, 36.260445, 23.349972>,  <31.708933, 35.553070, 23.520969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025108, 36.260445, 23.349972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680759, 36.309521, 23.547497>,  <31.474150, 36.338966, 23.666012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680759, 36.309521, 23.547497>,  <32.025108, 36.260445, 23.349972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680759, 36.309521, 23.547497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472405, 0.553273, 0.686092,
		-0.189040, 0.823916, -0.534254,
		-0.860870, 0.122686, 0.493813,
		31.422499, 36.346325, 23.695641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953220, 36.965057, 23.525736>,  <32.025108, 36.260445, 23.349972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953220, 36.965057, 23.525736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713089, 36.761612, 23.772612>,  <31.569010, 36.639545, 23.920736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713089, 36.761612, 23.772612>,  <31.953220, 36.965057, 23.525736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713089, 36.761612, 23.772612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351863, 0.525048, 0.774930,
		-0.718192, 0.682378, -0.136240,
		-0.600327, -0.508611, 0.617189,
		31.532991, 36.609028, 23.957767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700401, 37.550480, 24.038620>,  <31.953220, 36.965057, 23.525736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700401, 37.550480, 24.038620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641436, 37.200813, 24.223707>,  <31.606056, 36.991013, 24.334761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641436, 37.200813, 24.223707>,  <31.700401, 37.550480, 24.038620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641436, 37.200813, 24.223707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437339, 0.362003, 0.823219,
		-0.887132, 0.323719, 0.328940,
		-0.147414, -0.874162, 0.462720,
		31.597212, 36.938564, 24.362524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387484, 37.701683, 24.765406>,  <31.700401, 37.550480, 24.038620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387484, 37.701683, 24.765406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524319, 37.326336, 24.785145>,  <31.606421, 37.101128, 24.796988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524319, 37.326336, 24.785145>,  <31.387484, 37.701683, 24.765406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524319, 37.326336, 24.785145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522543, 0.233618, 0.819982,
		-0.780976, -0.254721, 0.570258,
		0.342089, -0.938371, 0.049347,
		31.626945, 37.044827, 24.799950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137480, 37.395012, 25.322903>,  <31.387484, 37.701683, 24.765406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137480, 37.395012, 25.322903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479546, 37.206814, 25.235889>,  <31.684786, 37.093895, 25.183681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479546, 37.206814, 25.235889>,  <31.137480, 37.395012, 25.322903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479546, 37.206814, 25.235889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278179, 0.062458, 0.958496,
		-0.437386, -0.880187, 0.184295,
		0.855166, -0.470500, -0.217532,
		31.736095, 37.065662, 25.170630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137384, 36.928646, 25.837296>,  <31.137480, 37.395012, 25.322903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137384, 36.928646, 25.837296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515171, 36.943886, 25.706738>,  <31.741842, 36.953030, 25.628403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515171, 36.943886, 25.706738>,  <31.137384, 36.928646, 25.837296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515171, 36.943886, 25.706738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326954, -0.009293, 0.944995,
		0.032976, -0.999231, -0.021236,
		0.944465, 0.038106, -0.326396,
		31.798510, 36.955315, 25.608818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513617, 36.391060, 26.213713>,  <31.137384, 36.928646, 25.837296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513617, 36.391060, 26.213713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777069, 36.658237, 26.075119>,  <31.935141, 36.818546, 25.991962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777069, 36.658237, 26.075119>,  <31.513617, 36.391060, 26.213713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777069, 36.658237, 26.075119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381783, 0.100153, 0.918810,
		0.648418, -0.737439, -0.189046,
		0.658632, 0.667947, -0.346483,
		31.974659, 36.858620, 25.971174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019272, 36.247414, 26.689037>,  <31.513617, 36.391060, 26.213713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019272, 36.247414, 26.689037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130821, 36.587696, 26.510811>,  <32.197750, 36.791866, 26.403875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130821, 36.587696, 26.510811>,  <32.019272, 36.247414, 26.689037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130821, 36.587696, 26.510811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458766, 0.289592, 0.840042,
		0.843661, -0.438677, -0.309515,
		0.278874, 0.850705, -0.445567,
		32.214485, 36.842907, 26.377140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739536, 36.310528, 26.898655>,  <32.019272, 36.247414, 26.689037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739536, 36.310528, 26.898655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623966, 36.677227, 26.788317>,  <32.554623, 36.897247, 26.722115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623966, 36.677227, 26.788317>,  <32.739536, 36.310528, 26.898655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623966, 36.677227, 26.788317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537913, 0.393808, 0.745362,
		0.791940, 0.066977, -0.606915,
		-0.288930, 0.916749, -0.275845,
		32.537289, 36.952251, 26.705563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356590, 36.780029, 26.834511>,  <32.739536, 36.310528, 26.898655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356590, 36.780029, 26.834511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039253, 37.011398, 26.910433>,  <32.848850, 37.150219, 26.955986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039253, 37.011398, 26.910433>,  <33.356590, 36.780029, 26.834511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039253, 37.011398, 26.910433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471007, 0.385687, 0.793346,
		0.385687, 0.718797, -0.578426,
		-0.793346, 0.578426, 0.189804,
		32.801250, 37.184925, 26.967375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661552, 37.465153, 27.002155>,  <33.356590, 36.780029, 26.834511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661552, 37.465153, 27.002155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283272, 37.465755, 27.132166>,  <33.056301, 37.466118, 27.210173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283272, 37.465755, 27.132166>,  <33.661552, 37.465153, 27.002155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283272, 37.465755, 27.132166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298859, 0.397144, 0.867733,
		-0.127777, 0.917755, -0.376030,
		-0.945704, 0.001504, 0.325025,
		32.999561, 37.466206, 27.229673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741619, 38.136383, 27.346779>,  <33.661552, 37.465153, 27.002155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741619, 38.136383, 27.346779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413700, 37.946114, 27.474318>,  <33.216949, 37.831951, 27.550840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413700, 37.946114, 27.474318>,  <33.741619, 38.136383, 27.346779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413700, 37.946114, 27.474318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130972, 0.386284, 0.913034,
		-0.557471, 0.790265, -0.254375,
		-0.819800, -0.475674, 0.318845,
		33.167759, 37.803413, 27.569971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307503, 38.580360, 27.721786>,  <33.741619, 38.136383, 27.346779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307503, 38.580360, 27.721786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200459, 38.219051, 27.855942>,  <33.136230, 38.002266, 27.936436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200459, 38.219051, 27.855942>,  <33.307503, 38.580360, 27.721786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200459, 38.219051, 27.855942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027640, 0.340745, 0.939749,
		-0.963131, 0.260757, -0.066220,
		-0.267610, -0.903271, 0.335390,
		33.120174, 37.948071, 27.956558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726646, 38.763596, 28.267805>,  <33.307503, 38.580360, 27.721786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726646, 38.763596, 28.267805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875160, 38.399921, 28.343197>,  <32.964268, 38.181717, 28.388432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875160, 38.399921, 28.343197>,  <32.726646, 38.763596, 28.267805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875160, 38.399921, 28.343197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203213, 0.277636, 0.938947,
		-0.906009, -0.310315, 0.287841,
		0.371285, -0.909188, 0.188480,
		32.986546, 38.127167, 28.399740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413277, 38.633816, 28.831770>,  <32.726646, 38.763596, 28.267805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413277, 38.633816, 28.831770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728962, 38.388210, 28.827135>,  <32.918373, 38.240849, 28.824354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728962, 38.388210, 28.827135>,  <32.413277, 38.633816, 28.831770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728962, 38.388210, 28.827135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180197, 0.213495, 0.960182,
		-0.587088, -0.759875, 0.279136,
		0.789212, -0.614011, -0.011587,
		32.965725, 38.204006, 28.823660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384743, 38.270271, 29.447803>,  <32.413277, 38.633816, 28.831770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384743, 38.270271, 29.447803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763012, 38.253571, 29.318834>,  <32.989975, 38.243549, 29.241453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763012, 38.253571, 29.318834>,  <32.384743, 38.270271, 29.447803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763012, 38.253571, 29.318834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319908, 0.296248, 0.899942,
		0.057944, -0.954198, 0.293511,
		0.945675, -0.041750, -0.322422,
		33.046715, 38.241047, 29.222107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619408, 38.209335, 30.080063>,  <32.384743, 38.270271, 29.447803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619408, 38.209335, 30.080063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939754, 38.264725, 29.847017>,  <33.131962, 38.297958, 29.707190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939754, 38.264725, 29.847017>,  <32.619408, 38.209335, 30.080063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939754, 38.264725, 29.847017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519801, 0.322352, 0.791136,
		0.297355, -0.936438, 0.186184,
		0.800866, 0.138470, -0.582614,
		33.180016, 38.306267, 29.672234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209507, 37.826141, 30.397408>,  <32.619408, 38.209335, 30.080063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209507, 37.826141, 30.397408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387394, 38.094593, 30.160152>,  <33.494125, 38.255665, 30.017799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387394, 38.094593, 30.160152>,  <33.209507, 37.826141, 30.397408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387394, 38.094593, 30.160152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663394, 0.198120, 0.721566,
		0.601777, -0.714376, -0.357117,
		0.444717, 0.671130, -0.593137,
		33.520809, 38.295933, 29.982212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798450, 37.660030, 30.565483>,  <33.209507, 37.826141, 30.397408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798450, 37.660030, 30.565483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812649, 38.024208, 30.400642>,  <33.821167, 38.242714, 30.301739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812649, 38.024208, 30.400642>,  <33.798450, 37.660030, 30.565483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812649, 38.024208, 30.400642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658982, 0.288688, 0.694552,
		0.751321, -0.296219, -0.589722,
		0.035494, 0.910447, -0.412100,
		33.823296, 38.297340, 30.277012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516335, 37.763268, 30.471123>,  <33.798450, 37.660030, 30.565483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516335, 37.763268, 30.471123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340069, 38.122334, 30.472282>,  <34.234310, 38.337772, 30.472979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340069, 38.122334, 30.472282>,  <34.516335, 37.763268, 30.471123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340069, 38.122334, 30.472282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726187, 0.354579, 0.589005,
		0.527703, 0.261657, -0.808124,
		-0.440661, 0.897669, 0.002900,
		34.207870, 38.391636, 30.473152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989655, 38.243881, 30.304558>,  <34.516335, 37.763268, 30.471123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989655, 38.243881, 30.304558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709099, 38.466270, 30.482973>,  <34.540768, 38.599705, 30.590023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709099, 38.466270, 30.482973>,  <34.989655, 38.243881, 30.304558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709099, 38.466270, 30.482973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698054, 0.409221, 0.587587,
		0.144154, 0.723485, -0.675121,
		-0.701385, 0.555974, 0.446041,
		34.498684, 38.633064, 30.616785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212185, 38.973633, 30.360085>,  <34.989655, 38.243881, 30.304558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212185, 38.973633, 30.360085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940083, 38.938786, 30.651197>,  <34.776821, 38.917877, 30.825865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940083, 38.938786, 30.651197>,  <35.212185, 38.973633, 30.360085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940083, 38.938786, 30.651197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588150, 0.527662, 0.612904,
		-0.437421, 0.844975, -0.307702,
		-0.680252, -0.087122, 0.727783,
		34.736008, 38.912647, 30.869532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156185, 39.698830, 30.713463>,  <35.212185, 38.973633, 30.360085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156185, 39.698830, 30.713463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996284, 39.447887, 30.980782>,  <34.900345, 39.297321, 31.141172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996284, 39.447887, 30.980782>,  <35.156185, 39.698830, 30.713463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996284, 39.447887, 30.980782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458238, 0.494661, 0.738464,
		-0.793861, 0.601441, 0.089738,
		-0.399753, -0.627359, 0.668295,
		34.876358, 39.259678, 31.181271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060375, 40.131645, 31.305332>,  <35.156185, 39.698830, 30.713463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060375, 40.131645, 31.305332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011536, 39.761353, 31.448503>,  <34.982231, 39.539177, 31.534407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011536, 39.761353, 31.448503>,  <35.060375, 40.131645, 31.305332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011536, 39.761353, 31.448503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369017, 0.292431, 0.882219,
		-0.921368, 0.239798, 0.305905,
		-0.122099, -0.925733, 0.357926,
		34.974907, 39.483631, 31.555882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787533, 40.175499, 31.983864>,  <35.060375, 40.131645, 31.305332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787533, 40.175499, 31.983864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932884, 39.803295, 32.002239>,  <35.020096, 39.579971, 32.013264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932884, 39.803295, 32.002239>,  <34.787533, 40.175499, 31.983864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932884, 39.803295, 32.002239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397577, 0.199473, 0.895624,
		-0.842550, -0.307185, 0.442432,
		0.363375, -0.930509, 0.045937,
		35.041897, 39.524143, 32.016022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608879, 39.899929, 32.589123>,  <34.787533, 40.175499, 31.983864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608879, 39.899929, 32.589123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946030, 39.730640, 32.456184>,  <35.148319, 39.629066, 32.376423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946030, 39.730640, 32.456184>,  <34.608879, 39.899929, 32.589123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946030, 39.730640, 32.456184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458761, 0.242352, 0.854870,
		-0.281253, -0.873013, 0.398428,
		0.842873, -0.423219, -0.332342,
		35.198891, 39.603676, 32.356483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959885, 39.693520, 33.221321>,  <34.608879, 39.899929, 32.589123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959885, 39.693520, 33.221321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237854, 39.638187, 32.939056>,  <35.404636, 39.604988, 32.769699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237854, 39.638187, 32.939056>,  <34.959885, 39.693520, 33.221321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237854, 39.638187, 32.939056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684873, 0.426415, 0.590863,
		0.219171, -0.893888, 0.391061,
		0.694919, -0.138327, -0.705658,
		35.446331, 39.596691, 32.727360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393360, 39.291504, 33.567871>,  <34.959885, 39.693520, 33.221321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393360, 39.291504, 33.567871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584911, 39.476856, 33.269623>,  <35.699841, 39.588070, 33.090675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584911, 39.476856, 33.269623>,  <35.393360, 39.291504, 33.567871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584911, 39.476856, 33.269623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741746, 0.240722, 0.625992,
		0.469562, -0.852835, -0.228436,
		0.478878, 0.463384, -0.745621,
		35.728577, 39.615871, 33.045937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028915, 39.118805, 33.633656>,  <35.393360, 39.291504, 33.567871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028915, 39.118805, 33.633656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065601, 39.444759, 33.404724>,  <36.087612, 39.640331, 33.267365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065601, 39.444759, 33.404724>,  <36.028915, 39.118805, 33.633656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065601, 39.444759, 33.404724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751363, 0.320544, 0.576806,
		0.653484, -0.482927, -0.582872,
		0.091719, 0.814882, -0.572324,
		36.093117, 39.689224, 33.233028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744312, 39.238014, 33.464817>,  <36.028915, 39.118805, 33.633656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744312, 39.238014, 33.464817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567150, 39.596382, 33.451138>,  <36.460854, 39.811401, 33.442928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567150, 39.596382, 33.451138>,  <36.744312, 39.238014, 33.464817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567150, 39.596382, 33.451138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707845, 0.372831, 0.599960,
		0.550266, 0.241514, -0.799298,
		-0.442902, 0.895917, -0.034201,
		36.434280, 39.865158, 33.440876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624218, 38.479748, 33.424805>,  <36.744312, 39.238014, 33.464817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624218, 38.479748, 33.424805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957211, 38.379063, 33.227371>,  <37.157005, 38.318653, 33.108913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957211, 38.379063, 33.227371>,  <36.624218, 38.479748, 33.424805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957211, 38.379063, 33.227371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489888, 0.081750, -0.867944,
		0.258822, 0.964343, -0.055255,
		0.832479, -0.251712, -0.493579,
		37.206955, 38.303551, 33.079296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507057, 38.773033, 32.742722>,  <36.624218, 38.479748, 33.424805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507057, 38.773033, 32.742722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802307, 38.503170, 32.741711>,  <36.979458, 38.341251, 32.741104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802307, 38.503170, 32.741711>,  <36.507057, 38.773033, 32.742722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802307, 38.503170, 32.741711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109254, -0.115830, -0.987242,
		0.665756, 0.728987, -0.159206,
		0.738128, -0.674656, -0.002530,
		37.023746, 38.300774, 32.740952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970181, 39.036644, 32.259624>,  <36.507057, 38.773033, 32.742722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970181, 39.036644, 32.259624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035606, 38.644360, 32.302448>,  <37.074860, 38.408989, 32.328144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035606, 38.644360, 32.302448>,  <36.970181, 39.036644, 32.259624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035606, 38.644360, 32.302448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163668, -0.133996, -0.977373,
		0.972862, 0.142337, -0.182426,
		0.163561, -0.980706, 0.107063,
		37.084675, 38.350147, 32.334568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401093, 38.848148, 31.677036>,  <36.970181, 39.036644, 32.259624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401093, 38.848148, 31.677036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242744, 38.503437, 31.803917>,  <37.147736, 38.296608, 31.880045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242744, 38.503437, 31.803917>,  <37.401093, 38.848148, 31.677036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242744, 38.503437, 31.803917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159958, -0.275428, -0.947920,
		0.904267, -0.425993, -0.028815,
		-0.395871, -0.861782, 0.317202,
		37.123981, 38.244904, 31.899076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684158, 38.272564, 31.263369>,  <37.401093, 38.848148, 31.677036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684158, 38.272564, 31.263369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329918, 38.152233, 31.404911>,  <37.117374, 38.080036, 31.489836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329918, 38.152233, 31.404911>,  <37.684158, 38.272564, 31.263369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329918, 38.152233, 31.404911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208179, -0.423955, -0.881433,
		0.415177, -0.854263, 0.312829,
		-0.885601, -0.300826, 0.353856,
		37.064236, 38.061985, 31.511068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734577, 37.590008, 31.016886>,  <37.684158, 38.272564, 31.263369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734577, 37.590008, 31.016886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347630, 37.650845, 31.097952>,  <37.115463, 37.687347, 31.146591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347630, 37.650845, 31.097952>,  <37.734577, 37.590008, 31.016886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347630, 37.650845, 31.097952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252969, -0.533790, -0.806892,
		-0.014541, -0.831827, 0.554844,
		-0.967365, 0.152091, 0.202664,
		37.057419, 37.696472, 31.158751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404381, 36.886681, 30.855425>,  <37.734577, 37.590008, 31.016886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404381, 36.886681, 30.855425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113235, 37.159863, 30.830791>,  <36.938549, 37.323772, 30.816011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113235, 37.159863, 30.830791>,  <37.404381, 36.886681, 30.855425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113235, 37.159863, 30.830791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389450, -0.485630, -0.782619,
		-0.564397, -0.545656, 0.619448,
		-0.727863, 0.682952, -0.061582,
		36.894878, 37.364750, 30.812317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877243, 36.536587, 30.576159>,  <37.404381, 36.886681, 30.855425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877243, 36.536587, 30.576159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741650, 36.911480, 30.543434>,  <36.660294, 37.136414, 30.523800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741650, 36.911480, 30.543434>,  <36.877243, 36.536587, 30.576159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741650, 36.911480, 30.543434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396798, -0.221276, -0.890836,
		-0.853021, -0.269512, 0.446899,
		-0.338979, 0.937230, -0.081812,
		36.639957, 37.192650, 30.518890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122318, 36.531200, 30.425985>,  <36.877243, 36.536587, 30.576159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122318, 36.531200, 30.425985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273590, 36.875389, 30.289412>,  <36.364353, 37.081902, 30.207468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273590, 36.875389, 30.289412>,  <36.122318, 36.531200, 30.425985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273590, 36.875389, 30.289412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381864, -0.190984, -0.904271,
		-0.843304, 0.472357, 0.256356,
		0.378178, 0.860468, -0.341434,
		36.387043, 37.133530, 30.186981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647644, 36.665836, 30.082190>,  <36.122318, 36.531200, 30.425985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647644, 36.665836, 30.082190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953667, 36.880375, 29.939636>,  <36.137280, 37.009098, 29.854103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953667, 36.880375, 29.939636>,  <35.647644, 36.665836, 30.082190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953667, 36.880375, 29.939636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183614, -0.348763, -0.919048,
		-0.617226, 0.768565, -0.168344,
		0.765061, 0.536350, -0.356385,
		36.183186, 37.041279, 29.832720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422398, 37.106411, 29.665043>,  <35.647644, 36.665836, 30.082190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422398, 37.106411, 29.665043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796844, 37.098488, 29.524593>,  <36.021515, 37.093735, 29.440325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796844, 37.098488, 29.524593>,  <35.422398, 37.106411, 29.665043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796844, 37.098488, 29.524593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347669, -0.202501, -0.915489,
		-0.052971, 0.979082, -0.196451,
		0.936120, -0.019805, -0.351123,
		36.077679, 37.092545, 29.419256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405140, 37.454124, 29.020243>,  <35.422398, 37.106411, 29.665043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405140, 37.454124, 29.020243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756363, 37.263309, 29.004963>,  <35.967094, 37.148819, 28.995796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756363, 37.263309, 29.004963>,  <35.405140, 37.454124, 29.020243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756363, 37.263309, 29.004963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088903, -0.084166, -0.992478,
		0.470234, 0.874844, -0.116312,
		0.878053, -0.477037, -0.038198,
		36.019779, 37.120197, 28.993504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955681, 37.720974, 28.544031>,  <35.405140, 37.454124, 29.020243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955681, 37.720974, 28.544031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997952, 37.323315, 28.552979>,  <36.023315, 37.084721, 28.558348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997952, 37.323315, 28.552979>,  <35.955681, 37.720974, 28.544031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997952, 37.323315, 28.552979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163907, -0.039600, -0.985681,
		0.980799, 0.100498, -0.167133,
		0.105678, -0.994149, 0.022368,
		36.029655, 37.025070, 28.559689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157883, 37.508442, 27.901255>,  <35.955681, 37.720974, 28.544031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157883, 37.508442, 27.901255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037601, 37.152775, 28.039213>,  <35.965431, 36.939373, 28.121988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037601, 37.152775, 28.039213>,  <36.157883, 37.508442, 27.901255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037601, 37.152775, 28.039213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254843, -0.273570, -0.927477,
		0.919038, -0.366793, -0.144334,
		-0.300707, -0.889169, 0.344896,
		35.947388, 36.886024, 28.142683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547688, 37.012543, 27.502319>,  <36.157883, 37.508442, 27.901255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547688, 37.012543, 27.502319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202187, 36.872673, 27.647461>,  <35.994888, 36.788750, 27.734547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202187, 36.872673, 27.647461>,  <36.547688, 37.012543, 27.502319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202187, 36.872673, 27.647461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277167, -0.271695, -0.921607,
		0.420849, -0.896610, 0.137758,
		-0.863750, -0.349675, 0.362853,
		35.943062, 36.767769, 27.756317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568260, 36.248642, 27.347002>,  <36.547688, 37.012543, 27.502319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568260, 36.248642, 27.347002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189934, 36.356915, 27.418743>,  <35.962940, 36.421879, 27.461788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189934, 36.356915, 27.418743>,  <36.568260, 36.248642, 27.347002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189934, 36.356915, 27.418743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270104, -0.349289, -0.897240,
		-0.180220, -0.897067, 0.403475,
		-0.945814, 0.270681, 0.179353,
		35.906189, 36.438118, 27.472549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219364, 35.683071, 27.310911>,  <36.568260, 36.248642, 27.347002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219364, 35.683071, 27.310911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911079, 35.934357, 27.268297>,  <35.726109, 36.085129, 27.242729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911079, 35.934357, 27.268297>,  <36.219364, 35.683071, 27.310911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911079, 35.934357, 27.268297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313710, -0.519637, -0.794710,
		-0.554610, -0.579069, 0.597567,
		-0.770710, 0.628216, -0.106536,
		35.679867, 36.122822, 27.236338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663563, 35.299561, 27.051380>,  <36.219364, 35.683071, 27.310911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663563, 35.299561, 27.051380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545834, 35.666431, 26.943930>,  <35.475197, 35.886555, 26.879459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545834, 35.666431, 26.943930>,  <35.663563, 35.299561, 27.051380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545834, 35.666431, 26.943930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434366, -0.378743, -0.817239,
		-0.851294, -0.123850, 0.509863,
		-0.294322, 0.917178, -0.268626,
		35.457539, 35.941586, 26.863342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887756, 35.243935, 27.090176>,  <35.663563, 35.299561, 27.051380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887756, 35.243935, 27.090176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015713, 35.527035, 26.838221>,  <35.092487, 35.696896, 26.687048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015713, 35.527035, 26.838221>,  <34.887756, 35.243935, 27.090176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015713, 35.527035, 26.838221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457728, -0.466645, -0.756788,
		-0.829550, 0.530410, 0.174679,
		0.319895, 0.707749, -0.629889,
		35.111683, 35.739361, 26.649254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366238, 35.266079, 26.683691>,  <34.887756, 35.243935, 27.090176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366238, 35.266079, 26.683691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619377, 35.500301, 26.481056>,  <34.771259, 35.640835, 26.359476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619377, 35.500301, 26.481056>,  <34.366238, 35.266079, 26.683691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619377, 35.500301, 26.481056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495476, -0.196502, -0.846103,
		-0.594988, 0.786453, 0.165774,
		0.632845, 0.585558, -0.506585,
		34.809231, 35.675968, 26.329081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929005, 35.763626, 26.341496>,  <34.366238, 35.266079, 26.683691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929005, 35.763626, 26.341496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281242, 35.712772, 26.158894>,  <34.492584, 35.682259, 26.049332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281242, 35.712772, 26.158894>,  <33.929005, 35.763626, 26.341496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281242, 35.712772, 26.158894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471673, -0.142313, -0.870213,
		0.045668, 0.981623, -0.185286,
		0.880590, -0.127136, -0.456506,
		34.545418, 35.674633, 26.021942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924271, 36.232338, 25.701181>,  <33.929005, 35.763626, 26.341496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924271, 36.232338, 25.701181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182262, 35.928520, 25.667473>,  <34.337059, 35.746231, 25.647247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182262, 35.928520, 25.667473>,  <33.924271, 36.232338, 25.701181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182262, 35.928520, 25.667473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361033, -0.205658, -0.909593,
		0.673541, 0.617093, -0.406864,
		0.644979, -0.759540, -0.084271,
		34.375755, 35.700657, 25.642191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302532, 36.321632, 25.083803>,  <33.924271, 36.232338, 25.701181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302532, 36.321632, 25.083803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326164, 35.930054, 25.161963>,  <34.340343, 35.695107, 25.208858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326164, 35.930054, 25.161963>,  <34.302532, 36.321632, 25.083803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326164, 35.930054, 25.161963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361691, -0.203433, -0.909832,
		0.930424, -0.016918, -0.366094,
		0.059083, -0.978943, 0.195398,
		34.343887, 35.636372, 25.220581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475311, 35.983780, 24.453634>,  <34.302532, 36.321632, 25.083803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475311, 35.983780, 24.453634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320976, 35.694195, 24.682371>,  <34.228374, 35.520443, 24.819613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320976, 35.694195, 24.682371>,  <34.475311, 35.983780, 24.453634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320976, 35.694195, 24.682371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574500, -0.296443, -0.762936,
		0.721859, -0.622891, -0.301541,
		-0.385836, -0.723967, 0.571840,
		34.205227, 35.477005, 24.853924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501148, 35.410370, 24.035400>,  <34.475311, 35.983780, 24.453634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501148, 35.410370, 24.035400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236172, 35.310139, 24.317787>,  <34.077187, 35.250000, 24.487219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236172, 35.310139, 24.317787>,  <34.501148, 35.410370, 24.035400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236172, 35.310139, 24.317787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634472, -0.313361, -0.706576,
		0.398275, -0.915978, 0.048597,
		-0.662436, -0.250578, 0.705966,
		34.037441, 35.234966, 24.529577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264977, 34.698006, 24.027235>,  <34.501148, 35.410370, 24.035400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264977, 34.698006, 24.027235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968922, 34.858475, 24.243107>,  <33.791290, 34.954758, 24.372629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968922, 34.858475, 24.243107>,  <34.264977, 34.698006, 24.027235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968922, 34.858475, 24.243107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671973, -0.471647, -0.570966,
		0.025480, -0.785243, 0.618663,
		-0.740138, 0.401177, 0.539680,
		33.746880, 34.978828, 24.405010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734333, 34.136333, 24.226208>,  <34.264977, 34.698006, 24.027235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734333, 34.136333, 24.226208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551601, 34.492153, 24.226730>,  <33.441963, 34.705647, 24.227043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551601, 34.492153, 24.226730>,  <33.734333, 34.136333, 24.226208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551601, 34.492153, 24.226730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717092, -0.367395, -0.592284,
		-0.526388, -0.271510, 0.805728,
		-0.456831, 0.889553, 0.001306,
		33.414551, 34.759018, 24.227121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081516, 33.990261, 24.377792>,  <33.734333, 34.136333, 24.226208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081516, 33.990261, 24.377792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059864, 34.348511, 24.201187>,  <33.046871, 34.563461, 24.095224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059864, 34.348511, 24.201187>,  <33.081516, 33.990261, 24.377792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059864, 34.348511, 24.201187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630147, -0.373636, -0.680670,
		-0.774587, 0.241371, 0.584598,
		-0.054133, 0.895621, -0.441513,
		33.043625, 34.617195, 24.068733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381790, 34.199902, 24.455564>,  <33.081516, 33.990261, 24.377792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381790, 34.199902, 24.455564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542786, 34.395679, 24.146128>,  <32.639381, 34.513145, 23.960466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542786, 34.395679, 24.146128>,  <32.381790, 34.199902, 24.455564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542786, 34.395679, 24.146128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729408, -0.339160, -0.594083,
		-0.553144, 0.803375, 0.220499,
		0.402488, 0.489447, -0.773592,
		32.663532, 34.542515, 23.914049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833080, 34.366180, 24.041653>,  <32.381790, 34.199902, 24.455564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833080, 34.366180, 24.041653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134026, 34.407486, 23.781412>,  <32.314594, 34.432270, 23.625267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134026, 34.407486, 23.781412>,  <31.833080, 34.366180, 24.041653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134026, 34.407486, 23.781412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539890, -0.469230, -0.698815,
		-0.377446, 0.877017, -0.297279,
		0.752365, 0.103267, -0.650602,
		32.359734, 34.438465, 23.586231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534496, 34.309132, 23.401005>,  <31.833080, 34.366180, 24.041653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534496, 34.309132, 23.401005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911135, 34.222656, 23.297733>,  <32.137119, 34.170773, 23.235769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911135, 34.222656, 23.297733>,  <31.534496, 34.309132, 23.401005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911135, 34.222656, 23.297733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336375, -0.568160, -0.751030,
		0.015674, 0.794014, -0.607698,
		0.941598, -0.216186, -0.258181,
		32.193615, 34.157799, 23.220280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503630, 34.148571, 22.677841>,  <31.534496, 34.309132, 23.401005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503630, 34.148571, 22.677841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868017, 34.008480, 22.764996>,  <32.086651, 33.924423, 22.817287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868017, 34.008480, 22.764996>,  <31.503630, 34.148571, 22.677841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868017, 34.008480, 22.764996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095427, -0.692861, -0.714729,
		0.401284, 0.630304, -0.664596,
		0.910969, -0.350230, 0.217886,
		32.141308, 33.903412, 22.830362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806519, 34.075497, 22.071363>,  <31.503630, 34.148571, 22.677841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806519, 34.075497, 22.071363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959400, 33.814125, 22.332729>,  <32.051128, 33.657303, 22.489550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959400, 33.814125, 22.332729>,  <31.806519, 34.075497, 22.071363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959400, 33.814125, 22.332729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144986, -0.740747, -0.655952,
		0.912633, 0.155971, -0.377854,
		0.382204, -0.653427, 0.653417,
		32.074062, 33.618095, 22.528755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257725, 33.699635, 21.689690>,  <31.806519, 34.075497, 22.071363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257725, 33.699635, 21.689690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188480, 33.470787, 22.010366>,  <32.146935, 33.333477, 22.202772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188480, 33.470787, 22.010366>,  <32.257725, 33.699635, 21.689690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188480, 33.470787, 22.010366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101852, -0.799217, -0.592349,
		0.979622, -0.184195, 0.080081,
		-0.173110, -0.572122, 0.801691,
		32.136547, 33.299152, 22.250874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580013, 33.184277, 21.646578>,  <32.257725, 33.699635, 21.689690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580013, 33.184277, 21.646578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328407, 33.026138, 21.914322>,  <32.177444, 32.931255, 22.074968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328407, 33.026138, 21.914322>,  <32.580013, 33.184277, 21.646578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328407, 33.026138, 21.914322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177687, -0.765125, -0.618879,
		0.756815, -0.508221, 0.411027,
		-0.629014, -0.395343, 0.669362,
		32.139702, 32.907536, 22.115131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592178, 32.508526, 21.507725>,  <32.580013, 33.184277, 21.646578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592178, 32.508526, 21.507725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261215, 32.500889, 21.732233>,  <32.062637, 32.496307, 21.866938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261215, 32.500889, 21.732233>,  <32.592178, 32.508526, 21.507725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261215, 32.500889, 21.732233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359501, -0.749805, -0.555474,
		0.431453, -0.661383, 0.613532,
		-0.827410, -0.019096, 0.561273,
		32.012993, 32.495159, 21.900616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553188, 31.836845, 21.781511>,  <32.592178, 32.508526, 21.507725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553188, 31.836845, 21.781511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187046, 31.997696, 21.773382>,  <31.967360, 32.094208, 21.768505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187046, 31.997696, 21.773382>,  <32.553188, 31.836845, 21.781511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187046, 31.997696, 21.773382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356961, -0.833832, -0.421073,
		-0.186269, -0.378179, 0.906799,
		-0.915359, 0.402125, -0.020322,
		31.912437, 32.118332, 21.767286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230057, 31.290958, 22.098389>,  <32.553188, 31.836845, 21.781511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230057, 31.290958, 22.098389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991564, 31.523216, 21.876627>,  <31.848469, 31.662571, 21.743570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991564, 31.523216, 21.876627>,  <32.230057, 31.290958, 22.098389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991564, 31.523216, 21.876627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251843, -0.790994, -0.557587,
		-0.762292, -0.192825, 0.617843,
		-0.596227, 0.580643, -0.554407,
		31.812695, 31.697409, 21.710306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738409, 30.851915, 21.693398>,  <32.230057, 31.290958, 22.098389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738409, 30.851915, 21.693398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829868, 30.477219, 21.799402>,  <31.884745, 30.252399, 21.863005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829868, 30.477219, 21.799402>,  <31.738409, 30.851915, 21.693398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829868, 30.477219, 21.799402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635867, 0.349838, 0.687958,
		-0.737152, 0.011212, 0.675634,
		0.228649, -0.936743, 0.265013,
		31.898462, 30.196196, 21.878906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693933, 30.810406, 22.381443>,  <31.738409, 30.851915, 21.693398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693933, 30.810406, 22.381443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928427, 30.494028, 22.311316>,  <32.069122, 30.304201, 22.269239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928427, 30.494028, 22.311316>,  <31.693933, 30.810406, 22.381443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928427, 30.494028, 22.311316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676015, 0.358319, 0.643903,
		-0.446472, -0.495995, 0.744750,
		0.586231, -0.790946, -0.175321,
		32.104298, 30.256744, 22.258718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822508, 30.585979, 22.991982>,  <31.693933, 30.810406, 22.381443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822508, 30.585979, 22.991982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107754, 30.399986, 22.782122>,  <32.278900, 30.288391, 22.656206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107754, 30.399986, 22.782122>,  <31.822508, 30.585979, 22.991982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107754, 30.399986, 22.782122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685186, 0.304004, 0.661892,
		-0.148272, -0.831489, 0.535389,
		0.713117, -0.464981, -0.524649,
		32.321690, 30.260492, 22.624727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147633, 30.082384, 23.466764>,  <31.822508, 30.585979, 22.991982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147633, 30.082384, 23.466764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417927, 30.190212, 23.192329>,  <32.580105, 30.254910, 23.027668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417927, 30.190212, 23.192329>,  <32.147633, 30.082384, 23.466764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417927, 30.190212, 23.192329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604106, 0.330845, 0.724981,
		0.422420, -0.904364, 0.060716,
		0.675735, 0.269568, -0.686087,
		32.620647, 30.271082, 22.986504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594036, 29.967546, 23.854141>,  <32.147633, 30.082384, 23.466764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594036, 29.967546, 23.854141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756657, 30.184408, 23.559990>,  <32.854229, 30.314526, 23.383499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756657, 30.184408, 23.559990>,  <32.594036, 29.967546, 23.854141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756657, 30.184408, 23.559990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569551, 0.478962, 0.667988,
		0.714372, -0.690408, -0.114062,
		0.406553, 0.542155, -0.735379,
		32.878624, 30.347055, 23.339376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298313, 29.845051, 23.764408>,  <32.594036, 29.967546, 23.854141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298313, 29.845051, 23.764408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261303, 30.227066, 23.651737>,  <33.239098, 30.456276, 23.584135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261303, 30.227066, 23.651737>,  <33.298313, 29.845051, 23.764408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261303, 30.227066, 23.651737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631846, 0.274954, 0.724687,
		0.769551, -0.110922, -0.628878,
		-0.092529, 0.955037, -0.281676,
		33.233543, 30.513577, 23.567234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849415, 30.106869, 24.066093>,  <33.298313, 29.845051, 23.764408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849415, 30.106869, 24.066093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659882, 30.432356, 23.931427>,  <33.546162, 30.627647, 23.850628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659882, 30.432356, 23.931427>,  <33.849415, 30.106869, 24.066093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659882, 30.432356, 23.931427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532826, 0.569307, 0.626088,
		0.701124, 0.117279, -0.703328,
		-0.473837, 0.813717, -0.336666,
		33.517731, 30.676472, 23.830427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342491, 30.604403, 23.773108>,  <33.849415, 30.106869, 24.066093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342491, 30.604403, 23.773108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005802, 30.786518, 23.889183>,  <33.803787, 30.895788, 23.958828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005802, 30.786518, 23.889183>,  <34.342491, 30.604403, 23.773108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005802, 30.786518, 23.889183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523244, 0.555416, 0.646320,
		0.133087, 0.695863, -0.705735,
		-0.841727, 0.455288, 0.290188,
		33.753284, 30.923105, 23.976240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569931, 31.262814, 23.919804>,  <34.342491, 30.604403, 23.773108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569931, 31.262814, 23.919804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205597, 31.268810, 24.084803>,  <33.986996, 31.272408, 24.183802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205597, 31.268810, 24.084803>,  <34.569931, 31.262814, 23.919804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205597, 31.268810, 24.084803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372262, 0.461562, 0.805221,
		-0.178322, 0.886981, -0.425988,
		-0.910836, 0.014990, 0.412497,
		33.932346, 31.273308, 24.208551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477165, 31.983959, 24.049702>,  <34.569931, 31.262814, 23.919804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477165, 31.983959, 24.049702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231049, 31.766754, 24.278278>,  <34.083378, 31.636431, 24.415424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231049, 31.766754, 24.278278>,  <34.477165, 31.983959, 24.049702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231049, 31.766754, 24.278278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351439, 0.459924, 0.815451,
		-0.705622, 0.702570, -0.092152,
		-0.615294, -0.543015, 0.571443,
		34.046459, 31.603849, 24.449711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145428, 32.424938, 24.462030>,  <34.477165, 31.983959, 24.049702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145428, 32.424938, 24.462030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128605, 32.077026, 24.658689>,  <34.118511, 31.868280, 24.776686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128605, 32.077026, 24.658689>,  <34.145428, 32.424938, 24.462030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128605, 32.077026, 24.658689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381638, 0.440786, 0.812441,
		-0.923355, 0.221799, 0.313403,
		-0.042055, -0.869778, 0.491648,
		34.115990, 31.816093, 24.806185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882992, 32.582561, 25.009203>,  <34.145428, 32.424938, 24.462030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882992, 32.582561, 25.009203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065903, 32.250698, 25.137304>,  <34.175648, 32.051579, 25.214165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065903, 32.250698, 25.137304>,  <33.882992, 32.582561, 25.009203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065903, 32.250698, 25.137304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290761, 0.479793, 0.827802,
		-0.840450, -0.285417, 0.460630,
		0.457276, -0.829660, 0.320254,
		34.203087, 32.001801, 25.233381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713898, 32.631691, 25.658649>,  <33.882992, 32.582561, 25.009203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713898, 32.631691, 25.658649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004524, 32.356853, 25.659224>,  <34.178902, 32.191952, 25.659569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004524, 32.356853, 25.659224>,  <33.713898, 32.631691, 25.658649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004524, 32.356853, 25.659224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369404, 0.392389, 0.842361,
		-0.579345, -0.611501, 0.538912,
		0.726568, -0.687093, 0.001438,
		34.222496, 32.150726, 25.659655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690742, 32.346668, 26.341219>,  <33.713898, 32.631691, 25.658649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690742, 32.346668, 26.341219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058655, 32.261307, 26.209488>,  <34.279404, 32.210091, 26.130449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058655, 32.261307, 26.209488>,  <33.690742, 32.346668, 26.341219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058655, 32.261307, 26.209488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387762, 0.365223, 0.846317,
		-0.060331, -0.906129, 0.418677,
		0.919783, -0.213406, -0.329328,
		34.334591, 32.197285, 26.110689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286839, 32.067638, 26.860817>,  <33.690742, 32.346668, 26.341219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286839, 32.067638, 26.860817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515923, 32.224373, 26.572796>,  <34.653374, 32.318413, 26.399984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515923, 32.224373, 26.572796>,  <34.286839, 32.067638, 26.860817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515923, 32.224373, 26.572796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595713, 0.404478, 0.693919,
		0.563145, -0.826356, -0.001772,
		0.572708, 0.391833, -0.720051,
		34.687737, 32.341923, 26.356781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961185, 31.856356, 26.975098>,  <34.286839, 32.067638, 26.860817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961185, 31.856356, 26.975098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015545, 32.185341, 26.754160>,  <35.048161, 32.382732, 26.621597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015545, 32.185341, 26.754160>,  <34.961185, 31.856356, 26.975098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015545, 32.185341, 26.754160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619412, 0.364584, 0.695275,
		0.773215, -0.436615, -0.459898,
		0.135897, 0.822463, -0.552347,
		35.056313, 32.432079, 26.588455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630241, 31.954851, 27.088915>,  <34.961185, 31.856356, 26.975098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630241, 31.954851, 27.088915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481712, 32.298714, 26.948566>,  <35.392597, 32.505032, 26.864357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481712, 32.298714, 26.948566>,  <35.630241, 31.954851, 27.088915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481712, 32.298714, 26.948566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527979, 0.506336, 0.681808,
		0.763781, 0.067914, -0.641893,
		-0.371318, 0.859658, -0.350873,
		35.370316, 32.556610, 26.843306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184456, 32.369152, 27.028267>,  <35.630241, 31.954851, 27.088915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184456, 32.369152, 27.028267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878819, 32.627056, 27.036707>,  <35.695435, 32.781799, 27.041771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878819, 32.627056, 27.036707>,  <36.184456, 32.369152, 27.028267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878819, 32.627056, 27.036707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560207, 0.646964, 0.517306,
		0.319889, 0.407089, -0.855540,
		-0.764093, 0.644761, 0.021098,
		35.649590, 32.820484, 27.043036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335934, 33.156204, 26.657635>,  <36.184456, 32.369152, 27.028267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335934, 33.156204, 26.657635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041492, 33.148296, 26.928268>,  <35.864826, 33.143551, 27.090649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041492, 33.148296, 26.928268>,  <36.335934, 33.156204, 26.657635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041492, 33.148296, 26.928268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505293, 0.649040, 0.568706,
		-0.450370, 0.760497, -0.467772,
		-0.736102, -0.019766, 0.676582,
		35.820663, 33.142368, 27.131243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420826, 33.811535, 27.051888>,  <36.335934, 33.156204, 26.657635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420826, 33.811535, 27.051888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132488, 33.645168, 27.273659>,  <35.959484, 33.545349, 27.406721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132488, 33.645168, 27.273659>,  <36.420826, 33.811535, 27.051888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132488, 33.645168, 27.273659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405308, 0.395934, 0.823991,
		-0.562231, 0.818686, -0.116832,
		-0.720847, -0.415921, 0.554427,
		35.916233, 33.520393, 27.439987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114216, 34.402821, 27.425121>,  <36.420826, 33.811535, 27.051888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114216, 34.402821, 27.425121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054722, 34.052582, 27.608952>,  <36.019028, 33.842438, 27.719250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054722, 34.052582, 27.608952>,  <36.114216, 34.402821, 27.425121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054722, 34.052582, 27.608952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253715, 0.415401, 0.873539,
		-0.955776, 0.246526, 0.160368,
		-0.148733, -0.875595, 0.459578,
		36.010101, 33.789902, 27.746824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793377, 34.641285, 27.929014>,  <36.114216, 34.402821, 27.425121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793377, 34.641285, 27.929014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940151, 34.288700, 28.047924>,  <36.028217, 34.077148, 28.119270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940151, 34.288700, 28.047924>,  <35.793377, 34.641285, 27.929014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940151, 34.288700, 28.047924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171655, 0.378238, 0.909654,
		-0.914270, -0.282759, 0.290099,
		0.366939, -0.881466, 0.297275,
		36.050232, 34.024261, 28.137106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533676, 34.664803, 28.602795>,  <35.793377, 34.641285, 27.929014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533676, 34.664803, 28.602795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797302, 34.364082, 28.594584>,  <35.955479, 34.183651, 28.589657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797302, 34.364082, 28.594584>,  <35.533676, 34.664803, 28.602795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797302, 34.364082, 28.594584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312861, 0.249247, 0.916512,
		-0.683921, -0.610465, 0.399480,
		0.659068, -0.751804, -0.020526,
		35.995022, 34.138542, 28.588427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453369, 34.396317, 29.309155>,  <35.533676, 34.664803, 28.602795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453369, 34.396317, 29.309155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812222, 34.299339, 29.161440>,  <36.027534, 34.241154, 29.072811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812222, 34.299339, 29.161440>,  <35.453369, 34.396317, 29.309155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812222, 34.299339, 29.161440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440248, 0.421552, 0.792765,
		-0.036529, -0.873793, 0.484924,
		0.897133, -0.242445, -0.369286,
		36.081360, 34.226604, 29.050653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883060, 34.129402, 29.918060>,  <35.453369, 34.396317, 29.309155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883060, 34.129402, 29.918060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119160, 34.253490, 29.619968>,  <36.260818, 34.327946, 29.441113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119160, 34.253490, 29.619968>,  <35.883060, 34.129402, 29.918060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119160, 34.253490, 29.619968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660497, 0.345129, 0.666806,
		0.464060, -0.885803, -0.001191,
		0.590248, 0.310224, -0.745230,
		36.296234, 34.346558, 29.396399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567390, 33.848392, 30.111994>,  <35.883060, 34.129402, 29.918060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567390, 33.848392, 30.111994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616043, 34.156582, 29.861687>,  <36.645233, 34.341496, 29.711502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616043, 34.156582, 29.861687>,  <36.567390, 33.848392, 30.111994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616043, 34.156582, 29.861687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626126, 0.429630, 0.650679,
		0.770177, -0.470950, -0.430156,
		0.121629, 0.770470, -0.625765,
		36.652531, 34.387722, 29.673958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184036, 33.781635, 29.960085>,  <36.567390, 33.848392, 30.111994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184036, 33.781635, 29.960085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101955, 34.164742, 29.879517>,  <37.052708, 34.394608, 29.831175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101955, 34.164742, 29.879517>,  <37.184036, 33.781635, 29.960085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101955, 34.164742, 29.879517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891165, 0.267927, 0.366114,
		0.404619, -0.104374, -0.908509,
		-0.205201, 0.957769, -0.201423,
		37.040394, 34.452072, 29.819090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778988, 34.079121, 29.712011>,  <37.184036, 33.781635, 29.960085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778988, 34.079121, 29.712011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559921, 34.378922, 29.860771>,  <37.428482, 34.558800, 29.950027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559921, 34.378922, 29.860771>,  <37.778988, 34.079121, 29.712011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559921, 34.378922, 29.860771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827805, 0.420749, 0.371092,
		0.121656, 0.511097, -0.850870,
		-0.547667, 0.749500, 0.371902,
		37.395622, 34.603771, 29.972342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231167, 34.611164, 29.630548>,  <37.778988, 34.079121, 29.712011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231167, 34.611164, 29.630548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972092, 34.714737, 29.917173>,  <37.816647, 34.776882, 30.089148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972092, 34.714737, 29.917173>,  <38.231167, 34.611164, 29.630548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972092, 34.714737, 29.917173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716339, 0.527324, 0.456933,
		-0.259545, 0.809248, -0.527023,
		-0.647684, 0.258932, 0.716561,
		37.777786, 34.792416, 30.132141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532887, 35.249535, 29.852760>,  <38.231167, 34.611164, 29.630548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532887, 35.249535, 29.852760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270943, 35.160450, 30.141638>,  <38.113777, 35.106998, 30.314964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270943, 35.160450, 30.141638>,  <38.532887, 35.249535, 29.852760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270943, 35.160450, 30.141638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635430, 0.355072, 0.685677,
		-0.409136, 0.907924, -0.091006,
		-0.654856, -0.222707, 0.722194,
		38.074486, 35.093639, 30.358295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447769, 35.740112, 30.279106>,  <38.532887, 35.249535, 29.852760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447769, 35.740112, 30.279106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328732, 35.431767, 30.504393>,  <38.257309, 35.246761, 30.639565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328732, 35.431767, 30.504393>,  <38.447769, 35.740112, 30.279106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328732, 35.431767, 30.504393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665476, 0.255506, 0.701326,
		-0.684530, 0.583517, 0.436952,
		-0.297591, -0.770860, 0.563218,
		38.239452, 35.200508, 30.673359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540455, 35.997017, 30.971823>,  <38.447769, 35.740112, 30.279106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540455, 35.997017, 30.971823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487495, 35.604137, 31.025135>,  <38.455719, 35.368412, 31.057123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487495, 35.604137, 31.025135>,  <38.540455, 35.997017, 30.971823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487495, 35.604137, 31.025135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572695, 0.033945, 0.819065,
		-0.809005, 0.184777, 0.558003,
		-0.132403, -0.982194, 0.133283,
		38.447773, 35.309479, 31.065121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361076, 35.939194, 31.578476>,  <38.540455, 35.997017, 30.971823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361076, 35.939194, 31.578476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497704, 35.571682, 31.499310>,  <38.579681, 35.351173, 31.451809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497704, 35.571682, 31.499310>,  <38.361076, 35.939194, 31.578476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497704, 35.571682, 31.499310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518237, 0.008444, 0.855196,
		-0.784066, -0.394677, 0.479031,
		0.341571, -0.918781, -0.197915,
		38.600174, 35.296047, 31.439936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289421, 35.594162, 32.150742>,  <38.361076, 35.939194, 31.578476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289421, 35.594162, 32.150742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577682, 35.378422, 31.976498>,  <38.750641, 35.248978, 31.871952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577682, 35.378422, 31.976498>,  <38.289421, 35.594162, 32.150742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577682, 35.378422, 31.976498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423842, -0.154485, 0.892464,
		-0.548645, -0.827790, 0.117269,
		0.720656, -0.539350, -0.435610,
		38.793880, 35.216618, 31.845816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526550, 35.051006, 32.641335>,  <38.289421, 35.594162, 32.150742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526550, 35.051006, 32.641335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827549, 35.078205, 32.379303>,  <39.008148, 35.094524, 32.222084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827549, 35.078205, 32.379303>,  <38.526550, 35.051006, 32.641335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827549, 35.078205, 32.379303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657713, -0.129056, 0.742131,
		-0.034079, -0.989303, -0.141837,
		0.752497, 0.067997, -0.655076,
		39.053299, 35.098602, 32.182781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989677, 34.408371, 32.704773>,  <38.526550, 35.051006, 32.641335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989677, 34.408371, 32.704773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197651, 34.710625, 32.545433>,  <39.322437, 34.891975, 32.449829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197651, 34.710625, 32.545433>,  <38.989677, 34.408371, 32.704773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197651, 34.710625, 32.545433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681986, -0.086407, 0.726243,
		0.514354, -0.649269, -0.560258,
		0.519937, 0.755635, -0.398349,
		39.353634, 34.937317, 32.425930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714794, 34.116287, 32.501194>,  <38.989677, 34.408371, 32.704773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714794, 34.116287, 32.501194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783882, 34.509411, 32.527256>,  <39.825333, 34.745285, 32.542892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783882, 34.509411, 32.527256>,  <39.714794, 34.116287, 32.501194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783882, 34.509411, 32.527256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797982, -0.178402, 0.575672,
		0.577403, -0.047433, -0.815080,
		0.172718, 0.982814, 0.065159,
		39.835697, 34.804256, 32.546803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373360, 34.162704, 32.687935>,  <39.714794, 34.116287, 32.501194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373360, 34.162704, 32.687935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271984, 34.547527, 32.728359>,  <40.211159, 34.778419, 32.752613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271984, 34.547527, 32.728359>,  <40.373360, 34.162704, 32.687935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271984, 34.547527, 32.728359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751740, 0.130126, 0.646494,
		0.608814, 0.239820, -0.756196,
		-0.253443, 0.962057, 0.101060,
		40.195950, 34.836143, 32.758678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029728, 34.519375, 32.586185>,  <40.373360, 34.162704, 32.687935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029728, 34.519375, 32.586185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776142, 34.753010, 32.788940>,  <40.623989, 34.893188, 32.910595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776142, 34.753010, 32.788940>,  <41.029728, 34.519375, 32.586185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776142, 34.753010, 32.788940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745487, 0.287161, 0.601488,
		0.205761, 0.759201, -0.617476,
		-0.633965, 0.584083, 0.506888,
		40.585953, 34.928234, 32.941006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326530, 35.187847, 32.580357>,  <41.029728, 34.519375, 32.586185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326530, 35.187847, 32.580357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082607, 35.171894, 32.896976>,  <40.936253, 35.162323, 33.086948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082607, 35.171894, 32.896976>,  <41.326530, 35.187847, 32.580357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082607, 35.171894, 32.896976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677703, 0.491579, 0.546872,
		-0.410921, 0.869919, -0.272737,
		-0.609806, -0.039887, 0.791547,
		40.899666, 35.159927, 33.134441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399799, 35.886864, 32.741138>,  <41.326530, 35.187847, 32.580357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399799, 35.886864, 32.741138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267147, 35.669334, 33.049496>,  <41.187553, 35.538815, 33.234509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267147, 35.669334, 33.049496>,  <41.399799, 35.886864, 32.741138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267147, 35.669334, 33.049496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680593, 0.427949, 0.594687,
		-0.653308, 0.721881, 0.228202,
		-0.331634, -0.543826, 0.770890,
		41.167656, 35.506187, 33.280762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246075, 36.300011, 33.192272>,  <41.399799, 35.886864, 32.741138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246075, 36.300011, 33.192272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321472, 35.964310, 33.396282>,  <41.366711, 35.762890, 33.518688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321472, 35.964310, 33.396282>,  <41.246075, 36.300011, 33.192272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321472, 35.964310, 33.396282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611598, 0.506649, 0.607663,
		-0.768387, 0.197393, 0.608784,
		0.188491, -0.839252, 0.510027,
		41.378021, 35.712536, 33.549290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180992, 36.508942, 33.891724>,  <41.246075, 36.300011, 33.192272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180992, 36.508942, 33.891724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379902, 36.162220, 33.906544>,  <41.499249, 35.954189, 33.915436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379902, 36.162220, 33.906544>,  <41.180992, 36.508942, 33.891724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379902, 36.162220, 33.906544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536357, 0.340712, 0.772163,
		-0.681937, -0.364104, 0.634343,
		0.497276, -0.866801, 0.037055,
		41.529083, 35.902180, 33.917660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128742, 36.369720, 34.608570>,  <41.180992, 36.508942, 33.891724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128742, 36.369720, 34.608570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450008, 36.185333, 34.457611>,  <41.642769, 36.074699, 34.367035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450008, 36.185333, 34.457611>,  <41.128742, 36.369720, 34.608570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450008, 36.185333, 34.457611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583901, 0.483341, 0.652258,
		-0.118257, -0.744237, 0.657364,
		0.803166, -0.460970, -0.377402,
		41.690960, 36.047043, 34.344391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602654, 36.315063, 35.105560>,  <41.128742, 36.369720, 34.608570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602654, 36.315063, 35.105560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846550, 36.245899, 34.796154>,  <41.992886, 36.204403, 34.610512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846550, 36.245899, 34.796154>,  <41.602654, 36.315063, 35.105560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846550, 36.245899, 34.796154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707116, 0.559541, 0.432321,
		0.358061, -0.810566, 0.463439,
		0.609737, -0.172908, -0.773514,
		42.029472, 36.194027, 34.564098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179783, 36.180981, 35.350140>,  <41.602654, 36.315063, 35.105560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179783, 36.180981, 35.350140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265038, 36.281799, 34.972561>,  <42.316189, 36.342293, 34.746014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265038, 36.281799, 34.972561>,  <42.179783, 36.180981, 35.350140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265038, 36.281799, 34.972561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641093, 0.692990, 0.329794,
		0.737273, -0.675452, -0.013885,
		0.213138, 0.252050, -0.943951,
		42.328979, 36.357414, 34.689377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946606, 36.070732, 35.244453>,  <42.179783, 36.180981, 35.350140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946606, 36.070732, 35.244453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802242, 36.352516, 35.000000>,  <42.715622, 36.521587, 34.853329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802242, 36.352516, 35.000000>,  <42.946606, 36.070732, 35.244453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802242, 36.352516, 35.000000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704036, 0.635564, 0.316845,
		0.611616, -0.315904, -0.725348,
		-0.360913, 0.704460, -0.611129,
		42.693970, 36.563854, 34.816662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488071, 36.382690, 34.934776>,  <42.946606, 36.070732, 35.244453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488071, 36.382690, 34.934776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218330, 36.667423, 34.856243>,  <43.056488, 36.838264, 34.809124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218330, 36.667423, 34.856243>,  <43.488071, 36.382690, 34.934776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218330, 36.667423, 34.856243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551250, 0.662210, 0.507545,
		0.491302, 0.234033, -0.838958,
		-0.674348, 0.711833, -0.196335,
		43.016026, 36.880974, 34.797344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764660, 36.926220, 34.503948>,  <43.488071, 36.382690, 34.934776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764660, 36.926220, 34.503948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466282, 37.079033, 34.722168>,  <43.287254, 37.170719, 34.853100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466282, 37.079033, 34.722168>,  <43.764660, 36.926220, 34.503948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466282, 37.079033, 34.722168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592430, 0.754862, 0.281443,
		-0.304295, 0.533140, -0.789409,
		-0.745943, 0.382028, 0.545548,
		43.242500, 37.193642, 34.885834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674141, 37.657219, 34.381733>,  <43.764660, 36.926220, 34.503948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674141, 37.657219, 34.381733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536564, 37.594883, 34.752121>,  <43.454018, 37.557484, 34.974354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536564, 37.594883, 34.752121>,  <43.674141, 37.657219, 34.381733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536564, 37.594883, 34.752121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425126, 0.853429, 0.301541,
		-0.837239, 0.497366, -0.227282,
		-0.343945, -0.155838, 0.925968,
		43.433380, 37.548130, 35.029911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745190, 38.208824, 34.634701>,  <43.674141, 37.657219, 34.381733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745190, 38.208824, 34.634701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525524, 38.070843, 34.939182>,  <43.393726, 37.988052, 35.121872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525524, 38.070843, 34.939182>,  <43.745190, 38.208824, 34.634701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525524, 38.070843, 34.939182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189824, 0.835541, 0.515595,
		-0.813871, 0.427639, -0.393368,
		-0.549163, -0.344957, 0.761199,
		43.360775, 37.967354, 35.167542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078979, 38.497585, 34.794533>,  <43.745190, 38.208824, 34.634701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078979, 38.497585, 34.794533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200394, 38.361797, 35.150650>,  <43.273243, 38.280323, 35.364319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200394, 38.361797, 35.150650>,  <43.078979, 38.497585, 34.794533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200394, 38.361797, 35.150650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114851, 0.940602, 0.319496,
		-0.945872, 0.005272, 0.324497,
		0.303538, -0.339471, 0.890294,
		43.291454, 38.259956, 35.417740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075424, 39.085274, 35.251228>,  <43.078979, 38.497585, 34.794533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075424, 39.085274, 35.251228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240669, 38.803463, 35.482044>,  <43.339817, 38.634377, 35.620533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240669, 38.803463, 35.482044>,  <43.075424, 39.085274, 35.251228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240669, 38.803463, 35.482044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143233, 0.676017, 0.722831,
		-0.899345, -0.215961, 0.380184,
		0.413114, -0.704530, 0.577039,
		43.364605, 38.592106, 35.655155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713150, 39.087101, 35.833820>,  <43.075424, 39.085274, 35.251228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713150, 39.087101, 35.833820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074844, 38.928204, 35.896503>,  <43.291859, 38.832863, 35.934113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074844, 38.928204, 35.896503>,  <42.713150, 39.087101, 35.833820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074844, 38.928204, 35.896503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165694, 0.664589, 0.728606,
		-0.393584, -0.632864, 0.666764,
		0.904233, -0.397246, 0.156709,
		43.346115, 38.809029, 35.943516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704472, 38.846142, 36.527756>,  <42.713150, 39.087101, 35.833820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704472, 38.846142, 36.527756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082428, 38.900105, 36.408432>,  <43.309200, 38.932484, 36.336838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082428, 38.900105, 36.408432>,  <42.704472, 38.846142, 36.527756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082428, 38.900105, 36.408432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156290, 0.614763, 0.773072,
		0.287683, -0.777088, 0.559797,
		0.944888, 0.134909, -0.298308,
		43.365894, 38.940578, 36.318939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128838, 38.757046, 37.175861>,  <42.704472, 38.846142, 36.527756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128838, 38.757046, 37.175861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340485, 38.976292, 36.916756>,  <43.467476, 39.107838, 36.761292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340485, 38.976292, 36.916756>,  <43.128838, 38.757046, 37.175861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340485, 38.976292, 36.916756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218993, 0.649316, 0.728307,
		0.819800, -0.527219, 0.223534,
		0.529122, 0.548113, -0.647766,
		43.499222, 39.140724, 36.722427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749313, 38.869743, 37.453796>,  <43.128838, 38.757046, 37.175861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749313, 38.869743, 37.453796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734180, 39.164253, 37.183548>,  <43.725101, 39.340958, 37.021397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734180, 39.164253, 37.183548>,  <43.749313, 38.869743, 37.453796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734180, 39.164253, 37.183548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230819, 0.664264, 0.710968,
		0.972261, -0.129047, -0.195079,
		-0.037835, 0.736274, -0.675625,
		43.722832, 39.385136, 36.980862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365746, 39.117802, 37.524780>,  <43.749313, 38.869743, 37.453796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365746, 39.117802, 37.524780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124062, 39.393326, 37.364544>,  <43.979050, 39.558640, 37.268402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124062, 39.393326, 37.364544>,  <44.365746, 39.117802, 37.524780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124062, 39.393326, 37.364544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414383, 0.701022, 0.580392,
		0.680602, 0.184681, -0.708995,
		-0.604209, 0.688812, -0.400588,
		43.942799, 39.599968, 37.244370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765011, 39.712334, 37.397839>,  <44.365746, 39.117802, 37.524780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765011, 39.712334, 37.397839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410683, 39.891655, 37.349934>,  <44.198086, 39.999249, 37.321190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410683, 39.891655, 37.349934>,  <44.765011, 39.712334, 37.397839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410683, 39.891655, 37.349934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299430, 0.749407, 0.590535,
		0.354492, 0.487247, -0.798077,
		-0.885820, 0.448307, -0.119762,
		44.144936, 40.026146, 37.314007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845776, 40.340691, 37.108112>,  <44.765011, 39.712334, 37.397839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845776, 40.340691, 37.108112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514038, 40.353069, 37.331264>,  <44.314995, 40.360497, 37.465157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514038, 40.353069, 37.331264>,  <44.845776, 40.340691, 37.108112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514038, 40.353069, 37.331264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392323, 0.743185, 0.541995,
		-0.397833, 0.668369, -0.628499,
		-0.829344, 0.030951, 0.557881,
		44.265236, 40.362354, 37.498631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684738, 41.001621, 37.306244>,  <44.845776, 40.340691, 37.108112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684738, 41.001621, 37.306244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523865, 40.773533, 37.592766>,  <44.427341, 40.636681, 37.764679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523865, 40.773533, 37.592766>,  <44.684738, 41.001621, 37.306244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523865, 40.773533, 37.592766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546800, 0.477912, 0.687466,
		-0.734340, 0.668164, 0.119588,
		-0.402188, -0.570225, 0.716302,
		44.403210, 40.602467, 37.807655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296825, 41.452599, 37.709644>,  <44.684738, 41.001621, 37.306244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296825, 41.452599, 37.709644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450222, 41.139366, 37.905487>,  <44.542259, 40.951427, 38.022991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450222, 41.139366, 37.905487>,  <44.296825, 41.452599, 37.709644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450222, 41.139366, 37.905487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527513, 0.620877, 0.579864,
		-0.758068, 0.035903, 0.651186,
		0.383488, -0.783085, 0.489607,
		44.565269, 40.904442, 38.052368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288616, 41.623806, 38.419857>,  <44.296825, 41.452599, 37.709644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288616, 41.623806, 38.419857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560295, 41.331291, 38.394817>,  <44.723301, 41.155785, 38.379795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560295, 41.331291, 38.394817>,  <44.288616, 41.623806, 38.419857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560295, 41.331291, 38.394817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592950, 0.496446, 0.633997,
		-0.432554, -0.467726, 0.770798,
		0.679196, -0.731283, -0.062598,
		44.764053, 41.111908, 38.376038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700928, 41.289413, 38.347076>,  <44.288616, 41.623806, 38.419857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700928, 41.289413, 38.347076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090721, 41.212559, 38.393486>,  <44.324596, 41.166447, 38.421333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090721, 41.212559, 38.393486>,  <43.700928, 41.289413, 38.347076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090721, 41.212559, 38.393486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185013, -0.394931, 0.899889,
		-0.127080, -0.898395, -0.420402,
		0.974485, -0.192138, 0.116027,
		44.383068, 41.154919, 38.428295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729408, 40.569653, 38.435505>,  <43.700928, 41.289413, 38.347076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729408, 40.569653, 38.435505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027710, 40.766823, 38.614784>,  <44.206692, 40.885124, 38.722351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027710, 40.766823, 38.614784>,  <43.729408, 40.569653, 38.435505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027710, 40.766823, 38.614784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332130, -0.308112, 0.891491,
		0.577533, -0.813691, -0.066060,
		0.745752, 0.492924, 0.448196,
		44.251434, 40.914700, 38.749245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006310, 40.320000, 38.022594>,  <43.729408, 40.569653, 38.435505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006310, 40.320000, 38.022594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374180, 40.315144, 37.865597>,  <43.594902, 40.312229, 37.771400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374180, 40.315144, 37.865597>,  <43.006310, 40.320000, 38.022594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374180, 40.315144, 37.865597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349002, -0.483395, -0.802824,
		-0.179981, 0.875319, -0.448804,
		0.919676, -0.012141, -0.392490,
		43.650082, 40.311501, 37.747849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977604, 40.500114, 37.278053>,  <43.006310, 40.320000, 38.022594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977604, 40.500114, 37.278053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337322, 40.329956, 37.318649>,  <43.553154, 40.227859, 37.343006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337322, 40.329956, 37.318649>,  <42.977604, 40.500114, 37.278053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337322, 40.329956, 37.318649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172305, -0.557938, -0.811798,
		0.401964, 0.712560, -0.575051,
		0.899298, -0.425397, 0.101493,
		43.607113, 40.202335, 37.349098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280617, 40.524837, 36.532318>,  <42.977604, 40.500114, 37.278053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280617, 40.524837, 36.532318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467995, 40.241550, 36.743591>,  <43.580421, 40.071579, 36.870358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467995, 40.241550, 36.743591>,  <43.280617, 40.524837, 36.532318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467995, 40.241550, 36.743591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093611, -0.554687, -0.826776,
		0.878520, 0.436742, -0.193543,
		0.468444, -0.708222, 0.528188,
		43.608528, 40.029083, 36.902046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592674, 40.196537, 35.979839>,  <43.280617, 40.524837, 36.532318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592674, 40.196537, 35.979839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679192, 39.953667, 36.285664>,  <43.731102, 39.807945, 36.469158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679192, 39.953667, 36.285664>,  <43.592674, 40.196537, 35.979839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679192, 39.953667, 36.285664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216118, -0.733895, -0.643965,
		0.952109, 0.304518, -0.027511,
		0.216289, -0.607180, 0.764560,
		43.744080, 39.771511, 36.515030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185440, 39.751659, 35.799797>,  <43.592674, 40.196537, 35.979839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185440, 39.751659, 35.799797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010204, 39.546459, 36.095070>,  <43.905064, 39.423340, 36.272232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010204, 39.546459, 36.095070>,  <44.185440, 39.751659, 35.799797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010204, 39.546459, 36.095070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191205, -0.855559, -0.481102,
		0.878363, -0.069620, 0.472896,
		-0.438085, -0.513002, 0.738180,
		43.878780, 39.392559, 36.316525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642513, 39.123432, 35.994438>,  <44.185440, 39.751659, 35.799797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642513, 39.123432, 35.994438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258682, 39.071995, 36.094578>,  <44.028385, 39.041134, 36.154659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258682, 39.071995, 36.094578>,  <44.642513, 39.123432, 35.994438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258682, 39.071995, 36.094578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019208, -0.857515, -0.514101,
		0.280785, -0.498129, 0.820382,
		-0.959579, -0.128594, 0.250345,
		43.970810, 39.033417, 36.169682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572735, 38.384533, 36.108898>,  <44.642513, 39.123432, 35.994438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572735, 38.384533, 36.108898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192329, 38.502117, 36.070614>,  <43.964085, 38.572670, 36.047646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192329, 38.502117, 36.070614>,  <44.572735, 38.384533, 36.108898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192329, 38.502117, 36.070614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231414, -0.882180, -0.410128,
		-0.204994, -0.367889, 0.906992,
		-0.951012, 0.293965, -0.095707,
		43.907024, 38.590305, 36.041901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787350, 37.878792, 36.650295>,  <44.572735, 38.384533, 36.108898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787350, 37.878792, 36.650295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183422, 37.829033, 36.675777>,  <45.421066, 37.799175, 36.691067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183422, 37.829033, 36.675777>,  <44.787350, 37.878792, 36.650295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183422, 37.829033, 36.675777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045911, 0.720039, 0.692413,
		-0.132009, -0.682692, 0.718683,
		0.990185, -0.124401, 0.063708,
		45.480476, 37.791714, 36.694889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144993, 37.749344, 36.307175>,  <44.787350, 37.878792, 36.650295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144993, 37.749344, 36.307175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904480, 38.007889, 36.119270>,  <43.760174, 38.163017, 36.006527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904480, 38.007889, 36.119270>,  <44.144993, 37.749344, 36.307175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904480, 38.007889, 36.119270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530342, -0.762572, -0.370435,
		-0.597663, 0.026399, 0.801313,
		-0.601279, 0.646365, -0.469761,
		43.724098, 38.201797, 35.978340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427528, 37.549202, 36.496849>,  <44.144993, 37.749344, 36.307175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427528, 37.549202, 36.496849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413998, 37.771091, 36.164310>,  <43.405880, 37.904224, 35.964787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413998, 37.771091, 36.164310>,  <43.427528, 37.549202, 36.496849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413998, 37.771091, 36.164310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559149, -0.699962, -0.444304,
		-0.828377, 0.449817, 0.333851,
		-0.033827, 0.554723, -0.831347,
		43.403851, 37.937508, 35.914906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798222, 37.297123, 36.199444>,  <43.427528, 37.549202, 36.496849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798222, 37.297123, 36.199444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965672, 37.504711, 35.901337>,  <43.066143, 37.629265, 35.722473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965672, 37.504711, 35.901337>,  <42.798222, 37.297123, 36.199444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965672, 37.504711, 35.901337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694513, -0.345810, -0.630926,
		-0.585153, 0.781718, 0.215668,
		0.418626, 0.518973, -0.745265,
		43.091259, 37.660404, 35.677757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218952, 37.410858, 35.794415>,  <42.798222, 37.297123, 36.199444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218952, 37.410858, 35.794415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538902, 37.517296, 35.579231>,  <42.730873, 37.581158, 35.450123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538902, 37.517296, 35.579231>,  <42.218952, 37.410858, 35.794415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538902, 37.517296, 35.579231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372041, -0.483512, -0.792340,
		-0.470941, 0.833914, -0.287752,
		0.799875, 0.266090, -0.537956,
		42.778866, 37.597122, 35.417843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074455, 37.817207, 35.152554>,  <42.218952, 37.410858, 35.794415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074455, 37.817207, 35.152554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416122, 37.623585, 35.076576>,  <42.621124, 37.507412, 35.030991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416122, 37.623585, 35.076576>,  <42.074455, 37.817207, 35.152554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416122, 37.623585, 35.076576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487756, -0.619230, -0.615345,
		0.180244, 0.618256, -0.765031,
		0.854170, -0.484061, -0.189945,
		42.672375, 37.478367, 35.019592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130161, 37.716858, 34.388367>,  <42.074455, 37.817207, 35.152554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130161, 37.716858, 34.388367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396889, 37.462704, 34.544128>,  <42.556927, 37.310211, 34.637585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396889, 37.462704, 34.544128>,  <42.130161, 37.716858, 34.388367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396889, 37.462704, 34.544128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311189, -0.712206, -0.629225,
		0.677137, 0.298400, -0.672638,
		0.666818, -0.635389, 0.389402,
		42.596935, 37.272087, 34.660950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366848, 37.343582, 33.821087>,  <42.130161, 37.716858, 34.388367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366848, 37.343582, 33.821087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477688, 37.112240, 34.127998>,  <42.544193, 36.973434, 34.312145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477688, 37.112240, 34.127998>,  <42.366848, 37.343582, 33.821087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477688, 37.112240, 34.127998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299512, -0.810756, -0.502958,
		0.912967, -0.090441, -0.397884,
		0.277099, -0.578356, 0.767282,
		42.560818, 36.938732, 34.358181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614231, 36.810295, 33.529976>,  <42.366848, 37.343582, 33.821087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614231, 36.810295, 33.529976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527561, 36.686111, 33.900200>,  <42.475559, 36.611599, 34.122334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527561, 36.686111, 33.900200>,  <42.614231, 36.810295, 33.529976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527561, 36.686111, 33.900200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559432, -0.737491, -0.378343,
		0.800054, -0.599767, -0.013884,
		-0.216678, -0.310462, 0.925562,
		42.462559, 36.592972, 34.177868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814613, 36.064827, 33.484516>,  <42.614231, 36.810295, 33.529976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814613, 36.064827, 33.484516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578175, 36.096775, 33.805573>,  <42.436314, 36.115944, 33.998207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578175, 36.096775, 33.805573>,  <42.814613, 36.064827, 33.484516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578175, 36.096775, 33.805573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597096, -0.712345, -0.368838,
		0.542294, -0.697270, 0.468756,
		-0.591095, 0.079874, 0.802638,
		42.400845, 36.120739, 34.046364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701160, 35.337467, 33.679405>,  <42.814613, 36.064827, 33.484516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701160, 35.337467, 33.679405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422615, 35.566620, 33.852322>,  <42.255486, 35.704113, 33.956074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422615, 35.566620, 33.852322>,  <42.701160, 35.337467, 33.679405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422615, 35.566620, 33.852322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710695, -0.634322, -0.304217,
		0.099934, -0.519077, 0.848865,
		-0.696366, 0.572882, 0.432296,
		42.213707, 35.738483, 33.982010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276302, 34.834377, 33.869522>,  <42.701160, 35.337467, 33.679405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276302, 34.834377, 33.869522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044662, 35.160366, 33.878147>,  <41.905678, 35.355957, 33.883324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044662, 35.160366, 33.878147>,  <42.276302, 34.834377, 33.869522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044662, 35.160366, 33.878147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774842, -0.541978, -0.325393,
		-0.253497, -0.205146, 0.945333,
		-0.579103, 0.814970, 0.021566,
		41.870934, 35.404858, 33.884617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594826, 34.547329, 34.058697>,  <42.276302, 34.834377, 33.869522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594826, 34.547329, 34.058697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499012, 34.914879, 33.933289>,  <41.441525, 35.135406, 33.858044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499012, 34.914879, 33.933289>,  <41.594826, 34.547329, 34.058697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499012, 34.914879, 33.933289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889017, -0.337379, -0.309557,
		-0.390219, 0.204577, 0.897707,
		-0.239539, 0.918871, -0.313524,
		41.427151, 35.190540, 33.839233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849266, 34.716206, 34.273621>,  <41.594826, 34.547329, 34.058697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849266, 34.716206, 34.273621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962513, 34.934238, 33.957970>,  <41.030460, 35.065060, 33.768578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962513, 34.934238, 33.957970>,  <40.849266, 34.716206, 34.273621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962513, 34.934238, 33.957970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873858, -0.192471, -0.446461,
		-0.395245, 0.815988, 0.421836,
		0.283115, 0.545086, -0.789130,
		41.047447, 35.097763, 33.721230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308514, 34.741859, 34.858185>,  <40.849266, 34.716206, 34.273621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308514, 34.741859, 34.858185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423832, 34.377815, 34.739132>,  <41.493023, 34.159389, 34.667702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423832, 34.377815, 34.739132>,  <41.308514, 34.741859, 34.858185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423832, 34.377815, 34.739132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593028, -0.074339, 0.801743,
		-0.751800, -0.407642, 0.518290,
		0.288295, -0.910111, -0.297632,
		41.510319, 34.104782, 34.649841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112751, 34.026085, 35.333092>,  <41.308514, 34.741859, 34.858185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112751, 34.026085, 35.333092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458328, 34.066605, 35.135773>,  <41.665676, 34.090916, 35.017380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458328, 34.066605, 35.135773>,  <41.112751, 34.026085, 35.333092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458328, 34.066605, 35.135773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502719, -0.231120, 0.832981,
		-0.029631, -0.967637, -0.250600,
		0.863942, 0.101299, -0.493298,
		41.717510, 34.096992, 34.987782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518421, 33.397144, 35.269653>,  <41.112751, 34.026085, 35.333092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518421, 33.397144, 35.269653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757572, 33.717659, 35.278423>,  <41.901062, 33.909969, 35.283688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757572, 33.717659, 35.278423>,  <41.518421, 33.397144, 35.269653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757572, 33.717659, 35.278423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433067, -0.345906, 0.832347,
		0.674536, -0.488143, -0.553821,
		0.597874, 0.801290, 0.021928,
		41.936935, 33.958046, 35.285000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300446, 33.024338, 35.835110>,  <41.518421, 33.397144, 35.269653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300446, 33.024338, 35.835110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665936, 33.087925, 35.685532>,  <41.885231, 33.126076, 35.595783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665936, 33.087925, 35.685532>,  <41.300446, 33.024338, 35.835110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665936, 33.087925, 35.685532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288834, -0.901402, 0.322566,
		-0.285800, -0.402745, -0.869549,
		0.913725, 0.158966, -0.373948,
		41.940052, 33.135616, 35.573349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554905, 32.484585, 35.504791>,  <41.300446, 33.024338, 35.835110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554905, 32.484585, 35.504791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878387, 32.677876, 35.638947>,  <42.072475, 32.793850, 35.719440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878387, 32.677876, 35.638947>,  <41.554905, 32.484585, 35.504791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878387, 32.677876, 35.638947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407286, -0.871407, 0.273436,
		0.424393, -0.084530, -0.901524,
		0.808708, 0.483223, 0.335391,
		42.120998, 32.822842, 35.739563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939781, 32.073845, 35.737526>,  <41.554905, 32.484585, 35.504791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939781, 32.073845, 35.737526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244522, 32.322090, 35.811726>,  <42.427368, 32.471039, 35.856247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244522, 32.322090, 35.811726>,  <41.939781, 32.073845, 35.737526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244522, 32.322090, 35.811726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595490, -0.783748, 0.176440,
		0.254889, -0.023958, -0.966673,
		0.761855, 0.620617, 0.185502,
		42.473080, 32.508274, 35.867374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356586, 32.456024, 35.255081>,  <41.939781, 32.073845, 35.737526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356586, 32.456024, 35.255081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275429, 32.564598, 34.878750>,  <42.226734, 32.629742, 34.652950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275429, 32.564598, 34.878750>,  <42.356586, 32.456024, 35.255081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275429, 32.564598, 34.878750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712181, 0.700321, 0.048459,
		0.672035, -0.660207, -0.335404,
		-0.202897, 0.271434, -0.940827,
		42.214561, 32.646027, 34.596500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923290, 32.418205, 34.802380>,  <42.356586, 32.456024, 35.255081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923290, 32.418205, 34.802380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741928, 32.724957, 34.620689>,  <42.633110, 32.909008, 34.511673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741928, 32.724957, 34.620689>,  <42.923290, 32.418205, 34.802380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741928, 32.724957, 34.620689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886776, 0.439441, -0.143249,
		0.089753, -0.467749, -0.879293,
		-0.453402, 0.766878, -0.454229,
		42.605907, 32.955021, 34.484421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258541, 32.563843, 34.156097>,  <42.923290, 32.418205, 34.802380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258541, 32.563843, 34.156097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119099, 32.912422, 34.294117>,  <43.035435, 33.121571, 34.376930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119099, 32.912422, 34.294117>,  <43.258541, 32.563843, 34.156097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119099, 32.912422, 34.294117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931112, 0.364122, 0.021099,
		-0.107253, 0.328633, -0.938348,
		-0.348607, 0.871444, 0.345048,
		43.014515, 33.173855, 34.397633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619972, 33.218250, 33.859966>,  <43.258541, 32.563843, 34.156097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619972, 33.218250, 33.859966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478825, 33.314262, 34.221710>,  <43.394135, 33.371868, 34.438755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478825, 33.314262, 34.221710>,  <43.619972, 33.218250, 33.859966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478825, 33.314262, 34.221710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864950, 0.452305, 0.217446,
		-0.356853, 0.858957, -0.367218,
		-0.352871, 0.240029, 0.904361,
		43.372963, 33.386272, 34.493019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057625, 33.073387, 34.502651>,  <43.619972, 33.218250, 33.859966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057625, 33.073387, 34.502651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334862, 33.254356, 34.278175>,  <44.501205, 33.362938, 34.143490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334862, 33.254356, 34.278175>,  <44.057625, 33.073387, 34.502651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334862, 33.254356, 34.278175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690636, -0.193740, 0.696768,
		0.206508, -0.870504, -0.446740,
		0.693092, 0.452423, -0.561193,
		44.542789, 33.390083, 34.109818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743130, 32.670078, 34.301498>,  <44.057625, 33.073387, 34.502651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743130, 32.670078, 34.301498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771843, 33.067333, 34.338428>,  <44.789070, 33.305687, 34.360584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771843, 33.067333, 34.338428>,  <44.743130, 32.670078, 34.301498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771843, 33.067333, 34.338428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786526, -0.113282, 0.607078,
		0.613371, 0.029038, -0.789260,
		0.071781, 0.993138, 0.092324,
		44.793377, 33.365276, 34.366127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454536, 32.842594, 34.236263>,  <44.743130, 32.670078, 34.301498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454536, 32.842594, 34.236263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283718, 33.143517, 34.436928>,  <45.181229, 33.324070, 34.557327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283718, 33.143517, 34.436928>,  <45.454536, 32.842594, 34.236263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283718, 33.143517, 34.436928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862149, 0.171487, 0.476750,
		0.272635, 0.636102, -0.721834,
		-0.427047, 0.752308, 0.501661,
		45.155605, 33.369209, 34.587425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887512, 33.485676, 34.208553>,  <45.454536, 32.842594, 34.236263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887512, 33.485676, 34.208553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683815, 33.470921, 34.552486>,  <45.561596, 33.462067, 34.758846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683815, 33.470921, 34.552486>,  <45.887512, 33.485676, 34.208553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683815, 33.470921, 34.552486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860536, -0.036212, 0.508101,
		0.012391, 0.998663, 0.050188,
		-0.509240, -0.036893, 0.859834,
		45.531044, 33.459854, 34.810436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234245, 33.883289, 34.623920>,  <45.887512, 33.485676, 34.208553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.234245, 33.883289, 34.623920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.018856, 33.624714, 34.840130>,  <45.889622, 33.469570, 34.969856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.018856, 33.624714, 34.840130>,  <46.234245, 33.883289, 34.623920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.018856, 33.624714, 34.840130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737054, -0.050422, 0.673950,
		-0.408412, 0.761299, 0.503611,
		-0.538471, -0.646438, 0.540525,
		45.857315, 33.430782, 35.002289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764381, 34.439365, 34.207458>,  <46.234245, 33.883289, 34.623920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764381, 34.439365, 34.207458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759132, 34.747223, 34.462795>,  <45.755981, 34.931938, 34.615997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759132, 34.747223, 34.462795>,  <45.764381, 34.439365, 34.207458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759132, 34.747223, 34.462795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637884, -0.498064, 0.587397,
		0.770021, -0.399477, 0.497480,
		-0.013125, 0.769642, 0.638340,
		45.755196, 34.978115, 34.654297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926666, 34.410206, 34.994431>,  <45.764381, 34.439365, 34.207458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926666, 34.410206, 34.994431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639675, 34.686150, 34.955822>,  <45.467480, 34.851715, 34.932655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639675, 34.686150, 34.955822>,  <45.926666, 34.410206, 34.994431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639675, 34.686150, 34.955822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614351, -0.561367, 0.554472,
		0.328324, 0.457121, 0.826586,
		-0.717479, 0.689861, -0.096523,
		45.424431, 34.893108, 34.926865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.444660, 34.143044, 35.298088>,  <45.926666, 34.410206, 34.994431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.444660, 34.143044, 35.298088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577835, 34.446571, 35.521996>,  <46.657738, 34.628689, 35.656342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577835, 34.446571, 35.521996>,  <46.444660, 34.143044, 35.298088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577835, 34.446571, 35.521996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815987, 0.065660, -0.574329,
		-0.472568, 0.647980, -0.597328,
		0.332933, 0.758822, 0.559772,
		46.677715, 34.674217, 35.689926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.694782, 34.695091, 34.850525>,  <46.444660, 34.143044, 35.298088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.694782, 34.695091, 34.850525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892170, 34.679955, 35.198101>,  <47.010605, 34.670872, 35.406647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892170, 34.679955, 35.198101>,  <46.694782, 34.695091, 34.850525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892170, 34.679955, 35.198101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864428, -0.089132, -0.494792,
		0.096176, 0.995300, -0.011269,
		0.493472, -0.037846, 0.868938,
		47.040211, 34.668602, 35.458782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.200401, 35.148407, 34.800987>,  <46.694782, 34.695091, 34.850525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.200401, 35.148407, 34.800987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308449, 34.872051, 35.069229>,  <47.373276, 34.706238, 35.230175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308449, 34.872051, 35.069229>,  <47.200401, 35.148407, 34.800987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.308449, 34.872051, 35.069229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859714, -0.140524, -0.491065,
		0.433507, 0.709174, 0.556008,
		0.270118, -0.690887, 0.670605,
		47.389484, 34.664783, 35.270412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.932865, 35.256802, 35.119434>,  <47.200401, 35.148407, 34.800987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.932865, 35.256802, 35.119434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.882183, 34.860153, 35.109371>,  <47.851772, 34.622166, 35.103333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.882183, 34.860153, 35.109371>,  <47.932865, 35.256802, 35.119434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.882183, 34.860153, 35.109371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963423, -0.116987, -0.241100,
		0.236136, -0.054791, 0.970174,
		-0.126708, -0.991621, -0.025162,
		47.844170, 34.562668, 35.101822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.956688, 32.274403, 29.775970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.628681, 32.495037, 29.714880>,  <32.431877, 32.627419, 29.678226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.628681, 32.495037, 29.714880>,  <32.956688, 32.274403, 29.775970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628681, 32.495037, 29.714880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326147, 0.669625, 0.667256,
		0.470314, 0.497353, -0.729003,
		-0.820020, 0.551582, -0.152724,
		32.382675, 32.660511, 29.669064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249184, 32.914753, 29.697149>,  <32.956688, 32.274403, 29.775970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249184, 32.914753, 29.697149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.871311, 32.982487, 29.809515>,  <32.644588, 33.023125, 29.876934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.871311, 32.982487, 29.809515>,  <33.249184, 32.914753, 29.697149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871311, 32.982487, 29.809515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288439, 0.836637, 0.465663,
		-0.156171, 0.520927, -0.839193,
		-0.944676, 0.169333, 0.280914,
		32.587910, 33.033287, 29.893789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031048, 33.589756, 29.492590>,  <33.249184, 32.914753, 29.697149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031048, 33.589756, 29.492590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.793877, 33.502850, 29.802746>,  <32.651573, 33.450706, 29.988840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.793877, 33.502850, 29.802746>,  <33.031048, 33.589756, 29.492590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793877, 33.502850, 29.802746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263745, 0.857402, 0.441929,
		-0.760837, 0.466538, -0.451075,
		-0.592929, -0.217267, 0.775391,
		32.615997, 33.437668, 30.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654079, 34.211403, 29.644558>,  <33.031048, 33.589756, 29.492590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654079, 34.211403, 29.644558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.603931, 34.015984, 29.989950>,  <32.573841, 33.898731, 30.197186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.603931, 34.015984, 29.989950>,  <32.654079, 34.211403, 29.644558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603931, 34.015984, 29.989950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199075, 0.840259, 0.504316,
		-0.971932, 0.235123, -0.008085,
		-0.125370, -0.488551, 0.863482,
		32.566322, 33.869419, 30.248995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296951, 34.645531, 30.104881>,  <32.654079, 34.211403, 29.644558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296951, 34.645531, 30.104881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.471500, 34.377724, 30.345322>,  <32.576229, 34.217037, 30.489586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.471500, 34.377724, 30.345322>,  <32.296951, 34.645531, 30.104881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471500, 34.377724, 30.345322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473995, 0.738902, 0.478907,
		-0.764793, 0.075937, 0.639786,
		0.436372, -0.669520, 0.601101,
		32.602413, 34.176868, 30.525652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119949, 34.736050, 30.916605>,  <32.296951, 34.645531, 30.104881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119949, 34.736050, 30.916605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.464298, 34.533352, 30.898212>,  <32.670906, 34.411736, 30.887177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.464298, 34.533352, 30.898212>,  <32.119949, 34.736050, 30.916605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464298, 34.533352, 30.898212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426508, 0.669371, 0.608304,
		-0.277472, -0.543284, 0.792371,
		0.860872, -0.506740, -0.045983,
		32.722561, 34.381329, 30.884417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259480, 34.849258, 31.569126>,  <32.119949, 34.736050, 30.916605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259480, 34.849258, 31.569126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.576958, 34.670677, 31.403851>,  <32.767445, 34.563530, 31.304686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.576958, 34.670677, 31.403851>,  <32.259480, 34.849258, 31.569126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576958, 34.670677, 31.403851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596889, 0.440572, 0.670536,
		-0.117323, -0.778831, 0.616164,
		0.793699, -0.446451, -0.413187,
		32.815067, 34.536743, 31.279894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560417, 34.423897, 32.122219>,  <32.259480, 34.849258, 31.569126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560417, 34.423897, 32.122219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.858913, 34.499580, 31.866930>,  <33.038010, 34.544991, 31.713757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.858913, 34.499580, 31.866930>,  <32.560417, 34.423897, 32.122219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858913, 34.499580, 31.866930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587014, 0.265067, 0.764953,
		0.313912, -0.945482, 0.086731,
		0.746240, 0.189216, -0.638220,
		33.082787, 34.556343, 31.675465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161663, 34.082634, 32.367733>,  <32.560417, 34.423897, 32.122219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161663, 34.082634, 32.367733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.295269, 34.368721, 32.122162>,  <33.375431, 34.540371, 31.974821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.295269, 34.368721, 32.122162>,  <33.161663, 34.082634, 32.367733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295269, 34.368721, 32.122162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640452, 0.305668, 0.704548,
		0.691561, -0.628517, -0.355964,
		0.334014, 0.715215, -0.613923,
		33.395473, 34.583286, 31.937984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898029, 34.134483, 32.484699>,  <33.161663, 34.082634, 32.367733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898029, 34.134483, 32.484699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.825577, 34.472496, 32.283459>,  <33.782104, 34.675304, 32.162716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.825577, 34.472496, 32.283459>,  <33.898029, 34.134483, 32.484699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825577, 34.472496, 32.283459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816486, 0.414374, 0.402050,
		0.548218, -0.337954, -0.765013,
		-0.181127, 0.845034, -0.503101,
		33.771240, 34.726006, 32.132526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592888, 34.284084, 32.211346>,  <33.898029, 34.134483, 32.484699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592888, 34.284084, 32.211346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389492, 34.628410, 32.203056>,  <34.267456, 34.835007, 32.198082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389492, 34.628410, 32.203056>,  <34.592888, 34.284084, 32.211346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389492, 34.628410, 32.203056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778757, 0.470021, 0.415472,
		0.367388, 0.195122, -0.909370,
		-0.508491, 0.860818, -0.020728,
		34.236946, 34.886654, 32.196838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061840, 34.695541, 31.830923>,  <34.592888, 34.284084, 32.211346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061840, 34.695541, 31.830923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834061, 34.939907, 32.050930>,  <34.697392, 35.086525, 32.182934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834061, 34.939907, 32.050930>,  <35.061840, 34.695541, 31.830923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834061, 34.939907, 32.050930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820482, 0.381393, 0.425851,
		0.050385, 0.693778, -0.718425,
		-0.569448, 0.610911, 0.550015,
		34.663227, 35.123180, 32.215935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321941, 35.338020, 31.840574>,  <35.061840, 34.695541, 31.830923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321941, 35.338020, 31.840574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077557, 35.370808, 32.155537>,  <34.930927, 35.390480, 32.344513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077557, 35.370808, 32.155537>,  <35.321941, 35.338020, 31.840574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077557, 35.370808, 32.155537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726579, 0.452991, 0.516606,
		-0.314342, 0.887739, -0.336317,
		-0.610960, 0.081970, 0.787406,
		34.894268, 35.395397, 32.391758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484726, 36.016144, 32.074139>,  <35.321941, 35.338020, 31.840574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484726, 36.016144, 32.074139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291607, 35.856255, 32.385811>,  <35.175735, 35.760319, 32.572815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291607, 35.856255, 32.385811>,  <35.484726, 36.016144, 32.074139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291607, 35.856255, 32.385811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681626, 0.387086, 0.620928,
		-0.549811, 0.830894, 0.085578,
		-0.482799, -0.399725, 0.779182,
		35.146767, 35.736336, 32.619564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340221, 36.584351, 32.571774>,  <35.484726, 36.016144, 32.074139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340221, 36.584351, 32.571774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329609, 36.237732, 32.771133>,  <35.323242, 36.029762, 32.890747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329609, 36.237732, 32.771133>,  <35.340221, 36.584351, 32.571774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329609, 36.237732, 32.771133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605737, 0.382678, 0.697596,
		-0.795222, 0.320408, 0.514743,
		-0.026534, -0.866543, 0.498397,
		35.321648, 35.977768, 32.920654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133007, 36.731201, 33.336330>,  <35.340221, 36.584351, 32.571774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133007, 36.731201, 33.336330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.360062, 36.405464, 33.287952>,  <35.496296, 36.210022, 33.258926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.360062, 36.405464, 33.287952>,  <35.133007, 36.731201, 33.336330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360062, 36.405464, 33.287952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660609, 0.362874, 0.657205,
		-0.491304, -0.452952, 0.743946,
		0.567641, -0.814345, -0.120942,
		35.530354, 36.161160, 33.251671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352592, 36.678978, 34.030201>,  <35.133007, 36.731201, 33.336330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352592, 36.678978, 34.030201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.604038, 36.421898, 33.855030>,  <35.754906, 36.267651, 33.749928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.604038, 36.421898, 33.855030>,  <35.352592, 36.678978, 34.030201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604038, 36.421898, 33.855030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725809, 0.282536, 0.627196,
		-0.279372, -0.712113, 0.644085,
		0.628612, -0.642704, -0.437926,
		35.792622, 36.229088, 33.723652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623390, 36.322800, 34.603237>,  <35.352592, 36.678978, 34.030201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623390, 36.322800, 34.603237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875336, 36.269180, 34.297215>,  <36.026501, 36.237011, 34.113602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875336, 36.269180, 34.297215>,  <35.623390, 36.322800, 34.603237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875336, 36.269180, 34.297215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773999, 0.190523, 0.603843,
		0.064819, -0.972488, 0.223753,
		0.629861, -0.134044, -0.765054,
		36.064293, 36.228966, 34.067699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111420, 36.050999, 34.931099>,  <35.623390, 36.322800, 34.603237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111420, 36.050999, 34.931099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264931, 36.182018, 34.585747>,  <36.357037, 36.260632, 34.378536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264931, 36.182018, 34.585747>,  <36.111420, 36.050999, 34.931099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264931, 36.182018, 34.585747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827660, 0.292616, 0.478910,
		0.409505, -0.898381, -0.158799,
		0.383777, 0.327548, -0.863382,
		36.380062, 36.280281, 34.326733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795433, 35.751991, 34.858425>,  <36.111420, 36.050999, 34.931099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795433, 35.751991, 34.858425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779278, 36.094196, 34.651943>,  <36.769585, 36.299519, 34.528053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779278, 36.094196, 34.651943>,  <36.795433, 35.751991, 34.858425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779278, 36.094196, 34.651943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875901, 0.278910, 0.393710,
		0.480798, -0.436243, -0.760608,
		-0.040388, 0.855512, -0.516205,
		36.767162, 36.350849, 34.497082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492275, 35.883026, 34.811409>,  <36.795433, 35.751991, 34.858425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492275, 35.883026, 34.811409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295673, 36.217777, 34.715027>,  <37.177711, 36.418629, 34.657200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295673, 36.217777, 34.715027>,  <37.492275, 35.883026, 34.811409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295673, 36.217777, 34.715027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722944, 0.546350, 0.422911,
		0.485570, 0.033665, -0.873549,
		-0.491501, 0.836880, -0.240953,
		37.148224, 36.468842, 34.642742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996822, 36.076584, 34.426430>,  <37.492275, 35.883026, 34.811409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996822, 36.076584, 34.426430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737572, 36.332241, 34.592041>,  <37.582020, 36.485634, 34.691410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737572, 36.332241, 34.592041>,  <37.996822, 36.076584, 34.426430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737572, 36.332241, 34.592041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731187, 0.370355, 0.572890,
		0.212819, 0.674043, -0.707372,
		-0.648131, 0.639143, 0.414033,
		37.543133, 36.523983, 34.716251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573711, 35.669163, 34.710621>,  <37.996822, 36.076584, 34.426430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573711, 35.669163, 34.710621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798946, 35.342026, 34.758068>,  <38.934090, 35.145744, 34.786537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798946, 35.342026, 34.758068>,  <38.573711, 35.669163, 34.710621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798946, 35.342026, 34.758068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671920, -0.536653, -0.510418,
		0.481096, 0.207710, -0.851706,
		0.563089, -0.817839, 0.118617,
		38.967873, 35.096676, 34.793652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706749, 35.387360, 34.096657>,  <38.573711, 35.669163, 34.710621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706749, 35.387360, 34.096657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718098, 35.090740, 34.364777>,  <38.724907, 34.912769, 34.525650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718098, 35.090740, 34.364777>,  <38.706749, 35.387360, 34.096657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718098, 35.090740, 34.364777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493201, -0.593648, -0.635873,
		0.869452, -0.312553, -0.382574,
		0.028371, -0.741547, 0.670301,
		38.726608, 34.868275, 34.565868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093445, 34.895206, 33.862648>,  <38.706749, 35.387360, 34.096657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093445, 34.895206, 33.862648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.839901, 34.727566, 34.122673>,  <38.687775, 34.626984, 34.278687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.839901, 34.727566, 34.122673>,  <39.093445, 34.895206, 33.862648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839901, 34.727566, 34.122673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269885, -0.667800, -0.693689,
		0.724836, -0.615142, 0.310181,
		-0.633857, -0.419098, 0.650064,
		38.649742, 34.601837, 34.317692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143452, 34.100983, 33.735115>,  <39.093445, 34.895206, 33.862648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143452, 34.100983, 33.735115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814835, 34.155426, 33.956577>,  <38.617664, 34.188091, 34.089455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814835, 34.155426, 33.956577>,  <39.143452, 34.100983, 33.735115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814835, 34.155426, 33.956577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518225, -0.583136, -0.625616,
		0.237707, -0.800892, 0.549607,
		-0.821546, 0.136107, 0.553657,
		38.568371, 34.196259, 34.122673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737473, 33.529118, 33.605762>,  <39.143452, 34.100983, 33.735115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737473, 33.529118, 33.605762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455734, 33.764713, 33.764252>,  <38.286690, 33.906071, 33.859344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455734, 33.764713, 33.764252>,  <38.737473, 33.529118, 33.605762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455734, 33.764713, 33.764252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694824, -0.457776, -0.554672,
		-0.145315, -0.665984, 0.731676,
		-0.704346, 0.588988, 0.396220,
		38.244431, 33.941410, 33.883118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153648, 33.005783, 33.764313>,  <38.737473, 33.529118, 33.605762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153648, 33.005783, 33.764313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969322, 33.360569, 33.776569>,  <37.858727, 33.573441, 33.783924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969322, 33.360569, 33.776569>,  <38.153648, 33.005783, 33.764313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969322, 33.360569, 33.776569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832665, -0.420148, -0.360756,
		-0.307105, -0.191755, 0.932157,
		-0.460820, 0.886964, 0.030639,
		37.831078, 33.626659, 33.785759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432682, 32.885765, 33.993259>,  <38.153648, 33.005783, 33.764313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432682, 32.885765, 33.993259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443130, 33.234676, 33.797932>,  <37.449402, 33.444023, 33.680737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443130, 33.234676, 33.797932>,  <37.432682, 32.885765, 33.993259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443130, 33.234676, 33.797932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745257, -0.308577, -0.591077,
		-0.666265, 0.379364, 0.642008,
		0.026125, 0.872275, -0.488318,
		37.450970, 33.496361, 33.651436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717083, 33.006310, 33.764503>,  <37.432682, 32.885765, 33.993259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717083, 33.006310, 33.764503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970245, 33.216469, 33.537037>,  <37.122143, 33.342564, 33.400555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970245, 33.216469, 33.537037>,  <36.717083, 33.006310, 33.764503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970245, 33.216469, 33.537037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581029, -0.163122, -0.797369,
		-0.511701, 0.835072, 0.202032,
		0.632904, 0.525401, -0.568671,
		37.160118, 33.374088, 33.366436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285549, 33.427937, 33.433872>,  <36.717083, 33.006310, 33.764503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285549, 33.427937, 33.433872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618015, 33.384338, 33.215778>,  <36.817493, 33.358177, 33.084923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618015, 33.384338, 33.215778>,  <36.285549, 33.427937, 33.433872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618015, 33.384338, 33.215778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554628, -0.093116, -0.826872,
		0.039358, 0.989671, -0.137849,
		0.831167, -0.108999, -0.545235,
		36.867367, 33.351639, 33.052208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038059, 33.439167, 32.804874>,  <36.285549, 33.427937, 33.433872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038059, 33.439167, 32.804874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413525, 33.340412, 32.708580>,  <36.638805, 33.281158, 32.650803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413525, 33.340412, 32.708580>,  <36.038059, 33.439167, 32.804874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413525, 33.340412, 32.708580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312535, -0.314138, -0.896459,
		0.145703, 0.916713, -0.372032,
		0.938665, -0.246890, -0.240734,
		36.695126, 33.266346, 32.636360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143826, 33.821415, 32.223770>,  <36.038059, 33.439167, 32.804874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143826, 33.821415, 32.223770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393452, 33.508945, 32.230827>,  <36.543228, 33.321465, 32.235062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393452, 33.508945, 32.230827>,  <36.143826, 33.821415, 32.223770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393452, 33.508945, 32.230827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420841, -0.355053, -0.834764,
		0.658362, 0.513518, -0.550325,
		0.624061, -0.781176, 0.017644,
		36.580669, 33.274593, 32.236122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442314, 33.718269, 31.572887>,  <36.143826, 33.821415, 32.223770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442314, 33.718269, 31.572887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496346, 33.366791, 31.756037>,  <36.528763, 33.155903, 31.865927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496346, 33.366791, 31.756037>,  <36.442314, 33.718269, 31.572887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496346, 33.366791, 31.756037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256837, -0.477364, -0.840332,
		0.956969, -0.004090, -0.290162,
		0.135076, -0.878696, 0.457873,
		36.536869, 33.103184, 31.893398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700600, 33.314800, 31.027464>,  <36.442314, 33.718269, 31.572887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700600, 33.314800, 31.027464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589054, 33.034134, 31.289728>,  <36.522125, 32.865734, 31.447086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589054, 33.034134, 31.289728>,  <36.700600, 33.314800, 31.027464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589054, 33.034134, 31.289728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442263, -0.512199, -0.736244,
		0.852430, -0.495289, -0.167487,
		-0.278867, -0.701670, 0.655662,
		36.505394, 32.823631, 31.486427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900429, 32.627193, 30.767385>,  <36.700600, 33.314800, 31.027464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900429, 32.627193, 30.767385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584496, 32.583797, 31.008846>,  <36.394936, 32.557758, 31.153723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584496, 32.583797, 31.008846>,  <36.900429, 32.627193, 30.767385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584496, 32.583797, 31.008846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448033, -0.570086, -0.688672,
		0.418848, -0.814391, 0.401665,
		-0.789831, -0.108490, 0.603653,
		36.347546, 32.551250, 31.189941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755898, 31.967106, 30.657434>,  <36.900429, 32.627193, 30.767385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755898, 31.967106, 30.657434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.422588, 32.087872, 30.842691>,  <36.222603, 32.160332, 30.953846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.422588, 32.087872, 30.842691>,  <36.755898, 31.967106, 30.657434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422588, 32.087872, 30.842691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542434, -0.608382, -0.579341,
		0.106858, -0.733975, 0.670718,
		-0.833275, 0.301913, 0.463143,
		36.172607, 32.178444, 30.981634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287109, 31.417368, 30.658754>,  <36.755898, 31.967106, 30.657434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287109, 31.417368, 30.658754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049541, 31.735514, 30.707165>,  <35.907001, 31.926401, 30.736212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049541, 31.735514, 30.707165>,  <36.287109, 31.417368, 30.658754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049541, 31.735514, 30.707165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717541, -0.455647, -0.526803,
		-0.363854, -0.399724, 0.841327,
		-0.593924, 0.795366, 0.121029,
		35.871365, 31.974123, 30.743473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659485, 31.141109, 30.875134>,  <36.287109, 31.417368, 30.658754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659485, 31.141109, 30.875134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572937, 31.509012, 30.744152>,  <35.521008, 31.729753, 30.665564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572937, 31.509012, 30.744152>,  <35.659485, 31.141109, 30.875134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572937, 31.509012, 30.744152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721934, -0.376523, -0.580553,
		-0.657264, 0.110787, 0.745474,
		-0.216370, 0.919759, -0.327456,
		35.508026, 31.784941, 30.645916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961597, 31.182150, 30.989655>,  <35.659485, 31.141109, 30.875134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961597, 31.182150, 30.989655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058289, 31.457726, 30.716326>,  <35.116302, 31.623072, 30.552328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058289, 31.457726, 30.716326>,  <34.961597, 31.182150, 30.989655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058289, 31.457726, 30.716326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701484, -0.362486, -0.613615,
		-0.670440, 0.627666, 0.395660,
		0.241724, 0.688941, -0.683323,
		35.130806, 31.664408, 30.511330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.247936, 31.481779, 30.752096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493534, 31.627047, 30.471775>,  <34.640892, 31.714207, 30.303583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493534, 31.627047, 30.471775>,  <34.247936, 31.481779, 30.752096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493534, 31.627047, 30.471775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613152, -0.339659, -0.713216,
		-0.497050, 0.867607, 0.014129,
		0.613992, 0.363167, -0.700802,
		34.677731, 31.735996, 30.261534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811211, 31.815464, 30.167522>,  <34.247936, 31.481779, 30.752096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811211, 31.815464, 30.167522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173260, 31.730234, 30.020363>,  <34.390488, 31.679096, 29.932068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173260, 31.730234, 30.020363>,  <33.811211, 31.815464, 30.167522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173260, 31.730234, 30.020363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424885, -0.422953, -0.800365,
		0.014936, 0.880744, -0.473358,
		0.905124, -0.213076, -0.367897,
		34.444798, 31.666311, 29.909994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824612, 32.025276, 29.549763>,  <33.811211, 31.815464, 30.167522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824612, 32.025276, 29.549763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107994, 31.743664, 29.530075>,  <34.278023, 31.574696, 29.518263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107994, 31.743664, 29.530075>,  <33.824612, 32.025276, 29.549763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107994, 31.743664, 29.530075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480023, -0.429568, -0.764885,
		0.517363, 0.565515, -0.642283,
		0.708459, -0.704034, -0.049217,
		34.320530, 31.532454, 29.515310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115940, 32.015816, 28.900988>,  <33.824612, 32.025276, 29.549763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115940, 32.015816, 28.900988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.223545, 31.651461, 29.026150>,  <34.288109, 31.432846, 29.101248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.223545, 31.651461, 29.026150>,  <34.115940, 32.015816, 28.900988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223545, 31.651461, 29.026150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488696, -0.409047, -0.770621,
		0.829944, 0.054392, -0.555188,
		0.269014, -0.910891, 0.312905,
		34.304249, 31.378193, 29.120022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222942, 31.678295, 28.290842>,  <34.115940, 32.015816, 28.900988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222942, 31.678295, 28.290842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187958, 31.385742, 28.561375>,  <34.166969, 31.210209, 28.723694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187958, 31.385742, 28.561375>,  <34.222942, 31.678295, 28.290842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187958, 31.385742, 28.561375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520559, -0.545306, -0.657008,
		0.849334, -0.409533, -0.333037,
		-0.087460, -0.731385, 0.676333,
		34.161720, 31.166327, 28.764275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283287, 31.109262, 27.823942>,  <34.222942, 31.678295, 28.290842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283287, 31.109262, 27.823942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.112961, 30.992489, 28.166512>,  <34.010765, 30.922424, 28.372053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.112961, 30.992489, 28.166512>,  <34.283287, 31.109262, 27.823942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112961, 30.992489, 28.166512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476229, -0.732497, -0.486471,
		0.769343, -0.614999, 0.172879,
		-0.425813, -0.291933, 0.856422,
		33.985218, 30.904909, 28.423439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377216, 30.426775, 27.916006>,  <34.283287, 31.109262, 27.823942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377216, 30.426775, 27.916006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037468, 30.517757, 28.106512>,  <33.833618, 30.572348, 28.220816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037468, 30.517757, 28.106512>,  <34.377216, 30.426775, 27.916006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037468, 30.517757, 28.106512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454972, -0.772920, -0.442262,
		0.267520, -0.592333, 0.759983,
		-0.849372, 0.227458, 0.476266,
		33.782658, 30.585995, 28.249392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204494, 29.855261, 28.127054>,  <34.377216, 30.426775, 27.916006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204494, 29.855261, 28.127054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871872, 30.077396, 28.122843>,  <33.672298, 30.210678, 28.120316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871872, 30.077396, 28.122843>,  <34.204494, 29.855261, 28.127054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871872, 30.077396, 28.122843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490708, -0.743398, -0.454495,
		-0.260227, -0.372771, 0.890687,
		-0.831557, 0.555339, -0.010531,
		33.622406, 30.243998, 28.119684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748077, 29.450378, 28.015715>,  <34.204494, 29.855261, 28.127054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748077, 29.450378, 28.015715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515881, 29.772554, 27.967886>,  <33.376564, 29.965860, 27.939188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515881, 29.772554, 27.967886>,  <33.748077, 29.450378, 28.015715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515881, 29.772554, 27.967886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528287, -0.484276, -0.697416,
		-0.619635, -0.341673, 0.706621,
		-0.580488, 0.805441, -0.119573,
		33.341732, 30.014187, 27.932014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089432, 29.151016, 27.908438>,  <33.748077, 29.450378, 28.015715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089432, 29.151016, 27.908438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.011436, 29.525223, 27.790596>,  <32.964642, 29.749746, 27.719891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.011436, 29.525223, 27.790596>,  <33.089432, 29.151016, 27.908438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011436, 29.525223, 27.790596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700628, -0.343050, -0.625649,
		-0.686369, 0.084416, 0.722338,
		-0.194983, 0.935516, -0.294603,
		32.952942, 29.805878, 27.702215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243416, 29.252333, 27.856071>,  <33.089432, 29.151016, 27.908438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243416, 29.252333, 27.856071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431232, 29.523628, 27.629967>,  <32.543922, 29.686405, 27.494303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431232, 29.523628, 27.629967>,  <32.243416, 29.252333, 27.856071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431232, 29.523628, 27.629967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617963, -0.204811, -0.759061,
		-0.630597, 0.705722, 0.322959,
		0.469541, 0.678239, -0.565264,
		32.572094, 29.727100, 27.460388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726112, 29.481150, 27.488153>,  <32.243416, 29.252333, 27.856071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726112, 29.481150, 27.488153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025848, 29.630072, 27.269108>,  <32.205688, 29.719425, 27.137680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025848, 29.630072, 27.269108>,  <31.726112, 29.481150, 27.488153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025848, 29.630072, 27.269108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569183, -0.060501, -0.819982,
		-0.338413, 0.926137, 0.166573,
		0.749338, 0.372303, -0.547616,
		32.250648, 29.741762, 27.104822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400620, 29.961283, 27.088667>,  <31.726112, 29.481150, 27.488153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400620, 29.961283, 27.088667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.743935, 29.866701, 26.906488>,  <31.949924, 29.809952, 26.797182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.743935, 29.866701, 26.906488>,  <31.400620, 29.961283, 27.088667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743935, 29.866701, 26.906488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485955, -0.089334, -0.869406,
		0.164890, 0.967527, -0.191581,
		0.858289, -0.236456, -0.455444,
		32.001423, 29.795765, 26.769855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595242, 30.483080, 26.603334>,  <31.400620, 29.961283, 27.088667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595242, 30.483080, 26.603334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782343, 30.156311, 26.468372>,  <31.894604, 29.960249, 26.387396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782343, 30.156311, 26.468372>,  <31.595242, 30.483080, 26.603334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782343, 30.156311, 26.468372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357413, 0.174312, -0.917536,
		0.808370, 0.549773, -0.210444,
		0.467754, -0.816924, -0.337404,
		31.922668, 29.911234, 26.367151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739819, 30.648096, 25.881624>,  <31.595242, 30.483080, 26.603334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739819, 30.648096, 25.881624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.771572, 30.250137, 25.906530>,  <31.790625, 30.011362, 25.921474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.771572, 30.250137, 25.906530>,  <31.739819, 30.648096, 25.881624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771572, 30.250137, 25.906530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252021, -0.080463, -0.964371,
		0.964460, 0.060866, -0.257122,
		0.079386, -0.994897, 0.062264,
		31.795387, 29.951668, 25.925209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091827, 30.387640, 25.257172>,  <31.739819, 30.648096, 25.881624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091827, 30.387640, 25.257172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.916622, 30.064548, 25.415016>,  <31.811499, 29.870693, 25.509724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.916622, 30.064548, 25.415016>,  <32.091827, 30.387640, 25.257172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916622, 30.064548, 25.415016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198710, -0.341109, -0.918781,
		0.876731, -0.480852, -0.011093,
		-0.438014, -0.807728, 0.394611,
		31.785217, 29.822229, 25.533400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295986, 29.775684, 24.834621>,  <32.091827, 30.387640, 25.257172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295986, 29.775684, 24.834621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.954336, 29.678913, 25.018770>,  <31.749346, 29.620850, 25.129259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.954336, 29.678913, 25.018770>,  <32.295986, 29.775684, 24.834621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954336, 29.678913, 25.018770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415406, -0.215236, -0.883805,
		0.312905, -0.946121, 0.083340,
		-0.854124, -0.241928, 0.460373,
		31.698099, 29.606335, 25.156881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154312, 29.212921, 24.545641>,  <32.295986, 29.775684, 24.834621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154312, 29.212921, 24.545641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809097, 29.316143, 24.719339>,  <31.601969, 29.378077, 24.823559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809097, 29.316143, 24.719339>,  <32.154312, 29.212921, 24.545641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809097, 29.316143, 24.719339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503316, -0.512241, -0.695904,
		0.042858, -0.819156, 0.571967,
		-0.863039, 0.258055, 0.434248,
		31.550186, 29.393560, 24.849613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606972, 28.610092, 24.570778>,  <32.154312, 29.212921, 24.545641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606972, 28.610092, 24.570778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.380419, 28.937557, 24.608734>,  <31.244488, 29.134037, 24.631508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.380419, 28.937557, 24.608734>,  <31.606972, 28.610092, 24.570778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380419, 28.937557, 24.608734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662250, -0.383564, -0.643665,
		-0.490549, -0.427399, 0.759403,
		-0.566381, 0.818663, 0.094888,
		31.210505, 29.183155, 24.637201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933943, 28.355612, 24.461878>,  <31.606972, 28.610092, 24.570778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933943, 28.355612, 24.461878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.900524, 28.752958, 24.430265>,  <30.880474, 28.991365, 24.411297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.900524, 28.752958, 24.430265>,  <30.933943, 28.355612, 24.461878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900524, 28.752958, 24.430265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623517, -0.113977, -0.773458,
		-0.777334, -0.015341, 0.628902,
		-0.083545, 0.993365, -0.079033,
		30.875460, 29.050968, 24.406555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266403, 28.457561, 24.481312>,  <30.933943, 28.355612, 24.461878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266403, 28.457561, 24.481312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436029, 28.752659, 24.271208>,  <30.537806, 28.929718, 24.145145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436029, 28.752659, 24.271208>,  <30.266403, 28.457561, 24.481312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436029, 28.752659, 24.271208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427883, -0.347960, -0.834171,
		-0.798175, 0.578495, 0.168110,
		0.424068, 0.737745, -0.525261,
		30.563250, 28.973982, 24.113630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834536, 28.539909, 23.873873>,  <30.266403, 28.457561, 24.481312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834536, 28.539909, 23.873873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.111820, 28.813004, 23.781498>,  <30.278191, 28.976860, 23.726074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.111820, 28.813004, 23.781498>,  <29.834536, 28.539909, 23.873873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111820, 28.813004, 23.781498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317091, 0.001161, -0.948394,
		-0.647235, 0.730664, 0.217294,
		0.693210, 0.682736, -0.230935,
		30.319784, 29.017824, 23.712217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384432, 29.146673, 23.561268>,  <29.834536, 28.539909, 23.873873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384432, 29.146673, 23.561268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.761086, 29.070278, 23.450384>,  <29.987078, 29.024441, 23.383854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.761086, 29.070278, 23.450384>,  <29.384432, 29.146673, 23.561268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761086, 29.070278, 23.450384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312583, -0.190403, -0.930612,
		0.124956, 0.962948, -0.238990,
		0.941636, -0.190990, -0.277209,
		30.043575, 29.012981, 23.367222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659014, 29.404469, 23.891150>,  <29.384432, 29.146673, 23.561268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659014, 29.404469, 23.891150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.698618, 29.011589, 23.954998>,  <28.722380, 28.775862, 23.993307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.698618, 29.011589, 23.954998>,  <28.659014, 29.404469, 23.891150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698618, 29.011589, 23.954998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840892, -0.168353, -0.514351,
		0.532069, -0.083297, -0.842594,
		0.099009, -0.982201, 0.159619,
		28.728321, 28.716928, 24.002884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556967, 29.883577, 23.340769>,  <28.659014, 29.404469, 23.891150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556967, 29.883577, 23.340769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.322002, 30.204235, 23.296385>,  <28.181025, 30.396629, 23.269754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.322002, 30.204235, 23.296385>,  <28.556967, 29.883577, 23.340769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322002, 30.204235, 23.296385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603087, 0.525036, 0.600518,
		0.539660, 0.285833, -0.791875,
		-0.587411, 0.801646, -0.110959,
		28.145779, 30.444729, 23.263098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040936, 30.473211, 23.191071>,  <28.556967, 29.883577, 23.340769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040936, 30.473211, 23.191071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.689150, 30.607801, 23.325727>,  <28.478079, 30.688555, 23.406523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.689150, 30.607801, 23.325727>,  <29.040936, 30.473211, 23.191071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689150, 30.607801, 23.325727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464875, 0.455431, 0.759259,
		0.102152, 0.824238, -0.556953,
		-0.879463, 0.336473, 0.336644,
		28.425310, 30.708744, 23.426722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057083, 31.283493, 23.201801>,  <29.040936, 30.473211, 23.191071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057083, 31.283493, 23.201801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.798512, 31.134943, 23.468399>,  <28.643370, 31.045813, 23.628357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.798512, 31.134943, 23.468399>,  <29.057083, 31.283493, 23.201801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798512, 31.134943, 23.468399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616368, 0.260677, 0.743060,
		-0.449692, 0.891140, 0.060394,
		-0.646427, -0.371373, 0.666494,
		28.604584, 31.023531, 23.668346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972528, 31.779106, 23.690573>,  <29.057083, 31.283493, 23.201801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972528, 31.779106, 23.690573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.866180, 31.439608, 23.873413>,  <28.802372, 31.235909, 23.983118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.866180, 31.439608, 23.873413>,  <28.972528, 31.779106, 23.690573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866180, 31.439608, 23.873413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522214, 0.271766, 0.808354,
		-0.810313, 0.453620, 0.370974,
		-0.265868, -0.848747, 0.457102,
		28.786421, 31.184984, 24.010544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745337, 32.027706, 24.367546>,  <28.972528, 31.779106, 23.690573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745337, 32.027706, 24.367546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.795002, 31.632660, 24.405910>,  <28.824802, 31.395632, 24.428928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.795002, 31.632660, 24.405910>,  <28.745337, 32.027706, 24.367546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795002, 31.632660, 24.405910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394874, 0.137856, 0.908334,
		-0.910307, -0.074910, 0.407100,
		0.124165, -0.987615, 0.095911,
		28.832251, 31.336376, 24.434685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474506, 31.856173, 25.035961>,  <28.745337, 32.027706, 24.367546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474506, 31.856173, 25.035961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.714050, 31.548519, 24.946701>,  <28.857777, 31.363926, 24.893145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.714050, 31.548519, 24.946701>,  <28.474506, 31.856173, 25.035961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714050, 31.548519, 24.946701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387403, 0.034348, 0.921271,
		-0.700917, -0.638162, 0.318535,
		0.598861, -0.769135, -0.223150,
		28.893709, 31.317778, 24.879755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529461, 31.472420, 25.647963>,  <28.474506, 31.856173, 25.035961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529461, 31.472420, 25.647963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.842678, 31.386917, 25.414330>,  <29.030607, 31.335615, 25.274149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.842678, 31.386917, 25.414330>,  <28.529461, 31.472420, 25.647963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842678, 31.386917, 25.414330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621956, 0.262777, 0.737644,
		-0.004194, -0.940880, 0.338714,
		0.783041, -0.213759, -0.584084,
		29.077591, 31.322790, 25.239105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951122, 31.059566, 26.072243>,  <28.529461, 31.472420, 25.647963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951122, 31.059566, 26.072243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.151962, 31.244078, 25.779636>,  <29.272467, 31.354786, 25.604073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.151962, 31.244078, 25.779636>,  <28.951122, 31.059566, 26.072243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151962, 31.244078, 25.779636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631046, 0.382963, 0.674626,
		0.591336, -0.800350, -0.098805,
		0.502098, 0.461281, -0.731518,
		29.302591, 31.382462, 25.560181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503149, 30.815527, 26.233921>,  <28.951122, 31.059566, 26.072243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503149, 30.815527, 26.233921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.566339, 31.141649, 26.011095>,  <29.604254, 31.337322, 25.877399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.566339, 31.141649, 26.011095>,  <29.503149, 30.815527, 26.233921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566339, 31.141649, 26.011095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657700, 0.333915, 0.675227,
		0.736528, -0.473052, -0.483476,
		0.157977, 0.815305, -0.557064,
		29.613733, 31.386240, 25.843975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179266, 30.806017, 26.020782>,  <29.503149, 30.815527, 26.233921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179266, 30.806017, 26.020782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.104576, 31.198349, 25.998470>,  <30.059763, 31.433748, 25.985083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.104576, 31.198349, 25.998470>,  <30.179266, 30.806017, 26.020782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104576, 31.198349, 25.998470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670856, 0.168778, 0.722126,
		0.717695, 0.097418, -0.689509,
		-0.186722, 0.980828, -0.055778,
		30.048559, 31.492598, 25.981737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813181, 31.046993, 26.115765>,  <30.179266, 30.806017, 26.020782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813181, 31.046993, 26.115765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.554674, 31.335419, 26.215691>,  <30.399570, 31.508474, 26.275646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.554674, 31.335419, 26.215691>,  <30.813181, 31.046993, 26.115765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554674, 31.335419, 26.215691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638717, 0.331977, 0.694141,
		0.417585, 0.608163, -0.675101,
		-0.646268, 0.721061, 0.249816,
		30.360794, 31.551737, 26.290636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256689, 31.662037, 26.115068>,  <30.813181, 31.046993, 26.115765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256689, 31.662037, 26.115068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923349, 31.751266, 26.317364>,  <30.723347, 31.804804, 26.438740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923349, 31.751266, 26.317364>,  <31.256689, 31.662037, 26.115068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923349, 31.751266, 26.317364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551419, 0.272089, 0.788609,
		0.038311, 0.936059, -0.349751,
		-0.833348, 0.223072, 0.505737,
		30.673346, 31.818188, 26.469086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463547, 32.219944, 26.461365>,  <31.256689, 31.662037, 26.115068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463547, 32.219944, 26.461365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135727, 32.110485, 26.662741>,  <30.939035, 32.044807, 26.783566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135727, 32.110485, 26.662741>,  <31.463547, 32.219944, 26.461365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135727, 32.110485, 26.662741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471560, 0.177033, 0.863881,
		-0.325527, 0.945397, -0.016045,
		-0.819551, -0.273650, 0.503440,
		30.889862, 32.028389, 26.813772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337473, 32.761662, 26.937592>,  <31.463547, 32.219944, 26.461365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337473, 32.761662, 26.937592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156010, 32.439816, 27.090843>,  <31.047132, 32.246708, 27.182795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156010, 32.439816, 27.090843>,  <31.337473, 32.761662, 26.937592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156010, 32.439816, 27.090843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419284, 0.186653, 0.888460,
		-0.786382, 0.563696, 0.252686,
		-0.453657, -0.804616, 0.383129,
		31.019913, 32.198429, 27.205782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025175, 32.963905, 27.573425>,  <31.337473, 32.761662, 26.937592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025175, 32.963905, 27.573425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098358, 32.571865, 27.604218>,  <31.142267, 32.336639, 27.622694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098358, 32.571865, 27.604218>,  <31.025175, 32.963905, 27.573425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098358, 32.571865, 27.604218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353679, 0.138678, 0.925029,
		-0.917299, -0.142015, 0.372014,
		0.182958, -0.980102, 0.076982,
		31.153246, 32.277836, 27.627312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804296, 32.872021, 28.189346>,  <31.025175, 32.963905, 27.573425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804296, 32.872021, 28.189346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019047, 32.540138, 28.128218>,  <31.147898, 32.341007, 28.091541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019047, 32.540138, 28.128218>,  <30.804296, 32.872021, 28.189346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019047, 32.540138, 28.128218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274368, 0.000417, 0.961625,
		-0.797801, -0.558201, 0.227868,
		0.536875, -0.829705, -0.152820,
		31.180109, 32.291225, 28.082371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581217, 32.348381, 28.683435>,  <30.804296, 32.872021, 28.189346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581217, 32.348381, 28.683435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.954126, 32.284420, 28.553638>,  <31.177872, 32.246044, 28.475761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.954126, 32.284420, 28.553638>,  <30.581217, 32.348381, 28.683435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954126, 32.284420, 28.553638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323145, -0.035089, 0.945699,
		-0.162602, -0.986510, 0.018958,
		0.932276, -0.159899, -0.324491,
		31.233809, 32.236450, 28.456291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871830, 32.024017, 29.362476>,  <30.581217, 32.348381, 28.683435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871830, 32.024017, 29.362476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.177567, 32.120152, 29.123135>,  <31.361008, 32.177830, 28.979530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.177567, 32.120152, 29.123135>,  <30.871830, 32.024017, 29.362476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177567, 32.120152, 29.123135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519875, 0.319279, 0.792333,
		0.381466, -0.916679, 0.119094,
		0.764339, 0.240334, -0.598353,
		31.406868, 32.192249, 28.943628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554089, 31.668381, 29.612869>,  <30.871830, 32.024017, 29.362476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554089, 31.668381, 29.612869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646397, 31.987915, 29.390659>,  <31.701780, 32.179634, 29.257334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646397, 31.987915, 29.390659>,  <31.554089, 31.668381, 29.612869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646397, 31.987915, 29.390659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385732, 0.449048, 0.805957,
		0.893284, -0.400274, -0.204510,
		0.230769, 0.798835, -0.555525,
		31.715628, 32.227566, 29.224001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258350, 31.715147, 29.802601>,  <31.554089, 31.668381, 29.612869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258350, 31.715147, 29.802601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.144833, 32.070465, 29.658161>,  <32.076721, 32.283657, 29.571497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.144833, 32.070465, 29.658161>,  <32.258350, 31.715147, 29.802601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144833, 32.070465, 29.658161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403660, 0.452262, 0.795310,
		0.869781, 0.079944, -0.486918,
		-0.283795, 0.888295, -0.361099,
		32.059692, 32.336952, 29.549831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.732651, 31.950207, 32.445499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.678913, 32.309063, 32.277168>,  <36.646671, 32.524376, 32.176170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.678913, 32.309063, 32.277168>,  <36.732651, 31.950207, 32.445499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678913, 32.309063, 32.277168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675645, 0.393582, 0.623376,
		0.724884, -0.200583, -0.659022,
		-0.134340, 0.897140, -0.420824,
		36.638611, 32.578205, 32.150921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438133, 32.204601, 32.293484>,  <36.732651, 31.950207, 32.445499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438133, 32.204601, 32.293484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.188892, 32.517342, 32.301949>,  <37.039349, 32.704987, 32.307026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.188892, 32.517342, 32.301949>,  <37.438133, 32.204601, 32.293484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188892, 32.517342, 32.301949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685238, 0.532664, 0.496707,
		0.377079, 0.324001, -0.867660,
		-0.623105, 0.781852, 0.021161,
		37.001961, 32.751896, 32.308296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880989, 32.812801, 32.317707>,  <37.438133, 32.204601, 32.293484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880989, 32.812801, 32.317707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.518642, 32.960258, 32.401138>,  <37.301235, 33.048733, 32.451199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.518642, 32.960258, 32.401138>,  <37.880989, 32.812801, 32.317707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518642, 32.960258, 32.401138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415483, 0.677681, 0.606731,
		0.082318, 0.636278, -0.767055,
		-0.905868, 0.368643, 0.208577,
		37.246883, 33.070850, 32.463711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998074, 33.429790, 32.409100>,  <37.880989, 32.812801, 32.317707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998074, 33.429790, 32.409100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.644566, 33.392941, 32.592602>,  <37.432461, 33.370831, 32.702702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.644566, 33.392941, 32.592602>,  <37.998074, 33.429790, 32.409100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644566, 33.392941, 32.592602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314934, 0.607999, 0.728803,
		-0.346064, 0.788574, -0.508320,
		-0.883774, -0.092125, 0.458756,
		37.379433, 33.365303, 32.730228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840561, 34.139938, 32.587353>,  <37.998074, 33.429790, 32.409100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840561, 34.139938, 32.587353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618763, 33.922134, 32.839081>,  <37.485683, 33.791454, 32.990116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618763, 33.922134, 32.839081>,  <37.840561, 34.139938, 32.587353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618763, 33.922134, 32.839081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240861, 0.618850, 0.747670,
		-0.796567, 0.566159, -0.212000,
		-0.554497, -0.544507, 0.629321,
		37.452415, 33.758781, 33.027878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538170, 34.599918, 32.942188>,  <37.840561, 34.139938, 32.587353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538170, 34.599918, 32.942188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.503654, 34.276249, 33.174667>,  <37.482944, 34.082047, 33.314156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.503654, 34.276249, 33.174667>,  <37.538170, 34.599918, 32.942188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503654, 34.276249, 33.174667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428222, 0.496614, 0.754984,
		-0.899545, 0.314026, 0.303655,
		-0.086285, -0.809174, 0.581200,
		37.477768, 34.033497, 33.349026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252884, 34.861759, 33.610165>,  <37.538170, 34.599918, 32.942188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252884, 34.861759, 33.610165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446892, 34.515182, 33.657547>,  <37.563297, 34.307236, 33.685978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446892, 34.515182, 33.657547>,  <37.252884, 34.861759, 33.610165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446892, 34.515182, 33.657547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420667, 0.349914, 0.837018,
		-0.766679, -0.356138, 0.534199,
		0.485018, -0.866444, 0.118456,
		37.592396, 34.255249, 33.693085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351765, 34.771286, 34.330547>,  <37.252884, 34.861759, 33.610165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351765, 34.771286, 34.330547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.608742, 34.492809, 34.202435>,  <37.762928, 34.325722, 34.125565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.608742, 34.492809, 34.202435>,  <37.351765, 34.771286, 34.330547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608742, 34.492809, 34.202435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640123, 0.257739, 0.723749,
		-0.421320, -0.669989, 0.611232,
		0.642442, -0.696194, -0.320285,
		37.801476, 34.283951, 34.106350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539310, 34.391361, 34.907959>,  <37.351765, 34.771286, 34.330547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539310, 34.391361, 34.907959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846764, 34.337177, 34.657883>,  <38.031235, 34.304668, 34.507839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846764, 34.337177, 34.657883>,  <37.539310, 34.391361, 34.907959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846764, 34.337177, 34.657883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632430, 0.307785, 0.710845,
		0.096134, -0.941764, 0.322241,
		0.768629, -0.135458, -0.625188,
		38.077351, 34.296539, 34.470325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012356, 33.929489, 35.208649>,  <37.539310, 34.391361, 34.907959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012356, 33.929489, 35.208649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213924, 34.147377, 34.940517>,  <38.334866, 34.278111, 34.779636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213924, 34.147377, 34.940517>,  <38.012356, 33.929489, 35.208649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213924, 34.147377, 34.940517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713731, 0.174484, 0.678338,
		0.486467, -0.820265, -0.300857,
		0.503922, 0.544720, -0.670330,
		38.365101, 34.310795, 34.739418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714924, 33.916756, 35.440182>,  <38.012356, 33.929489, 35.208649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714924, 33.916756, 35.440182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716682, 34.206467, 35.164383>,  <38.717739, 34.380295, 34.998905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716682, 34.206467, 35.164383>,  <38.714924, 33.916756, 35.440182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716682, 34.206467, 35.164383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764676, 0.441884, 0.469052,
		0.644401, -0.529303, -0.551893,
		0.004398, 0.724277, -0.689496,
		38.718002, 34.423748, 34.957535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338356, 33.738506, 35.370495>,  <38.714924, 33.916756, 35.440182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338356, 33.738506, 35.370495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.211864, 34.087196, 35.220776>,  <39.135971, 34.296410, 35.130943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.211864, 34.087196, 35.220776>,  <39.338356, 33.738506, 35.370495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211864, 34.087196, 35.220776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732177, 0.475147, 0.488008,
		0.603255, -0.119731, -0.788510,
		-0.316229, 0.871722, -0.374299,
		39.116997, 34.348713, 35.108486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799397, 34.107788, 34.947128>,  <39.338356, 33.738506, 35.370495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799397, 34.107788, 34.947128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.577183, 34.370846, 35.150654>,  <39.443855, 34.528679, 35.272770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.577183, 34.370846, 35.150654>,  <39.799397, 34.107788, 34.947128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577183, 34.370846, 35.150654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806871, 0.574183, 0.138830,
		-0.200850, 0.487670, -0.849610,
		-0.555535, 0.657642, 0.508811,
		39.410522, 34.568138, 35.303299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789742, 34.766567, 34.627373>,  <39.799397, 34.107788, 34.947128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789742, 34.766567, 34.627373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738327, 34.805099, 35.022179>,  <39.707478, 34.828220, 35.259064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738327, 34.805099, 35.022179>,  <39.789742, 34.766567, 34.627373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738327, 34.805099, 35.022179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683710, 0.729536, 0.017834,
		-0.718345, 0.677125, -0.159635,
		-0.128535, 0.096333, 0.987015,
		39.699768, 34.834000, 35.318283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153728, 35.149509, 34.139938>,  <39.789742, 34.766567, 34.627373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153728, 35.149509, 34.139938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398624, 35.120075, 33.825043>,  <40.545563, 35.102413, 33.636105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398624, 35.120075, 33.825043>,  <40.153728, 35.149509, 34.139938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398624, 35.120075, 33.825043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780745, -0.213556, -0.587223,
		-0.124910, 0.974156, -0.188198,
		0.612238, -0.073585, -0.787242,
		40.582294, 35.098000, 33.588871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825264, 35.690575, 33.637077>,  <40.153728, 35.149509, 34.139938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825264, 35.690575, 33.637077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.061901, 35.455585, 33.416210>,  <40.203884, 35.314590, 33.283691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.061901, 35.455585, 33.416210>,  <39.825264, 35.690575, 33.637077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061901, 35.455585, 33.416210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684598, -0.004298, -0.728908,
		0.425842, 0.809231, -0.404727,
		0.591595, -0.587475, -0.552167,
		40.239380, 35.279343, 33.250561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832478, 36.030216, 33.008930>,  <39.825264, 35.690575, 33.637077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832478, 36.030216, 33.008930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.959137, 35.656448, 32.943710>,  <40.035133, 35.432186, 32.904579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.959137, 35.656448, 32.943710>,  <39.832478, 36.030216, 33.008930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959137, 35.656448, 32.943710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562954, -0.046786, -0.825163,
		0.763424, 0.353077, -0.540852,
		0.316651, -0.934424, -0.163049,
		40.054131, 35.376122, 32.894794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876583, 36.086559, 32.408184>,  <39.832478, 36.030216, 33.008930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876583, 36.086559, 32.408184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885586, 35.688950, 32.450901>,  <39.890987, 35.450382, 32.476532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885586, 35.688950, 32.450901>,  <39.876583, 36.086559, 32.408184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885586, 35.688950, 32.450901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575442, -0.100234, -0.811677,
		0.817533, -0.043182, -0.574261,
		0.022511, -0.994026, 0.106793,
		39.892338, 35.390743, 32.482941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052277, 35.717861, 31.681601>,  <39.876583, 36.086559, 32.408184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052277, 35.717861, 31.681601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.842663, 35.465683, 31.910660>,  <39.716896, 35.314377, 32.048096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.842663, 35.465683, 31.910660>,  <40.052277, 35.717861, 31.681601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842663, 35.465683, 31.910660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555017, -0.257214, -0.791074,
		0.646023, -0.732378, -0.215120,
		-0.524033, -0.630447, 0.572648,
		39.685452, 35.276550, 32.082455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971867, 35.061104, 31.314053>,  <40.052277, 35.717861, 31.681601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971867, 35.061104, 31.314053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.679947, 35.080498, 31.586826>,  <39.504795, 35.092133, 31.750490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.679947, 35.080498, 31.586826>,  <39.971867, 35.061104, 31.314053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679947, 35.080498, 31.586826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660431, -0.307789, -0.684907,
		0.176688, -0.950219, 0.256643,
		-0.729804, 0.048481, 0.681936,
		39.461006, 35.095043, 31.791407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601562, 34.382420, 31.275368>,  <39.971867, 35.061104, 31.314053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601562, 34.382420, 31.275368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353462, 34.656727, 31.427691>,  <39.204601, 34.821312, 31.519085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353462, 34.656727, 31.427691>,  <39.601562, 34.382420, 31.275368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353462, 34.656727, 31.427691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757351, -0.397145, -0.518358,
		-0.204238, -0.609915, 0.765696,
		-0.620246, 0.685769, 0.380808,
		39.167389, 34.862457, 31.541933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971275, 34.055653, 31.169485>,  <39.601562, 34.382420, 31.275368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971275, 34.055653, 31.169485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877266, 34.434307, 31.257711>,  <38.820858, 34.661499, 31.310648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877266, 34.434307, 31.257711>,  <38.971275, 34.055653, 31.169485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877266, 34.434307, 31.257711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844818, -0.086728, -0.527978,
		-0.480672, -0.310429, 0.820115,
		-0.235026, 0.946632, 0.220568,
		38.806759, 34.718296, 31.323881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278461, 34.063728, 31.431002>,  <38.971275, 34.055653, 31.169485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278461, 34.063728, 31.431002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.330490, 34.438301, 31.300665>,  <38.361706, 34.663044, 31.222464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.330490, 34.438301, 31.300665>,  <38.278461, 34.063728, 31.431002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330490, 34.438301, 31.300665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922216, -0.006432, -0.386621,
		-0.364141, 0.350783, 0.862759,
		0.130070, 0.936435, -0.325840,
		38.369511, 34.719231, 31.202913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665775, 34.344772, 31.492828>,  <38.278461, 34.063728, 31.431002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665775, 34.344772, 31.492828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853828, 34.595715, 31.244507>,  <37.966660, 34.746281, 31.095514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853828, 34.595715, 31.244507>,  <37.665775, 34.344772, 31.492828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853828, 34.595715, 31.244507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753726, -0.080579, -0.652230,
		-0.459205, 0.774551, 0.434972,
		0.470136, 0.627357, -0.620802,
		37.994869, 34.783920, 31.058266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206215, 34.776367, 31.306051>,  <37.665775, 34.344772, 31.492828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206215, 34.776367, 31.306051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.465816, 34.864414, 31.014751>,  <37.621578, 34.917244, 30.839972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.465816, 34.864414, 31.014751>,  <37.206215, 34.776367, 31.306051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465816, 34.864414, 31.014751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747140, 0.003897, -0.664656,
		-0.143465, 0.975465, 0.166989,
		0.648999, 0.220119, -0.728249,
		37.660515, 34.930450, 30.796276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760220, 35.253464, 30.884296>,  <37.206215, 34.776367, 31.306051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760220, 35.253464, 30.884296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.071091, 35.136497, 30.661411>,  <37.257614, 35.066319, 30.527679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.071091, 35.136497, 30.661411>,  <36.760220, 35.253464, 30.884296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071091, 35.136497, 30.661411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572919, 0.037482, -0.818755,
		0.260304, 0.955556, -0.138402,
		0.777178, -0.292418, -0.557212,
		37.304245, 35.048771, 30.494247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778957, 35.688278, 30.315754>,  <36.760220, 35.253464, 30.884296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778957, 35.688278, 30.315754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966663, 35.352390, 30.206459>,  <37.079288, 35.150856, 30.140882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966663, 35.352390, 30.206459>,  <36.778957, 35.688278, 30.315754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966663, 35.352390, 30.206459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652781, -0.121491, -0.747741,
		0.594697, 0.529255, -0.605165,
		0.469267, -0.839720, -0.273237,
		37.107445, 35.100475, 30.124487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837273, 35.766308, 29.557232>,  <36.778957, 35.688278, 30.315754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837273, 35.766308, 29.557232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.918774, 35.378845, 29.614075>,  <36.967674, 35.146370, 29.648180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.918774, 35.378845, 29.614075>,  <36.837273, 35.766308, 29.557232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918774, 35.378845, 29.614075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536642, -0.231905, -0.811317,
		0.818840, 0.089050, -0.567072,
		0.203755, -0.968654, 0.142105,
		36.979900, 35.088249, 29.656706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959690, 36.261066, 28.939100>,  <36.837273, 35.766308, 29.557232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959690, 36.261066, 28.939100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.662048, 36.528217, 28.945490>,  <36.483463, 36.688507, 28.949324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.662048, 36.528217, 28.945490>,  <36.959690, 36.261066, 28.939100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662048, 36.528217, 28.945490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489933, 0.529284, 0.692694,
		0.454177, 0.523261, -0.721055,
		-0.744102, 0.667875, 0.015974,
		36.438816, 36.728580, 28.950283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291035, 36.815746, 29.135118>,  <36.959690, 36.261066, 28.939100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291035, 36.815746, 29.135118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910793, 36.926571, 29.191097>,  <36.682648, 36.993065, 29.224684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910793, 36.926571, 29.191097>,  <37.291035, 36.815746, 29.135118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910793, 36.926571, 29.191097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218751, 0.278113, 0.935308,
		0.220218, 0.919723, -0.324983,
		-0.950606, 0.277062, 0.139945,
		36.625610, 37.009689, 29.233080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261215, 37.603413, 29.316126>,  <37.291035, 36.815746, 29.135118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261215, 37.603413, 29.316126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.941265, 37.422806, 29.474279>,  <36.749294, 37.314442, 29.569172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.941265, 37.422806, 29.474279>,  <37.261215, 37.603413, 29.316126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941265, 37.422806, 29.474279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038557, 0.618775, 0.784622,
		-0.598925, 0.642845, -0.477534,
		-0.799876, -0.451517, 0.395386,
		36.701302, 37.287350, 29.592896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804962, 38.188328, 29.623949>,  <37.261215, 37.603413, 29.316126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804962, 38.188328, 29.623949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.702316, 37.846157, 29.803898>,  <36.640728, 37.640854, 29.911867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.702316, 37.846157, 29.803898>,  <36.804962, 38.188328, 29.623949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702316, 37.846157, 29.803898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151699, 0.424043, 0.892847,
		-0.954534, 0.297366, 0.020951,
		-0.256618, -0.855430, 0.449873,
		36.625332, 37.589527, 29.938860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306076, 38.388439, 30.187153>,  <36.804962, 38.188328, 29.623949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306076, 38.388439, 30.187153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.401852, 38.016438, 30.298702>,  <36.459316, 37.793236, 30.365631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.401852, 38.016438, 30.298702>,  <36.306076, 38.388439, 30.187153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401852, 38.016438, 30.298702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004555, 0.286148, 0.958174,
		-0.970901, -0.230692, 0.064278,
		0.239437, -0.930000, 0.278873,
		36.473682, 37.737438, 30.382364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905560, 38.238102, 30.781933>,  <36.306076, 38.388439, 30.187153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905560, 38.238102, 30.781933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.200928, 37.968388, 30.785120>,  <36.378151, 37.806557, 30.787033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.200928, 37.968388, 30.785120>,  <35.905560, 38.238102, 30.781933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200928, 37.968388, 30.785120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078539, 0.097732, 0.992109,
		-0.669749, -0.731970, 0.125125,
		0.738423, -0.674291, 0.007968,
		36.422455, 37.766102, 30.787510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858967, 38.027542, 31.400570>,  <35.905560, 38.238102, 30.781933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858967, 38.027542, 31.400570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.226753, 37.892387, 31.320160>,  <36.447426, 37.811295, 31.271914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.226753, 37.892387, 31.320160>,  <35.858967, 38.027542, 31.400570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226753, 37.892387, 31.320160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251426, 0.112231, 0.961348,
		-0.302266, -0.934471, 0.188146,
		0.919467, -0.337888, -0.201027,
		36.502594, 37.791019, 31.259851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046047, 37.414845, 31.906961>,  <35.858967, 38.027542, 31.400570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046047, 37.414845, 31.906961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.371353, 37.607620, 31.776524>,  <36.566536, 37.723286, 31.698261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.371353, 37.607620, 31.776524>,  <36.046047, 37.414845, 31.906961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371353, 37.607620, 31.776524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327605, 0.083939, 0.941079,
		0.480913, -0.872176, -0.089620,
		0.813264, 0.481937, -0.326096,
		36.615334, 37.752201, 31.678696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627754, 37.086231, 32.212872>,  <36.046047, 37.414845, 31.906961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627754, 37.086231, 32.212872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761589, 37.451885, 32.121296>,  <36.841892, 37.671276, 32.066349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761589, 37.451885, 32.121296>,  <36.627754, 37.086231, 32.212872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761589, 37.451885, 32.121296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473600, 0.046916, 0.879489,
		0.814709, -0.402696, -0.417235,
		0.334592, 0.914131, -0.228940,
		36.861965, 37.726124, 32.052612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324242, 37.072960, 32.372143>,  <36.627754, 37.086231, 32.212872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324242, 37.072960, 32.372143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.254353, 37.466637, 32.360619>,  <37.212421, 37.702843, 32.353703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.254353, 37.466637, 32.360619>,  <37.324242, 37.072960, 32.372143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254353, 37.466637, 32.360619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537520, 0.119857, 0.834689,
		0.824951, 0.130351, -0.549967,
		-0.174720, 0.984197, -0.028810,
		37.201935, 37.761894, 32.351974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013557, 37.463520, 32.470768>,  <37.324242, 37.072960, 32.372143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013557, 37.463520, 32.470768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684803, 37.666195, 32.574898>,  <37.487549, 37.787800, 32.637375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684803, 37.666195, 32.574898>,  <38.013557, 37.463520, 32.470768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684803, 37.666195, 32.574898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421566, 0.233653, 0.876178,
		0.383124, 0.829864, -0.405639,
		-0.821887, 0.506688, 0.260324,
		37.438236, 37.818203, 32.652996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229309, 38.091141, 32.812130>,  <38.013557, 37.463520, 32.470768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229309, 38.091141, 32.812130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852802, 38.009781, 32.919941>,  <37.626900, 37.960964, 32.984627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852802, 38.009781, 32.919941>,  <38.229309, 38.091141, 32.812130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852802, 38.009781, 32.919941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232941, 0.186696, 0.954402,
		-0.244443, 0.961131, -0.128351,
		-0.941269, -0.203399, 0.269523,
		37.570423, 37.948761, 33.000797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.638969, 35.766369, 25.332363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305840, 35.750938, 25.553240>,  <35.105961, 35.741680, 25.685766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305840, 35.750938, 25.553240>,  <35.638969, 35.766369, 25.332363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305840, 35.750938, 25.553240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459905, 0.506926, 0.729050,
		-0.308041, 0.861126, -0.404441,
		-0.832825, -0.038573, 0.552190,
		35.055992, 35.739365, 25.718897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664135, 36.382385, 25.618372>,  <35.638969, 35.766369, 25.332363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664135, 36.382385, 25.618372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396992, 36.182064, 25.838610>,  <35.236706, 36.061871, 25.970753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396992, 36.182064, 25.838610>,  <35.664135, 36.382385, 25.618372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396992, 36.182064, 25.838610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265437, 0.530856, 0.804820,
		-0.695346, 0.683656, -0.221605,
		-0.667861, -0.500806, 0.550596,
		35.196632, 36.031822, 26.003788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385853, 36.897228, 25.998190>,  <35.664135, 36.382385, 25.618372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385853, 36.897228, 25.998190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288124, 36.560257, 26.190285>,  <35.229488, 36.358074, 26.305542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288124, 36.560257, 26.190285>,  <35.385853, 36.897228, 25.998190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288124, 36.560257, 26.190285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208969, 0.437869, 0.874415,
		-0.946910, 0.313994, 0.069060,
		-0.244322, -0.842424, 0.480238,
		35.214828, 36.307529, 26.334356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029209, 37.118866, 26.582720>,  <35.385853, 36.897228, 25.998190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029209, 37.118866, 26.582720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178143, 36.754505, 26.653864>,  <35.267502, 36.535889, 26.696550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178143, 36.754505, 26.653864>,  <35.029209, 37.118866, 26.582720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178143, 36.754505, 26.653864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125002, 0.239110, 0.962913,
		-0.919643, -0.336290, 0.202892,
		0.372331, -0.910898, 0.177859,
		35.289841, 36.481236, 26.707222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719322, 36.992313, 27.076183>,  <35.029209, 37.118866, 26.582720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719322, 36.992313, 27.076183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013981, 36.725395, 27.120106>,  <35.190777, 36.565243, 27.146460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013981, 36.725395, 27.120106>,  <34.719322, 36.992313, 27.076183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013981, 36.725395, 27.120106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056194, 0.222205, 0.973379,
		-0.673935, -0.710870, 0.201185,
		0.736651, -0.667300, 0.109805,
		35.234978, 36.525204, 27.153048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668133, 36.773663, 27.726122>,  <34.719322, 36.992313, 27.076183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668133, 36.773663, 27.726122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037464, 36.639183, 27.651892>,  <35.259064, 36.558495, 27.607353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037464, 36.639183, 27.651892>,  <34.668133, 36.773663, 27.726122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037464, 36.639183, 27.651892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259565, 0.190240, 0.946802,
		-0.283011, -0.922377, 0.262919,
		0.923326, -0.336200, -0.185576,
		35.314461, 36.538322, 27.596218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850143, 36.212414, 28.167866>,  <34.668133, 36.773663, 27.726122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850143, 36.212414, 28.167866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196789, 36.374992, 28.052084>,  <35.404774, 36.472538, 27.982615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196789, 36.374992, 28.052084>,  <34.850143, 36.212414, 28.167866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196789, 36.374992, 28.052084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272105, 0.101310, 0.956919,
		0.418263, -0.908040, -0.022800,
		0.866611, 0.406448, -0.289457,
		35.456772, 36.496925, 27.965246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308872, 35.948853, 28.674881>,  <34.850143, 36.212414, 28.167866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308872, 35.948853, 28.674881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482246, 36.259716, 28.492382>,  <35.586273, 36.446232, 28.382883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482246, 36.259716, 28.492382>,  <35.308872, 35.948853, 28.674881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482246, 36.259716, 28.492382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532834, 0.187296, 0.825233,
		0.726786, -0.600792, -0.332913,
		0.433440, 0.777155, -0.456246,
		35.612278, 36.492863, 28.355509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127113, 35.705101, 28.681015>,  <35.308872, 35.948853, 28.674881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127113, 35.705101, 28.681015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082081, 36.101547, 28.652710>,  <36.055061, 36.339417, 28.635727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082081, 36.101547, 28.652710>,  <36.127113, 35.705101, 28.681015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082081, 36.101547, 28.652710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322071, 0.103767, 0.941012,
		0.939998, 0.083147, -0.330893,
		-0.112578, 0.991120, -0.070761,
		36.048309, 36.398884, 28.631481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836491, 35.352089, 28.848524>,  <36.127113, 35.705101, 28.681015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836491, 35.352089, 28.848524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793991, 35.056999, 29.115200>,  <36.768490, 34.879944, 29.275206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793991, 35.056999, 29.115200>,  <36.836491, 35.352089, 28.848524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793991, 35.056999, 29.115200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439342, -0.566657, -0.697050,
		0.892015, -0.366965, -0.263907,
		-0.106248, -0.737724, 0.666689,
		36.762115, 34.835682, 29.315207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100365, 34.831829, 28.460430>,  <36.836491, 35.352089, 28.848524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100365, 34.831829, 28.460430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853409, 34.690685, 28.741659>,  <36.705235, 34.605999, 28.910397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853409, 34.690685, 28.741659>,  <37.100365, 34.831829, 28.460430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853409, 34.690685, 28.741659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307282, -0.714567, -0.628468,
		0.724156, -0.604054, 0.332740,
		-0.617394, -0.352864, 0.703073,
		36.668190, 34.584827, 28.952581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210918, 34.049370, 28.452415>,  <37.100365, 34.831829, 28.460430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210918, 34.049370, 28.452415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864639, 34.092728, 28.647890>,  <36.656872, 34.118744, 28.765175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864639, 34.092728, 28.647890>,  <37.210918, 34.049370, 28.452415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864639, 34.092728, 28.647890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466152, -0.530308, -0.708149,
		0.182396, -0.840847, 0.509616,
		-0.865699, 0.108395, 0.488689,
		36.604931, 34.125248, 28.794497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964790, 33.354790, 28.602663>,  <37.210918, 34.049370, 28.452415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964790, 33.354790, 28.602663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646099, 33.596283, 28.613447>,  <36.454884, 33.741180, 28.619917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646099, 33.596283, 28.613447>,  <36.964790, 33.354790, 28.602663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646099, 33.596283, 28.613447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482593, -0.608742, -0.629712,
		-0.363768, -0.514720, 0.776361,
		-0.796729, 0.603735, 0.026959,
		36.407082, 33.777405, 28.621534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375210, 32.845284, 28.534517>,  <36.964790, 33.354790, 28.602663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375210, 32.845284, 28.534517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271999, 33.211662, 28.411573>,  <36.210072, 33.431488, 28.337807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271999, 33.211662, 28.411573>,  <36.375210, 32.845284, 28.534517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271999, 33.211662, 28.411573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447860, -0.395283, -0.801980,
		-0.856063, -0.069275, 0.512207,
		-0.258024, 0.915943, -0.307362,
		36.194592, 33.486446, 28.319365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616306, 32.820610, 28.490690>,  <36.375210, 32.845284, 28.534517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616306, 32.820610, 28.490690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736580, 33.115971, 28.249245>,  <35.808746, 33.293186, 28.104378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736580, 33.115971, 28.249245>,  <35.616306, 32.820610, 28.490690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736580, 33.115971, 28.249245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709523, -0.249735, -0.658946,
		-0.637310, 0.626417, 0.448819,
		0.300689, 0.738400, -0.603616,
		35.826786, 33.337490, 28.068159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070141, 32.858875, 28.149666>,  <35.616306, 32.820610, 28.490690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070141, 32.858875, 28.149666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325516, 33.088184, 27.944235>,  <35.478741, 33.225769, 27.820976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325516, 33.088184, 27.944235>,  <35.070141, 32.858875, 28.149666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325516, 33.088184, 27.944235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524570, -0.164201, -0.835383,
		-0.563231, 0.802744, 0.195890,
		0.638433, 0.573272, -0.513578,
		35.517044, 33.260166, 27.790161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703094, 33.170738, 27.686722>,  <35.070141, 32.858875, 28.149666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703094, 33.170738, 27.686722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069977, 33.176208, 27.527454>,  <35.290108, 33.179489, 27.431894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069977, 33.176208, 27.527454>,  <34.703094, 33.170738, 27.686722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069977, 33.176208, 27.527454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391097, -0.159644, -0.906398,
		-0.075958, 0.987080, -0.141080,
		0.917210, 0.013672, -0.398171,
		35.345139, 33.180309, 27.408003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578983, 33.630928, 27.061285>,  <34.703094, 33.170738, 27.686722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578983, 33.630928, 27.061285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900822, 33.393463, 27.055691>,  <35.093925, 33.250984, 27.052334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900822, 33.393463, 27.055691>,  <34.578983, 33.630928, 27.061285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900822, 33.393463, 27.055691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274307, -0.350674, -0.895424,
		0.526675, 0.724288, -0.444995,
		0.804593, -0.593662, -0.013986,
		35.142200, 33.215363, 27.051495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822361, 33.680401, 26.366005>,  <34.578983, 33.630928, 27.061285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822361, 33.680401, 26.366005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983215, 33.342503, 26.507250>,  <35.079727, 33.139763, 26.591995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983215, 33.342503, 26.507250>,  <34.822361, 33.680401, 26.366005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983215, 33.342503, 26.507250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222699, -0.464330, -0.857206,
		0.888084, 0.266075, -0.374847,
		0.402134, -0.844749, 0.353110,
		35.103855, 33.089077, 26.613182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239574, 33.450565, 25.870489>,  <34.822361, 33.680401, 26.366005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239574, 33.450565, 25.870489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182064, 33.127857, 26.099733>,  <35.147560, 32.934235, 26.237280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182064, 33.127857, 26.099733>,  <35.239574, 33.450565, 25.870489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182064, 33.127857, 26.099733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321101, -0.509763, -0.798145,
		0.936068, -0.298777, -0.185765,
		-0.143772, -0.806768, 0.573111,
		35.138931, 32.885826, 26.271666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512272, 32.796856, 25.471798>,  <35.239574, 33.450565, 25.870489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512272, 32.796856, 25.471798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249317, 32.643158, 25.731091>,  <35.091545, 32.550941, 25.886665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249317, 32.643158, 25.731091>,  <35.512272, 32.796856, 25.471798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249317, 32.643158, 25.731091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251115, -0.699356, -0.669211,
		0.710483, -0.602709, 0.363258,
		-0.657386, -0.384243, 0.648229,
		35.052101, 32.527885, 25.925560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528034, 32.158916, 25.460558>,  <35.512272, 32.796856, 25.471798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528034, 32.158916, 25.460558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181557, 32.162716, 25.660404>,  <34.973671, 32.164997, 25.780312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181557, 32.162716, 25.660404>,  <35.528034, 32.158916, 25.460558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181557, 32.162716, 25.660404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357044, -0.711265, -0.605493,
		0.349605, -0.702860, 0.619487,
		-0.866196, 0.009501, 0.499614,
		34.921700, 32.165565, 25.810287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320988, 31.415899, 25.628868>,  <35.528034, 32.158916, 25.460558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320988, 31.415899, 25.628868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978092, 31.619501, 25.660000>,  <34.772354, 31.741661, 25.678679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978092, 31.619501, 25.660000>,  <35.320988, 31.415899, 25.628868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978092, 31.619501, 25.660000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440381, -0.646399, -0.623083,
		-0.266843, -0.568405, 0.778274,
		-0.857239, 0.509003, 0.077827,
		34.720921, 31.772202, 25.683348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.561357, 34.115540, 28.686541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.897079, 34.199860, 28.486090>,  <29.098513, 34.250450, 28.365818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.897079, 34.199860, 28.486090>,  <28.561357, 34.115540, 28.686541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897079, 34.199860, 28.486090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453400, 0.237229, 0.859157,
		0.299994, -0.948306, 0.103530,
		0.839304, 0.210801, -0.501130,
		29.148870, 34.263100, 28.335751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088257, 33.720825, 29.016077>,  <28.561357, 34.115540, 28.686541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088257, 33.720825, 29.016077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.248569, 34.036736, 28.830332>,  <29.344757, 34.226280, 28.718885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.248569, 34.036736, 28.830332>,  <29.088257, 33.720825, 29.016077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248569, 34.036736, 28.830332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543150, 0.203354, 0.814638,
		0.737809, -0.578711, -0.347464,
		0.400782, 0.789772, -0.464363,
		29.368805, 34.273666, 28.691023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852186, 33.713398, 29.190357>,  <29.088257, 33.720825, 29.016077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852186, 33.713398, 29.190357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.745361, 34.084251, 29.085205>,  <29.681267, 34.306763, 29.022114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.745361, 34.084251, 29.085205>,  <29.852186, 33.713398, 29.190357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745361, 34.084251, 29.085205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590117, 0.372997, 0.715985,
		0.761865, 0.036085, -0.646730,
		-0.267064, 0.927131, -0.262879,
		29.665241, 34.362392, 29.006342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497900, 34.137135, 29.151434>,  <29.852186, 33.713398, 29.190357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497900, 34.137135, 29.151434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.196613, 34.392948, 29.212955>,  <30.015841, 34.546436, 29.249868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.196613, 34.392948, 29.212955>,  <30.497900, 34.137135, 29.151434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196613, 34.392948, 29.212955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586338, 0.546835, 0.597645,
		0.298111, 0.540338, -0.786870,
		-0.753218, 0.639536, 0.153803,
		29.970648, 34.584808, 29.259096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810364, 34.770039, 29.169411>,  <30.497900, 34.137135, 29.151434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810364, 34.770039, 29.169411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.450981, 34.861115, 29.319574>,  <30.235352, 34.915760, 29.409672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.450981, 34.861115, 29.319574>,  <30.810364, 34.770039, 29.169411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450981, 34.861115, 29.319574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430285, 0.626699, 0.649695,
		-0.087340, 0.745256, -0.661034,
		-0.898458, 0.227689, 0.375408,
		30.181444, 34.929420, 29.432198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809797, 35.549774, 29.239126>,  <30.810364, 34.770039, 29.169411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809797, 35.549774, 29.239126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.545286, 35.375813, 29.483610>,  <30.386580, 35.271435, 29.630301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.545286, 35.375813, 29.483610>,  <30.809797, 35.549774, 29.239126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545286, 35.375813, 29.483610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275445, 0.617102, 0.737099,
		-0.697742, 0.655780, -0.288284,
		-0.661276, -0.434899, 0.611209,
		30.346903, 35.245342, 29.666973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574133, 36.120651, 29.577030>,  <30.809797, 35.549774, 29.239126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574133, 36.120651, 29.577030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.464510, 35.814705, 29.810226>,  <30.398735, 35.631138, 29.950144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.464510, 35.814705, 29.810226>,  <30.574133, 36.120651, 29.577030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464510, 35.814705, 29.810226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339546, 0.490206, 0.802749,
		-0.899778, 0.417953, 0.125360,
		-0.274059, -0.764862, 0.582991,
		30.382292, 35.585247, 29.985125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121576, 36.416393, 30.158035>,  <30.574133, 36.120651, 29.577030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121576, 36.416393, 30.158035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.297205, 36.067261, 30.243254>,  <30.402582, 35.857780, 30.294384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.297205, 36.067261, 30.243254>,  <30.121576, 36.416393, 30.158035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297205, 36.067261, 30.243254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351176, 0.384983, 0.853501,
		-0.826978, -0.299931, 0.475551,
		0.439071, -0.872828, 0.213044,
		30.428926, 35.805412, 30.307167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905201, 36.288147, 30.832354>,  <30.121576, 36.416393, 30.158035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905201, 36.288147, 30.832354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.244301, 36.085743, 30.768768>,  <30.447762, 35.964298, 30.730618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.244301, 36.085743, 30.768768>,  <29.905201, 36.288147, 30.832354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244301, 36.085743, 30.768768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412580, 0.440785, 0.797174,
		-0.333311, -0.741390, 0.582447,
		0.847751, -0.506013, -0.158964,
		30.498627, 35.933941, 30.721079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150850, 36.120052, 31.500637>,  <29.905201, 36.288147, 30.832354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150850, 36.120052, 31.500637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.477913, 36.032429, 31.287678>,  <30.674150, 35.979855, 31.159903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.477913, 36.032429, 31.287678>,  <30.150850, 36.120052, 31.500637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477913, 36.032429, 31.287678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575698, 0.315325, 0.754415,
		0.002614, -0.923353, 0.383942,
		0.817658, -0.219062, -0.532397,
		30.723209, 35.966709, 31.127958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621756, 35.847721, 31.988554>,  <30.150850, 36.120052, 31.500637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621756, 35.847721, 31.988554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.848854, 35.960838, 31.679312>,  <30.985113, 36.028709, 31.493767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.848854, 35.960838, 31.679312>,  <30.621756, 35.847721, 31.988554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848854, 35.960838, 31.679312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712265, 0.302106, 0.633569,
		0.412728, -0.910363, -0.029904,
		0.567744, 0.282792, -0.773108,
		31.019176, 36.045677, 31.447380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335234, 35.605213, 32.128063>,  <30.621756, 35.847721, 31.988554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335234, 35.605213, 32.128063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.412306, 35.892517, 31.860640>,  <31.458549, 36.064899, 31.700184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.412306, 35.892517, 31.860640>,  <31.335234, 35.605213, 32.128063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412306, 35.892517, 31.860640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731980, 0.348553, 0.585419,
		0.653514, -0.602171, -0.458595,
		0.192678, 0.718262, -0.668562,
		31.470110, 36.107994, 31.660070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049908, 35.666878, 32.096031>,  <31.335234, 35.605213, 32.128063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049908, 35.666878, 32.096031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.927881, 36.008194, 31.926880>,  <31.854664, 36.212982, 31.825390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.927881, 36.008194, 31.926880>,  <32.049908, 35.666878, 32.096031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927881, 36.008194, 31.926880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655927, 0.510197, 0.556290,
		0.690429, -0.107670, -0.715343,
		-0.305070, 0.853291, -0.422878,
		31.836361, 36.264183, 31.800016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643814, 36.019016, 31.741913>,  <32.049908, 35.666878, 32.096031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643814, 36.019016, 31.741913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.381824, 36.310005, 31.823685>,  <32.224632, 36.484600, 31.872747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.381824, 36.310005, 31.823685>,  <32.643814, 36.019016, 31.741913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381824, 36.310005, 31.823685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714092, 0.507386, 0.482320,
		0.247150, 0.461888, -0.851808,
		-0.654973, 0.727474, 0.204430,
		32.185333, 36.528248, 31.885014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384262, 35.741852, 31.522221>,  <32.643814, 36.019016, 31.741913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384262, 35.741852, 31.522221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.543171, 35.435612, 31.724617>,  <33.638515, 35.251869, 31.846054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.543171, 35.435612, 31.724617>,  <33.384262, 35.741852, 31.522221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543171, 35.435612, 31.724617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353240, -0.636460, -0.685668,
		0.846991, 0.093663, -0.523291,
		0.397275, -0.765602, 0.505990,
		33.662354, 35.205933, 31.876413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796146, 35.378139, 30.988836>,  <33.384262, 35.741852, 31.522221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796146, 35.378139, 30.988836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.694008, 35.144588, 31.297092>,  <33.632725, 35.004459, 31.482046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.694008, 35.144588, 31.297092>,  <33.796146, 35.378139, 30.988836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694008, 35.144588, 31.297092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469304, -0.622020, -0.626773,
		0.845313, -0.521706, -0.115188,
		-0.255342, -0.583878, 0.770640,
		33.617405, 34.969425, 31.528284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127892, 34.778698, 30.827236>,  <33.796146, 35.378139, 30.988836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127892, 34.778698, 30.827236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802124, 34.734592, 31.055120>,  <33.606663, 34.708130, 31.191851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802124, 34.734592, 31.055120>,  <34.127892, 34.778698, 30.827236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802124, 34.734592, 31.055120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425183, -0.554749, -0.715173,
		0.394901, -0.824680, 0.404916,
		-0.814415, -0.110259, 0.569711,
		33.557800, 34.701515, 31.226034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976410, 34.220047, 30.682571>,  <34.127892, 34.778698, 30.827236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976410, 34.220047, 30.682571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.643127, 34.329098, 30.875004>,  <33.443157, 34.394527, 30.990463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.643127, 34.329098, 30.875004>,  <33.976410, 34.220047, 30.682571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643127, 34.329098, 30.875004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520754, -0.679442, -0.516889,
		0.185952, -0.681202, 0.708086,
		-0.833209, 0.272622, 0.481082,
		33.393166, 34.410885, 31.019329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671261, 33.575222, 30.918051>,  <33.976410, 34.220047, 30.682571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671261, 33.575222, 30.918051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.380028, 33.848763, 30.899071>,  <33.205288, 34.012886, 30.887682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.380028, 33.848763, 30.899071>,  <33.671261, 33.575222, 30.918051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380028, 33.848763, 30.899071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605445, -0.673981, -0.423304,
		-0.321456, -0.279471, 0.904744,
		-0.728082, 0.683846, -0.047450,
		33.161602, 34.053917, 30.884836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166687, 33.282486, 31.291700>,  <33.671261, 33.575222, 30.918051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166687, 33.282486, 31.291700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.988846, 33.564701, 31.070955>,  <32.882141, 33.734032, 30.938509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.988846, 33.564701, 31.070955>,  <33.166687, 33.282486, 31.291700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988846, 33.564701, 31.070955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514421, -0.705485, -0.487505,
		-0.733285, 0.067149, 0.676598,
		-0.444594, 0.705536, -0.551864,
		32.855465, 33.776363, 30.905397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477409, 33.074600, 31.237877>,  <33.166687, 33.282486, 31.291700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477409, 33.074600, 31.237877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.509548, 33.324551, 30.927246>,  <32.528831, 33.474522, 30.740868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.509548, 33.324551, 30.927246>,  <32.477409, 33.074600, 31.237877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509548, 33.324551, 30.927246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529278, -0.633442, -0.564460,
		-0.844635, 0.456379, 0.279838,
		0.080346, 0.624875, -0.776579,
		32.533653, 33.512012, 30.694273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861837, 33.075588, 30.955109>,  <32.477409, 33.074600, 31.237877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861837, 33.075588, 30.955109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.089336, 33.215069, 30.657133>,  <32.225838, 33.298759, 30.478348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.089336, 33.215069, 30.657133>,  <31.861837, 33.075588, 30.955109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089336, 33.215069, 30.657133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443555, -0.632679, -0.634805,
		-0.692665, 0.691464, -0.205165,
		0.568748, 0.348705, -0.744937,
		32.259960, 33.319679, 30.433653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353233, 33.123451, 30.263077>,  <31.861837, 33.075588, 30.955109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353233, 33.123451, 30.263077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.725853, 33.128994, 30.117739>,  <31.949425, 33.132320, 30.030535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.725853, 33.128994, 30.117739>,  <31.353233, 33.123451, 30.263077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725853, 33.128994, 30.117739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301392, -0.529585, -0.792907,
		-0.203410, 0.848143, -0.489160,
		0.931551, 0.013856, -0.363347,
		32.005318, 33.133152, 30.008734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290876, 33.423683, 29.540895>,  <31.353233, 33.123451, 30.263077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290876, 33.423683, 29.540895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616056, 33.197456, 29.596394>,  <31.811165, 33.061722, 29.629692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616056, 33.197456, 29.596394>,  <31.290876, 33.423683, 29.540895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616056, 33.197456, 29.596394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214654, -0.512509, -0.831419,
		0.541328, 0.646120, -0.538045,
		0.812950, -0.565564, 0.138744,
		31.859941, 33.027786, 29.638016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742558, 33.520000, 28.972555>,  <31.290876, 33.423683, 29.540895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742558, 33.520000, 28.972555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.853504, 33.174320, 29.140476>,  <31.920073, 32.966911, 29.241228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.853504, 33.174320, 29.140476>,  <31.742558, 33.520000, 28.972555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853504, 33.174320, 29.140476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311812, -0.494264, -0.811465,
		0.908758, 0.094172, -0.406559,
		0.277365, -0.864196, 0.419802,
		31.936714, 32.915062, 29.266417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117256, 33.219051, 28.405125>,  <31.742558, 33.520000, 28.972555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117256, 33.219051, 28.405125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009243, 32.929390, 28.658953>,  <31.944435, 32.755592, 28.811249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009243, 32.929390, 28.658953>,  <32.117256, 33.219051, 28.405125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009243, 32.929390, 28.658953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169539, -0.612994, -0.771683,
		0.947807, -0.315966, 0.042757,
		-0.270036, -0.724157, 0.634568,
		31.928232, 32.712143, 28.849323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383305, 32.540272, 28.176411>,  <32.117256, 33.219051, 28.405125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383305, 32.540272, 28.176411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.096523, 32.398705, 28.416647>,  <31.924454, 32.313763, 28.560789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.096523, 32.398705, 28.416647>,  <32.383305, 32.540272, 28.176411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096523, 32.398705, 28.416647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355822, -0.555069, -0.751857,
		0.599469, -0.752753, 0.272028,
		-0.716957, -0.353922, 0.600593,
		31.881435, 32.292526, 28.596825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378128, 31.752020, 28.133501>,  <32.383305, 32.540272, 28.176411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378128, 31.752020, 28.133501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.011948, 31.889250, 28.217638>,  <31.792238, 31.971588, 28.268120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.011948, 31.889250, 28.217638>,  <32.378128, 31.752020, 28.133501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011948, 31.889250, 28.217638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307590, -0.259489, -0.915453,
		-0.259489, -0.902754, 0.343077,
		0.915453, -0.343077, -0.210343,
		31.737312, 31.992172, 28.280741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629440, 31.045343, 28.414095>,  <32.378128, 31.752020, 28.133501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629440, 31.045343, 28.414095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.930893, 30.791874, 28.344236>,  <33.111763, 30.639793, 28.302320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.930893, 30.791874, 28.344236>,  <32.629440, 31.045343, 28.414095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930893, 30.791874, 28.344236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397960, 0.228411, 0.888513,
		-0.523134, -0.739113, 0.424314,
		0.753630, -0.633672, -0.174648,
		33.156982, 30.601772, 28.291842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788189, 30.784727, 29.077360>,  <32.629440, 31.045343, 28.414095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788189, 30.784727, 29.077360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.099258, 30.741230, 28.829685>,  <33.285900, 30.715132, 28.681080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.099258, 30.741230, 28.829685>,  <32.788189, 30.784727, 29.077360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099258, 30.741230, 28.829685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612245, 0.354625, 0.706680,
		0.142730, -0.928663, 0.342363,
		0.777678, -0.108745, -0.619185,
		33.332561, 30.708607, 28.643929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328838, 30.472128, 29.506006>,  <32.788189, 30.784727, 29.077360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328838, 30.472128, 29.506006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.510571, 30.586468, 29.168514>,  <33.619610, 30.655071, 28.966019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.510571, 30.586468, 29.168514>,  <33.328838, 30.472128, 29.506006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510571, 30.586468, 29.168514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825534, 0.220839, 0.519349,
		0.334784, -0.932480, -0.135647,
		0.454327, 0.285851, -0.843728,
		33.646870, 30.672222, 28.915396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920551, 30.127710, 29.511387>,  <33.328838, 30.472128, 29.506006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920551, 30.127710, 29.511387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.990883, 30.446856, 29.280737>,  <34.033081, 30.638344, 29.142347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.990883, 30.446856, 29.280737>,  <33.920551, 30.127710, 29.511387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990883, 30.446856, 29.280737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744982, 0.275049, 0.607742,
		0.643496, -0.536432, -0.546034,
		0.175826, 0.797865, -0.576625,
		34.043633, 30.686214, 29.107750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711224, 30.190510, 29.360392>,  <33.920551, 30.127710, 29.511387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711224, 30.190510, 29.360392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.543274, 30.551065, 29.318056>,  <34.442505, 30.767399, 29.292656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.543274, 30.551065, 29.318056>,  <34.711224, 30.190510, 29.360392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543274, 30.551065, 29.318056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680867, 0.389950, 0.619967,
		0.600102, 0.188249, -0.777457,
		-0.419878, 0.901388, -0.105837,
		34.417309, 30.821482, 29.286304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269112, 30.589422, 29.571861>,  <34.711224, 30.190510, 29.360392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269112, 30.589422, 29.571861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989319, 30.874432, 29.549801>,  <34.821445, 31.045437, 29.536566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989319, 30.874432, 29.549801>,  <35.269112, 30.589422, 29.571861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989319, 30.874432, 29.549801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507588, 0.549650, 0.663505,
		0.503075, 0.436115, -0.746136,
		-0.699479, 0.712522, -0.055149,
		34.779476, 31.088188, 29.533257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540993, 31.295900, 29.382200>,  <35.269112, 30.589422, 29.571861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540993, 31.295900, 29.382200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.203884, 31.394964, 29.573368>,  <35.001621, 31.454403, 29.688068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.203884, 31.394964, 29.573368>,  <35.540993, 31.295900, 29.382200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203884, 31.394964, 29.573368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513425, 0.636522, 0.575529,
		-0.161674, 0.730414, -0.663594,
		-0.842767, 0.247658, 0.477922,
		34.951054, 31.469261, 29.716745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564747, 32.004436, 29.358917>,  <35.540993, 31.295900, 29.382200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564747, 32.004436, 29.358917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.303608, 31.908396, 29.646290>,  <35.146923, 31.850773, 29.818712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.303608, 31.908396, 29.646290>,  <35.564747, 32.004436, 29.358917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303608, 31.908396, 29.646290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566438, 0.474967, 0.673465,
		-0.502928, 0.846616, -0.174080,
		-0.652849, -0.240099, 0.718430,
		35.107754, 31.836367, 29.861818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300800, 32.641357, 29.627094>,  <35.564747, 32.004436, 29.358917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300800, 32.641357, 29.627094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250824, 32.348400, 29.894821>,  <35.220840, 32.172626, 30.055458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250824, 32.348400, 29.894821>,  <35.300800, 32.641357, 29.627094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250824, 32.348400, 29.894821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571432, 0.498364, 0.651996,
		-0.811083, 0.463928, 0.356251,
		-0.124936, -0.732397, 0.669318,
		35.213345, 32.128681, 30.095617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059910, 32.886902, 30.199167>,  <35.300800, 32.641357, 29.627094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059910, 32.886902, 30.199167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205059, 32.547047, 30.352236>,  <35.292149, 32.343132, 30.444077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205059, 32.547047, 30.352236>,  <35.059910, 32.886902, 30.199167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205059, 32.547047, 30.352236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506608, 0.524548, 0.684249,
		-0.782094, -0.054431, 0.620779,
		0.362873, -0.849639, 0.382671,
		35.313923, 32.292156, 30.467037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085884, 32.943462, 30.961420>,  <35.059910, 32.886902, 30.199167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085884, 32.943462, 30.961420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.334629, 32.637489, 30.894302>,  <35.483875, 32.453903, 30.854033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.334629, 32.637489, 30.894302>,  <35.085884, 32.943462, 30.961420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334629, 32.637489, 30.894302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538248, 0.261856, 0.801074,
		-0.568833, -0.588476, 0.574565,
		0.621866, -0.764936, -0.167794,
		35.521191, 32.408009, 30.843964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118809, 32.727470, 31.587736>,  <35.085884, 32.943462, 30.961420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118809, 32.727470, 31.587736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.427818, 32.587952, 31.375490>,  <35.613224, 32.504242, 31.248142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.427818, 32.587952, 31.375490>,  <35.118809, 32.727470, 31.587736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427818, 32.587952, 31.375490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605886, 0.154812, 0.780343,
		-0.190034, -0.924324, 0.330926,
		0.772521, -0.348795, -0.530616,
		35.659576, 32.483315, 31.216305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392651, 32.313366, 32.017601>,  <35.118809, 32.727470, 31.587736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392651, 32.313366, 32.017601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.687130, 32.403843, 31.762461>,  <35.863815, 32.458130, 31.609377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.687130, 32.403843, 31.762461>,  <35.392651, 32.313366, 32.017601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687130, 32.403843, 31.762461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610055, 0.186247, 0.770159,
		0.293000, -0.956112, -0.000874,
		0.736195, 0.226190, -0.637851,
		35.907990, 32.471699, 31.571106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981647, 31.967716, 32.323238>,  <35.392651, 32.313366, 32.017601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981647, 31.967716, 32.323238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151279, 32.233547, 32.077148>,  <36.253059, 32.393047, 31.929495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151279, 32.233547, 32.077148>,  <35.981647, 31.967716, 32.323238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151279, 32.233547, 32.077148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601141, 0.301519, 0.740078,
		0.677340, -0.683684, -0.271637,
		0.424076, 0.664577, -0.615221,
		36.278503, 32.432919, 31.892582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.667301, 30.858908, 25.662237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.540104, 31.208769, 25.515886>,  <34.463787, 31.418686, 25.428076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.540104, 31.208769, 25.515886>,  <34.667301, 30.858908, 25.662237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540104, 31.208769, 25.515886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523948, -0.483745, -0.701048,
		-0.790164, -0.031227, 0.612099,
		-0.317991, 0.874652, -0.365877,
		34.444706, 31.471165, 25.406124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050240, 30.636530, 25.425810>,  <34.667301, 30.858908, 25.662237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050240, 30.636530, 25.425810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.105690, 30.986040, 25.239347>,  <34.138958, 31.195745, 25.127470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.105690, 30.986040, 25.239347>,  <34.050240, 30.636530, 25.425810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105690, 30.986040, 25.239347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513571, -0.339037, -0.788225,
		-0.846776, 0.348668, 0.401748,
		0.138622, 0.873776, -0.466154,
		34.147278, 31.248173, 25.099501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314014, 30.856564, 25.269453>,  <34.050240, 30.636530, 25.425810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314014, 30.856564, 25.269453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536945, 31.064482, 25.010473>,  <33.670704, 31.189234, 24.855085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536945, 31.064482, 25.010473>,  <33.314014, 30.856564, 25.269453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536945, 31.064482, 25.010473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581845, -0.311781, -0.751165,
		-0.592316, 0.795364, 0.128677,
		0.557331, 0.519797, -0.647452,
		33.704144, 31.220421, 24.816238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878922, 31.118679, 24.873896>,  <33.314014, 30.856564, 25.269453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878922, 31.118679, 24.873896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199055, 31.179026, 24.641790>,  <33.391136, 31.215233, 24.502527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199055, 31.179026, 24.641790>,  <32.878922, 31.118679, 24.873896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199055, 31.179026, 24.641790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520794, -0.304585, -0.797497,
		-0.297054, 0.940461, -0.165201,
		0.800333, 0.150864, -0.580265,
		33.439156, 31.224285, 24.467710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715569, 31.619665, 24.206375>,  <32.878922, 31.118679, 24.873896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715569, 31.619665, 24.206375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.039570, 31.394314, 24.141268>,  <33.233971, 31.259102, 24.102203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.039570, 31.394314, 24.141268>,  <32.715569, 31.619665, 24.206375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039570, 31.394314, 24.141268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380206, -0.293207, -0.877196,
		0.446469, 0.772420, -0.451699,
		0.810005, -0.563380, -0.162771,
		33.282570, 31.225300, 24.092436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736317, 31.678925, 23.482164>,  <32.715569, 31.619665, 24.206375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736317, 31.678925, 23.482164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.969749, 31.371048, 23.585701>,  <33.109810, 31.186321, 23.647823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.969749, 31.371048, 23.585701>,  <32.736317, 31.678925, 23.482164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969749, 31.371048, 23.585701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179762, -0.433291, -0.883144,
		0.791905, 0.468861, -0.391225,
		0.583586, -0.769694, 0.258842,
		33.144825, 31.140141, 23.663353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163868, 31.622963, 22.996279>,  <32.736317, 31.678925, 23.482164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163868, 31.622963, 22.996279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152271, 31.265675, 23.175753>,  <33.145313, 31.051302, 23.283438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152271, 31.265675, 23.175753>,  <33.163868, 31.622963, 22.996279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152271, 31.265675, 23.175753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278431, -0.423893, -0.861853,
		0.960018, -0.149914, -0.236411,
		-0.028990, -0.893219, 0.448686,
		33.143574, 30.997709, 23.310358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337357, 31.140240, 22.385633>,  <33.163868, 31.622963, 22.996279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337357, 31.140240, 22.385633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212311, 30.898104, 22.678436>,  <33.137283, 30.752823, 22.854118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212311, 30.898104, 22.678436>,  <33.337357, 31.140240, 22.385633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212311, 30.898104, 22.678436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514142, -0.540150, -0.666255,
		0.798704, -0.584640, -0.142369,
		-0.312619, -0.605338, 0.732008,
		33.118526, 30.716503, 22.898039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383221, 30.567945, 22.018860>,  <33.337357, 31.140240, 22.385633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383221, 30.567945, 22.018860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.158802, 30.478037, 22.337532>,  <33.024151, 30.424091, 22.528736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.158802, 30.478037, 22.337532>,  <33.383221, 30.567945, 22.018860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158802, 30.478037, 22.337532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591196, -0.564849, -0.575702,
		0.579405, -0.793993, 0.184025,
		-0.561050, -0.224770, 0.796682,
		32.990486, 30.410606, 22.576536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334682, 29.795340, 21.993170>,  <33.383221, 30.567945, 22.018860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334682, 29.795340, 21.993170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018784, 29.943703, 22.188608>,  <32.829247, 30.032721, 22.305872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018784, 29.943703, 22.188608>,  <33.334682, 29.795340, 21.993170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018784, 29.943703, 22.188608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604543, -0.605716, -0.517336,
		0.104067, -0.703942, 0.702592,
		-0.789745, 0.370909, 0.488598,
		32.781860, 30.054976, 22.335188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815296, 29.177357, 22.130074>,  <33.334682, 29.795340, 21.993170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815296, 29.177357, 22.130074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.593513, 29.509371, 22.154148>,  <32.460445, 29.708578, 22.168592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.593513, 29.509371, 22.154148>,  <32.815296, 29.177357, 22.130074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593513, 29.509371, 22.154148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736121, -0.455418, -0.500720,
		-0.388204, -0.321932, 0.863514,
		-0.554458, 0.830032, 0.060186,
		32.427177, 29.758381, 22.172203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143524, 28.939377, 22.274204>,  <32.815296, 29.177357, 22.130074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143524, 28.939377, 22.274204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.082432, 29.315351, 22.152092>,  <32.045776, 29.540936, 22.078825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.082432, 29.315351, 22.152092>,  <32.143524, 28.939377, 22.274204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082432, 29.315351, 22.152092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823403, -0.291851, -0.486652,
		-0.546518, 0.177042, 0.818519,
		-0.152728, 0.939935, -0.305279,
		32.036613, 29.597332, 22.060509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491114, 29.254694, 22.412516>,  <32.143524, 28.939377, 22.274204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491114, 29.254694, 22.412516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615002, 29.420500, 22.070229>,  <31.689335, 29.519983, 21.864857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615002, 29.420500, 22.070229>,  <31.491114, 29.254694, 22.412516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615002, 29.420500, 22.070229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886085, -0.200581, -0.417877,
		-0.344857, 0.887662, 0.305171,
		0.309722, 0.414515, -0.855716,
		31.707918, 29.544855, 21.813515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337954, 28.951061, 23.054480>,  <31.491114, 29.254694, 22.412516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337954, 28.951061, 23.054480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.955090, 29.055876, 23.103773>,  <30.725372, 29.118765, 23.133350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.955090, 29.055876, 23.103773>,  <31.337954, 28.951061, 23.054480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955090, 29.055876, 23.103773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250434, 0.535442, 0.806589,
		0.145368, 0.802895, -0.578124,
		-0.957158, 0.262034, 0.123236,
		30.667942, 29.134485, 23.140743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386877, 29.599821, 23.300718>,  <31.337954, 28.951061, 23.054480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386877, 29.599821, 23.300718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.043612, 29.436996, 23.425844>,  <30.837652, 29.339302, 23.500919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.043612, 29.436996, 23.425844>,  <31.386877, 29.599821, 23.300718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043612, 29.436996, 23.425844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184872, 0.323415, 0.928022,
		-0.478930, 0.854228, -0.202289,
		-0.858166, -0.407061, 0.312816,
		30.786161, 29.314878, 23.519690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045971, 30.128727, 23.621851>,  <31.386877, 29.599821, 23.300718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045971, 30.128727, 23.621851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891392, 29.782219, 23.748489>,  <30.798645, 29.574314, 23.824472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891392, 29.782219, 23.748489>,  <31.045971, 30.128727, 23.621851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891392, 29.782219, 23.748489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059278, 0.319228, 0.945822,
		-0.920404, 0.384279, -0.072015,
		-0.386449, -0.866270, 0.316598,
		30.775457, 29.522339, 23.843470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776051, 30.317150, 24.121595>,  <31.045971, 30.128727, 23.621851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776051, 30.317150, 24.121595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.794613, 29.927624, 24.210615>,  <30.805750, 29.693909, 24.264027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.794613, 29.927624, 24.210615>,  <30.776051, 30.317150, 24.121595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794613, 29.927624, 24.210615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193544, 0.227333, 0.954390,
		-0.979993, -0.001214, 0.199026,
		0.046404, -0.973816, 0.222550,
		30.808535, 29.635479, 24.277380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477362, 30.200863, 24.768114>,  <30.776051, 30.317150, 24.121595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477362, 30.200863, 24.768114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.714806, 29.882593, 24.719896>,  <30.857271, 29.691631, 24.690966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.714806, 29.882593, 24.719896>,  <30.477362, 30.200863, 24.768114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714806, 29.882593, 24.719896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451524, 0.205308, 0.868317,
		-0.666148, -0.569870, 0.481139,
		0.593610, -0.795673, -0.120545,
		30.892889, 29.643890, 24.683733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443878, 29.847174, 25.372450>,  <30.477362, 30.200863, 24.768114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443878, 29.847174, 25.372450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.785524, 29.733925, 25.197943>,  <30.990513, 29.665976, 25.093239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.785524, 29.733925, 25.197943>,  <30.443878, 29.847174, 25.372450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785524, 29.733925, 25.197943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427558, -0.095355, 0.898945,
		-0.296113, -0.954331, 0.039607,
		0.854114, -0.283124, -0.436268,
		31.041759, 29.648989, 25.067062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586069, 29.212275, 25.704479>,  <30.443878, 29.847174, 25.372450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586069, 29.212275, 25.704479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932135, 29.346605, 25.555502>,  <31.139774, 29.427204, 25.466116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932135, 29.346605, 25.555502>,  <30.586069, 29.212275, 25.704479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932135, 29.346605, 25.555502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434255, -0.130216, 0.891329,
		0.250834, -0.932879, -0.258493,
		0.865162, 0.335827, -0.372444,
		31.191683, 29.447353, 25.443769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207319, 28.763054, 25.925303>,  <30.586069, 29.212275, 25.704479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207319, 28.763054, 25.925303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.363989, 29.115908, 25.820667>,  <31.457991, 29.327620, 25.757887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.363989, 29.115908, 25.820667>,  <31.207319, 28.763054, 25.925303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363989, 29.115908, 25.820667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566965, -0.007474, 0.823708,
		0.724667, -0.470935, -0.503068,
		0.391673, 0.882136, -0.261588,
		31.481491, 29.380548, 25.742191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969208, 28.695333, 26.092396>,  <31.207319, 28.763054, 25.925303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969208, 28.695333, 26.092396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925901, 29.087715, 26.027893>,  <31.899918, 29.323145, 25.989191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925901, 29.087715, 26.027893>,  <31.969208, 28.695333, 26.092396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925901, 29.087715, 26.027893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542704, 0.194229, 0.817158,
		0.832917, 0.000955, -0.553397,
		-0.108266, 0.980956, -0.161259,
		31.893421, 29.382002, 25.979515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639305, 28.902037, 26.036411>,  <31.969208, 28.695333, 26.092396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639305, 28.902037, 26.036411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425037, 29.228762, 26.122084>,  <32.296474, 29.424797, 26.173487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425037, 29.228762, 26.122084>,  <32.639305, 28.902037, 26.036411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425037, 29.228762, 26.122084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613291, 0.201974, 0.763597,
		0.580456, 0.540393, -0.609135,
		-0.535672, 0.816812, 0.214181,
		32.264336, 29.473804, 26.186338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060219, 29.439142, 26.156389>,  <32.639305, 28.902037, 26.036411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060219, 29.439142, 26.156389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.735107, 29.530012, 26.370968>,  <32.540039, 29.584534, 26.499716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.735107, 29.530012, 26.370968>,  <33.060219, 29.439142, 26.156389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735107, 29.530012, 26.370968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582568, 0.317045, 0.748396,
		-0.000060, 0.920801, -0.390034,
		-0.812782, 0.227176, 0.536448,
		32.491272, 29.598166, 26.531902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396717, 29.810490, 26.595961>,  <33.060219, 29.439142, 26.156389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396717, 29.810490, 26.595961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023838, 29.810940, 26.740740>,  <32.800110, 29.811209, 26.827608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023838, 29.810940, 26.740740>,  <33.396717, 29.810490, 26.595961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023838, 29.810940, 26.740740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323062, 0.453514, 0.830636,
		-0.163216, 0.891248, -0.423127,
		-0.932197, 0.001123, 0.361949,
		32.744179, 29.811277, 26.849325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259567, 30.462353, 26.741831>,  <33.396717, 29.810490, 26.595961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259567, 30.462353, 26.741831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016937, 30.247000, 26.975824>,  <32.871357, 30.117788, 27.116220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016937, 30.247000, 26.975824>,  <33.259567, 30.462353, 26.741831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016937, 30.247000, 26.975824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259902, 0.561094, 0.785891,
		-0.751340, 0.628744, -0.200422,
		-0.606579, -0.538381, 0.584985,
		32.834965, 30.085485, 27.151320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875000, 30.951010, 27.099245>,  <33.259567, 30.462353, 26.741831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875000, 30.951010, 27.099245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887421, 30.609764, 27.307566>,  <32.894875, 30.405018, 27.432558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887421, 30.609764, 27.307566>,  <32.875000, 30.951010, 27.099245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887421, 30.609764, 27.307566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408429, 0.486397, 0.772401,
		-0.912262, 0.188726, 0.363539,
		0.031052, -0.853112, 0.520803,
		32.896736, 30.353830, 27.463806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676289, 31.105339, 27.678564>,  <32.875000, 30.951010, 27.099245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676289, 31.105339, 27.678564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897720, 30.779263, 27.746698>,  <33.030579, 30.583616, 27.787579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897720, 30.779263, 27.746698>,  <32.676289, 31.105339, 27.678564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897720, 30.779263, 27.746698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323300, 0.398856, 0.858132,
		-0.767479, -0.419977, 0.484350,
		0.553582, -0.815189, 0.170335,
		33.063793, 30.534706, 27.797798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925613, 31.264854, 27.892515>,  <32.676289, 31.105339, 27.678564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925613, 31.264854, 27.892515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.702930, 31.593454, 27.941851>,  <31.569321, 31.790615, 27.971453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.702930, 31.593454, 27.941851>,  <31.925613, 31.264854, 27.892515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702930, 31.593454, 27.941851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521089, -0.229712, -0.822009,
		-0.646948, -0.521892, 0.555957,
		-0.556710, 0.821500, 0.123340,
		31.535917, 31.839905, 27.978853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257877, 31.029024, 27.769054>,  <31.925613, 31.264854, 27.892515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257877, 31.029024, 27.769054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.213175, 31.424433, 27.728386>,  <31.186354, 31.661678, 27.703985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.213175, 31.424433, 27.728386>,  <31.257877, 31.029024, 27.769054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213175, 31.424433, 27.728386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609933, -0.149006, -0.778318,
		-0.784533, -0.024968, 0.619583,
		-0.111755, 0.988521, -0.101671,
		31.179647, 31.720989, 27.697886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504759, 31.084387, 27.544811>,  <31.257877, 31.029024, 27.769054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504759, 31.084387, 27.544811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638580, 31.453981, 27.470705>,  <30.718872, 31.675737, 27.426241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638580, 31.453981, 27.470705>,  <30.504759, 31.084387, 27.544811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638580, 31.453981, 27.470705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747677, 0.140585, -0.649011,
		-0.573632, 0.355646, 0.737877,
		0.334553, 0.923987, -0.185264,
		30.738947, 31.731178, 27.415125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900875, 31.571764, 27.469648>,  <30.504759, 31.084387, 27.544811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900875, 31.571764, 27.469648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.213345, 31.710619, 27.262087>,  <30.400827, 31.793932, 27.137550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.213345, 31.710619, 27.262087>,  <29.900875, 31.571764, 27.469648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213345, 31.710619, 27.262087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577259, 0.085062, -0.812119,
		-0.237778, 0.933949, 0.266837,
		0.781175, 0.347137, -0.518904,
		30.447697, 31.814760, 27.106415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645638, 32.176388, 27.085234>,  <29.900875, 31.571764, 27.469648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645638, 32.176388, 27.085234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.976414, 32.049568, 26.899481>,  <30.174879, 31.973476, 26.788029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.976414, 32.049568, 26.899481>,  <29.645638, 32.176388, 27.085234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976414, 32.049568, 26.899481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492798, -0.010938, -0.870075,
		0.270774, 0.948347, -0.165285,
		0.826941, -0.317046, -0.464382,
		30.224497, 31.954454, 26.760166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774385, 32.614407, 26.547024>,  <29.645638, 32.176388, 27.085234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774385, 32.614407, 26.547024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.937090, 32.262486, 26.448647>,  <30.034712, 32.051331, 26.389620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.937090, 32.262486, 26.448647>,  <29.774385, 32.614407, 26.547024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937090, 32.262486, 26.448647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546442, -0.018579, -0.837291,
		0.732085, 0.474969, -0.488320,
		0.406759, -0.879807, -0.245942,
		30.059118, 31.998543, 26.374865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767412, 32.740025, 25.871906>,  <29.774385, 32.614407, 26.547024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767412, 32.740025, 25.871906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.839596, 32.351326, 25.932751>,  <29.882906, 32.118107, 25.969257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.839596, 32.351326, 25.932751>,  <29.767412, 32.740025, 25.871906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839596, 32.351326, 25.932751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459727, -0.220050, -0.860365,
		0.869531, 0.085332, -0.486450,
		0.180460, -0.971749, 0.152111,
		29.893734, 32.059803, 25.978384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768925, 33.228207, 25.284830>,  <29.767412, 32.740025, 25.871906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768925, 33.228207, 25.284830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.446154, 33.437542, 25.394361>,  <29.252491, 33.563145, 25.460079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.446154, 33.437542, 25.394361>,  <29.768925, 33.228207, 25.284830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446154, 33.437542, 25.394361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362806, 0.073335, 0.928974,
		0.466090, 0.848961, -0.249048,
		-0.806927, 0.523342, 0.273828,
		29.204075, 33.594543, 25.476509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004448, 33.546806, 25.776051>,  <29.768925, 33.228207, 25.284830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004448, 33.546806, 25.776051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.618519, 33.600292, 25.866592>,  <29.386961, 33.632385, 25.920918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.618519, 33.600292, 25.866592>,  <30.004448, 33.546806, 25.776051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618519, 33.600292, 25.866592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249731, 0.197034, 0.948057,
		0.082170, 0.971235, -0.223496,
		-0.964822, 0.133716, 0.226357,
		29.329073, 33.640408, 25.934500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939142, 34.219742, 26.047007>,  <30.004448, 33.546806, 25.776051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939142, 34.219742, 26.047007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.633276, 34.008186, 26.194284>,  <29.449757, 33.881252, 26.282652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.633276, 34.008186, 26.194284>,  <29.939142, 34.219742, 26.047007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633276, 34.008186, 26.194284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215835, 0.328169, 0.919630,
		-0.607209, 0.782679, -0.136788,
		-0.764665, -0.528884, 0.368197,
		29.403877, 33.849522, 26.304743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617271, 34.673279, 26.418739>,  <29.939142, 34.219742, 26.047007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617271, 34.673279, 26.418739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.469770, 34.325943, 26.551407>,  <29.381269, 34.117542, 26.631006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.469770, 34.325943, 26.551407>,  <29.617271, 34.673279, 26.418739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469770, 34.325943, 26.551407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101867, 0.316912, 0.942969,
		-0.923929, 0.381508, -0.028406,
		-0.368752, -0.868343, 0.331667,
		29.359144, 34.065441, 26.650908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043949, 34.864521, 26.868956>,  <29.617271, 34.673279, 26.418739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043949, 34.864521, 26.868956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.119661, 34.481419, 26.955553>,  <29.165089, 34.251556, 27.007511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.119661, 34.481419, 26.955553>,  <29.043949, 34.864521, 26.868956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119661, 34.481419, 26.955553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004287, 0.221282, 0.975201,
		-0.981914, -0.183659, 0.045990,
		0.189281, -0.957760, 0.216492,
		29.176445, 34.194092, 27.020500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527842, 34.696934, 27.314503>,  <29.043949, 34.864521, 26.868956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527842, 34.696934, 27.314503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.829863, 34.439266, 27.363394>,  <29.011076, 34.284664, 27.392729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.829863, 34.439266, 27.363394>,  <28.527842, 34.696934, 27.314503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829863, 34.439266, 27.363394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139126, 0.339584, 0.930230,
		-0.640732, -0.685368, 0.346025,
		0.755054, -0.644169, 0.122230,
		29.056379, 34.246014, 27.400063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325228, 34.397697, 27.981838>,  <28.527842, 34.696934, 27.314503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325228, 34.397697, 27.981838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.707226, 34.311848, 27.899937>,  <28.936424, 34.260338, 27.850796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.707226, 34.311848, 27.899937>,  <28.325228, 34.397697, 27.981838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707226, 34.311848, 27.899937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257675, 0.258303, 0.931066,
		-0.146940, -0.941922, 0.301981,
		0.954993, -0.214624, -0.204754,
		28.993723, 34.247459, 27.838511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.063429, 32.764339, 21.089773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.188736, 32.438774, 21.285488>,  <31.263920, 32.243435, 21.402918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.188736, 32.438774, 21.285488>,  <31.063429, 32.764339, 21.089773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188736, 32.438774, 21.285488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198757, 0.560006, 0.804294,
		-0.928632, -0.154711, 0.337204,
		0.313269, -0.813915, 0.489289,
		31.282717, 32.194599, 21.432276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784861, 32.662952, 21.818789>,  <31.063429, 32.764339, 21.089773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784861, 32.662952, 21.818789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.142694, 32.484612, 21.806566>,  <31.357395, 32.377605, 21.799232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.142694, 32.484612, 21.806566>,  <30.784861, 32.662952, 21.818789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142694, 32.484612, 21.806566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315663, 0.581997, 0.749424,
		-0.316351, -0.680068, 0.661385,
		0.894583, -0.445856, -0.030556,
		31.411070, 32.350857, 21.797400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899860, 32.611549, 22.534275>,  <30.784861, 32.662952, 21.818789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899860, 32.611549, 22.534275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.250738, 32.567421, 22.347361>,  <31.461266, 32.540943, 22.235212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.250738, 32.567421, 22.347361>,  <30.899860, 32.611549, 22.534275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250738, 32.567421, 22.347361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435842, 0.591247, 0.678578,
		0.201417, -0.798908, 0.566724,
		0.877196, -0.110325, -0.467285,
		31.513897, 32.534325, 22.207174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383858, 32.396683, 23.041498>,  <30.899860, 32.611549, 22.534275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383858, 32.396683, 23.041498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.606937, 32.553562, 22.748882>,  <31.740786, 32.647690, 22.573313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.606937, 32.553562, 22.748882>,  <31.383858, 32.396683, 23.041498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606937, 32.553562, 22.748882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270570, 0.747290, 0.606918,
		0.784706, -0.536410, 0.310646,
		0.557700, 0.392201, -0.731539,
		31.774248, 32.671223, 22.529421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961489, 32.564220, 23.333031>,  <31.383858, 32.396683, 23.041498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961489, 32.564220, 23.333031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.999632, 32.785259, 23.001841>,  <32.022518, 32.917881, 22.803125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.999632, 32.785259, 23.001841>,  <31.961489, 32.564220, 23.333031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999632, 32.785259, 23.001841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345555, 0.761667, 0.548137,
		0.933541, -0.338381, -0.118321,
		0.095358, 0.552595, -0.827977,
		32.028240, 32.951038, 22.753447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673061, 32.909180, 23.487072>,  <31.961489, 32.564220, 23.333031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673061, 32.909180, 23.487072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.512669, 33.098083, 23.173080>,  <32.416435, 33.211426, 22.984686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.512669, 33.098083, 23.173080>,  <32.673061, 32.909180, 23.487072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512669, 33.098083, 23.173080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374903, 0.866434, 0.329756,
		0.835862, -0.162066, -0.524471,
		-0.400978, 0.472256, -0.784978,
		32.392376, 33.239761, 22.937588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219601, 33.284931, 23.126827>,  <32.673061, 32.909180, 23.487072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219601, 33.284931, 23.126827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.875492, 33.472111, 23.045872>,  <32.669025, 33.584419, 22.997299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.875492, 33.472111, 23.045872>,  <33.219601, 33.284931, 23.126827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875492, 33.472111, 23.045872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372568, 0.847979, 0.376994,
		0.348033, 0.248914, -0.903833,
		-0.860271, 0.467946, -0.202388,
		32.617413, 33.612495, 22.985155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321201, 33.909832, 22.756298>,  <33.219601, 33.284931, 23.126827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321201, 33.909832, 22.756298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.975739, 33.969128, 22.949011>,  <32.768459, 34.004707, 23.064638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.975739, 33.969128, 22.949011>,  <33.321201, 33.909832, 22.756298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975739, 33.969128, 22.949011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396847, 0.789292, 0.468541,
		-0.310810, 0.595855, -0.740510,
		-0.863661, 0.148242, 0.481783,
		32.716640, 34.013599, 23.093546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397278, 34.643051, 22.841969>,  <33.321201, 33.909832, 22.756298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397278, 34.643051, 22.841969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.063637, 34.583534, 23.054434>,  <32.863453, 34.547825, 23.181913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.063637, 34.583534, 23.054434>,  <33.397278, 34.643051, 22.841969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063637, 34.583534, 23.054434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362846, 0.577277, 0.731501,
		-0.415469, 0.802877, -0.427520,
		-0.834103, -0.148792, 0.531162,
		32.813404, 34.538898, 23.213783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227367, 35.250435, 23.010658>,  <33.397278, 34.643051, 22.841969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227367, 35.250435, 23.010658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.022346, 35.031178, 23.275030>,  <32.899334, 34.899624, 23.433653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.022346, 35.031178, 23.275030>,  <33.227367, 35.250435, 23.010658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022346, 35.031178, 23.275030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422299, 0.509280, 0.749864,
		-0.747632, 0.663456, -0.029553,
		-0.512553, -0.548142, 0.660931,
		32.868580, 34.866734, 23.473309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995098, 35.788460, 23.522289>,  <33.227367, 35.250435, 23.010658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995098, 35.788460, 23.522289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.010593, 35.432949, 23.704973>,  <33.019890, 35.219643, 23.814583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.010593, 35.432949, 23.704973>,  <32.995098, 35.788460, 23.522289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010593, 35.432949, 23.704973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474022, 0.418698, 0.774594,
		-0.879661, 0.186483, 0.437518,
		0.038740, -0.888772, 0.456709,
		33.022217, 35.166317, 23.841986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711277, 35.864880, 24.221312>,  <32.995098, 35.788460, 23.522289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711277, 35.864880, 24.221312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.946075, 35.541054, 24.218695>,  <33.086956, 35.346760, 24.217125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.946075, 35.541054, 24.218695>,  <32.711277, 35.864880, 24.221312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946075, 35.541054, 24.218695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434968, 0.308547, 0.845933,
		-0.682817, -0.499405, 0.533250,
		0.586995, -0.809564, -0.006544,
		33.122173, 35.298183, 24.216732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144409, 35.846256, 24.736586>,  <32.711277, 35.864880, 24.221312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144409, 35.846256, 24.736586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002903, 36.220142, 24.750219>,  <31.917999, 36.444473, 24.758400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002903, 36.220142, 24.750219>,  <32.144409, 35.846256, 24.736586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002903, 36.220142, 24.750219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648311, -0.218777, -0.729267,
		-0.674199, -0.280086, 0.683380,
		-0.353765, 0.934713, 0.034084,
		31.896772, 36.500557, 24.760445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377262, 35.823212, 24.922304>,  <32.144409, 35.846256, 24.736586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377262, 35.823212, 24.922304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445766, 36.172260, 24.739347>,  <31.486870, 36.381687, 24.629574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445766, 36.172260, 24.739347>,  <31.377262, 35.823212, 24.922304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445766, 36.172260, 24.739347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716470, -0.208356, -0.665777,
		-0.676269, 0.441729, 0.589521,
		0.171263, 0.872618, -0.457390,
		31.497145, 36.434048, 24.602131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752827, 36.075073, 24.845921>,  <31.377262, 35.823212, 24.922304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752827, 36.075073, 24.845921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.980976, 36.249817, 24.567690>,  <31.117867, 36.354664, 24.400751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.980976, 36.249817, 24.567690>,  <30.752827, 36.075073, 24.845921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980976, 36.249817, 24.567690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596887, -0.361309, -0.716367,
		-0.564270, 0.823778, 0.054674,
		0.570373, 0.436858, -0.695578,
		31.152088, 36.380875, 24.359016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318638, 36.477348, 24.356571>,  <30.752827, 36.075073, 24.845921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318638, 36.477348, 24.356571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.645012, 36.423935, 24.131567>,  <30.840836, 36.391888, 23.996565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.645012, 36.423935, 24.131567>,  <30.318638, 36.477348, 24.356571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645012, 36.423935, 24.131567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566530, -0.378725, -0.731855,
		-0.115308, 0.915825, -0.384667,
		0.815934, -0.133536, -0.562512,
		30.889791, 36.383873, 23.962812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117453, 36.709087, 23.650457>,  <30.318638, 36.477348, 24.356571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117453, 36.709087, 23.650457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457933, 36.504028, 23.605465>,  <30.662222, 36.380993, 23.578468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457933, 36.504028, 23.605465>,  <30.117453, 36.709087, 23.650457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457933, 36.504028, 23.605465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319786, -0.336647, -0.885667,
		0.416165, 0.789852, -0.450491,
		0.851202, -0.512644, -0.112483,
		30.713293, 36.350235, 23.571720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328835, 36.822975, 22.984686>,  <30.117453, 36.709087, 23.650457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328835, 36.822975, 22.984686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.510077, 36.481991, 23.088995>,  <30.618822, 36.277401, 23.151581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.510077, 36.481991, 23.088995>,  <30.328835, 36.822975, 22.984686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510077, 36.481991, 23.088995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202842, -0.383442, -0.901015,
		0.868073, 0.355358, -0.346655,
		0.453105, -0.852463, 0.260774,
		30.646008, 36.226254, 23.167227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718262, 36.618958, 22.411064>,  <30.328835, 36.822975, 22.984686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718262, 36.618958, 22.411064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652706, 36.286343, 22.623360>,  <30.613373, 36.086773, 22.750736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652706, 36.286343, 22.623360>,  <30.718262, 36.618958, 22.411064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652706, 36.286343, 22.623360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196843, -0.499625, -0.843580,
		0.966641, -0.242724, -0.081800,
		-0.163888, -0.831541, 0.530737,
		30.603540, 36.036880, 22.782581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986731, 36.070244, 21.950226>,  <30.718262, 36.618958, 22.411064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986731, 36.070244, 21.950226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.743168, 35.891624, 22.212471>,  <30.597031, 35.784454, 22.369818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.743168, 35.891624, 22.212471>,  <30.986731, 36.070244, 21.950226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743168, 35.891624, 22.212471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436673, -0.501302, -0.747003,
		0.662231, -0.741144, 0.110252,
		-0.608906, -0.446545, 0.655615,
		30.560495, 35.757660, 22.409155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706871, 35.444595, 21.599377>,  <30.986731, 36.070244, 21.950226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706871, 35.444595, 21.599377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.452019, 35.463547, 21.907095>,  <30.299107, 35.474918, 22.091726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.452019, 35.463547, 21.907095>,  <30.706871, 35.444595, 21.599377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452019, 35.463547, 21.907095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740647, -0.313880, -0.594072,
		0.213319, -0.948280, 0.235076,
		-0.637132, 0.047381, 0.769297,
		30.260880, 35.477760, 22.137884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409077, 34.781723, 21.603054>,  <30.706871, 35.444595, 21.599377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409077, 34.781723, 21.603054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.163414, 35.045269, 21.776819>,  <30.016016, 35.203396, 21.881079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.163414, 35.045269, 21.776819>,  <30.409077, 34.781723, 21.603054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163414, 35.045269, 21.776819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762202, -0.352498, -0.542948,
		-0.204596, -0.664567, 0.718673,
		-0.614157, 0.658859, 0.434415,
		29.979168, 35.242928, 21.907143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788063, 34.382534, 21.559401>,  <30.409077, 34.781723, 21.603054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788063, 34.382534, 21.559401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672527, 34.755257, 21.647326>,  <29.603207, 34.978889, 21.700081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672527, 34.755257, 21.647326>,  <29.788063, 34.382534, 21.559401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672527, 34.755257, 21.647326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903662, -0.189523, -0.384026,
		-0.316177, -0.309557, 0.896776,
		-0.288837, 0.931803, 0.219812,
		29.585876, 35.034798, 21.713270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225370, 34.276691, 21.944082>,  <29.788063, 34.382534, 21.559401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225370, 34.276691, 21.944082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179884, 34.648487, 21.803724>,  <29.152592, 34.871563, 21.719509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179884, 34.648487, 21.803724>,  <29.225370, 34.276691, 21.944082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179884, 34.648487, 21.803724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897673, -0.247470, -0.364611,
		-0.425736, 0.273525, 0.862515,
		-0.113717, 0.929485, -0.350893,
		29.145769, 34.927334, 21.698456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511648, 34.404945, 22.120062>,  <29.225370, 34.276691, 21.944082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511648, 34.404945, 22.120062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600698, 34.671936, 21.835835>,  <28.654129, 34.832130, 21.665298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600698, 34.671936, 21.835835>,  <28.511648, 34.404945, 22.120062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600698, 34.671936, 21.835835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780334, -0.314904, -0.540291,
		-0.584395, 0.674762, 0.450753,
		0.222624, 0.667481, -0.710568,
		28.667486, 34.872181, 21.622663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075470, 33.871986, 22.383709>,  <28.511648, 34.404945, 22.120062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075470, 33.871986, 22.383709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.892252, 33.531979, 22.487759>,  <27.782322, 33.327976, 22.550188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.892252, 33.531979, 22.487759>,  <28.075470, 33.871986, 22.383709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892252, 33.531979, 22.487759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222173, 0.173872, 0.959379,
		-0.860717, 0.497232, 0.109209,
		-0.458045, -0.850017, 0.260126,
		27.754839, 33.276974, 22.565796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569981, 34.043018, 22.793344>,  <28.075470, 33.871986, 22.383709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569981, 34.043018, 22.793344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.664223, 33.669327, 22.900455>,  <27.720768, 33.445110, 22.964722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.664223, 33.669327, 22.900455>,  <27.569981, 34.043018, 22.793344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664223, 33.669327, 22.900455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166019, 0.310172, 0.936072,
		-0.957564, -0.176087, 0.228178,
		0.235604, -0.934231, 0.267776,
		27.734903, 33.389057, 22.980789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237137, 34.021370, 23.372503>,  <27.569981, 34.043018, 22.793344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237137, 34.021370, 23.372503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.506861, 33.725994, 23.373957>,  <27.668695, 33.548771, 23.374828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.506861, 33.725994, 23.373957>,  <27.237137, 34.021370, 23.372503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506861, 33.725994, 23.373957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198429, 0.185930, 0.962318,
		-0.711288, -0.648181, 0.271902,
		0.674312, -0.738438, 0.003632,
		27.709154, 33.504463, 23.375046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157797, 33.732262, 23.945518>,  <27.237137, 34.021370, 23.372503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157797, 33.732262, 23.945518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.526028, 33.595520, 23.869968>,  <27.746965, 33.513477, 23.824638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.526028, 33.595520, 23.869968>,  <27.157797, 33.732262, 23.945518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526028, 33.595520, 23.869968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322747, 0.393532, 0.860794,
		-0.219935, -0.853387, 0.472609,
		0.920577, -0.341851, -0.188877,
		27.802200, 33.492966, 23.813305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348595, 33.315277, 24.449295>,  <27.157797, 33.732262, 23.945518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348595, 33.315277, 24.449295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709757, 33.431915, 24.322975>,  <27.926455, 33.501900, 24.247183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709757, 33.431915, 24.322975>,  <27.348595, 33.315277, 24.449295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709757, 33.431915, 24.322975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245190, 0.254045, 0.935598,
		0.353048, -0.922188, 0.157881,
		0.902906, 0.291600, -0.315801,
		27.980629, 33.519394, 24.228235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772320, 33.106445, 24.965397>,  <27.348595, 33.315277, 24.449295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772320, 33.106445, 24.965397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.017839, 33.335918, 24.748459>,  <28.165152, 33.473602, 24.618296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.017839, 33.335918, 24.748459>,  <27.772320, 33.106445, 24.965397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017839, 33.335918, 24.748459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555558, 0.174202, 0.813025,
		0.560896, -0.800338, -0.211790,
		0.613800, 0.573684, -0.542343,
		28.201979, 33.508022, 24.585756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398653, 32.757999, 25.029366>,  <27.772320, 33.106445, 24.965397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398653, 32.757999, 25.029366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.474045, 33.141392, 24.943773>,  <28.519279, 33.371426, 24.892418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.474045, 33.141392, 24.943773>,  <28.398653, 32.757999, 25.029366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474045, 33.141392, 24.943773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387337, 0.127670, 0.913055,
		0.902466, -0.254975, -0.347192,
		0.188480, 0.958482, -0.213979,
		28.530588, 33.428936, 24.879580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158350, 32.885639, 24.999748>,  <28.398653, 32.757999, 25.029366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158350, 32.885639, 24.999748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982931, 33.231689, 25.097107>,  <28.877680, 33.439320, 25.155521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982931, 33.231689, 25.097107>,  <29.158350, 32.885639, 24.999748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982931, 33.231689, 25.097107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546760, 0.041893, 0.836241,
		0.713254, 0.499809, -0.491386,
		-0.438546, 0.865122, 0.243395,
		28.851368, 33.491226, 25.170126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831667, 32.402981, 25.075838>,  <29.158350, 32.885639, 24.999748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831667, 32.402981, 25.075838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795513, 32.083900, 25.314337>,  <29.773821, 31.892452, 25.457436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795513, 32.083900, 25.314337>,  <29.831667, 32.402981, 25.075838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795513, 32.083900, 25.314337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627506, -0.419290, -0.656073,
		0.773348, -0.433446, -0.462664,
		-0.090382, -0.797697, 0.596247,
		29.768398, 31.844591, 25.493212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222099, 31.731661, 24.697880>,  <29.831667, 32.402981, 25.075838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222099, 31.731661, 24.697880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925180, 31.651443, 24.953623>,  <29.747030, 31.603313, 25.107069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925180, 31.651443, 24.953623>,  <30.222099, 31.731661, 24.697880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925180, 31.651443, 24.953623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482605, -0.501932, -0.717744,
		0.464854, -0.841336, 0.275799,
		-0.742296, -0.200544, 0.639358,
		29.702492, 31.591280, 25.145430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081676, 31.061569, 24.496309>,  <30.222099, 31.731661, 24.697880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081676, 31.061569, 24.496309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763454, 31.175528, 24.710197>,  <29.572521, 31.243902, 24.838530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763454, 31.175528, 24.710197>,  <30.081676, 31.061569, 24.496309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763454, 31.175528, 24.710197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600469, -0.488420, -0.633153,
		0.080786, -0.824792, 0.559636,
		-0.795557, 0.284894, 0.534719,
		29.524788, 31.260996, 24.870613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713802, 30.421070, 24.545847>,  <30.081676, 31.061569, 24.496309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713802, 30.421070, 24.545847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.454613, 30.709934, 24.642687>,  <29.299099, 30.883253, 24.700790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.454613, 30.709934, 24.642687>,  <29.713802, 30.421070, 24.545847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454613, 30.709934, 24.642687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690936, -0.423564, -0.585834,
		-0.320520, -0.546883, 0.773425,
		-0.647977, 0.722158, 0.242101,
		29.260220, 30.926582, 24.715317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080549, 30.064461, 24.566856>,  <29.713802, 30.421070, 24.545847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080549, 30.064461, 24.566856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002584, 30.455973, 24.541552>,  <28.955805, 30.690880, 24.526369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002584, 30.455973, 24.541552>,  <29.080549, 30.064461, 24.566856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002584, 30.455973, 24.541552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744541, -0.189640, -0.640074,
		-0.638488, -0.077657, 0.765704,
		-0.194914, 0.978778, -0.063264,
		28.944111, 30.749605, 24.522572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349693, 30.175116, 24.690435>,  <29.080549, 30.064461, 24.566856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349693, 30.175116, 24.690435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470324, 30.499622, 24.490078>,  <28.542702, 30.694326, 24.369864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470324, 30.499622, 24.490078>,  <28.349693, 30.175116, 24.690435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470324, 30.499622, 24.490078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717411, -0.152949, -0.679653,
		-0.627993, 0.564314, 0.535887,
		0.301574, 0.811268, -0.500896,
		28.560797, 30.743002, 24.339809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708073, 30.439926, 24.433386>,  <28.349693, 30.175116, 24.690435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708073, 30.439926, 24.433386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.984396, 30.626225, 24.212166>,  <28.150190, 30.738003, 24.079433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.984396, 30.626225, 24.212166>,  <27.708073, 30.439926, 24.433386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984396, 30.626225, 24.212166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527154, -0.199089, -0.826119,
		-0.494868, 0.862232, 0.107987,
		0.690807, 0.465745, -0.553052,
		28.191639, 30.765947, 24.046249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330404, 30.988991, 24.005404>,  <27.708073, 30.439926, 24.433386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330404, 30.988991, 24.005404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677858, 30.920115, 23.819576>,  <27.886332, 30.878788, 23.708080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677858, 30.920115, 23.819576>,  <27.330404, 30.988991, 24.005404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677858, 30.920115, 23.819576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491867, -0.187121, -0.850325,
		0.059489, 0.967128, -0.247235,
		0.868636, -0.172192, -0.464566,
		27.938450, 30.868458, 23.680206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371111, 31.385735, 23.298655>,  <27.330404, 30.988991, 24.005404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371111, 31.385735, 23.298655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.575487, 31.042135, 23.311708>,  <27.698112, 30.835976, 23.319542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.575487, 31.042135, 23.311708>,  <27.371111, 31.385735, 23.298655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575487, 31.042135, 23.311708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426200, -0.286114, -0.858192,
		0.746522, 0.424573, -0.512291,
		0.510939, -0.858998, 0.032637,
		27.728769, 30.784435, 23.321499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.428333, 38.020958, 34.769199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487881, 38.033249, 34.373848>,  <36.523609, 38.040623, 34.136639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487881, 38.033249, 34.373848>,  <36.428333, 38.020958, 34.769199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487881, 38.033249, 34.373848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981664, 0.115746, 0.151455,
		0.119055, -0.992804, -0.012937,
		0.148867, 0.030731, -0.988379,
		36.532539, 38.042469, 34.077335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591789, 37.552525, 34.220062>,  <36.428333, 38.020958, 34.769199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591789, 37.552525, 34.220062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786995, 37.220531, 34.328117>,  <36.904118, 37.021336, 34.392952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786995, 37.220531, 34.328117>,  <36.591789, 37.552525, 34.220062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786995, 37.220531, 34.328117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667610, -0.554314, -0.497024,
		0.562263, 0.062205, -0.824615,
		0.488013, -0.829980, 0.270142,
		36.933399, 36.971539, 34.409161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817581, 37.329720, 33.644474>,  <36.591789, 37.552525, 34.220062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817581, 37.329720, 33.644474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788239, 37.031223, 33.909122>,  <36.770634, 36.852127, 34.067913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788239, 37.031223, 33.909122>,  <36.817581, 37.329720, 33.644474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788239, 37.031223, 33.909122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687458, -0.442782, -0.575626,
		0.722510, -0.497063, -0.480529,
		-0.073353, -0.746239, 0.661624,
		36.766232, 36.807350, 34.107609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008434, 36.657093, 33.315220>,  <36.817581, 37.329720, 33.644474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008434, 36.657093, 33.315220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775288, 36.570709, 33.628555>,  <36.635399, 36.518879, 33.816559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775288, 36.570709, 33.628555>,  <37.008434, 36.657093, 33.315220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775288, 36.570709, 33.628555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551125, -0.603329, -0.576416,
		0.597097, -0.767694, 0.232639,
		-0.582869, -0.215963, 0.783341,
		36.600426, 36.505920, 33.863556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883152, 36.049332, 33.095783>,  <37.008434, 36.657093, 33.315220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883152, 36.049332, 33.095783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625717, 36.105747, 33.396690>,  <36.471256, 36.139595, 33.577236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625717, 36.105747, 33.396690>,  <36.883152, 36.049332, 33.095783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625717, 36.105747, 33.396690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717634, -0.452887, -0.529051,
		0.266077, -0.880342, 0.392683,
		-0.643587, 0.141035, 0.752267,
		36.432640, 36.148056, 33.622372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545795, 35.409943, 33.126961>,  <36.883152, 36.049332, 33.095783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545795, 35.409943, 33.126961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.318020, 35.676353, 33.319687>,  <36.181355, 35.836201, 33.435322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.318020, 35.676353, 33.319687>,  <36.545795, 35.409943, 33.126961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318020, 35.676353, 33.319687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814593, -0.378517, -0.439504,
		-0.110342, -0.642759, 0.758080,
		-0.569441, 0.666023, 0.481820,
		36.147186, 35.876160, 33.464233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033020, 34.937218, 33.310780>,  <36.545795, 35.409943, 33.126961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033020, 34.937218, 33.310780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895435, 35.312630, 33.299137>,  <35.812885, 35.537876, 33.292152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895435, 35.312630, 33.299137>,  <36.033020, 34.937218, 33.310780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895435, 35.312630, 33.299137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838744, -0.321032, -0.439827,
		-0.422136, -0.126869, 0.897611,
		-0.343962, 0.938532, -0.029108,
		35.792248, 35.594189, 33.290405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322414, 34.808632, 33.427177>,  <36.033020, 34.937218, 33.310780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322414, 34.808632, 33.427177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324207, 35.191902, 33.312721>,  <35.325283, 35.421864, 33.244049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324207, 35.191902, 33.312721>,  <35.322414, 34.808632, 33.427177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324207, 35.191902, 33.312721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862409, -0.141142, -0.486137,
		-0.506192, 0.248946, 0.825709,
		0.004480, 0.958178, -0.286138,
		35.325550, 35.479355, 33.226879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732616, 35.176090, 33.696232>,  <35.322414, 34.808632, 33.427177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732616, 35.176090, 33.696232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.842602, 35.346764, 33.351597>,  <34.908592, 35.449169, 33.144817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.842602, 35.346764, 33.351597>,  <34.732616, 35.176090, 33.696232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842602, 35.346764, 33.351597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867585, -0.276088, -0.413607,
		-0.414353, 0.861230, 0.294269,
		0.274966, 0.426683, -0.861588,
		34.925091, 35.474770, 33.093121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103493, 35.568565, 33.412880>,  <34.732616, 35.176090, 33.696232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103493, 35.568565, 33.412880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351582, 35.508179, 33.104977>,  <34.500435, 35.471947, 32.920235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351582, 35.508179, 33.104977>,  <34.103493, 35.568565, 33.412880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351582, 35.508179, 33.104977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769228, -0.309288, -0.559132,
		-0.153668, 0.938909, -0.307955,
		0.620221, -0.150967, -0.769763,
		34.537647, 35.462887, 32.874046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703316, 35.784363, 32.936432>,  <34.103493, 35.568565, 33.412880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703316, 35.784363, 32.936432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992550, 35.601048, 32.729698>,  <34.166092, 35.491058, 32.605656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992550, 35.601048, 32.729698>,  <33.703316, 35.784363, 32.936432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992550, 35.601048, 32.729698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655359, -0.218700, -0.722962,
		0.218290, 0.861478, -0.458480,
		0.723086, -0.458285, -0.516837,
		34.209476, 35.463562, 32.574646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486160, 35.969490, 32.257458>,  <33.703316, 35.784363, 32.936432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486160, 35.969490, 32.257458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720383, 35.645607, 32.241993>,  <33.860916, 35.451275, 32.232716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720383, 35.645607, 32.241993>,  <33.486160, 35.969490, 32.257458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720383, 35.645607, 32.241993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643619, -0.435389, -0.629438,
		0.492828, 0.393455, -0.776088,
		0.585555, -0.809710, -0.038663,
		33.896049, 35.402695, 32.230392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085278, 36.580467, 31.852854>,  <33.486160, 35.969490, 32.257458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085278, 36.580467, 31.852854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735615, 36.734867, 31.970743>,  <32.525818, 36.827507, 32.041477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735615, 36.734867, 31.970743>,  <33.085278, 36.580467, 31.852854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735615, 36.734867, 31.970743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482696, 0.623725, 0.614794,
		0.053481, 0.679687, -0.731550,
		-0.874153, 0.385996, 0.294725,
		32.473370, 36.850666, 32.059162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173916, 37.329903, 31.799238>,  <33.085278, 36.580467, 31.852854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173916, 37.329903, 31.799238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877163, 37.262360, 32.058807>,  <32.699112, 37.221832, 32.214550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877163, 37.262360, 32.058807>,  <33.173916, 37.329903, 31.799238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877163, 37.262360, 32.058807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429412, 0.623637, 0.653209,
		-0.514993, 0.763258, -0.390153,
		-0.741881, -0.168861, 0.648921,
		32.654598, 37.211700, 32.253483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904144, 37.960289, 32.093750>,  <33.173916, 37.329903, 31.799238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904144, 37.960289, 32.093750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803013, 37.667065, 32.346321>,  <32.742336, 37.491131, 32.497864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803013, 37.667065, 32.346321>,  <32.904144, 37.960289, 32.093750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803013, 37.667065, 32.346321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418598, 0.505508, 0.754478,
		-0.872270, 0.455067, 0.179052,
		-0.252826, -0.733059, 0.631429,
		32.727165, 37.447147, 32.535751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716084, 38.318329, 32.628239>,  <32.904144, 37.960289, 32.093750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716084, 38.318329, 32.628239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755043, 37.949024, 32.776890>,  <32.778419, 37.727444, 32.866081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755043, 37.949024, 32.776890>,  <32.716084, 38.318329, 32.628239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755043, 37.949024, 32.776890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291654, 0.383487, 0.876285,
		-0.951552, 0.023038, 0.306623,
		0.097398, -0.923259, 0.371627,
		32.784264, 37.672047, 32.888378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274605, 38.385418, 33.231194>,  <32.716084, 38.318329, 32.628239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274605, 38.385418, 33.231194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528313, 38.080162, 33.280701>,  <32.680538, 37.897007, 33.310406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528313, 38.080162, 33.280701>,  <32.274605, 38.385418, 33.231194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528313, 38.080162, 33.280701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236780, 0.344151, 0.908568,
		-0.735961, -0.546970, 0.398981,
		0.634268, -0.763141, 0.123770,
		32.718594, 37.851219, 33.317833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249447, 38.141193, 33.943794>,  <32.274605, 38.385418, 33.231194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249447, 38.141193, 33.943794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607632, 38.001251, 33.833706>,  <32.822544, 37.917286, 33.767651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607632, 38.001251, 33.833706>,  <32.249447, 38.141193, 33.943794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607632, 38.001251, 33.833706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424253, 0.483589, 0.765605,
		-0.134758, -0.802335, 0.581463,
		0.895461, -0.349858, -0.275225,
		32.876270, 37.896294, 33.751137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597069, 37.900295, 34.555981>,  <32.249447, 38.141193, 33.943794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597069, 37.900295, 34.555981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892578, 37.946777, 34.290436>,  <33.069881, 37.974667, 34.131107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892578, 37.946777, 34.290436>,  <32.597069, 37.900295, 34.555981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892578, 37.946777, 34.290436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530233, 0.507822, 0.678947,
		0.416021, -0.853589, 0.313549,
		0.738769, 0.116202, -0.663866,
		33.114208, 37.981640, 34.091274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267483, 37.926949, 35.025547>,  <32.597069, 37.900295, 34.555981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267483, 37.926949, 35.025547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386276, 38.037415, 34.659916>,  <33.457554, 38.103695, 34.440536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386276, 38.037415, 34.659916>,  <33.267483, 37.926949, 35.025547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386276, 38.037415, 34.659916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678877, 0.612122, 0.405503,
		0.671511, -0.740973, -0.005690,
		0.296984, 0.276162, -0.914076,
		33.475372, 38.120262, 34.385693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941196, 37.690861, 34.928829>,  <33.267483, 37.926949, 35.025547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941196, 37.690861, 34.928829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906914, 38.008972, 34.688766>,  <33.886345, 38.199841, 34.544727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906914, 38.008972, 34.688766>,  <33.941196, 37.690861, 34.928829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906914, 38.008972, 34.688766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599236, 0.522388, 0.606652,
		0.795972, -0.307641, -0.521331,
		-0.085706, 0.795278, -0.600155,
		33.881203, 38.247555, 34.508720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540184, 37.866840, 34.600590>,  <33.941196, 37.690861, 34.928829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540184, 37.866840, 34.600590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328110, 38.205914, 34.607975>,  <34.200863, 38.409355, 34.612408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328110, 38.205914, 34.607975>,  <34.540184, 37.866840, 34.600590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328110, 38.205914, 34.607975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687461, 0.417026, 0.594548,
		0.496284, 0.327918, -0.803848,
		-0.530188, 0.847679, 0.018468,
		34.169052, 38.460217, 34.613514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047684, 38.383755, 34.599785>,  <34.540184, 37.866840, 34.600590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047684, 38.383755, 34.599785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714352, 38.579525, 34.702564>,  <34.514351, 38.696987, 34.764233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714352, 38.579525, 34.702564>,  <35.047684, 38.383755, 34.599785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714352, 38.579525, 34.702564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550501, 0.692680, 0.465986,
		0.050085, 0.529769, -0.846662,
		-0.833331, 0.489427, 0.256946,
		34.464352, 38.726353, 34.779648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158710, 39.043442, 34.458195>,  <35.047684, 38.383755, 34.599785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158710, 39.043442, 34.458195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881348, 39.032425, 34.746204>,  <34.714931, 39.025814, 34.919010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881348, 39.032425, 34.746204>,  <35.158710, 39.043442, 34.458195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881348, 39.032425, 34.746204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552444, 0.621220, 0.555780,
		-0.462598, 0.783152, -0.415542,
		-0.693404, -0.027539, 0.720023,
		34.673328, 39.024162, 34.962212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452816, 39.555622, 34.768822>,  <35.158710, 39.043442, 34.458195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452816, 39.555622, 34.768822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164181, 39.413216, 35.006329>,  <34.991001, 39.327770, 35.148834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164181, 39.413216, 35.006329>,  <35.452816, 39.555622, 34.768822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164181, 39.413216, 35.006329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414330, 0.465038, 0.782349,
		-0.554655, 0.810550, -0.188057,
		-0.721587, -0.356016, 0.593772,
		34.947704, 39.306412, 35.184460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153542, 40.153580, 35.045414>,  <35.452816, 39.555622, 34.768822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153542, 40.153580, 35.045414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122044, 39.843166, 35.295719>,  <35.103146, 39.656918, 35.445900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122044, 39.843166, 35.295719>,  <35.153542, 40.153580, 35.045414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122044, 39.843166, 35.295719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362287, 0.562514, 0.743186,
		-0.928734, 0.285227, 0.236851,
		-0.078745, -0.776030, 0.625760,
		35.098419, 39.610355, 35.483448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519012, 40.351997, 34.502285>,  <35.153542, 40.153580, 35.045414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519012, 40.351997, 34.502285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669937, 40.030342, 34.318546>,  <35.760490, 39.837349, 34.208305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669937, 40.030342, 34.318546>,  <35.519012, 40.351997, 34.502285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669937, 40.030342, 34.318546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865308, -0.482852, 0.134517,
		-0.329965, 0.346720, -0.878014,
		0.377311, -0.804139, -0.459344,
		35.783131, 39.789101, 34.180744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627438, 40.732796, 33.882153>,  <35.519012, 40.351997, 34.502285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627438, 40.732796, 33.882153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012280, 40.662983, 33.798359>,  <36.243187, 40.621094, 33.748081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012280, 40.662983, 33.798359>,  <35.627438, 40.732796, 33.882153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012280, 40.662983, 33.798359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272660, -0.611233, -0.743001,
		0.001631, 0.771967, -0.635660,
		0.962109, -0.174531, -0.209488,
		36.300911, 40.610622, 33.735512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827911, 40.987064, 33.219704>,  <35.627438, 40.732796, 33.882153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827911, 40.987064, 33.219704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050323, 40.661144, 33.285355>,  <36.183769, 40.465591, 33.324745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050323, 40.661144, 33.285355>,  <35.827911, 40.987064, 33.219704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050323, 40.661144, 33.285355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300316, -0.381070, -0.874412,
		0.775012, 0.436908, -0.456582,
		0.556027, -0.814799, 0.164124,
		36.217133, 40.416706, 33.334591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038712, 40.852482, 32.524189>,  <35.827911, 40.987064, 33.219704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038712, 40.852482, 32.524189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068535, 40.516018, 32.738438>,  <36.086430, 40.314140, 32.866989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068535, 40.516018, 32.738438>,  <36.038712, 40.852482, 32.524189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068535, 40.516018, 32.738438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375739, -0.521232, -0.766249,
		0.923721, -0.144122, -0.354920,
		0.074563, -0.841157, 0.535626,
		36.090904, 40.263672, 32.899124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377365, 40.234707, 32.092098>,  <36.038712, 40.852482, 32.524189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377365, 40.234707, 32.092098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158379, 40.049557, 32.370960>,  <36.026985, 39.938465, 32.538277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158379, 40.049557, 32.370960>,  <36.377365, 40.234707, 32.092098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158379, 40.049557, 32.370960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369462, -0.613804, -0.697670,
		0.750852, -0.639523, 0.165022,
		-0.547467, -0.462877, 0.697154,
		35.994137, 39.910694, 32.580105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404934, 39.605373, 31.853695>,  <36.377365, 40.234707, 32.092098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404934, 39.605373, 31.853695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104668, 39.569256, 32.115486>,  <35.924507, 39.547585, 32.272560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104668, 39.569256, 32.115486>,  <36.404934, 39.605373, 31.853695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104668, 39.569256, 32.115486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427774, -0.688511, -0.585629,
		0.503493, -0.719583, 0.478220,
		-0.750669, -0.090290, 0.654480,
		35.879467, 39.542168, 32.311829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184902, 38.897976, 31.924202>,  <36.404934, 39.605373, 31.853695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184902, 38.897976, 31.924202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869270, 39.101639, 32.061668>,  <35.679890, 39.223835, 32.144150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869270, 39.101639, 32.061668>,  <36.184902, 38.897976, 31.924202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869270, 39.101639, 32.061668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597662, -0.507064, -0.621037,
		-0.141943, -0.695447, 0.704419,
		-0.789083, 0.509156, 0.343667,
		35.632545, 39.254387, 32.164768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718399, 38.438404, 32.012463>,  <36.184902, 38.897976, 31.924202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718399, 38.438404, 32.012463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489758, 38.766563, 32.018364>,  <35.352573, 38.963459, 32.021904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489758, 38.766563, 32.018364>,  <35.718399, 38.438404, 32.012463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489758, 38.766563, 32.018364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612760, -0.414843, -0.672630,
		-0.545704, -0.393517, 0.739832,
		-0.571606, 0.820396, 0.014750,
		35.318275, 39.012684, 32.022789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032185, 38.238586, 31.942940>,  <35.718399, 38.438404, 32.012463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032185, 38.238586, 31.942940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005379, 38.623440, 31.837255>,  <34.989296, 38.854351, 31.773846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005379, 38.623440, 31.837255>,  <35.032185, 38.238586, 31.942940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005379, 38.623440, 31.837255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618040, -0.247912, -0.746034,
		-0.783286, 0.113298, 0.611251,
		-0.067012, 0.962135, -0.264208,
		34.985275, 38.912079, 31.757994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387032, 38.445087, 32.043240>,  <35.032185, 38.238586, 31.942940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387032, 38.445087, 32.043240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533878, 38.690941, 31.763971>,  <34.621986, 38.838455, 31.596409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533878, 38.690941, 31.763971>,  <34.387032, 38.445087, 32.043240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533878, 38.690941, 31.763971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819496, -0.141381, -0.555371,
		-0.440061, 0.776036, 0.451790,
		0.367113, 0.614638, -0.698175,
		34.644012, 38.875332, 31.554520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837166, 38.939224, 31.785900>,  <34.387032, 38.445087, 32.043240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837166, 38.939224, 31.785900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118160, 38.940788, 31.501226>,  <34.286758, 38.941727, 31.330421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118160, 38.940788, 31.501226>,  <33.837166, 38.939224, 31.785900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118160, 38.940788, 31.501226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711682, 0.009626, -0.702435,
		0.004102, 0.999946, 0.009548,
		0.702489, 0.003913, -0.711683,
		34.328907, 38.941963, 31.287722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582325, 39.362465, 31.215717>,  <33.837166, 38.939224, 31.785900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582325, 39.362465, 31.215717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.861351, 39.125595, 31.054352>,  <34.028767, 38.983475, 30.957533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.861351, 39.125595, 31.054352>,  <33.582325, 39.362465, 31.215717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861351, 39.125595, 31.054352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571741, -0.120657, -0.811513,
		0.431879, 0.796728, -0.422734,
		0.697562, -0.592170, -0.403413,
		34.070618, 38.947945, 30.933329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681053, 39.593212, 30.483101>,  <33.582325, 39.362465, 31.215717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681053, 39.593212, 30.483101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844894, 39.228409, 30.474478>,  <33.943199, 39.009525, 30.469303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844894, 39.228409, 30.474478>,  <33.681053, 39.593212, 30.483101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844894, 39.228409, 30.474478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435377, -0.174661, -0.883142,
		0.801669, 0.371122, -0.468609,
		0.409602, -0.912010, -0.021558,
		33.967773, 38.954807, 30.468010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018211, 39.596264, 29.804075>,  <33.681053, 39.593212, 30.483101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018211, 39.596264, 29.804075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916634, 39.238869, 29.952234>,  <33.855686, 39.024433, 30.041130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916634, 39.238869, 29.952234>,  <34.018211, 39.596264, 29.804075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916634, 39.238869, 29.952234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202124, -0.325472, -0.923696,
		0.945864, -0.309433, -0.097943,
		-0.253945, -0.893487, 0.370396,
		33.840450, 38.970821, 30.063353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005360, 39.260212, 29.160086>,  <34.018211, 39.596264, 29.804075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005360, 39.260212, 29.160086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876526, 38.975910, 29.410234>,  <33.799225, 38.805328, 29.560324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876526, 38.975910, 29.410234>,  <34.005360, 39.260212, 29.160086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876526, 38.975910, 29.410234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271010, -0.563705, -0.780250,
		0.907090, -0.420791, -0.011058,
		-0.322089, -0.710754, 0.625370,
		33.779900, 38.762684, 29.597845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123306, 38.697723, 28.815052>,  <34.005360, 39.260212, 29.160086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123306, 38.697723, 28.815052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.859074, 38.556988, 29.080336>,  <33.700535, 38.472546, 29.239506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.859074, 38.556988, 29.080336>,  <34.123306, 38.697723, 28.815052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859074, 38.556988, 29.080336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207720, -0.763250, -0.611803,
		0.721449, -0.541905, 0.431102,
		-0.660578, -0.351836, 0.663211,
		33.660900, 38.451435, 29.279299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265568, 37.875961, 29.017841>,  <34.123306, 38.697723, 28.815052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265568, 37.875961, 29.017841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894825, 38.020897, 29.057114>,  <33.672379, 38.107861, 29.080677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894825, 38.020897, 29.057114>,  <34.265568, 37.875961, 29.017841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894825, 38.020897, 29.057114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319630, -0.624504, -0.712623,
		-0.196899, -0.691883, 0.694643,
		-0.926859, 0.362343, 0.098182,
		33.616768, 38.129601, 29.086569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997238, 37.379856, 28.793005>,  <34.265568, 37.875961, 29.017841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997238, 37.379856, 28.793005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685547, 37.630424, 28.801086>,  <33.498531, 37.780766, 28.805935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685547, 37.630424, 28.801086>,  <33.997238, 37.379856, 28.793005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685547, 37.630424, 28.801086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460637, -0.550548, -0.696212,
		-0.424996, -0.551814, 0.717552,
		-0.779226, 0.626418, 0.020206,
		33.451778, 37.818352, 28.807148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503311, 36.926750, 28.638767>,  <33.997238, 37.379856, 28.793005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503311, 36.926750, 28.638767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.343731, 37.287163, 28.570675>,  <33.247982, 37.503410, 28.529819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.343731, 37.287163, 28.570675>,  <33.503311, 36.926750, 28.638767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343731, 37.287163, 28.570675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463441, -0.358313, -0.810453,
		-0.791242, -0.244435, 0.560524,
		-0.398946, 0.901034, -0.170231,
		33.224049, 37.557472, 28.519606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769951, 36.818890, 28.382578>,  <33.503311, 36.926750, 28.638767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769951, 36.818890, 28.382578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885319, 37.176460, 28.245342>,  <32.954540, 37.391003, 28.163000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885319, 37.176460, 28.245342>,  <32.769951, 36.818890, 28.382578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885319, 37.176460, 28.245342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427450, -0.200422, -0.881543,
		-0.856797, 0.400908, 0.324303,
		0.288420, 0.893926, -0.343089,
		32.971844, 37.444637, 28.142416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145847, 37.171329, 28.140331>,  <32.769951, 36.818890, 28.382578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145847, 37.171329, 28.140331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462536, 37.332760, 27.956896>,  <32.652550, 37.429619, 27.846834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462536, 37.332760, 27.956896>,  <32.145847, 37.171329, 28.140331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462536, 37.332760, 27.956896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456989, -0.106892, -0.883026,
		-0.405391, 0.908679, 0.099803,
		0.791719, 0.403580, -0.458589,
		32.700050, 37.453835, 27.819319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814983, 37.441628, 27.657404>,  <32.145847, 37.171329, 28.140331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814983, 37.441628, 27.657404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187382, 37.461056, 27.512690>,  <32.410820, 37.472713, 27.425861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187382, 37.461056, 27.512690>,  <31.814983, 37.441628, 27.657404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187382, 37.461056, 27.512690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348529, -0.176352, -0.920558,
		-0.108511, 0.983128, -0.147256,
		0.930995, 0.048568, -0.361785,
		32.466679, 37.475628, 27.404154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788635, 37.953125, 27.119423>,  <31.814983, 37.441628, 27.657404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788635, 37.953125, 27.119423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.098156, 37.703270, 27.077360>,  <32.283871, 37.553356, 27.052122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.098156, 37.703270, 27.077360>,  <31.788635, 37.953125, 27.119423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098156, 37.703270, 27.077360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319744, -0.241875, -0.916111,
		0.546801, 0.742514, -0.386888,
		0.773804, -0.624635, -0.105157,
		32.330296, 37.515881, 27.045813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927284, 38.117058, 26.501926>,  <31.788635, 37.953125, 27.119423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927284, 38.117058, 26.501926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128670, 37.774921, 26.550777>,  <32.249500, 37.569641, 26.580088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128670, 37.774921, 26.550777>,  <31.927284, 38.117058, 26.501926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128670, 37.774921, 26.550777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067638, -0.179931, -0.981351,
		0.861365, 0.485814, -0.148443,
		0.503464, -0.855342, 0.122126,
		32.279709, 37.518318, 26.587416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433048, 38.062889, 25.888905>,  <31.927284, 38.117058, 26.501926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433048, 38.062889, 25.888905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404091, 37.689945, 26.030592>,  <32.386715, 37.466179, 26.115604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404091, 37.689945, 26.030592>,  <32.433048, 38.062889, 25.888905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404091, 37.689945, 26.030592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241476, -0.328198, -0.913223,
		0.967703, -0.151645, -0.201383,
		-0.072392, -0.932357, 0.354216,
		32.382374, 37.410236, 26.136856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967224, 37.597351, 25.569717>,  <32.433048, 38.062889, 25.888905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967224, 37.597351, 25.569717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666996, 37.368244, 25.701529>,  <32.486858, 37.230782, 25.780615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666996, 37.368244, 25.701529>,  <32.967224, 37.597351, 25.569717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666996, 37.368244, 25.701529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144691, -0.344127, -0.927708,
		0.644759, -0.743986, 0.175416,
		-0.750567, -0.572766, 0.329527,
		32.441826, 37.196415, 25.800386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075066, 36.892559, 25.276655>,  <32.967224, 37.597351, 25.569717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075066, 36.892559, 25.276655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688065, 36.927315, 25.371634>,  <32.455864, 36.948166, 25.428621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688065, 36.927315, 25.371634>,  <33.075066, 36.892559, 25.276655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688065, 36.927315, 25.371634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251453, -0.428976, -0.867612,
		0.026477, -0.899128, 0.436885,
		-0.967508, 0.086884, 0.237446,
		32.397812, 36.953381, 25.442867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851990, 36.306076, 24.886744>,  <33.075066, 36.892559, 25.276655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851990, 36.306076, 24.886744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529438, 36.523140, 24.980782>,  <32.335907, 36.653378, 25.037205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529438, 36.523140, 24.980782>,  <32.851990, 36.306076, 24.886744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529438, 36.523140, 24.980782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394469, -0.197365, -0.897464,
		-0.440615, -0.816437, 0.373213,
		-0.806382, 0.542657, 0.235097,
		32.287521, 36.685936, 25.051311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759056, 35.525742, 25.002934>,  <32.851990, 36.306076, 24.886744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759056, 35.525742, 25.002934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063290, 35.361931, 24.801420>,  <33.245831, 35.263645, 24.680511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063290, 35.361931, 24.801420>,  <32.759056, 35.525742, 25.002934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063290, 35.361931, 24.801420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615239, 0.206818, 0.760728,
		-0.207348, -0.888545, 0.409260,
		0.760583, -0.409529, -0.503785,
		33.291466, 35.239071, 24.650284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127491, 35.089596, 25.466892>,  <32.759056, 35.525742, 25.002934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127491, 35.089596, 25.466892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394394, 35.114460, 25.170002>,  <33.554535, 35.129379, 24.991867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394394, 35.114460, 25.170002>,  <33.127491, 35.089596, 25.466892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394394, 35.114460, 25.170002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739703, 0.061364, 0.670130,
		0.087201, -0.996178, -0.005034,
		0.667260, 0.062160, -0.742227,
		33.594570, 35.133110, 24.947334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685558, 34.524967, 25.501484>,  <33.127491, 35.089596, 25.466892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685558, 34.524967, 25.501484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858322, 34.824009, 25.299679>,  <33.961983, 35.003433, 25.178595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858322, 34.824009, 25.299679>,  <33.685558, 34.524967, 25.501484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858322, 34.824009, 25.299679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677058, 0.100799, 0.728994,
		0.595856, -0.656447, -0.462638,
		0.431912, 0.747608, -0.504514,
		33.987896, 35.048290, 25.148325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445869, 34.424271, 25.573841>,  <33.685558, 34.524967, 25.501484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445869, 34.424271, 25.573841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446777, 34.803471, 25.446535>,  <34.447323, 35.030991, 25.370152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446777, 34.803471, 25.446535>,  <34.445869, 34.424271, 25.573841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446777, 34.803471, 25.446535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757820, 0.206026, 0.619082,
		0.652460, -0.242595, -0.717944,
		0.002271, 0.947998, -0.318267,
		34.447460, 35.087872, 25.351055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112183, 34.648209, 25.531338>,  <34.445869, 34.424271, 25.573841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112183, 34.648209, 25.531338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905102, 34.984005, 25.597353>,  <34.780853, 35.185482, 25.636961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905102, 34.984005, 25.597353>,  <35.112183, 34.648209, 25.531338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905102, 34.984005, 25.597353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525115, 0.159487, 0.835954,
		0.675457, 0.519435, -0.523397,
		-0.517699, 0.839494, 0.165036,
		34.749790, 35.235855, 25.646864>
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
