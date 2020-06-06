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
	<24.454313, 35.173271, 35.046490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239412, 34.949680, 35.299126>,  <24.110472, 34.815525, 35.450706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239412, 34.949680, 35.299126>,  <24.454313, 35.173271, 35.046490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239412, 34.949680, 35.299126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674136, 0.165424, 0.719844,
		-0.506854, 0.812517, 0.287950,
		-0.537252, -0.558974, 0.631593,
		24.078238, 34.781990, 35.488602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508568, 35.571964, 35.768887>,  <24.454313, 35.173271, 35.046490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508568, 35.571964, 35.768887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414433, 35.183331, 35.779034>,  <24.357952, 34.950150, 35.785122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414433, 35.183331, 35.779034>,  <24.508568, 35.571964, 35.768887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414433, 35.183331, 35.779034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702310, -0.151958, 0.695463,
		-0.671845, 0.181485, 0.718114,
		-0.235339, -0.971582, 0.025367,
		24.343830, 34.891857, 35.786644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441919, 35.331223, 36.579243>,  <24.508568, 35.571964, 35.768887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441919, 35.331223, 36.579243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503767, 35.013039, 36.344860>,  <24.540876, 34.822128, 36.204231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503767, 35.013039, 36.344860>,  <24.441919, 35.331223, 36.579243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.503767, 35.013039, 36.344860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717123, -0.317595, 0.620378,
		-0.679579, -0.516124, 0.521333,
		0.154620, -0.795455, -0.585955,
		24.550154, 34.774403, 36.169075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.641846, 34.853657, 37.043083>,  <24.441919, 35.331223, 36.579243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.641846, 34.853657, 37.043083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772932, 34.683395, 36.705700>,  <24.851583, 34.581238, 36.503269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772932, 34.683395, 36.705700>,  <24.641846, 34.853657, 37.043083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772932, 34.683395, 36.705700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636107, -0.560682, 0.530099,
		-0.698549, -0.710252, 0.087015,
		0.327715, -0.425651, -0.843459,
		24.871246, 34.555698, 36.452663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588972, 34.030083, 37.072727>,  <24.641846, 34.853657, 37.043083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588972, 34.030083, 37.072727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865181, 34.159294, 36.813858>,  <25.030907, 34.236820, 36.658535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865181, 34.159294, 36.813858>,  <24.588972, 34.030083, 37.072727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865181, 34.159294, 36.813858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670882, -0.620471, 0.406120,
		-0.270364, -0.714611, -0.645162,
		0.690522, 0.323027, -0.647172,
		25.072338, 34.256203, 36.619705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745235, 33.452251, 36.642960>,  <24.588972, 34.030083, 37.072727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745235, 33.452251, 36.642960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050125, 33.711159, 36.640045>,  <25.233059, 33.866505, 36.638298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050125, 33.711159, 36.640045>,  <24.745235, 33.452251, 36.642960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050125, 33.711159, 36.640045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545592, -0.636347, 0.545337,
		0.348346, -0.419644, -0.838185,
		0.762224, 0.647273, -0.007286,
		25.278791, 33.905342, 36.637859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348551, 33.090397, 36.526546>,  <24.745235, 33.452251, 36.642960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348551, 33.090397, 36.526546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500736, 33.425747, 36.682686>,  <25.592047, 33.626957, 36.776371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500736, 33.425747, 36.682686>,  <25.348551, 33.090397, 36.526546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500736, 33.425747, 36.682686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723748, -0.532690, 0.438668,
		0.575705, 0.115618, -0.809442,
		0.380464, 0.838375, 0.390351,
		25.614876, 33.677261, 36.799789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070614, 32.948883, 36.460213>,  <25.348551, 33.090397, 36.526546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070614, 32.948883, 36.460213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056749, 33.221619, 36.752487>,  <26.048431, 33.385258, 36.927853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056749, 33.221619, 36.752487>,  <26.070614, 32.948883, 36.460213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056749, 33.221619, 36.752487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747791, -0.467355, 0.471581,
		0.663029, 0.562744, -0.493672,
		-0.034659, 0.681835, 0.730684,
		26.046352, 33.426170, 36.971691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868694, 33.136108, 36.609585>,  <26.070614, 32.948883, 36.460213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868694, 33.136108, 36.609585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654736, 33.193535, 36.942638>,  <26.526360, 33.227993, 37.142471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654736, 33.193535, 36.942638>,  <26.868694, 33.136108, 36.609585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654736, 33.193535, 36.942638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587691, -0.644799, 0.488726,
		0.607044, 0.750748, 0.260528,
		-0.534898, 0.143569, 0.832630,
		26.494267, 33.236607, 37.192429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380714, 33.227501, 37.120598>,  <26.868694, 33.136108, 36.609585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380714, 33.227501, 37.120598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062346, 33.118763, 37.336971>,  <26.871325, 33.053520, 37.466797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062346, 33.118763, 37.336971>,  <27.380714, 33.227501, 37.120598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062346, 33.118763, 37.336971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486644, -0.818791, 0.304564,
		0.360121, 0.505652, 0.783983,
		-0.795922, -0.271840, 0.540936,
		26.823568, 33.037212, 37.499252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710308, 32.885258, 37.720284>,  <27.380714, 33.227501, 37.120598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710308, 32.885258, 37.720284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337748, 32.771503, 37.629406>,  <27.114212, 32.703251, 37.574879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337748, 32.771503, 37.629406>,  <27.710308, 32.885258, 37.720284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337748, 32.771503, 37.629406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304101, -0.950974, -0.056307,
		-0.200039, -0.121533, 0.972221,
		-0.931401, -0.284390, -0.227190,
		27.058327, 32.686188, 37.561249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451059, 32.215717, 38.113983>,  <27.710308, 32.885258, 37.720284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451059, 32.215717, 38.113983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265003, 32.234932, 37.760410>,  <27.153370, 32.246460, 37.548267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265003, 32.234932, 37.760410>,  <27.451059, 32.215717, 38.113983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265003, 32.234932, 37.760410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096139, -0.989879, -0.104383,
		-0.880002, -0.133533, 0.455813,
		-0.465139, 0.048036, -0.883933,
		27.125462, 32.249344, 37.495232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059008, 31.670948, 37.848122>,  <27.451059, 32.215717, 38.113983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059008, 31.670948, 37.848122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792486, 31.389500, 37.749367>,  <27.632572, 31.220631, 37.690113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792486, 31.389500, 37.749367>,  <28.059008, 31.670948, 37.848122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792486, 31.389500, 37.749367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682565, 0.708819, -0.177993,
		0.300237, 0.049917, -0.952558,
		-0.666306, -0.703622, -0.246886,
		27.592594, 31.178413, 37.675301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706741, 32.053677, 37.398949>,  <28.059008, 31.670948, 37.848122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706741, 32.053677, 37.398949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463314, 31.771608, 37.544483>,  <27.317257, 31.602367, 37.631805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463314, 31.771608, 37.544483>,  <27.706741, 32.053677, 37.398949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463314, 31.771608, 37.544483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781854, 0.611162, -0.123233,
		-0.135463, -0.359463, -0.923275,
		-0.608568, -0.705172, 0.363837,
		27.280745, 31.560057, 37.653633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081379, 31.847742, 36.916824>,  <27.706741, 32.053677, 37.398949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081379, 31.847742, 36.916824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019526, 31.868433, 37.311470>,  <26.982414, 31.880848, 37.548260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019526, 31.868433, 37.311470>,  <27.081379, 31.847742, 36.916824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019526, 31.868433, 37.311470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573072, 0.808768, -0.132222,
		-0.804784, -0.585848, -0.095419,
		-0.154634, 0.051728, 0.986617,
		26.973135, 31.883951, 37.607456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301573, 31.775221, 37.107773>,  <27.081379, 31.847742, 36.916824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301573, 31.775221, 37.107773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493870, 31.971039, 37.398766>,  <26.609249, 32.088528, 37.573360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493870, 31.971039, 37.398766>,  <26.301573, 31.775221, 37.107773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493870, 31.971039, 37.398766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592723, 0.792822, -0.141822,
		-0.646193, -0.363016, 0.671308,
		0.480744, 0.489544, 0.727484,
		26.638092, 32.117901, 37.617012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875023, 32.083054, 37.667034>,  <26.301573, 31.775221, 37.107773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875023, 32.083054, 37.667034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214903, 32.293911, 37.671669>,  <26.418831, 32.420425, 37.674450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214903, 32.293911, 37.671669>,  <25.875023, 32.083054, 37.667034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214903, 32.293911, 37.671669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521060, 0.842851, -0.134533,
		-0.080686, 0.108274, 0.990842,
		0.849698, 0.527143, 0.011589,
		26.469812, 32.452053, 37.675144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773510, 32.647930, 38.134186>,  <25.875023, 32.083054, 37.667034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773510, 32.647930, 38.134186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104929, 32.769440, 37.946045>,  <26.303780, 32.842346, 37.833160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104929, 32.769440, 37.946045>,  <25.773510, 32.647930, 38.134186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104929, 32.769440, 37.946045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424014, 0.889028, -0.172745,
		0.365682, 0.342564, 0.865405,
		0.828546, 0.303775, -0.470354,
		26.353493, 32.860573, 37.804939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969069, 33.344265, 38.366879>,  <25.773510, 32.647930, 38.134186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969069, 33.344265, 38.366879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100101, 33.288902, 37.993027>,  <26.178720, 33.255684, 37.768715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100101, 33.288902, 37.993027>,  <25.969069, 33.344265, 38.366879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100101, 33.288902, 37.993027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511372, 0.805827, -0.298564,
		0.794474, 0.575749, 0.193198,
		0.327582, -0.138405, -0.934630,
		26.198376, 33.247379, 37.712639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220221, 33.977085, 38.084362>,  <25.969069, 33.344265, 38.366879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220221, 33.977085, 38.084362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116100, 33.761017, 37.764248>,  <26.053629, 33.631378, 37.572178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116100, 33.761017, 37.764248>,  <26.220221, 33.977085, 38.084362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116100, 33.761017, 37.764248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438982, 0.804450, -0.400194,
		0.859964, 0.247142, -0.446522,
		-0.260300, -0.540167, -0.800289,
		26.038010, 33.598969, 37.524162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632040, 34.150837, 37.393444>,  <26.220221, 33.977085, 38.084362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632040, 34.150837, 37.393444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245401, 34.048450, 37.388245>,  <26.013418, 33.987019, 37.385124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245401, 34.048450, 37.388245>,  <26.632040, 34.150837, 37.393444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245401, 34.048450, 37.388245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240823, 0.924428, -0.295699,
		0.087708, -0.282691, -0.955193,
		-0.966598, -0.255967, -0.013002,
		25.955421, 33.971661, 37.384346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027050, 34.743496, 37.390800>,  <26.632040, 34.150837, 37.393444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027050, 34.743496, 37.390800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908638, 34.413937, 37.197487>,  <25.837591, 34.216202, 37.081497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908638, 34.413937, 37.197487>,  <26.027050, 34.743496, 37.390800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908638, 34.413937, 37.197487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596676, 0.554605, -0.579992,
		0.745884, 0.116669, -0.655779,
		-0.296032, -0.823894, -0.483285,
		25.819828, 34.166767, 37.052502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170486, 34.844589, 36.561680>,  <26.027050, 34.743496, 37.390800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170486, 34.844589, 36.561680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896200, 34.557777, 36.611740>,  <25.731628, 34.385689, 36.641777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896200, 34.557777, 36.611740>,  <26.170486, 34.844589, 36.561680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896200, 34.557777, 36.611740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582096, 0.436987, -0.685716,
		0.436987, -0.543059, -0.717028,
		0.685716, 0.717028, -0.125154,
		25.690485, 34.342670, 36.649288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125381, 34.548595, 35.935890>,  <26.170486, 34.844589, 36.561680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125381, 34.548595, 35.935890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786705, 34.523403, 36.147228>,  <25.583500, 34.508286, 36.274033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786705, 34.523403, 36.147228>,  <26.125381, 34.548595, 35.935890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786705, 34.523403, 36.147228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481246, 0.514224, -0.709912,
		-0.226974, -0.855340, -0.465700,
		-0.846691, -0.062985, 0.528344,
		25.532698, 34.504509, 36.305733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639729, 34.271988, 35.470074>,  <26.125381, 34.548595, 35.935890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639729, 34.271988, 35.470074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460838, 34.481953, 35.759750>,  <25.353504, 34.607933, 35.933556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460838, 34.481953, 35.759750>,  <25.639729, 34.271988, 35.470074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460838, 34.481953, 35.759750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364429, 0.632481, -0.683491,
		-0.816812, -0.569590, -0.091566,
		-0.447224, 0.524914, 0.724193,
		25.326672, 34.639427, 35.977009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216396, 33.987465, 34.867985>,  <25.639729, 34.271988, 35.470074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216396, 33.987465, 34.867985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050821, 34.178223, 34.557831>,  <24.951477, 34.292679, 34.371738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050821, 34.178223, 34.557831>,  <25.216396, 33.987465, 34.867985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050821, 34.178223, 34.557831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772555, 0.634561, -0.022144,
		0.481471, -0.608197, -0.631097,
		-0.413937, 0.476895, -0.775388,
		24.926640, 34.321293, 34.325214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605452, 33.953793, 34.387062>,  <25.216396, 33.987465, 34.867985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605452, 33.953793, 34.387062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412365, 34.303860, 34.373985>,  <25.296513, 34.513901, 34.366138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412365, 34.303860, 34.373985>,  <25.605452, 33.953793, 34.387062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412365, 34.303860, 34.373985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875344, 0.480968, -0.049429,
		-0.027536, -0.052474, -0.998242,
		-0.482717, 0.875166, -0.032689,
		25.267550, 34.566410, 34.364178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735245, 34.375656, 33.816044>,  <25.605452, 33.953793, 34.387062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735245, 34.375656, 33.816044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638607, 34.620331, 34.117367>,  <25.580626, 34.767136, 34.298161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638607, 34.620331, 34.117367>,  <25.735245, 34.375656, 33.816044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638607, 34.620331, 34.117367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829756, 0.532724, -0.166462,
		-0.503127, 0.584845, -0.636254,
		-0.241593, 0.611688, 0.753307,
		25.566130, 34.803837, 34.343357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078581, 35.027737, 33.701180>,  <25.735245, 34.375656, 33.816044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078581, 35.027737, 33.701180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984196, 35.028904, 34.089882>,  <25.927565, 35.029606, 34.323105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984196, 35.028904, 34.089882>,  <26.078581, 35.027737, 33.701180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984196, 35.028904, 34.089882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872737, 0.440432, 0.210592,
		-0.427378, 0.897781, -0.106474,
		-0.235961, 0.002921, 0.971758,
		25.913408, 35.029781, 34.381409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962179, 35.716900, 33.958973>,  <26.078581, 35.027737, 33.701180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962179, 35.716900, 33.958973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114250, 35.454010, 34.219288>,  <26.205492, 35.296276, 34.375477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114250, 35.454010, 34.219288>,  <25.962179, 35.716900, 33.958973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114250, 35.454010, 34.219288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758362, 0.624299, 0.187451,
		-0.529482, 0.422266, 0.735758,
		0.380178, -0.657223, 0.650786,
		26.228304, 35.256844, 34.414524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962873, 35.915417, 34.670933>,  <25.962179, 35.716900, 33.958973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962873, 35.915417, 34.670933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280016, 35.682255, 34.599823>,  <26.470301, 35.542358, 34.557156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280016, 35.682255, 34.599823>,  <25.962873, 35.915417, 34.670933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280016, 35.682255, 34.599823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599367, 0.693129, 0.400415,
		-0.110183, -0.424022, 0.898924,
		0.792855, -0.582904, -0.177774,
		26.517872, 35.507385, 34.546490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274361, 35.754852, 35.308407>,  <25.962873, 35.915417, 34.670933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274361, 35.754852, 35.308407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555866, 35.767078, 35.024498>,  <26.724770, 35.774414, 34.854153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555866, 35.767078, 35.024498>,  <26.274361, 35.754852, 35.308407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555866, 35.767078, 35.024498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542601, 0.621775, 0.564783,
		0.458583, -0.782599, 0.420999,
		0.703765, 0.030565, -0.709775,
		26.766996, 35.776249, 34.811565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852076, 35.645897, 35.693291>,  <26.274361, 35.754852, 35.308407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852076, 35.645897, 35.693291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945656, 35.828438, 35.349892>,  <27.001804, 35.937962, 35.143852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945656, 35.828438, 35.349892>,  <26.852076, 35.645897, 35.693291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945656, 35.828438, 35.349892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506570, 0.696458, 0.508264,
		0.829851, -0.553797, -0.068235,
		0.233952, 0.456349, -0.858494,
		27.015841, 35.965343, 35.092342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446966, 35.950119, 35.790489>,  <26.852076, 35.645897, 35.693291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446966, 35.950119, 35.790489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336651, 36.164276, 35.471169>,  <27.270462, 36.292770, 35.279575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336651, 36.164276, 35.471169>,  <27.446966, 35.950119, 35.790489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336651, 36.164276, 35.471169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403194, 0.818354, 0.409551,
		0.872568, -0.208922, -0.441561,
		-0.275789, 0.535395, -0.798306,
		27.253914, 36.324894, 35.231678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833433, 36.557285, 35.747478>,  <27.446966, 35.950119, 35.790489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833433, 36.557285, 35.747478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533304, 36.690907, 35.519295>,  <27.353228, 36.771080, 35.382385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533304, 36.690907, 35.519295>,  <27.833433, 36.557285, 35.747478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533304, 36.690907, 35.519295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247774, 0.942134, 0.225812,
		0.612885, 0.028086, -0.789674,
		-0.750321, 0.334057, -0.570460,
		27.308208, 36.791122, 35.348156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876392, 37.185070, 36.101711>,  <27.833433, 36.557285, 35.747478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876392, 37.185070, 36.101711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711256, 37.165741, 35.737904>,  <27.612175, 37.154144, 35.519619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711256, 37.165741, 35.737904>,  <27.876392, 37.185070, 36.101711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711256, 37.165741, 35.737904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022097, 0.998829, -0.043038,
		0.910535, 0.002330, -0.413425,
		-0.412841, -0.048323, -0.909520,
		27.587404, 37.151245, 35.465046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022522, 37.187897, 36.265293>,  <27.876392, 37.185070, 36.101711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022522, 37.187897, 36.265293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304703, 37.160545, 36.547474>,  <27.474010, 37.144135, 36.716782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304703, 37.160545, 36.547474>,  <27.022522, 37.187897, 36.265293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304703, 37.160545, 36.547474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338246, -0.842192, -0.419884,
		0.622838, 0.534824, -0.570996,
		0.705452, -0.068383, 0.705451,
		27.516338, 37.140030, 36.759109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772226, 37.126152, 35.622547>,  <27.022522, 37.187897, 36.265293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772226, 37.126152, 35.622547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024754, 37.290306, 35.359329>,  <27.176270, 37.388798, 35.201401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024754, 37.290306, 35.359329>,  <26.772226, 37.126152, 35.622547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024754, 37.290306, 35.359329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158395, -0.762393, -0.627430,
		-0.759176, 0.500338, -0.416309,
		0.631318, 0.410389, -0.658041,
		27.214149, 37.413422, 35.161919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404953, 37.116165, 34.869389>,  <26.772226, 37.126152, 35.622547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404953, 37.116165, 34.869389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799467, 37.051052, 34.880283>,  <27.036175, 37.011986, 34.886822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799467, 37.051052, 34.880283>,  <26.404953, 37.116165, 34.869389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799467, 37.051052, 34.880283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131211, -0.873464, -0.468876,
		0.100119, 0.458871, -0.882844,
		0.986286, -0.162782, 0.027242,
		27.095352, 37.002216, 34.888454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827370, 36.997795, 34.208553>,  <26.404953, 37.116165, 34.869389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827370, 36.997795, 34.208553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992886, 36.798504, 34.513329>,  <27.092196, 36.678928, 34.696194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992886, 36.798504, 34.513329>,  <26.827370, 36.997795, 34.208553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992886, 36.798504, 34.513329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032978, -0.844602, -0.534378,
		0.909775, 0.195993, -0.365918,
		0.413789, -0.498231, 0.761934,
		27.117022, 36.649036, 34.741909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297277, 36.511780, 33.918667>,  <26.827370, 36.997795, 34.208553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297277, 36.511780, 33.918667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229605, 36.364403, 34.284317>,  <27.189001, 36.275974, 34.503708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229605, 36.364403, 34.284317>,  <27.297277, 36.511780, 33.918667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229605, 36.364403, 34.284317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163245, -0.904209, -0.394662,
		0.971972, -0.215996, 0.092828,
		-0.169181, -0.368446, 0.914125,
		27.178850, 36.253868, 34.558556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668568, 35.915073, 33.892895>,  <27.297277, 36.511780, 33.918667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668568, 35.915073, 33.892895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405634, 35.855877, 34.188465>,  <27.247873, 35.820358, 34.365807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405634, 35.855877, 34.188465>,  <27.668568, 35.915073, 33.892895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405634, 35.855877, 34.188465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137578, -0.940484, -0.310744,
		0.740934, -0.305923, 0.597853,
		-0.657335, -0.147990, 0.738925,
		27.208433, 35.811481, 34.410141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728668, 35.396805, 34.387188>,  <27.668568, 35.915073, 33.892895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728668, 35.396805, 34.387188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329945, 35.428596, 34.384167>,  <27.090712, 35.447670, 34.382355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329945, 35.428596, 34.384167>,  <27.728668, 35.396805, 34.387188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329945, 35.428596, 34.384167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079032, -0.995737, -0.047569,
		-0.011299, -0.046820, 0.998839,
		-0.996808, 0.079477, -0.007550,
		27.030903, 35.452438, 34.381901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818176, 34.950848, 35.095631>,  <27.728668, 35.396805, 34.387188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818176, 34.950848, 35.095631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148222, 35.127876, 35.236095>,  <28.346251, 35.234093, 35.320374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148222, 35.127876, 35.236095>,  <27.818176, 34.950848, 35.095631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148222, 35.127876, 35.236095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344244, -0.099020, 0.933644,
		0.447974, -0.891251, 0.070649,
		0.825116, 0.442569, 0.351166,
		28.395756, 35.260647, 35.341446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126427, 34.467251, 35.549671>,  <27.818176, 34.950848, 35.095631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126427, 34.467251, 35.549671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193310, 34.854733, 35.623047>,  <28.233438, 35.087223, 35.667072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193310, 34.854733, 35.623047>,  <28.126427, 34.467251, 35.549671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193310, 34.854733, 35.623047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425755, -0.096873, 0.899638,
		0.889255, -0.228526, 0.396234,
		0.167206, 0.968706, 0.183441,
		28.243471, 35.145344, 35.678078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124474, 34.031307, 34.940197>,  <28.126427, 34.467251, 35.549671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124474, 34.031307, 34.940197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800680, 33.986881, 35.170815>,  <27.606403, 33.960224, 35.309185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800680, 33.986881, 35.170815>,  <28.124474, 34.031307, 34.940197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800680, 33.986881, 35.170815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185899, 0.979910, -0.072239,
		-0.556936, -0.165654, -0.813868,
		-0.809484, -0.111065, 0.576542,
		27.557835, 33.953564, 35.343777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278055, 33.373718, 34.667229>,  <28.124474, 34.031307, 34.940197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278055, 33.373718, 34.667229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581436, 33.270596, 34.427799>,  <28.763464, 33.208721, 34.284142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581436, 33.270596, 34.427799>,  <28.278055, 33.373718, 34.667229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581436, 33.270596, 34.427799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642054, 0.137899, 0.754156,
		-0.111883, -0.956306, 0.270114,
		0.758452, -0.257805, -0.598571,
		28.808971, 33.193253, 34.248226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702730, 32.933205, 35.009602>,  <28.278055, 33.373718, 34.667229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702730, 32.933205, 35.009602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915588, 33.147247, 34.747158>,  <29.043303, 33.275673, 34.589691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915588, 33.147247, 34.747158>,  <28.702730, 32.933205, 35.009602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915588, 33.147247, 34.747158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602455, 0.305165, 0.737511,
		0.594869, -0.787741, -0.159985,
		0.532146, 0.535106, -0.656112,
		29.075232, 33.307777, 34.550323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484707, 32.870827, 35.074760>,  <28.702730, 32.933205, 35.009602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484707, 32.870827, 35.074760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389915, 33.233479, 34.935127>,  <29.333040, 33.451069, 34.851349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389915, 33.233479, 34.935127>,  <29.484707, 32.870827, 35.074760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389915, 33.233479, 34.935127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614067, 0.418223, 0.669336,
		0.752836, -0.055741, -0.655843,
		-0.236980, 0.906632, -0.349082,
		29.318821, 33.505466, 34.830402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195595, 32.717354, 34.817131>,  <29.484707, 32.870827, 35.074760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195595, 32.717354, 34.817131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451002, 32.415558, 34.877850>,  <30.604246, 32.234482, 34.914280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451002, 32.415558, 34.877850>,  <30.195595, 32.717354, 34.817131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451002, 32.415558, 34.877850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729802, 0.530986, -0.430632,
		0.244308, 0.385744, 0.889672,
		0.638516, -0.754491, 0.151793,
		30.642557, 32.189209, 34.923386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816744, 32.922935, 35.018559>,  <30.195595, 32.717354, 34.817131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816744, 32.922935, 35.018559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911552, 32.582527, 34.831116>,  <30.968437, 32.378284, 34.718651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911552, 32.582527, 34.831116>,  <30.816744, 32.922935, 35.018559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911552, 32.582527, 34.831116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545177, 0.515755, -0.660893,
		0.804117, -0.098827, 0.586199,
		0.237021, -0.851017, -0.468605,
		30.982658, 32.327221, 34.690533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537857, 32.877369, 34.981174>,  <30.816744, 32.922935, 35.018559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537857, 32.877369, 34.981174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360447, 32.682381, 34.680336>,  <31.254000, 32.565388, 34.499832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360447, 32.682381, 34.680336>,  <31.537857, 32.877369, 34.981174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360447, 32.682381, 34.680336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572750, 0.491293, -0.656193,
		0.689378, -0.721804, 0.061299,
		-0.443527, -0.487474, -0.752100,
		31.227388, 32.536137, 34.454704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048897, 33.287479, 34.766094>,  <31.537857, 32.877369, 34.981174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048897, 33.287479, 34.766094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222836, 33.105007, 34.455532>,  <32.327198, 32.995525, 34.269196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222836, 33.105007, 34.455532>,  <32.048897, 33.287479, 34.766094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222836, 33.105007, 34.455532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891327, -0.095256, -0.443242,
		0.128239, 0.884776, -0.448024,
		0.434847, -0.456177, -0.776409,
		32.353291, 32.968155, 34.222610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349480, 33.965855, 34.803585>,  <32.048897, 33.287479, 34.766094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349480, 33.965855, 34.803585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611523, 33.696693, 34.941013>,  <32.768749, 33.535198, 35.023468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611523, 33.696693, 34.941013>,  <32.349480, 33.965855, 34.803585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611523, 33.696693, 34.941013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732383, 0.453866, -0.507563,
		0.185606, 0.584132, 0.790152,
		0.655107, -0.672901, 0.343568,
		32.808056, 33.494823, 35.044083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967728, 34.324379, 35.041203>,  <32.349480, 33.965855, 34.803585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967728, 34.324379, 35.041203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080559, 33.952145, 34.947876>,  <33.148258, 33.728802, 34.891880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080559, 33.952145, 34.947876>,  <32.967728, 34.324379, 35.041203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080559, 33.952145, 34.947876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831801, 0.358402, -0.423858,
		0.478059, -0.074512, 0.875162,
		0.282077, -0.930589, -0.233317,
		33.165180, 33.672966, 34.877880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676891, 34.206963, 35.083336>,  <32.967728, 34.324379, 35.041203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676891, 34.206963, 35.083336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584949, 33.904545, 34.838203>,  <33.529785, 33.723095, 34.691124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584949, 33.904545, 34.838203>,  <33.676891, 34.206963, 35.083336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584949, 33.904545, 34.838203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765132, 0.248764, -0.593877,
		0.601448, -0.605401, 0.521295,
		-0.229854, -0.756046, -0.612831,
		33.515995, 33.677731, 34.654354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290443, 33.875328, 34.868599>,  <33.676891, 34.206963, 35.083336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290443, 33.875328, 34.868599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026367, 33.812008, 34.574909>,  <33.867920, 33.774017, 34.398697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026367, 33.812008, 34.574909>,  <34.290443, 33.875328, 34.868599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026367, 33.812008, 34.574909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720468, 0.142831, -0.678620,
		0.212296, -0.977006, 0.019755,
		-0.660194, -0.158301, -0.734224,
		33.828308, 33.764519, 34.354641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488102, 33.308407, 34.410282>,  <34.290443, 33.875328, 34.868599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488102, 33.308407, 34.410282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254082, 33.564632, 34.211327>,  <34.113670, 33.718369, 34.091953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254082, 33.564632, 34.211327>,  <34.488102, 33.308407, 34.410282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254082, 33.564632, 34.211327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670209, 0.036540, -0.741272,
		-0.456660, -0.767032, -0.450692,
		-0.585048, 0.640568, -0.497385,
		34.078568, 33.756802, 34.062111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282784, 33.053722, 33.723564>,  <34.488102, 33.308407, 34.410282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282784, 33.053722, 33.723564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325623, 33.450989, 33.705002>,  <34.351326, 33.689350, 33.693867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325623, 33.450989, 33.705002>,  <34.282784, 33.053722, 33.723564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325623, 33.450989, 33.705002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680667, -0.107261, -0.724698,
		-0.724722, 0.046032, -0.687502,
		0.107102, 0.993165, -0.046401,
		34.357754, 33.748940, 33.691082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873356, 33.461147, 33.131054>,  <34.282784, 33.053722, 33.723564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873356, 33.461147, 33.131054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236256, 33.608665, 33.211941>,  <34.453995, 33.697174, 33.260471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236256, 33.608665, 33.211941>,  <33.873356, 33.461147, 33.131054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236256, 33.608665, 33.211941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318766, -0.289254, -0.902618,
		-0.274387, 0.883359, -0.379984,
		0.907248, 0.368793, 0.202218,
		34.508430, 33.719303, 33.272606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070297, 33.936523, 32.585659>,  <33.873356, 33.461147, 33.131054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070297, 33.936523, 32.585659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385700, 33.746304, 32.741669>,  <34.574940, 33.632172, 32.835274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385700, 33.746304, 32.741669>,  <34.070297, 33.936523, 32.585659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385700, 33.746304, 32.741669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355717, -0.164707, -0.919966,
		0.501725, 0.864134, 0.039288,
		0.788503, -0.475545, 0.390025,
		34.622250, 33.603642, 32.858677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671566, 34.225922, 32.258404>,  <34.070297, 33.936523, 32.585659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671566, 34.225922, 32.258404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774323, 33.867252, 32.402618>,  <34.835976, 33.652050, 32.489147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774323, 33.867252, 32.402618>,  <34.671566, 34.225922, 32.258404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774323, 33.867252, 32.402618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353633, -0.259974, -0.898530,
		0.899417, 0.358324, 0.250307,
		0.256891, -0.896670, 0.360541,
		34.851391, 33.598251, 32.510780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325157, 34.244289, 32.312511>,  <34.671566, 34.225922, 32.258404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325157, 34.244289, 32.312511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166874, 33.885921, 32.231770>,  <35.071903, 33.670902, 32.183323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166874, 33.885921, 32.231770>,  <35.325157, 34.244289, 32.312511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166874, 33.885921, 32.231770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415180, 0.021535, -0.909484,
		0.819169, -0.443701, 0.363445,
		-0.395712, -0.895916, -0.201857,
		35.048161, 33.617146, 32.171211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778080, 33.729034, 32.112949>,  <35.325157, 34.244289, 32.312511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778080, 33.729034, 32.112949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427898, 33.669876, 31.928900>,  <35.217789, 33.634380, 31.818470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427898, 33.669876, 31.928900>,  <35.778080, 33.729034, 32.112949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427898, 33.669876, 31.928900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469740, -0.036395, -0.882054,
		0.113708, -0.988333, 0.101335,
		-0.875451, -0.147897, -0.460121,
		35.165264, 33.625507, 31.790863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719395, 33.104267, 31.763445>,  <35.778080, 33.729034, 32.112949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719395, 33.104267, 31.763445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420822, 33.297398, 31.580261>,  <35.241680, 33.413277, 31.470352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420822, 33.297398, 31.580261>,  <35.719395, 33.104267, 31.763445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420822, 33.297398, 31.580261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439091, -0.159770, -0.884123,
		-0.500046, -0.861017, -0.092748,
		-0.746427, 0.482827, -0.457957,
		35.196896, 33.442245, 31.442875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426186, 32.696430, 31.174715>,  <35.719395, 33.104267, 31.763445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426186, 32.696430, 31.174715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398060, 33.091660, 31.119923>,  <35.381184, 33.328796, 31.087048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398060, 33.091660, 31.119923>,  <35.426186, 32.696430, 31.174715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398060, 33.091660, 31.119923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448866, -0.091293, -0.888923,
		-0.890829, -0.123986, -0.437095,
		-0.070310, 0.988075, -0.136979,
		35.376968, 33.388081, 31.078829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108212, 32.937134, 30.526590>,  <35.426186, 32.696430, 31.174715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108212, 32.937134, 30.526590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369095, 33.216614, 30.644192>,  <35.525623, 33.384304, 30.714752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369095, 33.216614, 30.644192>,  <35.108212, 32.937134, 30.526590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369095, 33.216614, 30.644192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350683, 0.065740, -0.934184,
		-0.672045, 0.712384, -0.202147,
		0.652209, 0.698704, 0.294001,
		35.564758, 33.426224, 30.732391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077610, 33.336418, 29.964933>,  <35.108212, 32.937134, 30.526590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077610, 33.336418, 29.964933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394733, 33.487720, 30.156088>,  <35.585007, 33.578503, 30.270781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394733, 33.487720, 30.156088>,  <35.077610, 33.336418, 29.964933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394733, 33.487720, 30.156088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489714, 0.071414, -0.868953,
		-0.362813, 0.922943, -0.128618,
		0.792809, 0.378254, 0.477888,
		35.632576, 33.601196, 30.299454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207855, 33.989162, 29.746954>,  <35.077610, 33.336418, 29.964933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207855, 33.989162, 29.746954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548695, 33.814793, 29.862818>,  <35.753197, 33.710171, 29.932335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548695, 33.814793, 29.862818>,  <35.207855, 33.989162, 29.746954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548695, 33.814793, 29.862818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333411, 0.025495, -0.942437,
		0.403446, 0.899622, 0.167066,
		0.852097, -0.435924, 0.289658,
		35.804325, 33.684017, 29.949715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667965, 34.434040, 29.481359>,  <35.207855, 33.989162, 29.746954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667965, 34.434040, 29.481359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881912, 34.105804, 29.561918>,  <36.010281, 33.908863, 29.610254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881912, 34.105804, 29.561918>,  <35.667965, 34.434040, 29.481359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881912, 34.105804, 29.561918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429708, 0.058942, -0.901042,
		0.727510, 0.568477, 0.384138,
		0.534864, -0.820585, 0.201398,
		36.042370, 33.859631, 29.622337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305176, 34.607597, 29.261078>,  <35.667965, 34.434040, 29.481359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305176, 34.607597, 29.261078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288891, 34.208359, 29.279648>,  <36.279121, 33.968815, 29.290791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288891, 34.208359, 29.279648>,  <36.305176, 34.607597, 29.261078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288891, 34.208359, 29.279648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386474, -0.058577, -0.920438,
		0.921401, -0.019527, 0.388122,
		-0.040708, -0.998092, 0.046426,
		36.276680, 33.908932, 29.293575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996845, 34.502728, 29.048279>,  <36.305176, 34.607597, 29.261078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996845, 34.502728, 29.048279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774696, 34.177197, 28.979874>,  <36.641407, 33.981876, 28.938829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774696, 34.177197, 28.979874>,  <36.996845, 34.502728, 29.048279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774696, 34.177197, 28.979874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451772, -0.122607, -0.883668,
		0.698186, -0.568025, 0.435757,
		-0.555373, -0.813828, -0.171015,
		36.608086, 33.933048, 28.928570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413067, 34.076653, 28.705658>,  <36.996845, 34.502728, 29.048279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413067, 34.076653, 28.705658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086079, 33.871475, 28.600870>,  <36.889885, 33.748371, 28.537998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086079, 33.871475, 28.600870>,  <37.413067, 34.076653, 28.705658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086079, 33.871475, 28.600870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379968, -0.138462, -0.914578,
		0.432851, -0.847183, 0.308090,
		-0.817474, -0.512941, -0.261969,
		36.840836, 33.717594, 28.522280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667782, 33.356857, 28.410866>,  <37.413067, 34.076653, 28.705658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667782, 33.356857, 28.410866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298222, 33.396751, 28.263102>,  <37.076485, 33.420689, 28.174442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298222, 33.396751, 28.263102>,  <37.667782, 33.356857, 28.410866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298222, 33.396751, 28.263102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318136, -0.336204, -0.886429,
		-0.212605, -0.936493, 0.278889,
		-0.923899, 0.099735, -0.369411,
		37.021053, 33.426674, 28.152279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528557, 32.784073, 28.111622>,  <37.667782, 33.356857, 28.410866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528557, 32.784073, 28.111622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291573, 33.048729, 27.927788>,  <37.149380, 33.207523, 27.817488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291573, 33.048729, 27.927788>,  <37.528557, 32.784073, 28.111622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291573, 33.048729, 27.927788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292031, -0.355297, -0.887965,
		-0.750803, -0.660300, 0.017281,
		-0.592463, 0.661641, -0.459586,
		37.113834, 33.247223, 27.789911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471886, 32.441612, 27.489754>,  <37.528557, 32.784073, 28.111622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471886, 32.441612, 27.489754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323540, 32.795227, 27.375957>,  <37.234531, 33.007397, 27.307680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323540, 32.795227, 27.375957>,  <37.471886, 32.441612, 27.489754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323540, 32.795227, 27.375957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296587, -0.177548, -0.938357,
		-0.880054, -0.432380, -0.196348,
		-0.370865, 0.884039, -0.284490,
		37.212280, 33.060440, 27.290611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064983, 32.190884, 26.997076>,  <37.471886, 32.441612, 27.489754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064983, 32.190884, 26.997076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139530, 32.580833, 26.948275>,  <37.184258, 32.814804, 26.918995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139530, 32.580833, 26.948275>,  <37.064983, 32.190884, 26.997076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139530, 32.580833, 26.948275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291901, -0.173513, -0.940578,
		-0.938115, 0.139682, -0.316905,
		0.186369, 0.974875, -0.122002,
		37.195442, 32.873295, 26.911674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721916, 32.410049, 26.353821>,  <37.064983, 32.190884, 26.997076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721916, 32.410049, 26.353821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981121, 32.712532, 26.390099>,  <37.136642, 32.894024, 26.411865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981121, 32.712532, 26.390099>,  <36.721916, 32.410049, 26.353821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981121, 32.712532, 26.390099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304640, -0.148209, -0.940866,
		-0.698051, 0.637322, -0.326414,
		0.648011, 0.756211, 0.090697,
		37.175526, 32.939396, 26.417307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615025, 32.814194, 25.710743>,  <36.721916, 32.410049, 26.353821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615025, 32.814194, 25.710743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975853, 32.886692, 25.867416>,  <37.192348, 32.930191, 25.961420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975853, 32.886692, 25.867416>,  <36.615025, 32.814194, 25.710743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975853, 32.886692, 25.867416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419031, -0.150500, -0.895412,
		-0.103339, 0.971854, -0.211708,
		0.902072, 0.181243, 0.391685,
		37.246475, 32.941067, 25.984922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924381, 33.315205, 25.417858>,  <36.615025, 32.814194, 25.710743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924381, 33.315205, 25.417858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235649, 33.111088, 25.564314>,  <37.422409, 32.988617, 25.652187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235649, 33.111088, 25.564314>,  <36.924381, 33.315205, 25.417858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235649, 33.111088, 25.564314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388323, -0.067266, -0.919065,
		0.493623, 0.857365, 0.145816,
		0.778165, -0.510296, 0.366138,
		37.469097, 32.958000, 25.674156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530231, 33.529911, 24.999533>,  <36.924381, 33.315205, 25.417858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530231, 33.529911, 24.999533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674793, 33.201839, 25.176931>,  <37.761532, 33.004997, 25.283371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674793, 33.201839, 25.176931>,  <37.530231, 33.529911, 24.999533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674793, 33.201839, 25.176931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406482, -0.289475, -0.866589,
		0.839140, 0.493466, 0.228770,
		0.361409, -0.820180, 0.443496,
		37.783215, 32.955784, 25.309980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258778, 33.491470, 24.850086>,  <37.530231, 33.529911, 24.999533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258778, 33.491470, 24.850086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128681, 33.123161, 24.936253>,  <38.050625, 32.902176, 24.987953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128681, 33.123161, 24.936253>,  <38.258778, 33.491470, 24.850086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128681, 33.123161, 24.936253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362674, -0.331840, -0.870833,
		0.873319, -0.205105, 0.441867,
		-0.325241, -0.920768, 0.215415,
		38.031109, 32.846931, 25.000877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786381, 33.127766, 24.702316>,  <38.258778, 33.491470, 24.850086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786381, 33.127766, 24.702316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498203, 32.850361, 24.701729>,  <38.325298, 32.683918, 24.701376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498203, 32.850361, 24.701729>,  <38.786381, 33.127766, 24.702316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498203, 32.850361, 24.701729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389336, -0.402701, -0.828402,
		0.573914, -0.597390, 0.560132,
		-0.720445, -0.693511, -0.001469,
		38.282070, 32.642307, 24.701288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087692, 32.506851, 24.658213>,  <38.786381, 33.127766, 24.702316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087692, 32.506851, 24.658213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723476, 32.412479, 24.522415>,  <38.504948, 32.355858, 24.440937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723476, 32.412479, 24.522415>,  <39.087692, 32.506851, 24.658213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723476, 32.412479, 24.522415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402612, -0.319458, -0.857817,
		0.093928, -0.917760, 0.385867,
		-0.910539, -0.235928, -0.339495,
		38.450314, 32.341702, 24.420567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212330, 31.913338, 24.242193>,  <39.087692, 32.506851, 24.658213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212330, 31.913338, 24.242193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848976, 32.020981, 24.114178>,  <38.630966, 32.085567, 24.037369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848976, 32.020981, 24.114178>,  <39.212330, 31.913338, 24.242193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848976, 32.020981, 24.114178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223377, -0.334712, -0.915462,
		-0.353490, -0.903074, 0.243930,
		-0.908376, 0.269119, -0.320043,
		38.576462, 32.101715, 24.018166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971310, 31.302189, 23.806738>,  <39.212330, 31.913338, 24.242193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971310, 31.302189, 23.806738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743023, 31.616583, 23.711649>,  <38.606052, 31.805220, 23.654594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743023, 31.616583, 23.711649>,  <38.971310, 31.302189, 23.806738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743023, 31.616583, 23.711649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292443, -0.075970, -0.953260,
		-0.767308, -0.613561, -0.186499,
		-0.570715, 0.785984, -0.237724,
		38.571808, 31.852379, 23.640331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675468, 31.086174, 23.289808>,  <38.971310, 31.302189, 23.806738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675468, 31.086174, 23.289808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671757, 31.486048, 23.280504>,  <38.669529, 31.725973, 23.274921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671757, 31.486048, 23.280504>,  <38.675468, 31.086174, 23.289808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671757, 31.486048, 23.280504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275200, -0.019808, -0.961183,
		-0.961342, -0.015321, -0.274930,
		-0.009280, 0.999686, -0.023259,
		38.668972, 31.785954, 23.273527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600056, 31.231329, 22.648008>,  <38.675468, 31.086174, 23.289808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600056, 31.231329, 22.648008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744740, 31.579309, 22.782082>,  <38.831551, 31.788097, 22.862526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744740, 31.579309, 22.782082>,  <38.600056, 31.231329, 22.648008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744740, 31.579309, 22.782082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552323, 0.089679, -0.828793,
		-0.751069, 0.484914, -0.448056,
		0.361712, 0.869952, 0.335184,
		38.853252, 31.840296, 22.882637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566246, 31.806862, 22.084986>,  <38.600056, 31.231329, 22.648008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566246, 31.806862, 22.084986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846985, 31.915369, 22.348446>,  <39.015427, 31.980473, 22.506523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846985, 31.915369, 22.348446>,  <38.566246, 31.806862, 22.084986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846985, 31.915369, 22.348446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570534, 0.339548, -0.747795,
		-0.426497, 0.900622, 0.083544,
		0.701848, 0.271268, 0.658652,
		39.057541, 31.996750, 22.546041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728191, 32.442776, 21.835192>,  <38.566246, 31.806862, 22.084986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728191, 32.442776, 21.835192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036846, 32.316360, 22.055986>,  <39.222038, 32.240513, 22.188463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036846, 32.316360, 22.055986>,  <38.728191, 32.442776, 21.835192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036846, 32.316360, 22.055986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630688, 0.267644, -0.728422,
		0.082474, 0.910212, 0.405848,
		0.771641, -0.316039, 0.551986,
		39.268337, 32.221550, 22.221582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168743, 32.820736, 21.570513>,  <38.728191, 32.442776, 21.835192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168743, 32.820736, 21.570513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358501, 32.533352, 21.773989>,  <39.472359, 32.360924, 21.896074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358501, 32.533352, 21.773989>,  <39.168743, 32.820736, 21.570513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358501, 32.533352, 21.773989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696068, -0.047616, -0.716395,
		0.538920, 0.693941, 0.477505,
		0.474399, -0.718456, 0.508692,
		39.500820, 32.317814, 21.926596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882996, 33.001862, 21.629623>,  <39.168743, 32.820736, 21.570513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882996, 33.001862, 21.629623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857220, 32.604965, 21.672159>,  <39.841755, 32.366829, 21.697681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857220, 32.604965, 21.672159>,  <39.882996, 33.001862, 21.629623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857220, 32.604965, 21.672159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537139, -0.124297, -0.834286,
		0.841029, 0.003359, 0.540980,
		-0.064440, -0.992239, 0.106342,
		39.837887, 32.307293, 21.704062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550171, 32.766506, 21.387913>,  <39.882996, 33.001862, 21.629623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550171, 32.766506, 21.387913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296539, 32.461765, 21.334965>,  <40.144360, 32.278919, 21.303196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296539, 32.461765, 21.334965>,  <40.550171, 32.766506, 21.387913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296539, 32.461765, 21.334965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442497, -0.217103, -0.870094,
		0.634149, -0.610279, 0.474779,
		-0.634076, -0.761857, -0.132370,
		40.106316, 32.233208, 21.295254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020859, 32.165974, 21.253874>,  <40.550171, 32.766506, 21.387913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020859, 32.165974, 21.253874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663692, 32.069893, 21.101557>,  <40.449394, 32.012245, 21.010166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663692, 32.069893, 21.101557>,  <41.020859, 32.165974, 21.253874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663692, 32.069893, 21.101557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441358, -0.300016, -0.845691,
		0.088895, -0.923197, 0.373905,
		-0.892917, -0.240204, -0.380790,
		40.395817, 31.997831, 20.987320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114758, 31.408575, 21.019901>,  <41.020859, 32.165974, 21.253874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114758, 31.408575, 21.019901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779659, 31.568270, 20.870880>,  <40.578602, 31.664087, 20.781467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779659, 31.568270, 20.870880>,  <41.114758, 31.408575, 21.019901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779659, 31.568270, 20.870880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254402, -0.318336, -0.913204,
		-0.483182, -0.859809, 0.165118,
		-0.837744, 0.399237, -0.372551,
		40.528336, 31.688040, 20.759115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751167, 30.936878, 20.785963>,  <41.114758, 31.408575, 21.019901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751167, 30.936878, 20.785963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662296, 31.264986, 20.575138>,  <40.608974, 31.461851, 20.448643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662296, 31.264986, 20.575138>,  <40.751167, 30.936878, 20.785963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662296, 31.264986, 20.575138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351929, -0.436661, -0.827933,
		-0.909276, -0.369436, -0.191661,
		-0.222177, 0.820271, -0.527060,
		40.595642, 31.511066, 20.417021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554310, 30.703190, 20.170603>,  <40.751167, 30.936878, 20.785963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554310, 30.703190, 20.170603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639706, 31.083406, 20.080362>,  <40.690941, 31.311537, 20.026218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639706, 31.083406, 20.080362>,  <40.554310, 30.703190, 20.170603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639706, 31.083406, 20.080362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352878, -0.290364, -0.889475,
		-0.910989, 0.110281, -0.397413,
		0.213487, 0.950540, -0.225602,
		40.703751, 31.368568, 20.012682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289261, 30.759291, 19.394772>,  <40.554310, 30.703190, 20.170603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289261, 30.759291, 19.394772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542889, 31.051813, 19.495289>,  <40.695065, 31.227325, 19.555599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542889, 31.051813, 19.495289>,  <40.289261, 30.759291, 19.394772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542889, 31.051813, 19.495289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648720, -0.326199, -0.687573,
		-0.420853, 0.598989, -0.681245,
		0.634070, 0.731304, 0.251294,
		40.733109, 31.271204, 19.570677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390217, 31.039888, 18.744627>,  <40.289261, 30.759291, 19.394772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390217, 31.039888, 18.744627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684479, 31.142839, 18.995247>,  <40.861038, 31.204611, 19.145618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684479, 31.142839, 18.995247>,  <40.390217, 31.039888, 18.744627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684479, 31.142839, 18.995247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675676, -0.343884, -0.652079,
		0.047629, 0.903051, -0.426885,
		0.735659, 0.257378, 0.626548,
		40.905178, 31.220053, 19.183212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693569, 31.501585, 18.324467>,  <40.390217, 31.039888, 18.744627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693569, 31.501585, 18.324467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961544, 31.395430, 18.601814>,  <41.122330, 31.331738, 18.768223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961544, 31.395430, 18.601814>,  <40.693569, 31.501585, 18.324467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961544, 31.395430, 18.601814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686736, -0.133355, -0.714570,
		0.282101, 0.954875, 0.092912,
		0.669935, -0.265387, 0.693367,
		41.162525, 31.315813, 18.809824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249451, 31.728521, 18.101351>,  <40.693569, 31.501585, 18.324467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249451, 31.728521, 18.101351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365120, 31.428858, 18.339725>,  <41.434521, 31.249060, 18.482750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365120, 31.428858, 18.339725>,  <41.249451, 31.728521, 18.101351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365120, 31.428858, 18.339725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717028, -0.242944, -0.653336,
		0.634233, 0.616228, 0.466917,
		0.289170, -0.749160, 0.595936,
		41.451870, 31.204109, 18.518507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899731, 31.791445, 17.975594>,  <41.249451, 31.728521, 18.101351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899731, 31.791445, 17.975594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883636, 31.442799, 18.171007>,  <41.873981, 31.233610, 18.288256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883636, 31.442799, 18.171007>,  <41.899731, 31.791445, 17.975594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883636, 31.442799, 18.171007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919438, -0.223705, -0.323403,
		0.391171, 0.436168, 0.810397,
		-0.040232, -0.871615, 0.488536,
		41.871567, 31.181314, 18.317568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511662, 31.677912, 18.431690>,  <41.899731, 31.791445, 17.975594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511662, 31.677912, 18.431690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367580, 31.316961, 18.337055>,  <42.281132, 31.100391, 18.280273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367580, 31.316961, 18.337055>,  <42.511662, 31.677912, 18.431690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367580, 31.316961, 18.337055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881549, -0.246297, -0.402751,
		0.305162, -0.353636, 0.884205,
		-0.360205, -0.902374, -0.236587,
		42.259518, 31.046249, 18.266079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072422, 31.188313, 18.637049>,  <42.511662, 31.677912, 18.431690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072422, 31.188313, 18.637049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829788, 31.015934, 18.369814>,  <42.684208, 30.912506, 18.209473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829788, 31.015934, 18.369814>,  <43.072422, 31.188313, 18.637049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829788, 31.015934, 18.369814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782097, -0.474356, -0.404118,
		-0.142757, -0.767639, 0.624781,
		-0.606585, -0.430948, -0.668085,
		42.647812, 30.886650, 18.169388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420776, 30.576490, 18.565235>,  <43.072422, 31.188313, 18.637049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420776, 30.576490, 18.565235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154514, 30.594997, 18.267305>,  <42.994759, 30.606102, 18.088547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154514, 30.594997, 18.267305>,  <43.420776, 30.576490, 18.565235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154514, 30.594997, 18.267305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658818, -0.432360, -0.615649,
		-0.350518, -0.900513, 0.257319,
		-0.665655, 0.046270, -0.744824,
		42.954819, 30.608879, 18.043858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437828, 29.945862, 18.311052>,  <43.420776, 30.576490, 18.565235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437828, 29.945862, 18.311052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308346, 30.172888, 18.008242>,  <43.230656, 30.309103, 17.826555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308346, 30.172888, 18.008242>,  <43.437828, 29.945862, 18.311052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308346, 30.172888, 18.008242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626818, -0.470696, -0.620922,
		-0.708742, -0.675511, -0.203394,
		-0.323702, 0.567565, -0.757025,
		43.211235, 30.343157, 17.781134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332386, 29.506216, 17.729126>,  <43.437828, 29.945862, 18.311052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332386, 29.506216, 17.729126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378689, 29.864105, 17.556580>,  <43.406471, 30.078838, 17.453053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378689, 29.864105, 17.556580>,  <43.332386, 29.506216, 17.729126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378689, 29.864105, 17.556580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708592, -0.378717, -0.595374,
		-0.696058, -0.236744, -0.677831,
		0.115755, 0.894721, -0.431364,
		43.413414, 30.132521, 17.427170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371826, 29.354368, 17.067400>,  <43.332386, 29.506216, 17.729126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371826, 29.354368, 17.067400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538868, 29.717728, 17.075584>,  <43.639091, 29.935743, 17.080496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538868, 29.717728, 17.075584>,  <43.371826, 29.354368, 17.067400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538868, 29.717728, 17.075584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625025, -0.270842, -0.732112,
		-0.659508, 0.318522, -0.680877,
		0.417604, 0.908399, 0.020461,
		43.664150, 29.990248, 17.081722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470638, 29.589766, 16.331562>,  <43.371826, 29.354368, 17.067400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470638, 29.589766, 16.331562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729824, 29.815342, 16.536350>,  <43.885334, 29.950687, 16.659224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729824, 29.815342, 16.536350>,  <43.470638, 29.589766, 16.331562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729824, 29.815342, 16.536350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732343, -0.276547, -0.622250,
		-0.209329, 0.778132, -0.592192,
		0.647962, 0.563943, 0.511971,
		43.924213, 29.984526, 16.689941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859322, 30.004433, 15.833308>,  <43.470638, 29.589766, 16.331562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859322, 30.004433, 15.833308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072559, 29.964796, 16.169401>,  <44.200500, 29.941013, 16.371058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072559, 29.964796, 16.169401>,  <43.859322, 30.004433, 15.833308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072559, 29.964796, 16.169401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760887, -0.378098, -0.527345,
		0.369947, 0.920447, -0.126164,
		0.533096, -0.099093, 0.840232,
		44.232487, 29.935068, 16.421471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576290, 30.137873, 15.786764>,  <43.859322, 30.004433, 15.833308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576290, 30.137873, 15.786764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575127, 29.876812, 16.089825>,  <44.574429, 29.720175, 16.271662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575127, 29.876812, 16.089825>,  <44.576290, 30.137873, 15.786764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575127, 29.876812, 16.089825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776169, -0.479193, -0.409799,
		0.630518, 0.586872, 0.507965,
		-0.002913, -0.652653, 0.757652,
		44.574253, 29.681017, 16.317120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237270, 29.983232, 16.286201>,  <44.576290, 30.137873, 15.786764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237270, 29.983232, 16.286201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988743, 29.687521, 16.182333>,  <44.839626, 29.510094, 16.120012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988743, 29.687521, 16.182333>,  <45.237270, 29.983232, 16.286201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988743, 29.687521, 16.182333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691890, -0.362088, -0.624644,
		0.367761, -0.567769, 0.736472,
		-0.621321, -0.739277, -0.259672,
		44.802345, 29.465738, 16.104431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340912, 30.680117, 16.645723>,  <45.237270, 29.983232, 16.286201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340912, 30.680117, 16.645723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731709, 30.755899, 16.684893>,  <45.966187, 30.801369, 16.708395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731709, 30.755899, 16.684893>,  <45.340912, 30.680117, 16.645723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731709, 30.755899, 16.684893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094596, 0.026556, -0.995162,
		-0.191139, 0.981530, 0.008024,
		0.976994, 0.189455, 0.097925,
		46.024807, 30.812737, 16.714270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495399, 31.292425, 16.313175>,  <45.340912, 30.680117, 16.645723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495399, 31.292425, 16.313175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825600, 31.066711, 16.308434>,  <46.023720, 30.931284, 16.305590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825600, 31.066711, 16.308434>,  <45.495399, 31.292425, 16.313175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825600, 31.066711, 16.308434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048356, 0.091634, -0.994618,
		0.562331, 0.820481, 0.102930,
		0.825497, -0.564282, -0.011853,
		46.073250, 30.897427, 16.304878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978458, 31.622540, 15.806594>,  <45.495399, 31.292425, 16.313175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978458, 31.622540, 15.806594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042297, 31.230045, 15.849873>,  <46.080601, 30.994549, 15.875840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042297, 31.230045, 15.849873>,  <45.978458, 31.622540, 15.806594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042297, 31.230045, 15.849873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004998, -0.110403, -0.993874,
		0.987170, 0.158075, -0.022524,
		0.159593, -0.981236, 0.108197,
		46.090176, 30.935675, 15.882332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676212, 31.424900, 15.479728>,  <45.978458, 31.622540, 15.806594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676212, 31.424900, 15.479728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364750, 31.174219, 15.492009>,  <46.177872, 31.023809, 15.499378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364750, 31.174219, 15.492009>,  <46.676212, 31.424900, 15.479728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364750, 31.174219, 15.492009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007254, -0.039938, -0.999176,
		0.627414, -0.778233, 0.026551,
		-0.778652, -0.626705, 0.030703,
		46.131153, 30.986208, 15.501220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861973, 30.918022, 15.074409>,  <46.676212, 31.424900, 15.479728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861973, 30.918022, 15.074409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464005, 30.881912, 15.092185>,  <46.225224, 30.860247, 15.102851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464005, 30.881912, 15.092185>,  <46.861973, 30.918022, 15.074409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464005, 30.881912, 15.092185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026637, -0.189600, -0.981500,
		0.097030, -0.977703, 0.186234,
		-0.994925, -0.090274, 0.044440,
		46.165527, 30.854830, 15.105517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096157, 30.375927, 15.732291>,  <46.861973, 30.918022, 15.074409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096157, 30.375927, 15.732291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.218529, 30.741816, 15.626694>,  <47.291954, 30.961348, 15.563335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.218529, 30.741816, 15.626694>,  <47.096157, 30.375927, 15.732291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.218529, 30.741816, 15.626694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707413, 0.403980, 0.579971,
		0.637160, 0.009322, 0.770675,
		0.305931, 0.914720, -0.263995,
		47.310307, 31.016232, 15.547495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157677, 30.283199, 16.465334>,  <47.096157, 30.375927, 15.732291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157677, 30.283199, 16.465334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826107, 30.494530, 16.391840>,  <46.627167, 30.621328, 16.347744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826107, 30.494530, 16.391840>,  <47.157677, 30.283199, 16.465334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826107, 30.494530, 16.391840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022060, 0.359090, 0.933042,
		0.558928, 0.769367, -0.309313,
		-0.828923, 0.528327, -0.183733,
		46.577431, 30.653028, 16.336720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.304066, 30.866066, 16.737862>,  <47.157677, 30.283199, 16.465334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.304066, 30.866066, 16.737862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904968, 30.839283, 16.735748>,  <46.665512, 30.823212, 16.734480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904968, 30.839283, 16.735748>,  <47.304066, 30.866066, 16.737862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.904968, 30.839283, 16.735748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022382, 0.257283, 0.966077,
		-0.063329, 0.964013, -0.258200,
		-0.997742, -0.066960, -0.005283,
		46.605644, 30.819195, 16.734163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.050438, 31.495035, 16.974537>,  <47.304066, 30.866066, 16.737862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.050438, 31.495035, 16.974537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.749706, 31.236616, 17.027267>,  <46.569267, 31.081564, 17.058905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.749706, 31.236616, 17.027267>,  <47.050438, 31.495035, 16.974537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.749706, 31.236616, 17.027267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149696, 0.361950, 0.920099,
		-0.642142, 0.672022, -0.368835,
		-0.751827, -0.646048, 0.131824,
		46.524158, 31.042801, 17.066814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473297, 31.938295, 17.139929>,  <47.050438, 31.495035, 16.974537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473297, 31.938295, 17.139929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406990, 31.565599, 17.269165>,  <46.367207, 31.341982, 17.346706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406990, 31.565599, 17.269165>,  <46.473297, 31.938295, 17.139929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.406990, 31.565599, 17.269165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225144, 0.354726, 0.907458,
		-0.960121, 0.077684, -0.268577,
		-0.165766, -0.931738, 0.323089,
		46.357262, 31.286077, 17.366093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852966, 32.036201, 17.595711>,  <46.473297, 31.938295, 17.139929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852966, 32.036201, 17.595711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057030, 31.704996, 17.688774>,  <46.179466, 31.506273, 17.744612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057030, 31.704996, 17.688774>,  <45.852966, 32.036201, 17.595711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057030, 31.704996, 17.688774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182049, 0.160425, 0.970114,
		-0.840594, -0.537266, -0.068898,
		0.510157, -0.828015, 0.232661,
		46.210075, 31.456593, 17.758572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443611, 31.675501, 18.075899>,  <45.852966, 32.036201, 17.595711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443611, 31.675501, 18.075899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.802307, 31.509296, 18.136845>,  <46.017525, 31.409575, 18.173412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.802307, 31.509296, 18.136845>,  <45.443611, 31.675501, 18.075899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.802307, 31.509296, 18.136845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181184, -0.030580, 0.982974,
		-0.403776, -0.909075, -0.102706,
		0.896737, -0.415509, 0.152362,
		46.071327, 31.384644, 18.182552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299828, 31.134386, 18.493965>,  <45.443611, 31.675501, 18.075899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299828, 31.134386, 18.493965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680618, 31.238701, 18.558138>,  <45.909092, 31.301289, 18.596642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680618, 31.238701, 18.558138>,  <45.299828, 31.134386, 18.493965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680618, 31.238701, 18.558138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199252, 0.129816, 0.971312,
		0.232479, -0.956628, 0.175544,
		0.951973, 0.260787, 0.160431,
		45.966209, 31.316936, 18.606268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494617, 30.764931, 19.092226>,  <45.299828, 31.134386, 18.493965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494617, 30.764931, 19.092226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747055, 31.073647, 19.061077>,  <45.898518, 31.258877, 19.042387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747055, 31.073647, 19.061077>,  <45.494617, 30.764931, 19.092226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747055, 31.073647, 19.061077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083683, 0.167541, 0.982307,
		0.771181, -0.613409, 0.170319,
		0.631092, 0.771790, -0.077872,
		45.936382, 31.305183, 19.037716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018246, 30.605377, 19.589615>,  <45.494617, 30.764931, 19.092226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018246, 30.605377, 19.589615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036140, 30.996227, 19.506447>,  <46.046875, 31.230738, 19.456547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036140, 30.996227, 19.506447>,  <46.018246, 30.605377, 19.589615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036140, 30.996227, 19.506447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000671, 0.208156, 0.978096,
		0.998999, -0.043613, 0.009967,
		0.044732, 0.977123, -0.207918,
		46.049561, 31.289364, 19.444071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.551403, 30.905027, 20.045252>,  <46.018246, 30.605377, 19.589615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.551403, 30.905027, 20.045252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323112, 31.217291, 19.943398>,  <46.186138, 31.404650, 19.882284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323112, 31.217291, 19.943398>,  <46.551403, 30.905027, 20.045252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323112, 31.217291, 19.943398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013099, 0.301405, 0.953406,
		0.821035, 0.547470, -0.161794,
		-0.570727, 0.780661, -0.254635,
		46.151894, 31.451488, 19.867006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.729290, 31.305090, 20.475349>,  <46.551403, 30.905027, 20.045252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.729290, 31.305090, 20.475349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411331, 31.506950, 20.340612>,  <46.220554, 31.628067, 20.259769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411331, 31.506950, 20.340612>,  <46.729290, 31.305090, 20.475349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411331, 31.506950, 20.340612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252877, 0.229099, 0.939982,
		0.551531, 0.832372, -0.054497,
		-0.794900, 0.504649, -0.336843,
		46.172863, 31.658344, 20.239559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.762146, 31.936562, 20.788029>,  <46.729290, 31.305090, 20.475349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.762146, 31.936562, 20.788029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374996, 31.882410, 20.703278>,  <46.142708, 31.849920, 20.652428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374996, 31.882410, 20.703278>,  <46.762146, 31.936562, 20.788029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374996, 31.882410, 20.703278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239192, 0.236025, 0.941849,
		-0.077497, 0.962271, -0.260824,
		-0.967875, -0.135377, -0.211876,
		46.084633, 31.841797, 20.639715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456165, 32.463840, 21.141424>,  <46.762146, 31.936562, 20.788029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456165, 32.463840, 21.141424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150341, 32.213001, 21.081841>,  <45.966846, 32.062496, 21.046091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150341, 32.213001, 21.081841>,  <46.456165, 32.463840, 21.141424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150341, 32.213001, 21.081841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424278, 0.315676, 0.848727,
		-0.485215, 0.712104, -0.507419,
		-0.764562, -0.627101, -0.148959,
		45.920971, 32.024872, 21.037153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968132, 32.810936, 21.463840>,  <46.456165, 32.463840, 21.141424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968132, 32.810936, 21.463840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779606, 32.462307, 21.409842>,  <45.666492, 32.253128, 21.377443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779606, 32.462307, 21.409842>,  <45.968132, 32.810936, 21.463840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779606, 32.462307, 21.409842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537483, 0.162484, 0.827473,
		-0.699269, 0.462555, -0.545037,
		-0.471312, -0.871574, -0.134995,
		45.638214, 32.200836, 21.369343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186821, 32.891411, 21.422092>,  <45.968132, 32.810936, 21.463840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186821, 32.891411, 21.422092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257648, 32.514786, 21.536705>,  <45.300144, 32.288811, 21.605473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257648, 32.514786, 21.536705>,  <45.186821, 32.891411, 21.422092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.257648, 32.514786, 21.536705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590287, 0.131354, 0.796434,
		-0.787532, -0.310161, -0.532535,
		0.177072, -0.941566, 0.286530,
		45.310772, 32.232315, 21.622663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531223, 32.423965, 21.426846>,  <45.186821, 32.891411, 21.422092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531223, 32.423965, 21.426846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.787098, 32.251923, 21.681658>,  <44.940620, 32.148697, 21.834545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.787098, 32.251923, 21.681658>,  <44.531223, 32.423965, 21.426846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787098, 32.251923, 21.681658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669947, 0.094290, 0.736397,
		-0.376798, -0.897838, -0.227836,
		0.639683, -0.430111, 0.637032,
		44.979004, 32.122890, 21.872768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143871, 31.858364, 21.704386>,  <44.531223, 32.423965, 21.426846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143871, 31.858364, 21.704386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445671, 31.923325, 21.958740>,  <44.626751, 31.962301, 22.111353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445671, 31.923325, 21.958740>,  <44.143871, 31.858364, 21.704386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445671, 31.923325, 21.958740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640142, -0.031555, 0.767608,
		0.144725, -0.986220, 0.080150,
		0.754502, 0.162399, 0.635888,
		44.672020, 31.972044, 22.149508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010223, 31.283520, 22.283014>,  <44.143871, 31.858364, 21.704386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010223, 31.283520, 22.283014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248528, 31.571173, 22.426077>,  <44.391510, 31.743765, 22.511913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248528, 31.571173, 22.426077>,  <44.010223, 31.283520, 22.283014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248528, 31.571173, 22.426077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566809, 0.060957, 0.821591,
		0.569032, -0.692194, 0.443926,
		0.595761, 0.719133, 0.357655,
		44.427258, 31.786913, 22.533373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160801, 31.092110, 22.943264>,  <44.010223, 31.283520, 22.283014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160801, 31.092110, 22.943264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209499, 31.487906, 22.912043>,  <44.238720, 31.725382, 22.893311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209499, 31.487906, 22.912043>,  <44.160801, 31.092110, 22.943264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209499, 31.487906, 22.912043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572140, 0.134220, 0.809099,
		0.811069, -0.053850, 0.582467,
		0.121749, 0.989487, -0.078051,
		44.246025, 31.784752, 22.888628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304794, 31.381859, 23.620361>,  <44.160801, 31.092110, 22.943264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304794, 31.381859, 23.620361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195808, 31.714689, 23.427111>,  <44.130417, 31.914387, 23.311161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195808, 31.714689, 23.427111>,  <44.304794, 31.381859, 23.620361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195808, 31.714689, 23.427111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459218, 0.328784, 0.825239,
		0.845506, 0.446712, 0.292521,
		-0.272468, 0.832075, -0.483127,
		44.114067, 31.964312, 23.282173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569263, 31.994831, 24.018406>,  <44.304794, 31.381859, 23.620361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569263, 31.994831, 24.018406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262764, 32.090862, 23.780003>,  <44.078865, 32.148479, 23.636961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262764, 32.090862, 23.780003>,  <44.569263, 31.994831, 24.018406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262764, 32.090862, 23.780003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422461, 0.510665, 0.748831,
		0.484136, 0.825581, -0.289875,
		-0.766250, 0.240076, -0.596007,
		44.032890, 32.162884, 23.601200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419888, 32.708218, 24.167269>,  <44.569263, 31.994831, 24.018406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419888, 32.708218, 24.167269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083427, 32.606876, 23.976156>,  <43.881550, 32.546074, 23.861488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083427, 32.606876, 23.976156>,  <44.419888, 32.708218, 24.167269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083427, 32.606876, 23.976156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537027, 0.495451, 0.682737,
		0.063748, 0.830869, -0.552804,
		-0.841153, -0.253348, -0.477783,
		43.831081, 32.530872, 23.832821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988247, 33.285427, 24.067659>,  <44.419888, 32.708218, 24.167269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988247, 33.285427, 24.067659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725357, 32.983955, 24.069391>,  <43.567623, 32.803074, 24.070431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725357, 32.983955, 24.069391>,  <43.988247, 33.285427, 24.067659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725357, 32.983955, 24.069391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579278, 0.508805, 0.636831,
		-0.482169, 0.416036, -0.770991,
		-0.657229, -0.753678, 0.004329,
		43.528187, 32.757851, 24.070690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351936, 33.602146, 23.954113>,  <43.988247, 33.285427, 24.067659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351936, 33.602146, 23.954113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284439, 33.247200, 24.125744>,  <43.243942, 33.034233, 24.228722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284439, 33.247200, 24.125744>,  <43.351936, 33.602146, 23.954113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284439, 33.247200, 24.125744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428995, 0.458045, 0.778562,
		-0.887406, -0.052694, -0.457967,
		-0.168744, -0.887366, 0.429077,
		43.233814, 32.980991, 24.254467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624538, 33.613785, 24.116337>,  <43.351936, 33.602146, 23.954113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624538, 33.613785, 24.116337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765659, 33.303452, 24.325569>,  <42.850330, 33.117252, 24.451109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765659, 33.303452, 24.325569>,  <42.624538, 33.613785, 24.116337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765659, 33.303452, 24.325569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644698, 0.203613, 0.736822,
		-0.678159, -0.597178, -0.428345,
		0.352797, -0.775835, 0.523081,
		42.871498, 33.070702, 24.482494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967999, 33.081085, 24.183149>,  <42.624538, 33.613785, 24.116337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967999, 33.081085, 24.183149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236137, 33.038734, 24.476931>,  <42.397022, 33.013325, 24.653200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236137, 33.038734, 24.476931>,  <41.967999, 33.081085, 24.183149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236137, 33.038734, 24.476931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732949, 0.060028, 0.677630,
		-0.115837, -0.992565, -0.037367,
		0.670349, -0.105883, 0.734453,
		42.437241, 33.006969, 24.697266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596916, 32.786785, 24.764666>,  <41.967999, 33.081085, 24.183149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596916, 32.786785, 24.764666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930866, 32.902134, 24.952209>,  <42.131237, 32.971344, 25.064735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930866, 32.902134, 24.952209>,  <41.596916, 32.786785, 24.764666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930866, 32.902134, 24.952209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533604, 0.214911, 0.817973,
		0.135117, -0.933089, 0.333300,
		0.834872, 0.288372, 0.468861,
		42.181328, 32.988647, 25.092867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566643, 32.517124, 25.482283>,  <41.596916, 32.786785, 24.764666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566643, 32.517124, 25.482283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833431, 32.813866, 25.509985>,  <41.993504, 32.991913, 25.526608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833431, 32.813866, 25.509985>,  <41.566643, 32.517124, 25.482283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833431, 32.813866, 25.509985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368155, 0.247322, 0.896266,
		0.647772, -0.623283, 0.438075,
		0.666973, 0.741856, 0.069257,
		42.033524, 33.036423, 25.530762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807674, 32.479164, 26.188330>,  <41.566643, 32.517124, 25.482283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807674, 32.479164, 26.188330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903633, 32.848186, 26.067438>,  <41.961208, 33.069599, 25.994904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903633, 32.848186, 26.067438>,  <41.807674, 32.479164, 26.188330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903633, 32.848186, 26.067438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236636, 0.357499, 0.903437,
		0.941517, -0.145212, 0.304072,
		0.239895, 0.922555, -0.302228,
		41.975601, 33.124954, 25.976770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304199, 32.781563, 26.738401>,  <41.807674, 32.479164, 26.188330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304199, 32.781563, 26.738401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131748, 33.082005, 26.538408>,  <42.028278, 33.262268, 26.418413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131748, 33.082005, 26.538408>,  <42.304199, 32.781563, 26.738401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131748, 33.082005, 26.538408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463044, 0.291419, 0.837058,
		0.774418, 0.592389, 0.222154,
		-0.431124, 0.751099, -0.499982,
		42.002411, 33.307335, 26.388414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365017, 33.342999, 27.157808>,  <42.304199, 32.781563, 26.738401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365017, 33.342999, 27.157808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060497, 33.477779, 26.936216>,  <41.877785, 33.558647, 26.803261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060497, 33.477779, 26.936216>,  <42.365017, 33.342999, 27.157808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060497, 33.477779, 26.936216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395950, 0.434996, 0.808704,
		0.513471, 0.835011, -0.197746,
		-0.761295, 0.336949, -0.553981,
		41.832108, 33.578865, 26.770021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182751, 33.815483, 27.583794>,  <42.365017, 33.342999, 27.157808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182751, 33.815483, 27.583794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865837, 33.859257, 27.343693>,  <41.675690, 33.885521, 27.199633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865837, 33.859257, 27.343693>,  <42.182751, 33.815483, 27.583794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865837, 33.859257, 27.343693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494248, 0.461746, 0.736553,
		0.357772, 0.880235, -0.311745,
		-0.792286, 0.109439, -0.600254,
		41.628151, 33.892090, 27.163616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937595, 34.520088, 27.656004>,  <42.182751, 33.815483, 27.583794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937595, 34.520088, 27.656004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642807, 34.284233, 27.523827>,  <41.465935, 34.142719, 27.444521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642807, 34.284233, 27.523827>,  <41.937595, 34.520088, 27.656004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642807, 34.284233, 27.523827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590404, 0.323542, 0.739422,
		-0.329082, 0.740029, -0.586568,
		-0.736972, -0.589642, -0.330444,
		41.421715, 34.107342, 27.424694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333607, 34.886509, 27.621141>,  <41.937595, 34.520088, 27.656004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333607, 34.886509, 27.621141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191174, 34.513248, 27.640882>,  <41.105713, 34.289291, 27.652727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191174, 34.513248, 27.640882>,  <41.333607, 34.886509, 27.621141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191174, 34.513248, 27.640882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667754, 0.291045, 0.685125,
		-0.653688, 0.211007, -0.726751,
		-0.356084, -0.933150, 0.049352,
		41.084347, 34.233303, 27.655687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585033, 34.938667, 27.622122>,  <41.333607, 34.886509, 27.621141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585033, 34.938667, 27.622122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668854, 34.581158, 27.780745>,  <40.719147, 34.366653, 27.875919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668854, 34.581158, 27.780745>,  <40.585033, 34.938667, 27.622122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668854, 34.581158, 27.780745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665591, 0.166711, 0.727459,
		-0.716293, -0.416388, -0.559952,
		0.209555, -0.893772, 0.396558,
		40.731720, 34.313026, 27.899712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949833, 34.502464, 27.744688>,  <40.585033, 34.938667, 27.622122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949833, 34.502464, 27.744688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222672, 34.343632, 27.990314>,  <40.386375, 34.248333, 28.137690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222672, 34.343632, 27.990314>,  <39.949833, 34.502464, 27.744688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222672, 34.343632, 27.990314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697664, -0.101737, 0.709165,
		-0.219126, -0.912125, -0.346426,
		0.682091, -0.397086, 0.614064,
		40.427299, 34.224506, 28.174534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755383, 33.825211, 28.043964>,  <39.949833, 34.502464, 27.744688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755383, 33.825211, 28.043964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016014, 33.958652, 28.316481>,  <40.172394, 34.038715, 28.479990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016014, 33.958652, 28.316481>,  <39.755383, 33.825211, 28.043964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016014, 33.958652, 28.316481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581631, -0.356850, 0.731002,
		0.486982, -0.872564, -0.038483,
		0.651579, 0.333601, 0.681290,
		40.211487, 34.058731, 28.520868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570652, 33.375267, 28.625408>,  <39.755383, 33.825211, 28.043964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570652, 33.375267, 28.625408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829990, 33.629982, 28.792336>,  <39.985592, 33.782810, 28.892492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829990, 33.629982, 28.792336>,  <39.570652, 33.375267, 28.625408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829990, 33.629982, 28.792336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348563, -0.239050, 0.906289,
		0.676871, -0.733049, 0.066973,
		0.648344, 0.636785, 0.417320,
		40.024494, 33.821018, 28.917532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990528, 32.911526, 29.150286>,  <39.570652, 33.375267, 28.625408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990528, 32.911526, 29.150286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032166, 33.295910, 29.252825>,  <40.057148, 33.526543, 29.314348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032166, 33.295910, 29.252825>,  <39.990528, 32.911526, 29.150286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032166, 33.295910, 29.252825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312775, -0.213039, 0.925628,
		0.944106, -0.176530, 0.278390,
		0.104093, 0.960964, 0.256345,
		40.063393, 33.584198, 29.329729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429058, 32.907059, 29.722397>,  <39.990528, 32.911526, 29.150286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429058, 32.907059, 29.722397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237358, 33.257999, 29.732002>,  <40.122337, 33.468563, 29.737766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237358, 33.257999, 29.732002>,  <40.429058, 32.907059, 29.722397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237358, 33.257999, 29.732002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218514, -0.145775, 0.964884,
		0.850039, 0.457178, 0.261576,
		-0.479255, 0.877347, 0.024015,
		40.093582, 33.521202, 29.739206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455997, 32.959667, 30.548574>,  <40.429058, 32.907059, 29.722397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455997, 32.959667, 30.548574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697479, 32.935883, 30.866568>,  <40.842369, 32.921612, 31.057364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697479, 32.935883, 30.866568>,  <40.455997, 32.959667, 30.548574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697479, 32.935883, 30.866568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735399, -0.343450, -0.584149,
		0.307775, 0.937286, -0.163613,
		0.603707, -0.059465, 0.794985,
		40.878590, 32.918041, 31.105062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088409, 33.466339, 30.581228>,  <40.455997, 32.959667, 30.548574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088409, 33.466339, 30.581228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169231, 33.121468, 30.767054>,  <41.217724, 32.914543, 30.878548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169231, 33.121468, 30.767054>,  <41.088409, 33.466339, 30.581228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169231, 33.121468, 30.767054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571094, -0.281627, -0.771063,
		0.795629, 0.421106, 0.435482,
		0.202056, -0.862181, 0.464562,
		41.229847, 32.862812, 30.906422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849701, 33.462242, 30.699303>,  <41.088409, 33.466339, 30.581228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849701, 33.462242, 30.699303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697929, 33.092590, 30.717316>,  <41.606869, 32.870800, 30.728123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697929, 33.092590, 30.717316>,  <41.849701, 33.462242, 30.699303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697929, 33.092590, 30.717316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716193, -0.324170, -0.618046,
		0.585750, -0.202251, 0.784851,
		-0.379425, -0.924126, 0.045032,
		41.584103, 32.815353, 30.730825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547176, 33.063400, 30.728228>,  <41.849701, 33.462242, 30.699303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547176, 33.063400, 30.728228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244678, 32.811817, 30.656099>,  <42.063179, 32.660870, 30.612822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244678, 32.811817, 30.656099>,  <42.547176, 33.063400, 30.728228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244678, 32.811817, 30.656099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601679, -0.560220, -0.569330,
		0.257063, -0.539046, 0.802090,
		-0.756241, -0.628955, -0.180321,
		42.017807, 32.623131, 30.602003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816822, 32.454620, 30.792553>,  <42.547176, 33.063400, 30.728228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816822, 32.454620, 30.792553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489548, 32.403393, 30.568352>,  <42.293182, 32.372658, 30.433830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489548, 32.403393, 30.568352>,  <42.816822, 32.454620, 30.792553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489548, 32.403393, 30.568352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547873, -0.469304, -0.692523,
		-0.174358, -0.873700, 0.454144,
		-0.818190, -0.128067, -0.560504,
		42.244091, 32.364971, 30.400200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776646, 31.675047, 30.686411>,  <42.816822, 32.454620, 30.792553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776646, 31.675047, 30.686411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573048, 31.863253, 30.398094>,  <42.450890, 31.976175, 30.225105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573048, 31.863253, 30.398094>,  <42.776646, 31.675047, 30.686411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573048, 31.863253, 30.398094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431408, -0.585171, -0.686631,
		-0.744856, -0.660447, 0.094865,
		-0.508996, 0.470515, -0.720790,
		42.420349, 32.004406, 30.181858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669376, 31.170452, 30.178885>,  <42.776646, 31.675047, 30.686411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669376, 31.170452, 30.178885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593788, 31.512476, 29.985737>,  <42.548435, 31.717691, 29.869848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593788, 31.512476, 29.985737>,  <42.669376, 31.170452, 30.178885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593788, 31.512476, 29.985737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526260, -0.326971, -0.784946,
		-0.829060, -0.402444, -0.388198,
		-0.188967, 0.855061, -0.482868,
		42.537098, 31.768993, 29.840876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659145, 30.968145, 29.551743>,  <42.669376, 31.170452, 30.178885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659145, 30.968145, 29.551743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687569, 31.362610, 29.491831>,  <42.704624, 31.599289, 29.455883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687569, 31.362610, 29.491831>,  <42.659145, 30.968145, 29.551743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687569, 31.362610, 29.491831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595420, -0.162409, -0.786828,
		-0.800266, -0.033270, -0.598722,
		0.071061, 0.986162, -0.149780,
		42.708885, 31.658459, 29.446898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547684, 31.100340, 28.765631>,  <42.659145, 30.968145, 29.551743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547684, 31.100340, 28.765631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736103, 31.428663, 28.894869>,  <42.849155, 31.625658, 28.972412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736103, 31.428663, 28.894869>,  <42.547684, 31.100340, 28.765631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736103, 31.428663, 28.894869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686230, -0.110836, -0.718891,
		-0.554261, 0.560348, -0.615471,
		0.471045, 0.820808, 0.323096,
		42.877419, 31.674906, 28.991798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497898, 31.520004, 28.216566>,  <42.547684, 31.100340, 28.765631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497898, 31.520004, 28.216566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797050, 31.641092, 28.452881>,  <42.976543, 31.713745, 28.594669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797050, 31.641092, 28.452881>,  <42.497898, 31.520004, 28.216566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797050, 31.641092, 28.452881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659815, -0.241253, -0.711647,
		-0.072898, 0.922041, -0.380167,
		0.747884, 0.302718, 0.590789,
		43.021416, 31.731907, 28.630117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955471, 32.102707, 27.927481>,  <42.497898, 31.520004, 28.216566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955471, 32.102707, 27.927481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186909, 31.910091, 28.190796>,  <43.325771, 31.794523, 28.348785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186909, 31.910091, 28.190796>,  <42.955471, 32.102707, 27.927481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186909, 31.910091, 28.190796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694143, -0.133047, -0.707435,
		0.428240, 0.866268, 0.257276,
		0.578598, -0.481538, 0.658290,
		43.360489, 31.765631, 28.388283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542229, 32.307049, 27.595530>,  <42.955471, 32.102707, 27.927481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542229, 32.307049, 27.595530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622322, 32.028294, 27.870995>,  <43.670380, 31.861040, 28.036274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622322, 32.028294, 27.870995>,  <43.542229, 32.307049, 27.595530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622322, 32.028294, 27.870995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607630, -0.463057, -0.645263,
		0.768565, 0.547654, 0.330730,
		0.200234, -0.696888, 0.688660,
		43.682392, 31.819227, 28.077593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213387, 32.252762, 27.624214>,  <43.542229, 32.307049, 27.595530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213387, 32.252762, 27.624214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053085, 31.913532, 27.762873>,  <43.956905, 31.709993, 27.846067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053085, 31.913532, 27.762873>,  <44.213387, 32.252762, 27.624214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053085, 31.913532, 27.762873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555170, -0.525771, -0.644478,
		0.728823, -0.065828, 0.681530,
		-0.400753, -0.848075, 0.346648,
		43.932858, 31.659109, 27.866867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750565, 31.964960, 27.801994>,  <44.213387, 32.252762, 27.624214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750565, 31.964960, 27.801994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452969, 31.709221, 27.724314>,  <44.274410, 31.555779, 27.677706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452969, 31.709221, 27.724314>,  <44.750565, 31.964960, 27.801994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452969, 31.709221, 27.724314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585937, -0.484539, -0.649538,
		0.321180, -0.597040, 0.735109,
		-0.743990, -0.639347, -0.194204,
		44.229771, 31.517416, 27.666052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125229, 31.414246, 27.791218>,  <44.750565, 31.964960, 27.801994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125229, 31.414246, 27.791218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782383, 31.320526, 27.607714>,  <44.576675, 31.264294, 27.497612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782383, 31.320526, 27.607714>,  <45.125229, 31.414246, 27.791218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782383, 31.320526, 27.607714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511077, -0.498237, -0.700400,
		-0.064468, -0.834784, 0.546790,
		-0.857114, -0.234298, -0.458759,
		44.525249, 31.250237, 27.470085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196232, 30.700592, 27.518982>,  <45.125229, 31.414246, 27.791218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196232, 30.700592, 27.518982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892658, 30.852074, 27.307093>,  <44.710514, 30.942963, 27.179958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892658, 30.852074, 27.307093>,  <45.196232, 30.700592, 27.518982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892658, 30.852074, 27.307093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413291, -0.348508, -0.841268,
		-0.503206, -0.857394, 0.107977,
		-0.758929, 0.378705, -0.529725,
		44.664978, 30.965685, 27.148174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863590, 30.060038, 27.039812>,  <45.196232, 30.700592, 27.518982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863590, 30.060038, 27.039812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775002, 30.417980, 26.884798>,  <44.721848, 30.632746, 26.791790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775002, 30.417980, 26.884798>,  <44.863590, 30.060038, 27.039812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775002, 30.417980, 26.884798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330733, -0.304923, -0.893106,
		-0.917369, -0.325968, -0.228427,
		-0.221471, 0.894856, -0.387536,
		44.708561, 30.686438, 26.768538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607540, 29.956978, 26.419258>,  <44.863590, 30.060038, 27.039812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607540, 29.956978, 26.419258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689522, 30.345055, 26.367542>,  <44.738712, 30.577902, 26.336514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689522, 30.345055, 26.367542>,  <44.607540, 29.956978, 26.419258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689522, 30.345055, 26.367542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186011, -0.168295, -0.968027,
		-0.960933, 0.174355, -0.214961,
		0.204958, 0.970194, -0.129288,
		44.751011, 30.636112, 26.328756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309486, 30.089960, 25.783072>,  <44.607540, 29.956978, 26.419258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309486, 30.089960, 25.783072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587212, 30.367439, 25.859709>,  <44.753845, 30.533928, 25.905691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587212, 30.367439, 25.859709>,  <44.309486, 30.089960, 25.783072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587212, 30.367439, 25.859709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482858, -0.251627, -0.838768,
		-0.533644, 0.674881, -0.509667,
		0.694314, 0.693700, 0.191592,
		44.795506, 30.575550, 25.917187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326862, 30.487135, 25.207499>,  <44.309486, 30.089960, 25.783072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326862, 30.487135, 25.207499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666603, 30.624462, 25.367865>,  <44.870449, 30.706860, 25.464085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666603, 30.624462, 25.367865>,  <44.326862, 30.487135, 25.207499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666603, 30.624462, 25.367865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410933, 0.046592, -0.910474,
		-0.331263, 0.938062, -0.101508,
		0.849352, 0.343319, 0.400915,
		44.921410, 30.727457, 25.488140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646049, 31.154903, 24.816854>,  <44.326862, 30.487135, 25.207499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646049, 31.154903, 24.816854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934013, 30.951366, 25.005663>,  <45.106792, 30.829245, 25.118948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934013, 30.951366, 25.005663>,  <44.646049, 31.154903, 24.816854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934013, 30.951366, 25.005663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537040, -0.022435, -0.843258,
		0.439677, 0.860566, 0.257119,
		0.719911, -0.508844, 0.472022,
		45.149986, 30.798714, 25.147270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207966, 31.279228, 24.406399>,  <44.646049, 31.154903, 24.816854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207966, 31.279228, 24.406399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314339, 30.946348, 24.601017>,  <45.378162, 30.746620, 24.717789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314339, 30.946348, 24.601017>,  <45.207966, 31.279228, 24.406399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314339, 30.946348, 24.601017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590841, -0.258099, -0.764390,
		0.761701, 0.490746, 0.423061,
		0.265929, -0.832198, 0.486547,
		45.394119, 30.696690, 24.746981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995903, 31.213070, 24.377163>,  <45.207966, 31.279228, 24.406399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995903, 31.213070, 24.377163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767166, 30.884968, 24.382442>,  <45.629925, 30.688107, 24.385611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767166, 30.884968, 24.382442>,  <45.995903, 31.213070, 24.377163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767166, 30.884968, 24.382442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445769, -0.324197, -0.834378,
		0.688683, -0.471250, 0.551035,
		-0.571844, -0.820256, 0.013200,
		45.595612, 30.638891, 24.386402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487995, 30.511143, 24.366812>,  <45.995903, 31.213070, 24.377163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487995, 30.511143, 24.366812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.113731, 30.439978, 24.244902>,  <45.889172, 30.397278, 24.171755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.113731, 30.439978, 24.244902>,  <46.487995, 30.511143, 24.366812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113731, 30.439978, 24.244902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352509, -0.430330, -0.830995,
		0.016693, -0.884965, 0.465359,
		-0.935659, -0.177915, -0.304775,
		45.833035, 30.386602, 24.153469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564682, 29.879885, 23.915373>,  <46.487995, 30.511143, 24.366812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564682, 29.879885, 23.915373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194191, 29.983248, 23.805592>,  <45.971897, 30.045265, 23.739723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194191, 29.983248, 23.805592>,  <46.564682, 29.879885, 23.915373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194191, 29.983248, 23.805592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124089, -0.478481, -0.869286,
		-0.355948, -0.839216, 0.411118,
		-0.926231, 0.258406, -0.274452,
		45.916321, 30.060770, 23.723255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328861, 29.270983, 23.766083>,  <46.564682, 29.879885, 23.915373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328861, 29.270983, 23.766083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102848, 29.536116, 23.569559>,  <45.967239, 29.695196, 23.451645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102848, 29.536116, 23.569559>,  <46.328861, 29.270983, 23.766083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102848, 29.536116, 23.569559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325086, -0.368454, -0.870954,
		-0.758321, -0.651840, -0.007287,
		-0.565038, 0.662832, -0.491310,
		45.933338, 29.734966, 23.422167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156811, 28.946949, 23.195282>,  <46.328861, 29.270983, 23.766083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156811, 28.946949, 23.195282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031525, 29.309868, 23.083057>,  <45.956352, 29.527618, 23.015722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031525, 29.309868, 23.083057>,  <46.156811, 28.946949, 23.195282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.031525, 29.309868, 23.083057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000736, -0.295657, -0.955294,
		-0.949683, -0.299003, 0.093272,
		-0.313212, 0.907295, -0.280560,
		45.937561, 29.582056, 22.998890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517910, 28.786655, 22.850374>,  <46.156811, 28.946949, 23.195282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517910, 28.786655, 22.850374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692780, 29.124964, 22.728031>,  <45.797703, 29.327950, 22.654625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692780, 29.124964, 22.728031>,  <45.517910, 28.786655, 22.850374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692780, 29.124964, 22.728031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113656, -0.285398, -0.951646,
		-0.892167, 0.450797, -0.028642,
		0.437174, 0.845771, -0.305859,
		45.823933, 29.378695, 22.636274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077839, 29.039019, 22.274935>,  <45.517910, 28.786655, 22.850374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077839, 29.039019, 22.274935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435570, 29.207615, 22.214914>,  <45.650208, 29.308773, 22.178902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435570, 29.207615, 22.214914>,  <45.077839, 29.039019, 22.274935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435570, 29.207615, 22.214914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094508, -0.149843, -0.984183,
		-0.437310, 0.894366, -0.094175,
		0.894331, 0.421493, -0.150052,
		45.703869, 29.334063, 22.169899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841560, 29.298025, 21.743208>,  <45.077839, 29.039019, 22.274935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841560, 29.298025, 21.743208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240925, 29.320555, 21.741955>,  <45.480541, 29.334072, 21.741203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240925, 29.320555, 21.741955>,  <44.841560, 29.298025, 21.743208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240925, 29.320555, 21.741955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001328, -0.078987, -0.996875,
		-0.056398, 0.995283, -0.078936,
		0.998408, 0.056326, -0.003133,
		45.540447, 29.337452, 21.741014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937721, 29.752275, 21.284563>,  <44.841560, 29.298025, 21.743208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937721, 29.752275, 21.284563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.284058, 29.555563, 21.321383>,  <45.491859, 29.437534, 21.343473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.284058, 29.555563, 21.321383>,  <44.937721, 29.752275, 21.284563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284058, 29.555563, 21.321383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012585, -0.205328, -0.978612,
		0.500164, 0.846162, -0.183970,
		0.865839, -0.491782, 0.092049,
		45.543808, 29.408028, 21.348997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329948, 30.013813, 20.721592>,  <44.937721, 29.752275, 21.284563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329948, 30.013813, 20.721592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518955, 29.671141, 20.804375>,  <45.632359, 29.465538, 20.854044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518955, 29.671141, 20.804375>,  <45.329948, 30.013813, 20.721592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518955, 29.671141, 20.804375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044110, -0.257518, -0.965266,
		0.880218, 0.446975, -0.159469,
		0.472516, -0.856679, 0.206955,
		45.660709, 29.414137, 20.866461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731850, 29.928780, 20.078661>,  <45.329948, 30.013813, 20.721592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731850, 29.928780, 20.078661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749046, 29.576008, 20.266426>,  <45.759365, 29.364344, 20.379086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749046, 29.576008, 20.266426>,  <45.731850, 29.928780, 20.078661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749046, 29.576008, 20.266426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099022, -0.463771, -0.880404,
		0.994156, 0.084335, 0.067391,
		0.042995, -0.881932, 0.469412,
		45.761944, 29.311428, 20.407249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303978, 29.618780, 19.763147>,  <45.731850, 29.928780, 20.078661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303978, 29.618780, 19.763147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063171, 29.341761, 19.922119>,  <45.918686, 29.175549, 20.017502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063171, 29.341761, 19.922119>,  <46.303978, 29.618780, 19.763147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063171, 29.341761, 19.922119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025519, -0.480789, -0.876465,
		0.798075, -0.537790, 0.271771,
		-0.602018, -0.692549, 0.397429,
		45.882565, 29.133995, 20.041348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.491405, 28.966888, 19.367134>,  <46.303978, 29.618780, 19.763147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.491405, 28.966888, 19.367134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143913, 28.877321, 19.543842>,  <45.935417, 28.823582, 19.649868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143913, 28.877321, 19.543842>,  <46.491405, 28.966888, 19.367134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143913, 28.877321, 19.543842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254373, -0.563618, -0.785894,
		0.424965, -0.795108, 0.432676,
		-0.868735, -0.223916, 0.441771,
		45.883293, 28.810146, 19.676374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438717, 28.217661, 19.402887>,  <46.491405, 28.966888, 19.367134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438717, 28.217661, 19.402887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080872, 28.396076, 19.413561>,  <45.866165, 28.503124, 19.419966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080872, 28.396076, 19.413561>,  <46.438717, 28.217661, 19.402887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080872, 28.396076, 19.413561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269041, -0.490013, -0.829159,
		-0.356760, -0.748958, 0.558376,
		-0.894617, 0.446037, 0.026684,
		45.812485, 28.529888, 19.421566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924828, 27.642426, 19.307047>,  <46.438717, 28.217661, 19.402887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924828, 27.642426, 19.307047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741501, 27.987511, 19.221560>,  <45.631504, 28.194561, 19.170267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741501, 27.987511, 19.221560>,  <45.924828, 27.642426, 19.307047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741501, 27.987511, 19.221560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279224, -0.368044, -0.886892,
		-0.843790, -0.346800, 0.409570,
		-0.458314, 0.862713, -0.213717,
		45.604008, 28.246325, 19.157444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292591, 27.391575, 19.009417>,  <45.924828, 27.642426, 19.307047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292591, 27.391575, 19.009417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328968, 27.773472, 18.896143>,  <45.350796, 28.002611, 18.828178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328968, 27.773472, 18.896143>,  <45.292591, 27.391575, 19.009417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328968, 27.773472, 18.896143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155714, -0.267231, -0.950968,
		-0.983607, 0.130579, 0.124365,
		0.090942, 0.954744, -0.283183,
		45.356251, 28.059895, 18.811188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678391, 27.618452, 18.522001>,  <45.292591, 27.391575, 19.009417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678391, 27.618452, 18.522001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026516, 27.805187, 18.459249>,  <45.235394, 27.917229, 18.421598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026516, 27.805187, 18.459249>,  <44.678391, 27.618452, 18.522001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026516, 27.805187, 18.459249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035772, -0.377621, -0.925269,
		-0.491190, 0.799666, -0.345350,
		0.870318, 0.466836, -0.156878,
		45.287613, 27.945238, 18.412186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168671, 27.500299, 18.928680>,  <44.678391, 27.618452, 18.522001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168671, 27.500299, 18.928680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110542, 27.108744, 18.871185>,  <44.075665, 26.873810, 18.836687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110542, 27.108744, 18.871185>,  <44.168671, 27.500299, 18.928680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110542, 27.108744, 18.871185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179779, -0.116736, 0.976756,
		-0.972913, 0.167788, -0.159018,
		-0.145324, -0.978887, -0.143739,
		44.066944, 26.815077, 18.828064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571831, 27.350384, 19.315466>,  <44.168671, 27.500299, 18.928680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571831, 27.350384, 19.315466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727020, 26.988094, 19.247183>,  <43.820133, 26.770720, 19.206213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727020, 26.988094, 19.247183>,  <43.571831, 27.350384, 19.315466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727020, 26.988094, 19.247183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245183, -0.279962, 0.928174,
		-0.888462, -0.318250, -0.330685,
		0.387971, -0.905725, -0.170706,
		43.843410, 26.716377, 19.195971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029938, 26.852165, 19.474047>,  <43.571831, 27.350384, 19.315466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029938, 26.852165, 19.474047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399815, 26.705116, 19.513649>,  <43.621742, 26.616888, 19.537411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399815, 26.705116, 19.513649>,  <43.029938, 26.852165, 19.474047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399815, 26.705116, 19.513649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140628, -0.088152, 0.986130,
		-0.353795, -0.925788, -0.133211,
		0.924691, -0.367621, 0.099004,
		43.677223, 26.594830, 19.543350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965649, 26.283602, 19.961416>,  <43.029938, 26.852165, 19.474047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965649, 26.283602, 19.961416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358803, 26.356941, 19.954250>,  <43.594696, 26.400944, 19.949951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358803, 26.356941, 19.954250>,  <42.965649, 26.283602, 19.961416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358803, 26.356941, 19.954250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038591, -0.109832, 0.993201,
		0.180134, -0.976893, -0.115028,
		0.982885, 0.183348, -0.017914,
		43.653667, 26.411945, 19.948875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333698, 25.761978, 20.309582>,  <42.965649, 26.283602, 19.961416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333698, 25.761978, 20.309582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572132, 26.083138, 20.306896>,  <43.715191, 26.275833, 20.305285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572132, 26.083138, 20.306896>,  <43.333698, 25.761978, 20.309582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572132, 26.083138, 20.306896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117356, -0.078848, 0.989955,
		0.794302, -0.590881, -0.141224,
		0.596081, 0.802896, -0.006714,
		43.750957, 26.324007, 20.304882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920132, 25.560038, 20.623722>,  <43.333698, 25.761978, 20.309582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920132, 25.560038, 20.623722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940182, 25.958586, 20.651237>,  <43.952209, 26.197716, 20.667746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940182, 25.958586, 20.651237>,  <43.920132, 25.560038, 20.623722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940182, 25.958586, 20.651237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233921, -0.078669, 0.969068,
		0.970963, -0.032482, -0.237015,
		0.050123, 0.996372, 0.068786,
		43.955219, 26.257498, 20.671873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446117, 25.625887, 21.046286>,  <43.920132, 25.560038, 20.623722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446117, 25.625887, 21.046286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234959, 25.965569, 21.051634>,  <44.108265, 26.169378, 21.054844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234959, 25.965569, 21.051634>,  <44.446117, 25.625887, 21.046286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234959, 25.965569, 21.051634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197453, 0.107398, 0.974412,
		0.826040, 0.517025, -0.224373,
		-0.527892, 0.849206, 0.013373,
		44.076591, 26.220331, 21.055645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788612, 26.058062, 21.637161>,  <44.446117, 25.625887, 21.046286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788612, 26.058062, 21.637161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452785, 26.251436, 21.538034>,  <44.251289, 26.367462, 21.478558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452785, 26.251436, 21.538034>,  <44.788612, 26.058062, 21.637161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452785, 26.251436, 21.538034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045972, 0.391311, 0.919109,
		0.541306, 0.783047, -0.306308,
		-0.839568, 0.483438, -0.247817,
		44.200916, 26.396467, 21.463690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840034, 26.772774, 21.802433>,  <44.788612, 26.058062, 21.637161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840034, 26.772774, 21.802433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449745, 26.685989, 21.814436>,  <44.215572, 26.633919, 21.821638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449745, 26.685989, 21.814436>,  <44.840034, 26.772774, 21.802433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449745, 26.685989, 21.814436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082739, 0.491974, 0.866669,
		-0.202795, 0.843143, -0.497980,
		-0.975719, -0.216959, 0.030009,
		44.157028, 26.620901, 21.823439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489574, 27.460745, 21.811600>,  <44.840034, 26.772774, 21.802433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489574, 27.460745, 21.811600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257366, 27.177151, 21.971769>,  <44.118042, 27.006994, 22.067871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257366, 27.177151, 21.971769>,  <44.489574, 27.460745, 21.811600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257366, 27.177151, 21.971769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130005, 0.566170, 0.813972,
		-0.803801, 0.420469, -0.420844,
		-0.580519, -0.708983, 0.400425,
		44.083210, 26.964457, 22.091896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213795, 27.735355, 22.464054>,  <44.489574, 27.460745, 21.811600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213795, 27.735355, 22.464054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992409, 27.402306, 22.472189>,  <43.859577, 27.202477, 22.477070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992409, 27.402306, 22.472189>,  <44.213795, 27.735355, 22.464054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992409, 27.402306, 22.472189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314153, 0.231312, 0.920762,
		-0.771353, 0.503220, -0.389595,
		-0.553464, -0.832625, 0.020335,
		43.826370, 27.152517, 22.478289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489780, 27.896441, 22.589952>,  <44.213795, 27.735355, 22.464054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489780, 27.896441, 22.589952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616257, 27.543137, 22.728445>,  <43.692142, 27.331154, 22.811541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616257, 27.543137, 22.728445>,  <43.489780, 27.896441, 22.589952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616257, 27.543137, 22.728445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148892, 0.314229, 0.937599,
		-0.936940, -0.348009, -0.032155,
		0.316189, -0.883261, 0.346230,
		43.711113, 27.278158, 22.832314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923698, 27.585846, 22.991964>,  <43.489780, 27.896441, 22.589952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923698, 27.585846, 22.991964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261784, 27.418793, 23.125347>,  <43.464634, 27.318562, 23.205378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261784, 27.418793, 23.125347>,  <42.923698, 27.585846, 22.991964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261784, 27.418793, 23.125347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304401, 0.136638, 0.942693,
		-0.439263, -0.898283, -0.011639,
		0.845215, -0.417633, 0.333458,
		43.515347, 27.293503, 23.225384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725403, 27.302921, 23.585190>,  <42.923698, 27.585846, 22.991964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725403, 27.302921, 23.585190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123333, 27.287384, 23.622755>,  <43.362091, 27.278063, 23.645294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123333, 27.287384, 23.622755>,  <42.725403, 27.302921, 23.585190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123333, 27.287384, 23.622755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083817, 0.208995, 0.974318,
		-0.057471, -0.977145, 0.204657,
		0.994822, -0.038841, 0.093912,
		43.421780, 27.275732, 23.650928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820473, 26.762709, 24.086664>,  <42.725403, 27.302921, 23.585190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820473, 26.762709, 24.086664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129696, 27.016369, 24.080475>,  <43.315228, 27.168566, 24.076761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129696, 27.016369, 24.080475>,  <42.820473, 26.762709, 24.086664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129696, 27.016369, 24.080475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147159, 0.203014, 0.968054,
		0.617033, -0.746082, 0.250262,
		0.773055, 0.634150, -0.015474,
		43.361614, 27.206614, 24.075832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121494, 26.621164, 24.641487>,  <42.820473, 26.762709, 24.086664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121494, 26.621164, 24.641487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310654, 26.965141, 24.564684>,  <43.424149, 27.171528, 24.518602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310654, 26.965141, 24.564684>,  <43.121494, 26.621164, 24.641487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310654, 26.965141, 24.564684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124438, 0.150548, 0.980740,
		0.872286, -0.487684, -0.035816,
		0.472899, 0.859942, -0.192008,
		43.452522, 27.223124, 24.507082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627544, 26.656952, 25.188553>,  <43.121494, 26.621164, 24.641487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627544, 26.656952, 25.188553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613033, 27.023188, 25.028362>,  <43.604328, 27.242929, 24.932247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613033, 27.023188, 25.028362>,  <43.627544, 26.656952, 25.188553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613033, 27.023188, 25.028362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060245, 0.398010, 0.915401,
		0.997524, 0.057337, 0.040720,
		-0.036279, 0.915588, -0.400478,
		43.602150, 27.297863, 24.908218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963150, 26.999310, 25.693626>,  <43.627544, 26.656952, 25.188553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963150, 26.999310, 25.693626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780312, 27.275146, 25.468939>,  <43.670609, 27.440649, 25.334126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780312, 27.275146, 25.468939>,  <43.963150, 26.999310, 25.693626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780312, 27.275146, 25.468939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035820, 0.645319, 0.763073,
		0.888695, 0.328678, -0.319674,
		-0.457097, 0.689590, -0.561719,
		43.643181, 27.482023, 25.300423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395100, 27.594519, 25.740187>,  <43.963150, 26.999310, 25.693626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395100, 27.594519, 25.740187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033440, 27.719500, 25.623646>,  <43.816444, 27.794489, 25.553722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033440, 27.719500, 25.623646>,  <44.395100, 27.594519, 25.740187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033440, 27.719500, 25.623646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018474, 0.709933, 0.704027,
		0.426815, 0.631163, -0.647659,
		-0.904150, 0.312454, -0.291350,
		43.762196, 27.813236, 25.536242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298584, 28.372530, 25.634924>,  <44.395100, 27.594519, 25.740187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298584, 28.372530, 25.634924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916626, 28.271765, 25.697803>,  <43.687450, 28.211306, 25.735531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916626, 28.271765, 25.697803>,  <44.298584, 28.372530, 25.634924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916626, 28.271765, 25.697803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037285, 0.626932, 0.778181,
		-0.294587, 0.737222, -0.608048,
		-0.954897, -0.251913, 0.157199,
		43.630157, 28.196192, 25.744963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857059, 29.015514, 25.731623>,  <44.298584, 28.372530, 25.634924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857059, 29.015514, 25.731623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661781, 28.703440, 25.888071>,  <43.544617, 28.516195, 25.981941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661781, 28.703440, 25.888071>,  <43.857059, 29.015514, 25.731623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661781, 28.703440, 25.888071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266251, 0.559933, 0.784593,
		-0.831131, 0.278895, -0.481080,
		-0.488192, -0.780188, 0.391122,
		43.515324, 28.469383, 26.005407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311523, 29.288460, 26.052074>,  <43.857059, 29.015514, 25.731623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311523, 29.288460, 26.052074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284477, 28.931986, 26.231504>,  <43.268250, 28.718102, 26.339163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284477, 28.931986, 26.231504>,  <43.311523, 29.288460, 26.052074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284477, 28.931986, 26.231504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394598, 0.436832, 0.808375,
		-0.916363, -0.122351, -0.381194,
		-0.067613, -0.891184, 0.448576,
		43.264194, 28.664631, 26.366077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806850, 29.427128, 26.500851>,  <43.311523, 29.288460, 26.052074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806850, 29.427128, 26.500851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937450, 29.072958, 26.633165>,  <43.015812, 28.860456, 26.712555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937450, 29.072958, 26.633165>,  <42.806850, 29.427128, 26.500851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937450, 29.072958, 26.633165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345637, 0.213885, 0.913668,
		-0.879734, -0.412646, -0.236201,
		0.326502, -0.885424, 0.330787,
		43.035400, 28.807331, 26.732401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219276, 28.994671, 26.772213>,  <42.806850, 29.427128, 26.500851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219276, 28.994671, 26.772213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566528, 28.909847, 26.951717>,  <42.774879, 28.858953, 27.059420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566528, 28.909847, 26.951717>,  <42.219276, 28.994671, 26.772213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566528, 28.909847, 26.951717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376186, 0.308701, 0.873606,
		-0.323790, -0.927219, 0.188218,
		0.868127, -0.212060, 0.448761,
		42.826965, 28.846230, 27.086346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005501, 28.719109, 27.366974>,  <42.219276, 28.994671, 26.772213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005501, 28.719109, 27.366974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381104, 28.829800, 27.448650>,  <42.606464, 28.896215, 27.497656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381104, 28.829800, 27.448650>,  <42.005501, 28.719109, 27.366974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381104, 28.829800, 27.448650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286765, 0.302285, 0.909060,
		0.189836, -0.912166, 0.363202,
		0.939004, 0.276726, 0.204193,
		42.662804, 28.912819, 27.509909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110508, 28.490587, 28.002783>,  <42.005501, 28.719109, 27.366974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110508, 28.490587, 28.002783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383701, 28.778103, 27.950827>,  <42.547619, 28.950613, 27.919653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383701, 28.778103, 27.950827>,  <42.110508, 28.490587, 28.002783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383701, 28.778103, 27.950827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090453, 0.259685, 0.961448,
		0.724809, -0.644907, 0.242378,
		0.682986, 0.718790, -0.129888,
		42.588596, 28.993740, 27.911860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774063, 28.381002, 28.466129>,  <42.110508, 28.490587, 28.002783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774063, 28.381002, 28.466129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755367, 28.771461, 28.381325>,  <42.744148, 29.005737, 28.330442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755367, 28.771461, 28.381325>,  <42.774063, 28.381002, 28.466129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755367, 28.771461, 28.381325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026061, 0.213363, 0.976625,
		0.998567, 0.040121, -0.035412,
		-0.046739, 0.976149, -0.212012,
		42.741344, 29.064306, 28.317720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165852, 28.624559, 28.968191>,  <42.774063, 28.381002, 28.466129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165852, 28.624559, 28.968191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949772, 28.929415, 28.825457>,  <42.820122, 29.112328, 28.739817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949772, 28.929415, 28.825457>,  <43.165852, 28.624559, 28.968191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949772, 28.929415, 28.825457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306090, 0.217036, 0.926933,
		0.783895, 0.609954, 0.116039,
		-0.540202, 0.762136, -0.356834,
		42.787712, 29.158056, 28.718407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286949, 29.116379, 29.408947>,  <43.165852, 28.624559, 28.968191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286949, 29.116379, 29.408947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933693, 29.209181, 29.245861>,  <42.721737, 29.264862, 29.148008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933693, 29.209181, 29.245861>,  <43.286949, 29.116379, 29.408947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933693, 29.209181, 29.245861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374242, 0.175595, 0.910554,
		0.282844, 0.956735, -0.068250,
		-0.883143, 0.232003, -0.407717,
		42.668751, 29.278782, 29.123547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952072, 29.632328, 29.756996>,  <43.286949, 29.116379, 29.408947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952072, 29.632328, 29.756996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630810, 29.515448, 29.549316>,  <42.438053, 29.445320, 29.424709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630810, 29.515448, 29.549316>,  <42.952072, 29.632328, 29.756996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630810, 29.515448, 29.549316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583467, 0.209551, 0.784637,
		-0.120473, 0.933117, -0.338790,
		-0.803152, -0.292201, -0.519198,
		42.389866, 29.427788, 29.393557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448605, 30.140293, 29.825747>,  <42.952072, 29.632328, 29.756996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448605, 30.140293, 29.825747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273216, 29.788479, 29.751814>,  <42.167984, 29.577391, 29.707455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273216, 29.788479, 29.751814>,  <42.448605, 30.140293, 29.825747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273216, 29.788479, 29.751814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596889, 0.131228, 0.791519,
		-0.671912, 0.457384, -0.582524,
		-0.438471, -0.879534, -0.184834,
		42.141674, 29.524618, 29.696363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698708, 30.275654, 29.927607>,  <42.448605, 30.140293, 29.825747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698708, 30.275654, 29.927607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740482, 29.877951, 29.936956>,  <41.765549, 29.639330, 29.942566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740482, 29.877951, 29.936956>,  <41.698708, 30.275654, 29.927607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740482, 29.877951, 29.936956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504328, -0.032690, 0.862893,
		-0.857173, -0.101905, -0.504846,
		0.104436, -0.994257, 0.023373,
		41.771812, 29.579674, 29.943968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030106, 29.944658, 29.979805>,  <41.698708, 30.275654, 29.927607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030106, 29.944658, 29.979805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285812, 29.676245, 30.130032>,  <41.439236, 29.515198, 30.220167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285812, 29.676245, 30.130032>,  <41.030106, 29.944658, 29.979805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285812, 29.676245, 30.130032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547356, -0.054026, 0.835154,
		-0.540126, -0.739457, -0.401831,
		0.639270, -0.671033, 0.375565,
		41.477592, 29.474936, 30.242701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552143, 29.411676, 30.322933>,  <41.030106, 29.944658, 29.979805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552143, 29.411676, 30.322933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917156, 29.352457, 30.475439>,  <41.136166, 29.316925, 30.566942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917156, 29.352457, 30.475439>,  <40.552143, 29.411676, 30.322933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917156, 29.352457, 30.475439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395077, -0.077919, 0.915337,
		-0.105813, -0.985905, -0.129597,
		0.912534, -0.148056, 0.381264,
		41.190918, 29.308043, 30.589819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462814, 28.763990, 30.740925>,  <40.552143, 29.411676, 30.322933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462814, 28.763990, 30.740925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783188, 28.963186, 30.873896>,  <40.975410, 29.082705, 30.953678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783188, 28.963186, 30.873896>,  <40.462814, 28.763990, 30.740925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783188, 28.963186, 30.873896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247831, -0.229683, 0.941183,
		0.545053, -0.836213, -0.060544,
		0.800935, 0.497990, 0.332429,
		41.023468, 29.112583, 30.973625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671848, 28.380869, 31.337978>,  <40.462814, 28.763990, 30.740925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671848, 28.380869, 31.337978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826759, 28.747379, 31.378881>,  <40.919704, 28.967285, 31.403423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826759, 28.747379, 31.378881>,  <40.671848, 28.380869, 31.337978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826759, 28.747379, 31.378881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252363, -0.001326, 0.967632,
		0.886754, -0.400545, 0.230720,
		0.387274, 0.916276, 0.102258,
		40.942940, 29.022263, 31.409559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955261, 28.479439, 31.933744>,  <40.671848, 28.380869, 31.337978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955261, 28.479439, 31.933744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966652, 28.868406, 31.841143>,  <40.973488, 29.101786, 31.785582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966652, 28.868406, 31.841143>,  <40.955261, 28.479439, 31.933744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966652, 28.868406, 31.841143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275170, 0.230275, 0.933410,
		0.960974, 0.037122, 0.274138,
		0.028477, 0.972417, -0.231503,
		40.975197, 29.160131, 31.771692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383270, 28.782772, 32.430187>,  <40.955261, 28.479439, 31.933744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383270, 28.782772, 32.430187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146111, 29.080885, 32.308186>,  <41.003815, 29.259752, 32.234985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146111, 29.080885, 32.308186>,  <41.383270, 28.782772, 32.430187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146111, 29.080885, 32.308186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318831, 0.130550, 0.938778,
		0.739470, 0.653846, 0.160215,
		-0.592900, 0.745280, -0.305004,
		40.968239, 29.304468, 32.216686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547054, 29.422195, 32.855721>,  <41.383270, 28.782772, 32.430187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547054, 29.422195, 32.855721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180683, 29.486732, 32.708721>,  <40.960861, 29.525454, 32.620522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180683, 29.486732, 32.708721>,  <41.547054, 29.422195, 32.855721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180683, 29.486732, 32.708721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353804, 0.107723, 0.929095,
		0.189489, 0.981002, -0.041583,
		-0.915924, 0.161341, -0.367495,
		40.905907, 29.535135, 32.598473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365932, 30.102846, 33.232437>,  <41.547054, 29.422195, 32.855721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365932, 30.102846, 33.232437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068291, 29.874514, 33.093613>,  <40.889706, 29.737514, 33.010319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068291, 29.874514, 33.093613>,  <41.365932, 30.102846, 33.232437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068291, 29.874514, 33.093613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446550, 0.038595, 0.893926,
		-0.496888, 0.820158, -0.283625,
		-0.744107, -0.570833, -0.347065,
		40.845058, 29.703264, 32.989494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046158, 29.998636, 33.545090>,  <41.365932, 30.102846, 33.232437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046158, 29.998636, 33.545090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224270, 30.059942, 33.897961>,  <42.331139, 30.096725, 34.109684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224270, 30.059942, 33.897961>,  <42.046158, 29.998636, 33.545090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224270, 30.059942, 33.897961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871449, -0.152128, 0.466298,
		0.205671, -0.976405, 0.065822,
		0.445283, 0.153264, 0.882175,
		42.357853, 30.105921, 34.162613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034752, 29.534145, 34.011505>,  <42.046158, 29.998636, 33.545090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034752, 29.534145, 34.011505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059532, 29.866770, 34.232292>,  <42.074402, 30.066345, 34.364765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059532, 29.866770, 34.232292>,  <42.034752, 29.534145, 34.011505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059532, 29.866770, 34.232292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986062, -0.034564, 0.162749,
		0.154414, -0.554357, 0.817829,
		0.061953, 0.831561, 0.551968,
		42.078117, 30.116238, 34.397884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768963, 29.261190, 34.741745>,  <42.034752, 29.534145, 34.011505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768963, 29.261190, 34.741745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730747, 29.659170, 34.754089>,  <41.707817, 29.897957, 34.761497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730747, 29.659170, 34.754089>,  <41.768963, 29.261190, 34.741745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730747, 29.659170, 34.754089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981655, -0.099313, 0.162758,
		0.165001, -0.014745, 0.986183,
		-0.095541, 0.994947, 0.030861,
		41.702084, 29.957655, 34.763348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373413, 29.406504, 35.306435>,  <41.768963, 29.261190, 34.741745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373413, 29.406504, 35.306435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323742, 29.739624, 35.090649>,  <41.293941, 29.939497, 34.961178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323742, 29.739624, 35.090649>,  <41.373413, 29.406504, 35.306435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323742, 29.739624, 35.090649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965232, 0.024649, 0.260229,
		0.230016, 0.553022, 0.800787,
		-0.124174, 0.832802, -0.539464,
		41.286491, 29.989464, 34.928810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042713, 29.803974, 35.776615>,  <41.373413, 29.406504, 35.306435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042713, 29.803974, 35.776615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972076, 29.929726, 35.403522>,  <40.929695, 30.005177, 35.179668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972076, 29.929726, 35.403522>,  <41.042713, 29.803974, 35.776615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972076, 29.929726, 35.403522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949286, -0.304845, 0.076980,
		-0.260137, 0.899019, 0.352269,
		-0.176594, 0.314378, -0.932728,
		40.919098, 30.024038, 35.123703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452343, 30.243973, 35.831215>,  <41.042713, 29.803974, 35.776615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452343, 30.243973, 35.831215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462620, 30.158699, 35.440544>,  <40.468788, 30.107534, 35.206142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462620, 30.158699, 35.440544>,  <40.452343, 30.243973, 35.831215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462620, 30.158699, 35.440544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968434, -0.247626, 0.028572,
		-0.247941, 0.945110, -0.212819,
		0.025696, -0.213185, -0.976674,
		40.470329, 30.094744, 35.147541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832336, 30.488152, 35.603298>,  <40.452343, 30.243973, 35.831215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832336, 30.488152, 35.603298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966557, 30.240959, 35.318905>,  <40.047089, 30.092644, 35.148270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966557, 30.240959, 35.318905>,  <39.832336, 30.488152, 35.603298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966557, 30.240959, 35.318905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887630, -0.460168, -0.018949,
		-0.315464, 0.637452, -0.702949,
		0.335553, -0.617981, -0.710988,
		40.067223, 30.055565, 35.105610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497074, 30.552528, 35.061615>,  <39.832336, 30.488152, 35.603298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497074, 30.552528, 35.061615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642677, 30.187361, 34.987774>,  <39.730038, 29.968260, 34.943470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642677, 30.187361, 34.987774>,  <39.497074, 30.552528, 35.061615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642677, 30.187361, 34.987774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909501, -0.305672, -0.281732,
		0.200770, 0.270451, -0.941567,
		0.364005, -0.912919, -0.184606,
		39.751881, 29.913485, 34.932392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228516, 30.307379, 34.434788>,  <39.497074, 30.552528, 35.061615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228516, 30.307379, 34.434788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334805, 29.988321, 34.651363>,  <39.398579, 29.796886, 34.781307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334805, 29.988321, 34.651363>,  <39.228516, 30.307379, 34.434788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334805, 29.988321, 34.651363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866674, -0.443622, -0.228200,
		0.422215, -0.408610, -0.809180,
		0.265725, -0.797645, 0.541436,
		39.414520, 29.749027, 34.813793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655582, 29.947521, 34.389427>,  <39.228516, 30.307379, 34.434788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655582, 29.947521, 34.389427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865955, 29.667994, 34.583359>,  <38.992180, 29.500278, 34.699718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865955, 29.667994, 34.583359>,  <38.655582, 29.947521, 34.389427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865955, 29.667994, 34.583359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812503, -0.581334, 0.043464,
		0.251472, -0.416780, -0.873531,
		0.525928, -0.698817, 0.484825,
		39.023735, 29.458349, 34.728806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505665, 29.353720, 34.041203>,  <38.655582, 29.947521, 34.389427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505665, 29.353720, 34.041203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619259, 29.237749, 34.406780>,  <38.687416, 29.168167, 34.626125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619259, 29.237749, 34.406780>,  <38.505665, 29.353720, 34.041203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619259, 29.237749, 34.406780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797198, -0.601017, 0.057052,
		0.532755, -0.744796, -0.401810,
		0.283986, -0.289928, 0.913944,
		38.704456, 29.150770, 34.680962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582802, 28.606918, 34.153839>,  <38.505665, 29.353720, 34.041203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582802, 28.606918, 34.153839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496311, 28.757164, 34.514317>,  <38.444416, 28.847311, 34.730602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496311, 28.757164, 34.514317>,  <38.582802, 28.606918, 34.153839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496311, 28.757164, 34.514317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727442, -0.677633, 0.107893,
		0.651208, -0.632240, 0.419763,
		-0.216231, 0.375614, 0.901198,
		38.431442, 28.869848, 34.784676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197788, 28.040359, 34.474007>,  <38.582802, 28.606918, 34.153839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197788, 28.040359, 34.474007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128681, 28.362595, 34.700695>,  <38.087215, 28.555937, 34.836708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128681, 28.362595, 34.700695>,  <38.197788, 28.040359, 34.474007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128681, 28.362595, 34.700695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924386, -0.331284, 0.189107,
		0.340089, -0.491200, 0.801912,
		-0.172772, 0.805589, 0.566724,
		38.076851, 28.604271, 34.870712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943199, 27.885612, 35.266365>,  <38.197788, 28.040359, 34.474007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943199, 27.885612, 35.266365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811985, 28.214602, 35.080494>,  <37.733257, 28.411995, 34.968971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811985, 28.214602, 35.080494>,  <37.943199, 27.885612, 35.266365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811985, 28.214602, 35.080494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943682, -0.307730, 0.121513,
		-0.043055, 0.478373, 0.877101,
		-0.328039, 0.822473, -0.464681,
		37.713573, 28.461344, 34.941090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473476, 28.222107, 35.646267>,  <37.943199, 27.885612, 35.266365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473476, 28.222107, 35.646267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401558, 28.360922, 35.278084>,  <37.358406, 28.444210, 35.057175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401558, 28.360922, 35.278084>,  <37.473476, 28.222107, 35.646267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401558, 28.360922, 35.278084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901356, -0.432889, 0.012858,
		-0.393993, 0.831969, 0.390637,
		-0.179800, 0.347037, -0.920455,
		37.347618, 28.465033, 35.001945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918621, 28.637714, 35.592903>,  <37.473476, 28.222107, 35.646267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918621, 28.637714, 35.592903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913639, 28.551430, 35.202351>,  <36.910648, 28.499659, 34.968021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913639, 28.551430, 35.202351>,  <36.918621, 28.637714, 35.592903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913639, 28.551430, 35.202351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910729, -0.400681, 0.100143,
		-0.412818, 0.890463, -0.191462,
		-0.012458, -0.215711, -0.976378,
		36.909901, 28.486717, 34.909439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183041, 28.729830, 35.376724>,  <36.918621, 28.637714, 35.592903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183041, 28.729830, 35.376724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331200, 28.513453, 35.074680>,  <36.420097, 28.383627, 34.893456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331200, 28.513453, 35.074680>,  <36.183041, 28.729830, 35.376724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331200, 28.513453, 35.074680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751618, -0.652198, 0.098531,
		-0.545778, 0.531055, -0.648157,
		0.370401, -0.540942, -0.755105,
		36.442322, 28.351170, 34.848148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593838, 28.486504, 34.966702>,  <36.183041, 28.729830, 35.376724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593838, 28.486504, 34.966702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888123, 28.259241, 34.819229>,  <36.064693, 28.122883, 34.730743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888123, 28.259241, 34.819229>,  <35.593838, 28.486504, 34.966702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888123, 28.259241, 34.819229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629554, -0.774407, -0.062891,
		-0.249779, 0.278375, -0.927425,
		0.735712, -0.568155, -0.368683,
		36.108837, 28.088795, 34.708626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304821, 28.280178, 34.334198>,  <35.593838, 28.486504, 34.966702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304821, 28.280178, 34.334198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588131, 28.022068, 34.448723>,  <35.758118, 27.867203, 34.517437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588131, 28.022068, 34.448723>,  <35.304821, 28.280178, 34.334198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588131, 28.022068, 34.448723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703718, -0.677526, 0.213869,
		0.055980, -0.352960, -0.933962,
		0.708270, -0.645274, 0.286312,
		35.800613, 27.828485, 34.534618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053459, 27.556789, 34.166939>,  <35.304821, 28.280178, 34.334198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053459, 27.556789, 34.166939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322975, 27.546108, 34.462315>,  <35.484684, 27.539700, 34.639542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322975, 27.546108, 34.462315>,  <35.053459, 27.556789, 34.166939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322975, 27.546108, 34.462315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516408, -0.731803, 0.444734,
		0.528516, -0.680993, -0.506872,
		0.673791, -0.026703, 0.738440,
		35.525112, 27.538097, 34.683846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497761, 26.877848, 34.098816>,  <35.053459, 27.556789, 34.166939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497761, 26.877848, 34.098816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416298, 27.040855, 34.454895>,  <35.367420, 27.138660, 34.668541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416298, 27.040855, 34.454895>,  <35.497761, 26.877848, 34.098816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416298, 27.040855, 34.454895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316286, -0.887885, 0.334100,
		0.926546, -0.213516, 0.309715,
		-0.203656, 0.407517, 0.890199,
		35.355202, 27.163111, 34.721954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780037, 26.335575, 34.511410>,  <35.497761, 26.877848, 34.098816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780037, 26.335575, 34.511410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550823, 26.577553, 34.732559>,  <35.413296, 26.722740, 34.865250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550823, 26.577553, 34.732559>,  <35.780037, 26.335575, 34.511410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550823, 26.577553, 34.732559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180532, -0.751234, 0.634867,
		0.799398, 0.263990, 0.539696,
		-0.573037, 0.604944, 0.552876,
		35.378914, 26.759035, 34.898422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929825, 26.331768, 35.274395>,  <35.780037, 26.335575, 34.511410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929825, 26.331768, 35.274395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555851, 26.468668, 35.236942>,  <35.331467, 26.550808, 35.214470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555851, 26.468668, 35.236942>,  <35.929825, 26.331768, 35.274395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555851, 26.468668, 35.236942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330333, -0.743194, 0.581845,
		0.129551, 0.574914, 0.807892,
		-0.934931, 0.342252, -0.093632,
		35.275372, 26.571344, 35.208855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514874, 26.598415, 35.938854>,  <35.929825, 26.331768, 35.274395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514874, 26.598415, 35.938854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300373, 26.410080, 35.658638>,  <35.171673, 26.297079, 35.490509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300373, 26.410080, 35.658638>,  <35.514874, 26.598415, 35.938854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300373, 26.410080, 35.658638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228817, -0.717788, 0.657589,
		-0.812454, 0.512925, 0.277176,
		-0.536247, -0.470838, -0.700536,
		35.139500, 26.268829, 35.448479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475040, 27.196766, 35.519291>,  <35.514874, 26.598415, 35.938854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475040, 27.196766, 35.519291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567799, 27.080418, 35.147999>,  <35.623455, 27.010609, 34.925224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567799, 27.080418, 35.147999>,  <35.475040, 27.196766, 35.519291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567799, 27.080418, 35.147999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610459, 0.786458, -0.093934,
		0.757339, -0.544865, 0.359943,
		0.231899, -0.290870, -0.928233,
		35.637367, 26.993156, 34.869530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192802, 27.155848, 35.510723>,  <35.475040, 27.196766, 35.519291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192802, 27.155848, 35.510723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077957, 27.218374, 35.132702>,  <36.009048, 27.255890, 34.905888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077957, 27.218374, 35.132702>,  <36.192802, 27.155848, 35.510723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077957, 27.218374, 35.132702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673307, 0.734685, -0.083035,
		0.681338, -0.660153, -0.316191,
		-0.287117, 0.156319, -0.945054,
		35.991821, 27.265270, 34.849186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758671, 27.164747, 35.148678>,  <36.192802, 27.155848, 35.510723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758671, 27.164747, 35.148678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473293, 27.357651, 34.945335>,  <36.302067, 27.473392, 34.823330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473293, 27.357651, 34.945335>,  <36.758671, 27.164747, 35.148678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473293, 27.357651, 34.945335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682899, 0.641080, -0.350236,
		0.156991, -0.597028, -0.786710,
		-0.713444, 0.482259, -0.508353,
		36.259258, 27.502329, 34.792828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025139, 27.251186, 34.464245>,  <36.758671, 27.164747, 35.148678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025139, 27.251186, 34.464245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726479, 27.512190, 34.516014>,  <36.547283, 27.668791, 34.547077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726479, 27.512190, 34.516014>,  <37.025139, 27.251186, 34.464245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726479, 27.512190, 34.516014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596043, 0.742611, -0.305389,
		-0.295381, -0.150874, -0.943391,
		-0.746647, 0.652508, 0.129426,
		36.502483, 27.707943, 34.554840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997013, 27.656528, 33.883488>,  <37.025139, 27.251186, 34.464245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997013, 27.656528, 33.883488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828671, 27.877073, 34.171623>,  <36.727665, 28.009399, 34.344505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828671, 27.877073, 34.171623>,  <36.997013, 27.656528, 33.883488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828671, 27.877073, 34.171623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715511, 0.689884, -0.110015,
		-0.557606, 0.469108, -0.684846,
		-0.420855, 0.551360, 0.720335,
		36.702415, 28.042480, 34.387722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820400, 28.351879, 33.681347>,  <36.997013, 27.656528, 33.883488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820400, 28.351879, 33.681347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892742, 28.356743, 34.074722>,  <36.936146, 28.359661, 34.310745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892742, 28.356743, 34.074722>,  <36.820400, 28.351879, 33.681347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892742, 28.356743, 34.074722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609866, 0.783083, -0.121838,
		-0.771593, 0.621799, 0.134207,
		0.180854, 0.012161, 0.983435,
		36.946999, 28.360392, 34.369751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003613, 28.976936, 33.896122>,  <36.820400, 28.351879, 33.681347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003613, 28.976936, 33.896122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126652, 28.833248, 34.248566>,  <37.200474, 28.747036, 34.460030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126652, 28.833248, 34.248566>,  <37.003613, 28.976936, 33.896122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126652, 28.833248, 34.248566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751124, 0.660125, 0.006909,
		-0.584122, 0.659695, 0.472868,
		0.307594, -0.359218, 0.881106,
		37.218929, 28.725483, 34.512897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310413, 29.562431, 34.323208>,  <37.003613, 28.976936, 33.896122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310413, 29.562431, 34.323208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442867, 29.220791, 34.483639>,  <37.522339, 29.015806, 34.579895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442867, 29.220791, 34.483639>,  <37.310413, 29.562431, 34.323208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442867, 29.220791, 34.483639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882113, 0.431116, 0.189776,
		-0.334998, 0.290951, 0.896172,
		0.331139, -0.854100, 0.401075,
		37.542210, 28.964561, 34.603962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317051, 29.440022, 35.064690>,  <37.310413, 29.562431, 34.323208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317051, 29.440022, 35.064690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470829, 29.111959, 35.234184>,  <37.563095, 28.915123, 35.335880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470829, 29.111959, 35.234184>,  <37.317051, 29.440022, 35.064690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470829, 29.111959, 35.234184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883242, 0.193291, -0.427227,
		0.268488, 0.538504, 0.798704,
		0.384446, -0.820154, 0.423733,
		37.586163, 28.865913, 35.361305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820560, 29.657543, 35.590332>,  <37.317051, 29.440022, 35.064690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820560, 29.657543, 35.590332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907326, 29.308514, 35.415260>,  <37.959385, 29.099096, 35.310219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907326, 29.308514, 35.415260>,  <37.820560, 29.657543, 35.590332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907326, 29.308514, 35.415260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916329, 0.336587, -0.216911,
		0.336587, -0.354005, 0.872576,
		0.216911, -0.872576, -0.437676,
		37.972401, 29.046741, 35.283958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392391, 29.405508, 35.924755>,  <37.820560, 29.657543, 35.590332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392391, 29.405508, 35.924755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415684, 29.190462, 35.588284>,  <38.429661, 29.061436, 35.386402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415684, 29.190462, 35.588284>,  <38.392391, 29.405508, 35.924755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415684, 29.190462, 35.588284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966312, 0.241956, -0.087740,
		0.250699, -0.807731, 0.533593,
		0.058236, -0.537613, -0.841178,
		38.433155, 29.029179, 35.335930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972610, 28.923706, 35.965260>,  <38.392391, 29.405508, 35.924755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972610, 28.923706, 35.965260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891964, 28.994244, 35.579876>,  <38.843575, 29.036566, 35.348644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891964, 28.994244, 35.579876>,  <38.972610, 28.923706, 35.965260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891964, 28.994244, 35.579876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946014, 0.289936, -0.144899,
		0.253789, -0.940659, -0.225282,
		-0.201617, 0.176346, -0.963459,
		38.831478, 29.047148, 35.290840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464546, 28.563087, 35.652466>,  <38.972610, 28.923706, 35.965260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464546, 28.563087, 35.652466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347389, 28.824827, 35.373600>,  <39.277096, 28.981871, 35.206280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347389, 28.824827, 35.373600>,  <39.464546, 28.563087, 35.652466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347389, 28.824827, 35.373600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953640, 0.147172, -0.262508,
		-0.069169, -0.741732, -0.667120,
		-0.292892, 0.654350, -0.697166,
		39.259521, 29.021132, 35.164452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687527, 28.480713, 34.885899>,  <39.464546, 28.563087, 35.652466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687527, 28.480713, 34.885899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623669, 28.870674, 34.947968>,  <39.585354, 29.104650, 34.985210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623669, 28.870674, 34.947968>,  <39.687527, 28.480713, 34.885899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623669, 28.870674, 34.947968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946857, 0.195689, -0.255278,
		-0.279237, 0.106176, -0.954334,
		-0.159648, 0.974901, 0.155177,
		39.575775, 29.163145, 34.994522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298248, 28.856316, 34.486530>,  <39.687527, 28.480713, 34.885899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298248, 28.856316, 34.486530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115578, 29.192644, 34.602783>,  <40.005974, 29.394442, 34.672535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115578, 29.192644, 34.602783>,  <40.298248, 28.856316, 34.486530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115578, 29.192644, 34.602783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828081, 0.521161, -0.206575,
		-0.325160, 0.146331, -0.934269,
		-0.456676, 0.840820, 0.290635,
		39.978577, 29.444891, 34.689972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582554, 29.364271, 34.058777>,  <40.298248, 28.856316, 34.486530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582554, 29.364271, 34.058777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406670, 29.578436, 34.347218>,  <40.301140, 29.706934, 34.520283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406670, 29.578436, 34.347218>,  <40.582554, 29.364271, 34.058777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406670, 29.578436, 34.347218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735638, 0.675311, -0.052836,
		-0.515256, 0.507237, -0.690813,
		-0.439713, 0.535412, 0.721101,
		40.274757, 29.739059, 34.563549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412716, 30.147791, 33.886795>,  <40.582554, 29.364271, 34.058777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412716, 30.147791, 33.886795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465633, 30.083935, 34.278103>,  <40.497383, 30.045622, 34.512886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465633, 30.083935, 34.278103>,  <40.412716, 30.147791, 33.886795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465633, 30.083935, 34.278103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805676, 0.592229, -0.012311,
		-0.577395, 0.789797, 0.206966,
		0.132295, -0.159639, 0.978271,
		40.505322, 30.036043, 34.571583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703190, 30.680506, 34.007999>,  <40.412716, 30.147791, 33.886795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703190, 30.680506, 34.007999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762474, 30.471180, 34.343658>,  <40.798042, 30.345585, 34.545055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762474, 30.471180, 34.343658>,  <40.703190, 30.680506, 34.007999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762474, 30.471180, 34.343658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871278, 0.470531, 0.139552,
		-0.467877, 0.710452, 0.525689,
		0.148208, -0.523314, 0.839152,
		40.806938, 30.314186, 34.595406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201195, 31.003538, 34.289551>,  <40.703190, 30.680506, 34.007999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201195, 31.003538, 34.289551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238583, 30.712847, 34.561764>,  <41.261017, 30.538431, 34.725090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238583, 30.712847, 34.561764>,  <41.201195, 31.003538, 34.289551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238583, 30.712847, 34.561764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967548, 0.227476, 0.110024,
		-0.234763, 0.648165, 0.724409,
		0.093472, -0.726731, 0.680533,
		41.266624, 30.494827, 34.765923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654472, 31.236725, 34.830986>,  <41.201195, 31.003538, 34.289551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654472, 31.236725, 34.830986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668499, 30.837942, 34.803127>,  <41.676914, 30.598673, 34.786411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668499, 30.837942, 34.803127>,  <41.654472, 31.236725, 34.830986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668499, 30.837942, 34.803127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999341, 0.034330, 0.011804,
		-0.009377, -0.070016, 0.997502,
		0.035071, -0.996955, -0.069648,
		41.679020, 30.538857, 34.782234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251690, 31.034214, 35.245941>,  <41.654472, 31.236725, 34.830986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251690, 31.034214, 35.245941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177917, 30.735250, 34.990639>,  <42.133656, 30.555872, 34.837460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177917, 30.735250, 34.990639>,  <42.251690, 31.034214, 35.245941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177917, 30.735250, 34.990639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972958, -0.230722, -0.010962,
		-0.139066, -0.623015, 0.769749,
		-0.184428, -0.747409, -0.638253,
		42.122589, 30.511028, 34.799164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390835, 30.324051, 35.545280>,  <42.251690, 31.034214, 35.245941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390835, 30.324051, 35.545280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469597, 30.381371, 35.157322>,  <42.516853, 30.415762, 34.924545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469597, 30.381371, 35.157322>,  <42.390835, 30.324051, 35.545280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469597, 30.381371, 35.157322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912422, -0.388788, 0.127791,
		-0.358772, -0.910115, -0.207300,
		0.196901, 0.143297, -0.969895,
		42.528667, 30.424360, 34.866352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497032, 29.708063, 35.182842>,  <42.390835, 30.324051, 35.545280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497032, 29.708063, 35.182842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712788, 30.002064, 35.018482>,  <42.842239, 30.178463, 34.919865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712788, 30.002064, 35.018482>,  <42.497032, 29.708063, 35.182842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712788, 30.002064, 35.018482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842028, -0.466610, 0.270673,
		0.007215, -0.491986, -0.870574,
		0.539385, 0.735000, -0.410899,
		42.874603, 30.222565, 34.895214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883247, 29.540026, 34.566467>,  <42.497032, 29.708063, 35.182842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883247, 29.540026, 34.566467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079987, 29.810270, 34.786156>,  <43.198029, 29.972416, 34.917969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079987, 29.810270, 34.786156>,  <42.883247, 29.540026, 34.566467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079987, 29.810270, 34.786156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820084, -0.571373, -0.031552,
		0.292490, 0.465923, -0.835084,
		0.491845, 0.675611, 0.549217,
		43.227539, 30.012953, 34.950920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692181, 29.571215, 34.502193>,  <42.883247, 29.540026, 34.566467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692181, 29.571215, 34.502193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685822, 29.805281, 34.826496>,  <43.682007, 29.945721, 35.021080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685822, 29.805281, 34.826496>,  <43.692181, 29.571215, 34.502193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685822, 29.805281, 34.826496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842714, -0.428559, 0.325837,
		0.538126, 0.688419, -0.486312,
		-0.015899, 0.585164, 0.810759,
		43.681053, 29.980829, 35.069725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700356, 30.275097, 34.672852>,  <43.692181, 29.571215, 34.502193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700356, 30.275097, 34.672852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047176, 30.415272, 34.814510>,  <44.255268, 30.499376, 34.899506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047176, 30.415272, 34.814510>,  <43.700356, 30.275097, 34.672852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047176, 30.415272, 34.814510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039931, 0.659656, -0.750506,
		-0.496619, 0.664867, 0.557961,
		0.867050, 0.350436, 0.354146,
		44.307293, 30.520403, 34.920753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718216, 31.031469, 34.625134>,  <43.700356, 30.275097, 34.672852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718216, 31.031469, 34.625134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105816, 30.932808, 34.619396>,  <44.338375, 30.873611, 34.615952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105816, 30.932808, 34.619396>,  <43.718216, 31.031469, 34.625134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105816, 30.932808, 34.619396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158816, 0.666305, -0.728571,
		0.189263, 0.703705, 0.684820,
		0.968998, -0.246652, -0.014347,
		44.396515, 30.858812, 34.615093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197407, 31.648129, 34.718845>,  <43.718216, 31.031469, 34.625134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197407, 31.648129, 34.718845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373913, 31.361219, 34.503139>,  <44.479816, 31.189074, 34.373714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373913, 31.361219, 34.503139>,  <44.197407, 31.648129, 34.718845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373913, 31.361219, 34.503139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246735, 0.674750, -0.695582,
		0.862792, 0.173877, 0.474717,
		0.441261, -0.717272, -0.539267,
		44.506290, 31.146038, 34.341358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859245, 31.702698, 34.669956>,  <44.197407, 31.648129, 34.718845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859245, 31.702698, 34.669956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781498, 31.506557, 34.330128>,  <44.734848, 31.388874, 34.126228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781498, 31.506557, 34.330128>,  <44.859245, 31.702698, 34.669956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781498, 31.506557, 34.330128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464137, 0.717034, -0.520038,
		0.864175, -0.495398, 0.088221,
		-0.194369, -0.490350, -0.849575,
		44.723186, 31.359453, 34.075256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492802, 31.692102, 34.263725>,  <44.859245, 31.702698, 34.669956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492802, 31.692102, 34.263725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180794, 31.657049, 34.015888>,  <44.993587, 31.636017, 33.867188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180794, 31.657049, 34.015888>,  <45.492802, 31.692102, 34.263725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180794, 31.657049, 34.015888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447517, 0.613946, -0.650230,
		0.437377, -0.784468, -0.439672,
		-0.780019, -0.087635, -0.619589,
		44.946789, 31.630758, 33.830013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.639912, 31.336897, 33.613457>,  <45.492802, 31.692102, 34.263725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.639912, 31.336897, 33.613457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334549, 31.591063, 33.567039>,  <45.151333, 31.743561, 33.539188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334549, 31.591063, 33.567039>,  <45.639912, 31.336897, 33.613457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334549, 31.591063, 33.567039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539629, 0.528663, -0.655221,
		-0.354987, -0.562820, -0.746470,
		-0.763403, 0.635412, -0.116046,
		45.105530, 31.781687, 33.532227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375076, 31.542963, 32.873539>,  <45.639912, 31.336897, 33.613457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375076, 31.542963, 32.873539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314838, 31.840826, 33.133633>,  <45.278698, 32.019543, 33.289688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314838, 31.840826, 33.133633>,  <45.375076, 31.542963, 32.873539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314838, 31.840826, 33.133633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626979, 0.580476, -0.519562,
		-0.764342, 0.329441, -0.554301,
		-0.150593, 0.744658, 0.650235,
		45.269661, 32.064224, 33.328705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320992, 32.196827, 32.493145>,  <45.375076, 31.542963, 32.873539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320992, 32.196827, 32.493145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411053, 32.277298, 32.874477>,  <45.465092, 32.325581, 33.103275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411053, 32.277298, 32.874477>,  <45.320992, 32.196827, 32.493145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411053, 32.277298, 32.874477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621947, 0.723494, -0.299563,
		-0.749991, 0.660368, 0.037779,
		0.225155, 0.201173, 0.953328,
		45.478600, 32.337650, 33.160477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269569, 32.921898, 32.554726>,  <45.320992, 32.196827, 32.493145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269569, 32.921898, 32.554726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493340, 32.815407, 32.868710>,  <45.627602, 32.751511, 33.057098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493340, 32.815407, 32.868710>,  <45.269569, 32.921898, 32.554726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493340, 32.815407, 32.868710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545208, 0.831503, -0.106544,
		-0.624329, 0.487569, 0.610319,
		0.559430, -0.266232, 0.784958,
		45.661167, 32.735538, 33.104198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398201, 33.558853, 32.885426>,  <45.269569, 32.921898, 32.554726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398201, 33.558853, 32.885426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674435, 33.300873, 33.016350>,  <45.840176, 33.146084, 33.094906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674435, 33.300873, 33.016350>,  <45.398201, 33.558853, 32.885426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674435, 33.300873, 33.016350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601592, 0.763443, 0.235035,
		-0.401467, 0.034595, 0.915220,
		0.690587, -0.644948, 0.327309,
		45.881611, 33.107388, 33.114544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.451038, 33.725212, 33.483040>,  <45.398201, 33.558853, 32.885426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.451038, 33.725212, 33.483040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782085, 33.544094, 33.350361>,  <45.980713, 33.435421, 33.270752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782085, 33.544094, 33.350361>,  <45.451038, 33.725212, 33.483040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782085, 33.544094, 33.350361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557335, 0.732987, 0.390009,
		0.066534, -0.507645, 0.858994,
		0.827617, -0.452799, -0.331697,
		46.030369, 33.408253, 33.250851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924789, 33.626495, 34.114986>,  <45.451038, 33.725212, 33.483040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924789, 33.626495, 34.114986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119652, 33.666927, 33.768005>,  <46.236568, 33.691185, 33.559818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119652, 33.666927, 33.768005>,  <45.924789, 33.626495, 34.114986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119652, 33.666927, 33.768005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761485, 0.437149, 0.478582,
		0.427577, -0.893691, 0.135991,
		0.487153, 0.101076, -0.867448,
		46.265797, 33.697250, 33.507771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612480, 33.137379, 33.999378>,  <45.924789, 33.626495, 34.114986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612480, 33.137379, 33.999378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590080, 33.509827, 33.855217>,  <46.576641, 33.733295, 33.768723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590080, 33.509827, 33.855217>,  <46.612480, 33.137379, 33.999378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590080, 33.509827, 33.855217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631925, 0.312523, 0.709225,
		0.773003, -0.188026, -0.605898,
		-0.056004, 0.931115, -0.360400,
		46.573280, 33.789162, 33.747097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.274345, 33.381382, 33.903664>,  <46.612480, 33.137379, 33.999378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.274345, 33.381382, 33.903664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012848, 33.670464, 33.993389>,  <46.855949, 33.843914, 34.047226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012848, 33.670464, 33.993389>,  <47.274345, 33.381382, 33.903664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.012848, 33.670464, 33.993389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624813, 0.348298, 0.698783,
		0.426885, 0.596979, -0.679253,
		-0.653742, 0.722706, 0.224317,
		46.816727, 33.887276, 34.060684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.540310, 34.171261, 33.811916>,  <47.274345, 33.381382, 33.903664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.540310, 34.171261, 33.811916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.271770, 34.120415, 34.103981>,  <47.110645, 34.089905, 34.279221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.271770, 34.120415, 34.103981>,  <47.540310, 34.171261, 33.811916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.271770, 34.120415, 34.103981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671252, 0.313343, 0.671741,
		-0.314180, 0.941094, -0.125035,
		-0.671350, -0.127118, 0.730157,
		47.070366, 34.082279, 34.323029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210083, 34.818859, 33.913788>,  <47.540310, 34.171261, 33.811916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210083, 34.818859, 33.913788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.222134, 34.556938, 34.215866>,  <47.229366, 34.399784, 34.397114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.222134, 34.556938, 34.215866>,  <47.210083, 34.818859, 33.913788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.222134, 34.556938, 34.215866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953264, 0.246068, 0.175325,
		-0.300633, 0.714618, 0.631618,
		0.030131, -0.654807, 0.755196,
		47.231174, 34.360497, 34.442425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.380219, 35.209263, 34.529221>,  <47.210083, 34.818859, 33.913788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.380219, 35.209263, 34.529221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474625, 34.824623, 34.585251>,  <47.531269, 34.593838, 34.618870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474625, 34.824623, 34.585251>,  <47.380219, 35.209263, 34.529221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.474625, 34.824623, 34.585251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918170, 0.267876, 0.291900,
		-0.318215, 0.059724, 0.946135,
		0.236014, -0.961600, 0.140079,
		47.545429, 34.536144, 34.627274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595734, 35.115631, 35.305458>,  <47.380219, 35.209263, 34.529221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595734, 35.115631, 35.305458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750683, 34.861710, 35.038036>,  <47.843651, 34.709358, 34.877583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750683, 34.861710, 35.038036>,  <47.595734, 35.115631, 35.305458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.750683, 34.861710, 35.038036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913920, 0.169066, 0.369008,
		-0.121218, -0.753951, 0.645650,
		0.387371, -0.634803, -0.668557,
		47.866894, 34.671268, 34.837471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.034893, 28.131905, 22.672834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.105225, 28.525156, 22.652666>,  <38.147423, 28.761106, 22.640566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.105225, 28.525156, 22.652666>,  <38.034893, 28.131905, 22.672834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105225, 28.525156, 22.652666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467749, 0.128504, 0.874470,
		0.866195, -0.130174, 0.482453,
		0.175830, 0.983128, -0.050421,
		38.157974, 28.820095, 22.637539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200874, 28.306683, 23.343208>,  <38.034893, 28.131905, 22.672834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200874, 28.306683, 23.343208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.121590, 28.654654, 23.162571>,  <38.074017, 28.863436, 23.054190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.121590, 28.654654, 23.162571>,  <38.200874, 28.306683, 23.343208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121590, 28.654654, 23.162571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231502, 0.406147, 0.883998,
		0.952427, 0.279767, 0.120885,
		-0.198216, 0.869928, -0.451592,
		38.062126, 28.915632, 23.027094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620571, 28.930025, 23.628622>,  <38.200874, 28.306683, 23.343208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620571, 28.930025, 23.628622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306778, 29.106720, 23.454519>,  <38.118500, 29.212738, 23.350058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306778, 29.106720, 23.454519>,  <38.620571, 28.930025, 23.628622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306778, 29.106720, 23.454519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114676, 0.586424, 0.801846,
		0.609451, 0.678950, -0.409385,
		-0.784486, 0.441739, -0.435256,
		38.071430, 29.239243, 23.323942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650219, 29.751093, 23.711338>,  <38.620571, 28.930025, 23.628622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650219, 29.751093, 23.711338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.275894, 29.619802, 23.659922>,  <38.051300, 29.541029, 23.629072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.275894, 29.619802, 23.659922>,  <38.650219, 29.751093, 23.711338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275894, 29.619802, 23.659922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323927, 0.656938, 0.680811,
		-0.139017, 0.678749, -0.721092,
		-0.935813, -0.328226, -0.128539,
		37.995152, 29.521336, 23.621361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217216, 30.407179, 23.759659>,  <38.650219, 29.751093, 23.711338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217216, 30.407179, 23.759659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998886, 30.078911, 23.827269>,  <37.867886, 29.881950, 23.867834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998886, 30.078911, 23.827269>,  <38.217216, 30.407179, 23.759659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998886, 30.078911, 23.827269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566579, 0.510114, 0.647126,
		-0.617300, 0.257453, -0.743410,
		-0.545828, -0.820672, 0.169026,
		37.835136, 29.832708, 23.877975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783913, 30.734240, 24.058281>,  <38.217216, 30.407179, 23.759659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783913, 30.734240, 24.058281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679169, 30.357876, 24.144182>,  <37.616322, 30.132057, 24.195723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679169, 30.357876, 24.144182>,  <37.783913, 30.734240, 24.058281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679169, 30.357876, 24.144182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491014, 0.321453, 0.809675,
		-0.830864, 0.106573, -0.546174,
		-0.261859, -0.940910, 0.214755,
		37.600613, 30.075603, 24.208609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062431, 30.750271, 24.244730>,  <37.783913, 30.734240, 24.058281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062431, 30.750271, 24.244730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219391, 30.427687, 24.421656>,  <37.313568, 30.234137, 24.527811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219391, 30.427687, 24.421656>,  <37.062431, 30.750271, 24.244730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219391, 30.427687, 24.421656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287786, 0.349092, 0.891804,
		-0.873614, -0.477235, -0.095105,
		0.392400, -0.806462, 0.442313,
		37.337112, 30.185749, 24.554350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563717, 30.531698, 24.698254>,  <37.062431, 30.750271, 24.244730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563717, 30.531698, 24.698254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899002, 30.368595, 24.843098>,  <37.100174, 30.270733, 24.930004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899002, 30.368595, 24.843098>,  <36.563717, 30.531698, 24.698254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899002, 30.368595, 24.843098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300555, 0.208641, 0.930664,
		-0.455039, -0.888933, 0.052332,
		0.838216, -0.407759, 0.362112,
		37.150467, 30.246267, 24.951731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309063, 30.192095, 25.305649>,  <36.563717, 30.531698, 24.698254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309063, 30.192095, 25.305649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700916, 30.241278, 25.369135>,  <36.936028, 30.270788, 25.407227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700916, 30.241278, 25.369135>,  <36.309063, 30.192095, 25.305649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700916, 30.241278, 25.369135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178960, 0.176419, 0.967910,
		0.091010, -0.976605, 0.194831,
		0.979638, 0.122957, 0.158717,
		36.994808, 30.278166, 25.416750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420845, 29.890844, 25.931314>,  <36.309063, 30.192095, 25.305649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420845, 29.890844, 25.931314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752693, 30.110413, 25.890474>,  <36.951801, 30.242153, 25.865971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752693, 30.110413, 25.890474>,  <36.420845, 29.890844, 25.931314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752693, 30.110413, 25.890474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015896, 0.206010, 0.978421,
		0.558107, -0.810091, 0.179635,
		0.829617, 0.548919, -0.102098,
		37.001579, 30.275087, 25.859844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903458, 29.633263, 26.356565>,  <36.420845, 29.890844, 25.931314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903458, 29.633263, 26.356565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033920, 30.006935, 26.298698>,  <37.112198, 30.231138, 26.263977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033920, 30.006935, 26.298698>,  <36.903458, 29.633263, 26.356565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033920, 30.006935, 26.298698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059010, 0.132620, 0.989409,
		0.943472, -0.331240, -0.011871,
		0.326157, 0.934180, -0.144670,
		37.131767, 30.287189, 26.255297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309654, 29.754190, 26.873602>,  <36.903458, 29.633263, 26.356565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309654, 29.754190, 26.873602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.270470, 30.138878, 26.771231>,  <37.246960, 30.369690, 26.709808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.270470, 30.138878, 26.771231>,  <37.309654, 29.754190, 26.873602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270470, 30.138878, 26.771231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039457, 0.260714, 0.964609,
		0.994408, 0.084397, -0.063487,
		-0.097962, 0.961720, -0.255926,
		37.241081, 30.427393, 26.694452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727501, 30.057522, 27.335791>,  <37.309654, 29.754190, 26.873602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727501, 30.057522, 27.335791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.498253, 30.357174, 27.202923>,  <37.360706, 30.536966, 27.123201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.498253, 30.357174, 27.202923>,  <37.727501, 30.057522, 27.335791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498253, 30.357174, 27.202923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141445, 0.308830, 0.940541,
		0.807174, 0.586024, -0.071035,
		-0.573117, 0.749133, -0.332170,
		37.326317, 30.581913, 27.103271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006516, 30.718451, 27.501865>,  <37.727501, 30.057522, 27.335791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006516, 30.718451, 27.501865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611759, 30.770069, 27.463100>,  <37.374905, 30.801041, 27.439840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611759, 30.770069, 27.463100>,  <38.006516, 30.718451, 27.501865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611759, 30.770069, 27.463100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082856, 0.110185, 0.990452,
		0.138493, 0.985498, -0.098049,
		-0.986892, 0.129046, -0.096914,
		37.315693, 30.808783, 27.434027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847874, 31.291325, 27.965639>,  <38.006516, 30.718451, 27.501865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847874, 31.291325, 27.965639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.515152, 31.072721, 27.926788>,  <37.315521, 30.941559, 27.903477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.515152, 31.072721, 27.926788>,  <37.847874, 31.291325, 27.965639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515152, 31.072721, 27.926788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206556, 0.142341, 0.968026,
		-0.515208, 0.825269, -0.231284,
		-0.831803, -0.546507, -0.097129,
		37.265610, 30.908770, 27.897650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259506, 31.712389, 28.186146>,  <37.847874, 31.291325, 27.965639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259506, 31.712389, 28.186146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.133175, 31.334110, 28.216906>,  <37.057377, 31.107143, 28.235361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.133175, 31.334110, 28.216906>,  <37.259506, 31.712389, 28.186146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133175, 31.334110, 28.216906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223777, 0.153003, 0.962556,
		-0.922051, 0.286791, -0.259947,
		-0.315826, -0.945696, 0.076899,
		37.038425, 31.050402, 28.239975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469597, 31.756113, 28.550514>,  <37.259506, 31.712389, 28.186146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469597, 31.756113, 28.550514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610779, 31.387791, 28.616894>,  <36.695488, 31.166798, 28.656721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610779, 31.387791, 28.616894>,  <36.469597, 31.756113, 28.550514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610779, 31.387791, 28.616894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447457, -0.010356, 0.894246,
		-0.821708, -0.389884, -0.415676,
		0.352957, -0.920806, 0.165947,
		36.716667, 31.111549, 28.666677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058754, 31.513828, 29.011044>,  <36.469597, 31.756113, 28.550514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058754, 31.513828, 29.011044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.338539, 31.231989, 29.058857>,  <36.506409, 31.062885, 29.087545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.338539, 31.231989, 29.058857>,  <36.058754, 31.513828, 29.011044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338539, 31.231989, 29.058857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373762, -0.218096, 0.901519,
		-0.609140, -0.675258, -0.415903,
		0.699464, -0.704600, 0.119534,
		36.548378, 31.020609, 29.094717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739506, 30.764051, 29.236633>,  <36.058754, 31.513828, 29.011044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739506, 30.764051, 29.236633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124603, 30.763222, 29.344791>,  <36.355663, 30.762724, 29.409687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124603, 30.763222, 29.344791>,  <35.739506, 30.764051, 29.236633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124603, 30.763222, 29.344791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266670, -0.172892, 0.948154,
		0.044786, -0.984939, -0.167003,
		0.962747, -0.002071, 0.270397,
		36.413425, 30.762600, 29.425911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760899, 30.177027, 29.618795>,  <35.739506, 30.764051, 29.236633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760899, 30.177027, 29.618795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109692, 30.357304, 29.695232>,  <36.318970, 30.465469, 29.741095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109692, 30.357304, 29.695232>,  <35.760899, 30.177027, 29.618795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109692, 30.357304, 29.695232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080424, -0.253163, 0.964075,
		0.482880, -0.856028, -0.184508,
		0.871986, 0.450693, 0.191093,
		36.371288, 30.492512, 29.752560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302177, 29.744581, 29.891048>,  <35.760899, 30.177027, 29.618795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302177, 29.744581, 29.891048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372490, 30.113892, 30.027674>,  <36.414677, 30.335478, 30.109648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372490, 30.113892, 30.027674>,  <36.302177, 29.744581, 29.891048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372490, 30.113892, 30.027674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045199, -0.339028, 0.939690,
		0.983391, -0.180617, -0.017863,
		0.175780, 0.923275, 0.341561,
		36.425224, 30.390875, 30.130142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789463, 29.625925, 30.365513>,  <36.302177, 29.744581, 29.891048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789463, 29.625925, 30.365513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639263, 29.984289, 30.460461>,  <36.549145, 30.199308, 30.517429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639263, 29.984289, 30.460461>,  <36.789463, 29.625925, 30.365513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639263, 29.984289, 30.460461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096690, -0.292583, 0.951339,
		0.921766, 0.334275, 0.196490,
		-0.375498, 0.895910, 0.237372,
		36.526615, 30.253063, 30.531672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401539, 30.072199, 30.226307>,  <36.789463, 29.625925, 30.365513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401539, 30.072199, 30.226307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626041, 29.880457, 30.496183>,  <37.760742, 29.765411, 30.658110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626041, 29.880457, 30.496183>,  <37.401539, 30.072199, 30.226307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626041, 29.880457, 30.496183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537988, -0.408176, -0.737537,
		0.628936, 0.776923, 0.028796,
		0.561256, -0.479356, 0.674692,
		37.794418, 29.736650, 30.698591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034317, 30.161346, 29.962927>,  <37.401539, 30.072199, 30.226307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034317, 30.161346, 29.962927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077534, 29.843374, 30.201727>,  <38.103466, 29.652592, 30.345007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077534, 29.843374, 30.201727>,  <38.034317, 30.161346, 29.962927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077534, 29.843374, 30.201727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685665, -0.375244, -0.623743,
		0.719854, 0.476736, 0.504513,
		0.108046, -0.794931, 0.597002,
		38.109947, 29.604895, 30.380827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686256, 30.076212, 29.994455>,  <38.034317, 30.161346, 29.962927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686256, 30.076212, 29.994455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556152, 29.719603, 30.120562>,  <38.478092, 29.505636, 30.196224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556152, 29.719603, 30.120562>,  <38.686256, 30.076212, 29.994455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556152, 29.719603, 30.120562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562392, -0.450396, -0.693440,
		0.760213, -0.048244, 0.647881,
		-0.325257, -0.891525, 0.315265,
		38.458576, 29.452145, 30.215141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223637, 29.705805, 29.990189>,  <38.686256, 30.076212, 29.994455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223637, 29.705805, 29.990189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963951, 29.402075, 30.007849>,  <38.808140, 29.219837, 30.018446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963951, 29.402075, 30.007849>,  <39.223637, 29.705805, 29.990189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963951, 29.402075, 30.007849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539536, -0.500656, -0.676937,
		0.536121, -0.415653, 0.734715,
		-0.649211, -0.759326, 0.044152,
		38.769188, 29.174276, 30.021095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624771, 29.164633, 30.089760>,  <39.223637, 29.705805, 29.990189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624771, 29.164633, 30.089760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285320, 29.064444, 29.903389>,  <39.081650, 29.004330, 29.791567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285320, 29.064444, 29.903389>,  <39.624771, 29.164633, 30.089760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285320, 29.064444, 29.903389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528610, -0.368339, -0.764786,
		0.019938, -0.895316, 0.444985,
		-0.848631, -0.250472, -0.465929,
		39.030731, 28.989302, 29.763611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670452, 28.452116, 29.736406>,  <39.624771, 29.164633, 30.089760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670452, 28.452116, 29.736406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.347164, 28.599569, 29.552717>,  <39.153191, 28.688042, 29.442505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.347164, 28.599569, 29.552717>,  <39.670452, 28.452116, 29.736406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347164, 28.599569, 29.552717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389264, -0.250708, -0.886352,
		-0.441871, -0.895128, 0.059131,
		-0.808222, 0.368635, -0.459222,
		39.104698, 28.710159, 29.414951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532814, 27.953564, 29.303785>,  <39.670452, 28.452116, 29.736406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532814, 27.953564, 29.303785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338013, 28.276863, 29.171383>,  <39.221134, 28.470842, 29.091942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338013, 28.276863, 29.171383>,  <39.532814, 27.953564, 29.303785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338013, 28.276863, 29.171383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236790, -0.242608, -0.940783,
		-0.840691, -0.536541, -0.073235,
		-0.487001, 0.808249, -0.331005,
		39.191914, 28.519337, 29.072081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065548, 27.715645, 28.784021>,  <39.532814, 27.953564, 29.303785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065548, 27.715645, 28.784021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.113594, 28.107386, 28.718979>,  <39.142422, 28.342430, 28.679953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.113594, 28.107386, 28.718979>,  <39.065548, 27.715645, 28.784021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113594, 28.107386, 28.718979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142255, -0.179081, -0.973496,
		-0.982515, 0.093801, -0.160828,
		0.120116, 0.979353, -0.162606,
		39.149628, 28.401192, 28.670197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822388, 27.782883, 28.143019>,  <39.065548, 27.715645, 28.784021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822388, 27.782883, 28.143019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013107, 28.132097, 28.183939>,  <39.127541, 28.341625, 28.208490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013107, 28.132097, 28.183939>,  <38.822388, 27.782883, 28.143019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013107, 28.132097, 28.183939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024379, 0.103202, -0.994362,
		-0.878672, 0.476609, 0.027923,
		0.476803, 0.873037, 0.102300,
		39.156147, 28.394009, 28.214628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469887, 28.225155, 27.739992>,  <38.822388, 27.782883, 28.143019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469887, 28.225155, 27.739992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.817570, 28.422762, 27.748219>,  <39.026180, 28.541327, 27.753155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.817570, 28.422762, 27.748219>,  <38.469887, 28.225155, 27.739992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817570, 28.422762, 27.748219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010492, 0.023160, -0.999677,
		-0.494334, 0.869143, 0.014947,
		0.869209, 0.494018, 0.020568,
		39.078331, 28.570967, 27.754389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554344, 28.828403, 27.319592>,  <38.469887, 28.225155, 27.739992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554344, 28.828403, 27.319592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.937698, 28.735014, 27.385296>,  <39.167713, 28.678980, 27.424719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.937698, 28.735014, 27.385296>,  <38.554344, 28.828403, 27.319592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937698, 28.735014, 27.385296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182135, 0.057035, -0.981618,
		0.219814, 0.970689, 0.097186,
		0.958389, -0.233474, 0.164259,
		39.225216, 28.664972, 27.434574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968460, 29.271496, 26.857237>,  <38.554344, 28.828403, 27.319592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968460, 29.271496, 26.857237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.183346, 28.946096, 26.946346>,  <39.312275, 28.750856, 26.999811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.183346, 28.946096, 26.946346>,  <38.968460, 29.271496, 26.857237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183346, 28.946096, 26.946346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372060, -0.008476, -0.928170,
		0.756952, 0.581507, 0.298117,
		0.537211, -0.813497, 0.222771,
		39.344509, 28.702047, 27.013178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571667, 29.455540, 26.554932>,  <38.968460, 29.271496, 26.857237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571667, 29.455540, 26.554932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572807, 29.059786, 26.613052>,  <39.573490, 28.822334, 26.647924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572807, 29.059786, 26.613052>,  <39.571667, 29.455540, 26.554932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572807, 29.059786, 26.613052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326509, -0.136418, -0.935298,
		0.945190, 0.050106, 0.322654,
		0.002848, -0.989383, 0.145301,
		39.573662, 28.762970, 26.656643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183548, 29.214157, 26.248339>,  <39.571667, 29.455540, 26.554932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183548, 29.214157, 26.248339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.947338, 28.893240, 26.283228>,  <39.805611, 28.700689, 26.304161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.947338, 28.893240, 26.283228>,  <40.183548, 29.214157, 26.248339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947338, 28.893240, 26.283228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242790, -0.279692, -0.928884,
		0.769632, -0.527352, 0.359954,
		-0.590525, -0.802292, 0.087224,
		39.770180, 28.652552, 26.309395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643940, 28.732555, 25.997828>,  <40.183548, 29.214157, 26.248339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643940, 28.732555, 25.997828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.298298, 28.531273, 25.993662>,  <40.090912, 28.410503, 25.991163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.298298, 28.531273, 25.993662>,  <40.643940, 28.732555, 25.997828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298298, 28.531273, 25.993662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286127, -0.474103, -0.832681,
		0.414074, -0.722502, 0.553655,
		-0.864103, -0.503207, -0.010414,
		40.039066, 28.380310, 25.990538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828819, 28.001341, 25.819666>,  <40.643940, 28.732555, 25.997828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828819, 28.001341, 25.819666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.438385, 28.051435, 25.748592>,  <40.204124, 28.081493, 25.705948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.438385, 28.051435, 25.748592>,  <40.828819, 28.001341, 25.819666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438385, 28.051435, 25.748592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075825, -0.569884, -0.818219,
		-0.203729, -0.812126, 0.546760,
		-0.976086, 0.125237, -0.177681,
		40.145557, 28.089006, 25.695288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668304, 27.385067, 25.363661>,  <40.828819, 28.001341, 25.819666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668304, 27.385067, 25.363661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350277, 27.624292, 25.323296>,  <40.159462, 27.767828, 25.299076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350277, 27.624292, 25.323296>,  <40.668304, 27.385067, 25.363661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350277, 27.624292, 25.323296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128473, -0.328667, -0.935667,
		-0.592756, -0.730956, 0.338148,
		-0.795069, 0.598065, -0.100912,
		40.111755, 27.803711, 25.293022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941387, 27.069014, 25.276155>,  <40.668304, 27.385067, 25.363661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941387, 27.069014, 25.276155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.962658, 27.429090, 25.103262>,  <39.975418, 27.645136, 24.999525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.962658, 27.429090, 25.103262>,  <39.941387, 27.069014, 25.276155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962658, 27.429090, 25.103262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128927, -0.423037, -0.896893,
		-0.990227, 0.103417, 0.093565,
		0.053172, 0.900191, -0.432236,
		39.978611, 27.699148, 24.973591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.399612, 27.114708, 24.668900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.627823, 27.438932, 24.615997>,  <39.764751, 27.633467, 24.584255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.627823, 27.438932, 24.615997>,  <39.399612, 27.114708, 24.668900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627823, 27.438932, 24.615997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079213, -0.214596, -0.973485,
		-0.817449, 0.544925, -0.186640,
		0.570528, 0.810559, -0.132256,
		39.798981, 27.682100, 24.576321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032272, 27.611351, 24.081745>,  <39.399612, 27.114708, 24.668900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032272, 27.611351, 24.081745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.428783, 27.645111, 24.122250>,  <39.666691, 27.665367, 24.146551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.428783, 27.645111, 24.122250>,  <39.032272, 27.611351, 24.081745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428783, 27.645111, 24.122250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112829, -0.146006, -0.982828,
		-0.068167, 0.985677, -0.154255,
		0.991273, 0.084401, 0.101260,
		39.726166, 27.670431, 24.152628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165989, 28.012133, 23.587049>,  <39.032272, 27.611351, 24.081745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165989, 28.012133, 23.587049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.541126, 27.884501, 23.641665>,  <39.766209, 27.807920, 23.674433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.541126, 27.884501, 23.641665>,  <39.165989, 28.012133, 23.587049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541126, 27.884501, 23.641665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042051, -0.286040, -0.957295,
		0.344510, 0.903531, -0.254842,
		0.937840, -0.319081, 0.136538,
		39.822479, 27.788776, 23.682627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570656, 28.189585, 22.975384>,  <39.165989, 28.012133, 23.587049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570656, 28.189585, 22.975384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776581, 27.897303, 23.154730>,  <39.900135, 27.721933, 23.262339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776581, 27.897303, 23.154730>,  <39.570656, 28.189585, 22.975384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776581, 27.897303, 23.154730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403614, -0.254828, -0.878726,
		0.756347, 0.633348, 0.163734,
		0.514815, -0.730707, 0.448367,
		39.931026, 27.678091, 23.289240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203541, 28.307112, 22.822645>,  <39.570656, 28.189585, 22.975384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203541, 28.307112, 22.822645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.188431, 27.923603, 22.935307>,  <40.179367, 27.693497, 23.002903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.188431, 27.923603, 22.935307>,  <40.203541, 28.307112, 22.822645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188431, 27.923603, 22.935307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466181, -0.266211, -0.843686,
		0.883883, 0.099433, 0.457017,
		-0.037773, -0.958773, 0.281653,
		40.177097, 27.635971, 23.019802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840523, 28.037466, 22.699341>,  <40.203541, 28.307112, 22.822645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840523, 28.037466, 22.699341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.606331, 27.713720, 22.717865>,  <40.465816, 27.519474, 22.728979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.606331, 27.713720, 22.717865>,  <40.840523, 28.037466, 22.699341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606331, 27.713720, 22.717865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446730, -0.369771, -0.814679,
		0.676494, -0.456291, 0.578061,
		-0.585481, -0.809363, 0.046309,
		40.430687, 27.470911, 22.731758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254501, 27.385233, 22.564962>,  <40.840523, 28.037466, 22.699341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254501, 27.385233, 22.564962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.878765, 27.258926, 22.511408>,  <40.653324, 27.183142, 22.479275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.878765, 27.258926, 22.511408>,  <41.254501, 27.385233, 22.564962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878765, 27.258926, 22.511408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276227, -0.465118, -0.841049,
		0.203302, -0.827017, 0.524129,
		-0.939344, -0.315766, -0.133885,
		40.596962, 27.164196, 22.471243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254963, 26.765629, 22.349520>,  <41.254501, 27.385233, 22.564962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254963, 26.765629, 22.349520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.884205, 26.862486, 22.234812>,  <40.661751, 26.920601, 22.165987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.884205, 26.862486, 22.234812>,  <41.254963, 26.765629, 22.349520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884205, 26.862486, 22.234812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153579, -0.452475, -0.878453,
		-0.342467, -0.858274, 0.382208,
		-0.926893, 0.242142, -0.286770,
		40.606136, 26.935129, 22.148781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981598, 26.176205, 22.076769>,  <41.254963, 26.765629, 22.349520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981598, 26.176205, 22.076769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.792038, 26.490889, 21.918526>,  <40.678303, 26.679699, 21.823580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.792038, 26.490889, 21.918526>,  <40.981598, 26.176205, 22.076769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792038, 26.490889, 21.918526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248505, -0.311520, -0.917170,
		-0.844787, -0.532957, -0.047872,
		-0.473899, 0.786710, -0.395610,
		40.649868, 26.726902, 21.799843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508942, 25.910318, 21.563086>,  <40.981598, 26.176205, 22.076769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508942, 25.910318, 21.563086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.560459, 26.287695, 21.440886>,  <40.591370, 26.514120, 21.367565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.560459, 26.287695, 21.440886>,  <40.508942, 25.910318, 21.563086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560459, 26.287695, 21.440886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167298, -0.324323, -0.931035,
		-0.977457, 0.068805, -0.199608,
		0.128797, 0.943441, -0.305502,
		40.599098, 26.570726, 21.349236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225517, 25.922163, 20.846703>,  <40.508942, 25.910318, 21.563086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225517, 25.922163, 20.846703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.457615, 26.247049, 20.870794>,  <40.596874, 26.441980, 20.885250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.457615, 26.247049, 20.870794>,  <40.225517, 25.922163, 20.846703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457615, 26.247049, 20.870794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148506, -0.032799, -0.988367,
		-0.800790, 0.582437, -0.139650,
		0.580242, 0.812214, 0.060230,
		40.631687, 26.490713, 20.888863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956001, 26.312424, 20.286087>,  <40.225517, 25.922163, 20.846703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956001, 26.312424, 20.286087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.300686, 26.501913, 20.358791>,  <40.507496, 26.615606, 20.402414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.300686, 26.501913, 20.358791>,  <39.956001, 26.312424, 20.286087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300686, 26.501913, 20.358791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177109, 0.054866, -0.982661,
		-0.475483, 0.878962, -0.036622,
		0.861713, 0.473725, 0.181760,
		40.559200, 26.644030, 20.413319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957928, 26.818611, 19.760906>,  <39.956001, 26.312424, 20.286087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957928, 26.818611, 19.760906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339718, 26.769566, 19.869677>,  <40.568790, 26.740139, 19.934938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339718, 26.769566, 19.869677>,  <39.957928, 26.818611, 19.760906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339718, 26.769566, 19.869677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262060, -0.090769, -0.960773,
		0.142486, 0.988295, -0.054505,
		0.954475, -0.122614, 0.271926,
		40.626060, 26.732782, 19.951254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361904, 27.218630, 19.361626>,  <39.957928, 26.818611, 19.760906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361904, 27.218630, 19.361626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609261, 26.945133, 19.516596>,  <40.757675, 26.781036, 19.609577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609261, 26.945133, 19.516596>,  <40.361904, 27.218630, 19.361626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609261, 26.945133, 19.516596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383077, -0.168190, -0.908276,
		0.686185, 0.710079, 0.157918,
		0.618387, -0.683740, 0.387424,
		40.794777, 26.740011, 19.632824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979935, 27.484131, 19.432415>,  <40.361904, 27.218630, 19.361626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979935, 27.484131, 19.432415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.044273, 27.091221, 19.393911>,  <41.082878, 26.855474, 19.370810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.044273, 27.091221, 19.393911>,  <40.979935, 27.484131, 19.432415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044273, 27.091221, 19.393911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410436, 0.155264, -0.898574,
		0.897592, 0.105025, 0.428135,
		0.160847, -0.982274, -0.096257,
		41.092529, 26.796539, 19.365034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493164, 27.478910, 18.992067>,  <40.979935, 27.484131, 19.432415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493164, 27.478910, 18.992067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.379814, 27.095610, 18.976824>,  <41.311806, 26.865629, 18.967678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.379814, 27.095610, 18.976824>,  <41.493164, 27.478910, 18.992067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379814, 27.095610, 18.976824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481878, -0.107919, -0.869567,
		0.829152, -0.264774, 0.492343,
		-0.283373, -0.958253, -0.038107,
		41.294804, 26.808134, 18.965391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116615, 27.077078, 18.986723>,  <41.493164, 27.478910, 18.992067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116615, 27.077078, 18.986723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.803364, 26.885347, 18.828257>,  <41.615414, 26.770309, 18.733177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.803364, 26.885347, 18.828257>,  <42.116615, 27.077078, 18.986723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803364, 26.885347, 18.828257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513870, -0.140051, -0.846359,
		0.350201, -0.866389, 0.355992,
		-0.783133, -0.479329, -0.396165,
		41.568424, 26.741549, 18.709408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416027, 26.641788, 18.640133>,  <42.116615, 27.077078, 18.986723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416027, 26.641788, 18.640133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.054131, 26.620327, 18.471104>,  <41.836994, 26.607450, 18.369686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.054131, 26.620327, 18.471104>,  <42.416027, 26.641788, 18.640133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054131, 26.620327, 18.471104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418130, -0.301243, -0.856983,
		-0.081316, -0.952037, 0.294981,
		-0.904741, -0.053653, -0.422571,
		41.782707, 26.604231, 18.344332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421902, 26.035332, 18.366308>,  <42.416027, 26.641788, 18.640133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421902, 26.035332, 18.366308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.112888, 26.203920, 18.176340>,  <41.927479, 26.305073, 18.062359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.112888, 26.203920, 18.176340>,  <42.421902, 26.035332, 18.366308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112888, 26.203920, 18.176340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294914, -0.424215, -0.856193,
		-0.562329, -0.801501, 0.203424,
		-0.772536, 0.421470, -0.474922,
		41.881126, 26.330362, 18.033863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112396, 25.476065, 17.995665>,  <42.421902, 26.035332, 18.366308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112396, 25.476065, 17.995665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.039791, 25.827801, 17.819569>,  <41.996227, 26.038843, 17.713911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.039791, 25.827801, 17.819569>,  <42.112396, 25.476065, 17.995665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039791, 25.827801, 17.819569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303183, -0.375830, -0.875689,
		-0.935485, -0.292426, -0.198381,
		-0.181517, 0.879340, -0.440241,
		41.985336, 26.091602, 17.687496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779171, 25.372234, 17.309042>,  <42.112396, 25.476065, 17.995665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779171, 25.372234, 17.309042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.932388, 25.740793, 17.282782>,  <42.024319, 25.961927, 17.267025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.932388, 25.740793, 17.282782>,  <41.779171, 25.372234, 17.309042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932388, 25.740793, 17.282782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408164, -0.232580, -0.882785,
		-0.828662, 0.311349, -0.465168,
		0.383043, 0.921395, -0.065649,
		42.047302, 26.017212, 17.263086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733295, 25.511354, 16.620148>,  <41.779171, 25.372234, 17.309042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733295, 25.511354, 16.620148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.005493, 25.769951, 16.758121>,  <42.168812, 25.925108, 16.840906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.005493, 25.769951, 16.758121>,  <41.733295, 25.511354, 16.620148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005493, 25.769951, 16.758121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492950, -0.055612, -0.868279,
		-0.542150, 0.760894, -0.356530,
		0.680495, 0.646489, 0.344933,
		42.209641, 25.963898, 16.861601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917030, 25.994184, 16.100103>,  <41.733295, 25.511354, 16.620148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917030, 25.994184, 16.100103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.229031, 25.976473, 16.349785>,  <42.416233, 25.965845, 16.499594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.229031, 25.976473, 16.349785>,  <41.917030, 25.994184, 16.100103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229031, 25.976473, 16.349785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625089, 0.008472, -0.780507,
		0.029274, 0.998983, 0.034288,
		0.780004, -0.044281, 0.624206,
		42.463032, 25.963188, 16.537046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391869, 26.543758, 15.922465>,  <41.917030, 25.994184, 16.100103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391869, 26.543758, 15.922465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.604561, 26.267166, 16.118063>,  <42.732178, 26.101210, 16.235422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.604561, 26.267166, 16.118063>,  <42.391869, 26.543758, 15.922465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604561, 26.267166, 16.118063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688888, 0.017278, -0.724662,
		0.492642, 0.722186, 0.485542,
		0.531730, -0.691483, 0.488993,
		42.764080, 26.059721, 16.264761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861809, 27.148397, 16.059475>,  <42.391869, 26.543758, 15.922465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861809, 27.148397, 16.059475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.608799, 27.379488, 15.853121>,  <41.456993, 27.518143, 15.729308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.608799, 27.379488, 15.853121>,  <41.861809, 27.148397, 16.059475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608799, 27.379488, 15.853121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048972, 0.634895, 0.771045,
		0.772989, 0.512970, -0.373296,
		-0.632527, 0.577729, -0.515887,
		41.419041, 27.552807, 15.698355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908096, 27.817049, 16.293318>,  <41.861809, 27.148397, 16.059475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908096, 27.817049, 16.293318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.572933, 27.909140, 16.095369>,  <41.371834, 27.964394, 15.976600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.572933, 27.909140, 16.095369>,  <41.908096, 27.817049, 16.293318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572933, 27.909140, 16.095369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215414, 0.693589, 0.687409,
		0.501497, 0.682591, -0.531573,
		-0.837913, 0.230225, -0.494873,
		41.321560, 27.978207, 15.946908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950024, 28.458471, 16.267672>,  <41.908096, 27.817049, 16.293318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950024, 28.458471, 16.267672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.565052, 28.351122, 16.251110>,  <41.334068, 28.286713, 16.241173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.565052, 28.351122, 16.251110>,  <41.950024, 28.458471, 16.267672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565052, 28.351122, 16.251110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200707, 0.600325, 0.774162,
		-0.182909, 0.753382, -0.631632,
		-0.962425, -0.268374, -0.041404,
		41.276325, 28.270609, 16.238689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518818, 29.035290, 16.360825>,  <41.950024, 28.458471, 16.267672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518818, 29.035290, 16.360825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247208, 28.749292, 16.427408>,  <41.084240, 28.577694, 16.467358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247208, 28.749292, 16.427408>,  <41.518818, 29.035290, 16.360825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247208, 28.749292, 16.427408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270385, 0.454389, 0.848777,
		-0.682506, 0.531335, -0.501865,
		-0.679027, -0.714993, 0.166458,
		41.043499, 28.534794, 16.477346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005627, 29.414024, 16.568817>,  <41.518818, 29.035290, 16.360825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005627, 29.414024, 16.568817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.929768, 29.058796, 16.736324>,  <40.884251, 28.845659, 16.836828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.929768, 29.058796, 16.736324>,  <41.005627, 29.414024, 16.568817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929768, 29.058796, 16.736324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439698, 0.458166, 0.772496,
		-0.877895, -0.037628, -0.477372,
		-0.189648, -0.888070, 0.418767,
		40.872871, 28.792376, 16.861954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309105, 29.508677, 17.002186>,  <41.005627, 29.414024, 16.568817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309105, 29.508677, 17.002186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.487709, 29.173376, 17.127386>,  <40.594872, 28.972197, 17.202505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.487709, 29.173376, 17.127386>,  <40.309105, 29.508677, 17.002186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487709, 29.173376, 17.127386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463407, 0.082602, 0.882288,
		-0.765432, -0.538992, -0.351569,
		0.446506, -0.838251, 0.312999,
		40.621662, 28.921902, 17.221285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883369, 29.202644, 17.475212>,  <40.309105, 29.508677, 17.002186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883369, 29.202644, 17.475212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.226543, 29.024437, 17.577557>,  <40.432446, 28.917513, 17.638964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.226543, 29.024437, 17.577557>,  <39.883369, 29.202644, 17.475212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226543, 29.024437, 17.577557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296281, -0.022175, 0.954844,
		-0.419729, -0.894997, -0.151024,
		0.857931, -0.445521, 0.255863,
		40.483921, 28.890781, 17.654316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608658, 28.769499, 17.958128>,  <39.883369, 29.202644, 17.475212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608658, 28.769499, 17.958128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.006256, 28.767689, 18.001842>,  <40.244816, 28.766602, 18.028070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.006256, 28.767689, 18.001842>,  <39.608658, 28.769499, 17.958128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006256, 28.767689, 18.001842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109225, 0.012230, 0.993942,
		-0.005846, -0.999915, 0.011661,
		0.994000, -0.004537, 0.109287,
		40.304455, 28.766331, 18.034628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711838, 28.272221, 18.466665>,  <39.608658, 28.769499, 17.958128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711838, 28.272221, 18.466665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.049839, 28.485954, 18.458168>,  <40.252640, 28.614195, 18.453070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.049839, 28.485954, 18.458168>,  <39.711838, 28.272221, 18.466665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049839, 28.485954, 18.458168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028424, -0.005210, 0.999582,
		0.534001, -0.845257, -0.019591,
		0.845006, 0.534335, -0.021243,
		40.303341, 28.646255, 18.451796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219345, 27.983179, 18.870316>,  <39.711838, 28.272221, 18.466665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219345, 27.983179, 18.870316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283623, 28.377960, 18.866339>,  <40.322189, 28.614830, 18.863953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283623, 28.377960, 18.866339>,  <40.219345, 27.983179, 18.870316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283623, 28.377960, 18.866339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340534, 0.064895, 0.937990,
		0.926399, -0.147340, 0.346520,
		0.160691, 0.986955, -0.009944,
		40.331829, 28.674047, 18.863356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373302, 28.038273, 19.490393>,  <40.219345, 27.983179, 18.870316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373302, 28.038273, 19.490393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339966, 28.426334, 19.399303>,  <40.319965, 28.659170, 19.344650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339966, 28.426334, 19.399303>,  <40.373302, 28.038273, 19.490393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339966, 28.426334, 19.399303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338236, 0.187414, 0.922211,
		0.937364, 0.153885, 0.312521,
		-0.083343, 0.970152, -0.227725,
		40.314964, 28.717381, 19.330986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690865, 28.477167, 20.025688>,  <40.373302, 28.038273, 19.490393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690865, 28.477167, 20.025688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.472340, 28.756451, 19.840624>,  <40.341225, 28.924021, 19.729586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.472340, 28.756451, 19.840624>,  <40.690865, 28.477167, 20.025688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472340, 28.756451, 19.840624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341874, 0.318388, 0.884167,
		0.764637, 0.641199, 0.064761,
		-0.546308, 0.698208, -0.462660,
		40.308449, 28.965914, 19.701826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711380, 28.945475, 20.500948>,  <40.690865, 28.477167, 20.025688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711380, 28.945475, 20.500948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.416676, 29.091782, 20.273478>,  <40.239853, 29.179565, 20.136995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.416676, 29.091782, 20.273478>,  <40.711380, 28.945475, 20.500948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416676, 29.091782, 20.273478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552064, 0.160183, 0.818271,
		0.390388, 0.916819, 0.083909,
		-0.736765, 0.365766, -0.568676,
		40.195644, 29.201511, 20.102875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461697, 29.544207, 20.905487>,  <40.711380, 28.945475, 20.500948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461697, 29.544207, 20.905487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187954, 29.408150, 20.647507>,  <40.023708, 29.326515, 20.492718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187954, 29.408150, 20.647507>,  <40.461697, 29.544207, 20.905487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187954, 29.408150, 20.647507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660104, -0.086698, 0.746154,
		-0.309714, 0.936369, -0.165196,
		-0.684353, -0.340141, -0.644953,
		39.982647, 29.306107, 20.454021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917923, 29.851610, 21.157015>,  <40.461697, 29.544207, 20.905487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917923, 29.851610, 21.157015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762897, 29.557066, 20.935181>,  <39.669884, 29.380339, 20.802080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762897, 29.557066, 20.935181>,  <39.917923, 29.851610, 21.157015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762897, 29.557066, 20.935181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781145, -0.057123, 0.621731,
		-0.489499, 0.674171, -0.553067,
		-0.387560, -0.736363, -0.554587,
		39.646629, 29.336157, 20.768805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281658, 30.022297, 21.175383>,  <39.917923, 29.851610, 21.157015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281658, 30.022297, 21.175383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285362, 29.635891, 21.072052>,  <39.287586, 29.404047, 21.010054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285362, 29.635891, 21.072052>,  <39.281658, 30.022297, 21.175383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285362, 29.635891, 21.072052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717073, -0.186470, 0.671591,
		-0.696936, 0.179017, -0.694430,
		0.009264, -0.966013, -0.258326,
		39.288143, 29.346087, 20.994555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652214, 29.891312, 20.986601>,  <39.281658, 30.022297, 21.175383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652214, 29.891312, 20.986601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798508, 29.528740, 21.071098>,  <38.886284, 29.311197, 21.121796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798508, 29.528740, 21.071098>,  <38.652214, 29.891312, 20.986601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798508, 29.528740, 21.071098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793063, -0.184719, 0.580457,
		-0.487123, -0.379821, -0.786414,
		0.365736, -0.906429, 0.211241,
		38.908230, 29.256811, 21.134470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124969, 29.383814, 20.973553>,  <38.652214, 29.891312, 20.986601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124969, 29.383814, 20.973553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396660, 29.196695, 21.199762>,  <38.559673, 29.084425, 21.335487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396660, 29.196695, 21.199762>,  <38.124969, 29.383814, 20.973553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396660, 29.196695, 21.199762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704107, -0.197916, 0.681955,
		-0.207093, -0.861390, -0.463811,
		0.679225, -0.467800, 0.565523,
		38.600430, 29.056356, 21.369419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782413, 28.721752, 21.319078>,  <38.124969, 29.383814, 20.973553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782413, 28.721752, 21.319078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093464, 28.836203, 21.543015>,  <38.280094, 28.904873, 21.677376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093464, 28.836203, 21.543015>,  <37.782413, 28.721752, 21.319078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093464, 28.836203, 21.543015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562800, -0.080141, 0.822699,
		0.280262, -0.954835, 0.098711,
		0.777631, 0.286126, 0.559842,
		38.326752, 28.922041, 21.710968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716354, 28.257387, 21.896814>,  <37.782413, 28.721752, 21.319078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716354, 28.257387, 21.896814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968494, 28.542677, 22.019430>,  <38.119778, 28.713850, 22.093000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968494, 28.542677, 22.019430>,  <37.716354, 28.257387, 21.896814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968494, 28.542677, 22.019430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350074, -0.091283, 0.932264,
		0.692894, -0.694967, 0.192141,
		0.630353, 0.713224, 0.306540,
		38.157600, 28.756643, 22.111393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.084747, 27.709826, 27.302946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.866730, 28.032330, 27.210972>,  <39.735920, 28.225832, 27.155787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.866730, 28.032330, 27.210972>,  <40.084747, 27.709826, 27.302946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866730, 28.032330, 27.210972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119628, 0.346234, 0.930490,
		0.829830, 0.479649, -0.285164,
		-0.545042, 0.806262, -0.229936,
		39.703217, 28.274208, 27.141991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483692, 28.288597, 27.679964>,  <40.084747, 27.709826, 27.302946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483692, 28.288597, 27.679964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.109531, 28.397909, 27.590218>,  <39.885036, 28.463497, 27.536369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.109531, 28.397909, 27.590218>,  <40.483692, 28.288597, 27.679964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109531, 28.397909, 27.590218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115372, 0.363926, 0.924255,
		0.334234, 0.890436, -0.308888,
		-0.935402, 0.273280, -0.224368,
		39.828911, 28.479893, 27.522907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274406, 29.012083, 27.880302>,  <40.483692, 28.288597, 27.679964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274406, 29.012083, 27.880302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.900249, 28.880871, 27.827496>,  <39.675755, 28.802143, 27.795811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.900249, 28.880871, 27.827496>,  <40.274406, 29.012083, 27.880302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900249, 28.880871, 27.827496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223572, 0.259410, 0.939533,
		-0.273951, 0.908351, -0.315990,
		-0.935396, -0.328032, -0.132017,
		39.619629, 28.782461, 27.787891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841793, 29.515421, 28.214722>,  <40.274406, 29.012083, 27.880302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841793, 29.515421, 28.214722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636909, 29.171968, 28.222723>,  <39.513981, 28.965897, 28.227524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636909, 29.171968, 28.222723>,  <39.841793, 29.515421, 28.214722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636909, 29.171968, 28.222723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239269, 0.165024, 0.956827,
		-0.824861, 0.485307, -0.289970,
		-0.512206, -0.858630, 0.020003,
		39.483246, 28.914379, 28.228724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189194, 29.698853, 28.404810>,  <39.841793, 29.515421, 28.214722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189194, 29.698853, 28.404810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195606, 29.306208, 28.480894>,  <39.199455, 29.070621, 28.526545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195606, 29.306208, 28.480894>,  <39.189194, 29.698853, 28.404810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195606, 29.306208, 28.480894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386115, 0.169402, 0.906762,
		-0.922311, -0.087979, -0.376300,
		0.016030, -0.981612, 0.190211,
		39.200417, 29.011724, 28.537958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585388, 29.507126, 28.481236>,  <39.189194, 29.698853, 28.404810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585388, 29.507126, 28.481236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.792767, 29.226509, 28.676805>,  <38.917194, 29.058140, 28.794147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.792767, 29.226509, 28.676805>,  <38.585388, 29.507126, 28.481236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792767, 29.226509, 28.676805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592755, 0.117261, 0.796800,
		-0.616321, -0.702914, -0.355049,
		0.518449, -0.701542, 0.488927,
		38.948299, 29.016047, 28.823484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090500, 29.208897, 28.802841>,  <38.585388, 29.507126, 28.481236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090500, 29.208897, 28.802841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.406677, 29.051426, 28.990551>,  <38.596382, 28.956944, 29.103176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.406677, 29.051426, 28.990551>,  <38.090500, 29.208897, 28.802841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406677, 29.051426, 28.990551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505406, 0.013675, 0.862773,
		-0.346070, -0.919148, -0.188157,
		0.790443, -0.393676, 0.469275,
		38.643810, 28.933323, 29.131334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868141, 28.745857, 29.195190>,  <38.090500, 29.208897, 28.802841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868141, 28.745857, 29.195190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224407, 28.833248, 29.354685>,  <38.438168, 28.885683, 29.450382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224407, 28.833248, 29.354685>,  <37.868141, 28.745857, 29.195190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224407, 28.833248, 29.354685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418119, 0.049071, 0.907066,
		0.178609, -0.974607, 0.135056,
		0.890660, 0.218480, 0.398737,
		38.491604, 28.898792, 29.474306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833801, 28.371971, 29.754452>,  <37.868141, 28.745857, 29.195190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833801, 28.371971, 29.754452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.127014, 28.636448, 29.818306>,  <38.302944, 28.795134, 29.856619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.127014, 28.636448, 29.818306>,  <37.833801, 28.371971, 29.754452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127014, 28.636448, 29.818306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331203, 0.141974, 0.932817,
		0.594109, -0.736659, 0.323061,
		0.733034, 0.661194, 0.159636,
		38.346924, 28.834806, 29.866198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923492, 28.289116, 30.418371>,  <37.833801, 28.371971, 29.754452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923492, 28.289116, 30.418371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089516, 28.648689, 30.362316>,  <38.189129, 28.864433, 30.328682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089516, 28.648689, 30.362316>,  <37.923492, 28.289116, 30.418371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089516, 28.648689, 30.362316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408670, 0.321837, 0.854055,
		0.812842, -0.297215, 0.500950,
		0.415062, 0.898935, -0.140140,
		38.214035, 28.918369, 30.320274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174587, 28.495636, 31.075174>,  <37.923492, 28.289116, 30.418371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174587, 28.495636, 31.075174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.159702, 28.835207, 30.864296>,  <38.150772, 29.038950, 30.737768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.159702, 28.835207, 30.864296>,  <38.174587, 28.495636, 31.075174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159702, 28.835207, 30.864296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208073, 0.509417, 0.834985,
		0.977405, 0.140766, 0.157683,
		-0.037211, 0.848929, -0.527196,
		38.148540, 29.089886, 30.706137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475689, 28.975433, 31.460949>,  <38.174587, 28.495636, 31.075174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475689, 28.975433, 31.460949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.265644, 29.218273, 31.222391>,  <38.139618, 29.363977, 31.079256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.265644, 29.218273, 31.222391>,  <38.475689, 28.975433, 31.460949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265644, 29.218273, 31.222391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291011, 0.530450, 0.796201,
		0.799732, 0.591651, -0.101872,
		-0.525111, 0.607101, -0.596395,
		38.108112, 29.400404, 31.043472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815208, 29.535965, 31.530039>,  <38.475689, 28.975433, 31.460949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815208, 29.535965, 31.530039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.431751, 29.547619, 31.416786>,  <38.201679, 29.554611, 31.348835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.431751, 29.547619, 31.416786>,  <38.815208, 29.535965, 31.530039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431751, 29.547619, 31.416786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239093, 0.457268, 0.856586,
		0.154425, 0.888851, -0.431388,
		-0.958638, 0.029137, -0.283132,
		38.144161, 29.556360, 31.331846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163681, 29.350925, 32.248081>,  <38.815208, 29.535965, 31.530039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163681, 29.350925, 32.248081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.155079, 29.244705, 31.862539>,  <39.149918, 29.180973, 31.631214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.155079, 29.244705, 31.862539>,  <39.163681, 29.350925, 32.248081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155079, 29.244705, 31.862539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620674, 0.759341, -0.195357,
		0.783774, 0.594041, -0.181148,
		-0.021503, -0.265549, -0.963858,
		39.148628, 29.165041, 31.573381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728981, 29.136110, 32.578995>,  <39.163681, 29.350925, 32.248081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728981, 29.136110, 32.578995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.041618, 29.361063, 32.686951>,  <40.229202, 29.496035, 32.751724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.041618, 29.361063, 32.686951>,  <39.728981, 29.136110, 32.578995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041618, 29.361063, 32.686951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283419, 0.065258, -0.956773,
		-0.555682, 0.824300, -0.108383,
		0.781595, 0.562380, 0.269885,
		40.276096, 29.529778, 32.767918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726715, 29.763315, 32.143463>,  <39.728981, 29.136110, 32.578995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726715, 29.763315, 32.143463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.099552, 29.693624, 32.270489>,  <40.323254, 29.651810, 32.346706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.099552, 29.693624, 32.270489>,  <39.726715, 29.763315, 32.143463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099552, 29.693624, 32.270489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332729, 0.065328, -0.940757,
		0.143158, 0.982536, 0.118861,
		0.932093, -0.174226, 0.317566,
		40.379181, 29.641357, 32.365757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227524, 30.334139, 31.807581>,  <39.726715, 29.763315, 32.143463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227524, 30.334139, 31.807581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.432262, 30.007772, 31.915129>,  <40.555107, 29.811953, 31.979656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.432262, 30.007772, 31.915129>,  <40.227524, 30.334139, 31.807581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432262, 30.007772, 31.915129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367798, -0.074709, -0.926900,
		0.776359, 0.573324, 0.261852,
		0.511851, -0.815915, 0.268868,
		40.585819, 29.762999, 31.995789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819145, 30.386757, 31.407602>,  <40.227524, 30.334139, 31.807581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819145, 30.386757, 31.407602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.869976, 30.018749, 31.555882>,  <40.900475, 29.797945, 31.644848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.869976, 30.018749, 31.555882>,  <40.819145, 30.386757, 31.407602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869976, 30.018749, 31.555882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578897, -0.234683, -0.780898,
		0.805438, 0.313827, 0.502774,
		0.127074, -0.920020, 0.370696,
		40.908100, 29.742743, 31.667089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531006, 30.182167, 31.524664>,  <40.819145, 30.386757, 31.407602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531006, 30.182167, 31.524664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.349140, 29.829926, 31.471279>,  <41.240021, 29.618580, 31.439247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.349140, 29.829926, 31.471279>,  <41.531006, 30.182167, 31.524664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349140, 29.829926, 31.471279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570701, -0.173000, -0.802727,
		0.683797, -0.441141, 0.581220,
		-0.454666, -0.880605, -0.133463,
		41.212742, 29.565744, 31.431240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058243, 29.672815, 31.407959>,  <41.531006, 30.182167, 31.524664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058243, 29.672815, 31.407959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735622, 29.484629, 31.264774>,  <41.542049, 29.371717, 31.178864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735622, 29.484629, 31.264774>,  <42.058243, 29.672815, 31.407959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735622, 29.484629, 31.264774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435749, -0.063930, -0.897795,
		0.399497, -0.880099, 0.256568,
		-0.806551, -0.470466, -0.357963,
		41.493656, 29.343489, 31.157385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340176, 29.110834, 31.111038>,  <42.058243, 29.672815, 31.407959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340176, 29.110834, 31.111038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.979580, 29.181452, 30.952972>,  <41.763222, 29.223824, 30.858133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.979580, 29.181452, 30.952972>,  <42.340176, 29.110834, 31.111038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979580, 29.181452, 30.952972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371408, -0.153207, -0.915742,
		-0.222214, -0.972295, 0.072543,
		-0.901486, 0.176548, -0.395163,
		41.709133, 29.234415, 30.834423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306324, 28.489431, 30.614958>,  <42.340176, 29.110834, 31.111038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306324, 28.489431, 30.614958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068283, 28.793974, 30.512047>,  <41.925457, 28.976700, 30.450300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068283, 28.793974, 30.512047>,  <42.306324, 28.489431, 30.614958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068283, 28.793974, 30.512047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322820, -0.066707, -0.944106,
		-0.735962, -0.644895, -0.206083,
		-0.595102, 0.761354, -0.257279,
		41.889751, 29.022381, 30.434862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838272, 28.307985, 30.037125>,  <42.306324, 28.489431, 30.614958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838272, 28.307985, 30.037125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.849316, 28.707703, 30.026915>,  <41.855942, 28.947533, 30.020788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.849316, 28.707703, 30.026915>,  <41.838272, 28.307985, 30.037125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849316, 28.707703, 30.026915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059883, -0.027144, -0.997836,
		-0.997823, 0.026025, -0.060590,
		0.027614, 0.999293, -0.025527,
		41.857601, 29.007490, 30.019257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369263, 28.524418, 29.441059>,  <41.838272, 28.307985, 30.037125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369263, 28.524418, 29.441059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630062, 28.816330, 29.523342>,  <41.786541, 28.991478, 29.572712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630062, 28.816330, 29.523342>,  <41.369263, 28.524418, 29.441059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630062, 28.816330, 29.523342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148208, 0.143405, -0.978504,
		-0.743593, 0.668472, -0.014659,
		0.652000, 0.729781, 0.205708,
		41.825661, 29.035265, 29.585054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317230, 29.036480, 28.898672>,  <41.369263, 28.524418, 29.441059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317230, 29.036480, 28.898672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677551, 29.125811, 29.047636>,  <41.893742, 29.179409, 29.137014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677551, 29.125811, 29.047636>,  <41.317230, 29.036480, 28.898672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677551, 29.125811, 29.047636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347543, 0.143381, -0.926637,
		-0.260341, 0.964140, 0.051541,
		0.900798, 0.223328, 0.372408,
		41.947792, 29.192810, 29.159359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513512, 29.504009, 28.461428>,  <41.317230, 29.036480, 28.898672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513512, 29.504009, 28.461428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.856308, 29.451439, 28.660742>,  <42.061985, 29.419897, 28.780331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.856308, 29.451439, 28.660742>,  <41.513512, 29.504009, 28.461428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856308, 29.451439, 28.660742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514838, 0.176256, -0.838973,
		0.022437, 0.975531, 0.218713,
		0.856994, -0.131426, 0.498286,
		42.113407, 29.412010, 28.810228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037991, 29.986324, 28.190239>,  <41.513512, 29.504009, 28.461428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037991, 29.986324, 28.190239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.274418, 29.714729, 28.364418>,  <42.416275, 29.551773, 28.468925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.274418, 29.714729, 28.364418>,  <42.037991, 29.986324, 28.190239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274418, 29.714729, 28.364418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626122, 0.045863, -0.778375,
		0.508536, 0.732716, 0.452237,
		0.591069, -0.678987, 0.435447,
		42.451740, 29.511032, 28.495052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744236, 30.344048, 28.034126>,  <42.037991, 29.986324, 28.190239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744236, 30.344048, 28.034126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.725117, 29.949848, 28.099247>,  <42.713646, 29.713327, 28.138319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.725117, 29.949848, 28.099247>,  <42.744236, 30.344048, 28.034126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725117, 29.949848, 28.099247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310712, -0.169571, -0.935256,
		0.949302, 0.005879, 0.314312,
		-0.047800, -0.985500, 0.162801,
		42.710777, 29.654198, 28.148087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565075, 30.483164, 28.172770>,  <42.744236, 30.344048, 28.034126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565075, 30.483164, 28.172770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.670685, 30.859068, 28.085920>,  <43.734051, 31.084610, 28.033812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.670685, 30.859068, 28.085920>,  <43.565075, 30.483164, 28.172770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670685, 30.859068, 28.085920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439261, 0.317566, 0.840358,
		0.858686, -0.126501, 0.496645,
		0.264024, 0.939760, -0.217123,
		43.749893, 31.140995, 28.020784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753277, 30.802643, 28.835487>,  <43.565075, 30.483164, 28.172770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753277, 30.802643, 28.835487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.731159, 31.121016, 28.594345>,  <43.717888, 31.312038, 28.449659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.731159, 31.121016, 28.594345>,  <43.753277, 30.802643, 28.835487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731159, 31.121016, 28.594345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214047, 0.580295, 0.785775,
		0.975257, 0.172492, 0.138277,
		-0.055298, 0.795930, -0.602858,
		43.714569, 31.359795, 28.413488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093567, 31.271812, 29.300920>,  <43.753277, 30.802643, 28.835487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093567, 31.271812, 29.300920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859135, 31.419571, 29.012463>,  <43.718475, 31.508226, 28.839388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859135, 31.419571, 29.012463>,  <44.093567, 31.271812, 29.300920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859135, 31.419571, 29.012463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531359, 0.496690, 0.686263,
		0.611689, 0.785395, -0.094820,
		-0.586084, 0.369396, -0.721146,
		43.683308, 31.530390, 28.796118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057789, 31.923241, 29.454329>,  <44.093567, 31.271812, 29.300920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057789, 31.923241, 29.454329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749008, 31.895447, 29.201580>,  <43.563740, 31.878771, 29.049931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749008, 31.895447, 29.201580>,  <44.057789, 31.923241, 29.454329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749008, 31.895447, 29.201580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598679, 0.413656, 0.685910,
		0.213718, 0.907777, -0.360921,
		-0.771951, -0.069485, -0.631873,
		43.517422, 31.874601, 29.012018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632652, 32.547638, 29.598072>,  <44.057789, 31.923241, 29.454329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632652, 32.547638, 29.598072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399937, 32.289623, 29.399900>,  <43.260307, 32.134815, 29.280998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399937, 32.289623, 29.399900>,  <43.632652, 32.547638, 29.598072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399937, 32.289623, 29.399900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801866, 0.352925, 0.482135,
		-0.136148, 0.677766, -0.722563,
		-0.581786, -0.645040, -0.495428,
		43.225403, 32.096111, 29.251272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076797, 32.906418, 29.343943>,  <43.632652, 32.547638, 29.598072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076797, 32.906418, 29.343943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.962944, 32.525703, 29.389692>,  <42.894634, 32.297276, 29.417143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.962944, 32.525703, 29.389692>,  <43.076797, 32.906418, 29.343943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962944, 32.525703, 29.389692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835217, 0.304774, 0.457739,
		-0.470530, 0.034760, -0.881699,
		-0.284630, -0.951790, 0.114374,
		42.877556, 32.240166, 29.424004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310631, 32.832901, 29.082151>,  <43.076797, 32.906418, 29.343943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310631, 32.832901, 29.082151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.383541, 32.527958, 29.330534>,  <42.427288, 32.344994, 29.479563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.383541, 32.527958, 29.330534>,  <42.310631, 32.832901, 29.082151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383541, 32.527958, 29.330534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846432, 0.199694, 0.493635,
		-0.500328, -0.615575, -0.608884,
		0.182278, -0.762358, 0.620955,
		42.438225, 32.299252, 29.516821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621826, 32.467022, 29.244499>,  <42.310631, 32.832901, 29.082151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621826, 32.467022, 29.244499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860172, 32.334244, 29.537008>,  <42.003181, 32.254578, 29.712513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860172, 32.334244, 29.537008>,  <41.621826, 32.467022, 29.244499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860172, 32.334244, 29.537008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717052, 0.190136, 0.670585,
		-0.361638, -0.923938, -0.124727,
		0.595864, -0.331945, 0.731272,
		42.038933, 32.234661, 29.756390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197472, 32.171700, 29.654530>,  <41.621826, 32.467022, 29.244499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197472, 32.171700, 29.654530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.522434, 32.222271, 29.882221>,  <41.717411, 32.252613, 30.018835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.522434, 32.222271, 29.882221>,  <41.197472, 32.171700, 29.654530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522434, 32.222271, 29.882221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576722, 0.318188, 0.752428,
		-0.085993, -0.939560, 0.331410,
		0.812402, 0.126428, 0.569227,
		41.766155, 32.260201, 30.052990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990898, 31.816759, 30.302101>,  <41.197472, 32.171700, 29.654530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990898, 31.816759, 30.302101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.290012, 32.069309, 30.384254>,  <41.469482, 32.220840, 30.433546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.290012, 32.069309, 30.384254>,  <40.990898, 31.816759, 30.302101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290012, 32.069309, 30.384254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385214, 0.160632, 0.908740,
		0.540763, -0.758660, 0.363332,
		0.747788, 0.631374, 0.205383,
		41.514347, 32.258720, 30.445869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114105, 31.628515, 30.917946>,  <40.990898, 31.816759, 30.302101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114105, 31.628515, 30.917946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.252491, 31.995735, 30.840492>,  <41.335522, 32.216068, 30.794020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.252491, 31.995735, 30.840492>,  <41.114105, 31.628515, 30.917946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252491, 31.995735, 30.840492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321849, 0.309980, 0.894609,
		0.881318, -0.247182, 0.402715,
		0.345965, 0.918049, -0.193636,
		41.356281, 32.271149, 30.782402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578224, 31.782639, 31.519539>,  <41.114105, 31.628515, 30.917946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578224, 31.782639, 31.519539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.455696, 32.118519, 31.340176>,  <41.382179, 32.320045, 31.232557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.455696, 32.118519, 31.340176>,  <41.578224, 31.782639, 31.519539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455696, 32.118519, 31.340176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327904, 0.349147, 0.877824,
		0.893669, 0.415934, 0.168389,
		-0.306324, 0.839700, -0.448409,
		41.363800, 32.370430, 31.205652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<45.882904, 29.769501, 25.515497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779011, 30.067381, 25.269583>,  <45.716675, 30.246109, 25.122034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779011, 30.067381, 25.269583>,  <45.882904, 29.769501, 25.515497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779011, 30.067381, 25.269583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148916, 0.598131, 0.787441,
		0.954128, 0.296080, -0.044459,
		-0.259738, 0.744699, -0.614784,
		45.701088, 30.290791, 25.085148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152756, 30.395565, 25.851492>,  <45.882904, 29.769501, 25.515497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152756, 30.395565, 25.851492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847393, 30.517466, 25.623690>,  <45.664177, 30.590605, 25.487009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847393, 30.517466, 25.623690>,  <46.152756, 30.395565, 25.851492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847393, 30.517466, 25.623690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332404, 0.570625, 0.750929,
		0.553820, 0.762571, -0.334319,
		-0.763407, 0.304750, -0.569506,
		45.618370, 30.608891, 25.452837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.054916, 31.058128, 26.032770>,  <46.152756, 30.395565, 25.851492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.054916, 31.058128, 26.032770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705799, 30.968037, 25.859564>,  <45.496330, 30.913982, 25.755640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705799, 30.968037, 25.859564>,  <46.054916, 31.058128, 26.032770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705799, 30.968037, 25.859564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487976, 0.421803, 0.764174,
		0.010534, 0.878268, -0.478053,
		-0.872793, -0.225229, -0.433017,
		45.443962, 30.900469, 25.729658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668926, 31.643948, 26.131508>,  <46.054916, 31.058128, 26.032770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668926, 31.643948, 26.131508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404320, 31.351042, 26.066771>,  <45.245556, 31.175299, 26.027927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404320, 31.351042, 26.066771>,  <45.668926, 31.643948, 26.131508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404320, 31.351042, 26.066771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607731, 0.396999, 0.687790,
		-0.439392, 0.553338, -0.707638,
		-0.661512, -0.732263, -0.161843,
		45.205868, 31.131363, 26.018217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957100, 31.952633, 26.189930>,  <45.668926, 31.643948, 26.131508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957100, 31.952633, 26.189930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911419, 31.558786, 26.242826>,  <44.884010, 31.322477, 26.274565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911419, 31.558786, 26.242826>,  <44.957100, 31.952633, 26.189930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911419, 31.558786, 26.242826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718174, 0.173794, 0.673811,
		-0.686429, -0.018023, -0.726974,
		-0.114199, -0.984617, 0.132241,
		44.877159, 31.263401, 26.282499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280491, 31.826675, 26.274355>,  <44.957100, 31.952633, 26.189930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280491, 31.826675, 26.274355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397102, 31.477428, 26.430653>,  <44.467068, 31.267881, 26.524431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397102, 31.477428, 26.430653>,  <44.280491, 31.826675, 26.274355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397102, 31.477428, 26.430653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676360, 0.100711, 0.729653,
		-0.676425, -0.476996, -0.561181,
		0.291524, -0.873116, 0.390744,
		44.484558, 31.215494, 26.547876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695045, 31.447145, 26.412458>,  <44.280491, 31.826675, 26.274355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695045, 31.447145, 26.412458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984184, 31.279654, 26.632332>,  <44.157669, 31.179157, 26.764256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984184, 31.279654, 26.632332>,  <43.695045, 31.447145, 26.412458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.984184, 31.279654, 26.632332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569437, 0.089661, 0.817131,
		-0.391444, -0.903673, -0.173629,
		0.722851, -0.418732, 0.549682,
		44.201038, 31.154034, 26.797235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391022, 30.917456, 26.889606>,  <43.695045, 31.447145, 26.412458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391022, 30.917456, 26.889606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733215, 31.032522, 27.061836>,  <43.938530, 31.101562, 27.165174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733215, 31.032522, 27.061836>,  <43.391022, 30.917456, 26.889606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733215, 31.032522, 27.061836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465416, 0.062605, 0.882875,
		0.227021, -0.955681, 0.187444,
		0.855482, 0.287671, 0.430576,
		43.989861, 31.118822, 27.191010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364578, 30.536303, 27.469568>,  <43.391022, 30.917456, 26.889606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364578, 30.536303, 27.469568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620918, 30.832602, 27.550167>,  <43.774723, 31.010382, 27.598526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620918, 30.832602, 27.550167>,  <43.364578, 30.536303, 27.469568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620918, 30.832602, 27.550167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532115, 0.239450, 0.812107,
		0.553317, -0.627660, 0.547615,
		0.640854, 0.740747, 0.201495,
		43.813175, 31.054825, 27.610617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469074, 29.932308, 27.643793>,  <43.364578, 30.536303, 27.469568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469074, 29.932308, 27.643793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212616, 29.643774, 27.748562>,  <43.058739, 29.470654, 27.811422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212616, 29.643774, 27.748562>,  <43.469074, 29.932308, 27.643793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212616, 29.643774, 27.748562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148915, -0.451757, -0.879625,
		0.752830, -0.524966, 0.397061,
		-0.641148, -0.721337, 0.261921,
		43.020271, 29.427374, 27.827139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891891, 29.272764, 27.732244>,  <43.469074, 29.932308, 27.643793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891891, 29.272764, 27.732244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510654, 29.176899, 27.658291>,  <43.281914, 29.119379, 27.613918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510654, 29.176899, 27.658291>,  <43.891891, 29.272764, 27.732244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510654, 29.176899, 27.658291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294524, -0.593365, -0.749115,
		0.069832, -0.768426, 0.636117,
		-0.953089, -0.239664, -0.184884,
		43.224728, 29.105000, 27.602825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937237, 28.586706, 27.670792>,  <43.891891, 29.272764, 27.732244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937237, 28.586706, 27.670792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585926, 28.654818, 27.492065>,  <43.375141, 28.695684, 27.384830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585926, 28.654818, 27.492065>,  <43.937237, 28.586706, 27.670792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585926, 28.654818, 27.492065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200044, -0.717886, -0.666800,
		-0.434303, -0.675015, 0.596436,
		-0.878273, 0.170280, -0.446813,
		43.322445, 28.705902, 27.358021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728130, 27.894733, 27.426031>,  <43.937237, 28.586706, 27.670792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728130, 27.894733, 27.426031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519997, 28.155600, 27.205509>,  <43.395119, 28.312120, 27.073196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519997, 28.155600, 27.205509>,  <43.728130, 27.894733, 27.426031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519997, 28.155600, 27.205509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098532, -0.595419, -0.797350,
		-0.848262, -0.469206, 0.245555,
		-0.520330, 0.652167, -0.551303,
		43.363899, 28.351250, 27.040119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347095, 27.471527, 26.961479>,  <43.728130, 27.894733, 27.426031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347095, 27.471527, 26.961479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312183, 27.824236, 26.776068>,  <43.291237, 28.035862, 26.664820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312183, 27.824236, 26.776068>,  <43.347095, 27.471527, 26.961479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312183, 27.824236, 26.776068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021178, -0.466843, -0.884087,
		-0.995959, -0.067343, 0.059419,
		-0.087277, 0.881772, -0.463530,
		43.285999, 28.088768, 26.637009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837269, 27.379509, 26.406212>,  <43.347095, 27.471527, 26.961479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837269, 27.379509, 26.406212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059563, 27.695812, 26.303558>,  <43.192940, 27.885593, 26.241966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059563, 27.695812, 26.303558>,  <42.837269, 27.379509, 26.406212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059563, 27.695812, 26.303558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042145, -0.335090, -0.941243,
		-0.830290, 0.512267, -0.219548,
		0.555736, 0.790758, -0.256632,
		43.226284, 27.933039, 26.226568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500668, 27.597378, 25.836021>,  <42.837269, 27.379509, 26.406212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500668, 27.597378, 25.836021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845440, 27.799547, 25.819901>,  <43.052303, 27.920849, 25.810228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845440, 27.799547, 25.819901>,  <42.500668, 27.597378, 25.836021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845440, 27.799547, 25.819901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151857, -0.333168, -0.930558,
		-0.483754, 0.795955, -0.363919,
		0.861929, 0.505425, -0.040300,
		43.104019, 27.951174, 25.807810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520611, 28.093906, 25.262171>,  <42.500668, 27.597378, 25.836021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520611, 28.093906, 25.262171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904232, 28.038561, 25.361019>,  <43.134407, 28.005354, 25.420328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904232, 28.038561, 25.361019>,  <42.520611, 28.093906, 25.262171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904232, 28.038561, 25.361019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185998, -0.350303, -0.917983,
		0.213582, 0.926360, -0.310225,
		0.959056, -0.138363, 0.247119,
		43.191948, 27.997051, 25.435156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888176, 28.244076, 24.619135>,  <42.520611, 28.093906, 25.262171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888176, 28.244076, 24.619135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171387, 28.055271, 24.829241>,  <43.341312, 27.941988, 24.955305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171387, 28.055271, 24.829241>,  <42.888176, 28.244076, 24.619135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171387, 28.055271, 24.829241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375040, -0.378915, -0.846031,
		0.598367, 0.796008, -0.091259,
		0.708026, -0.472012, 0.525265,
		43.383793, 27.913668, 24.986820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528679, 28.473793, 24.386480>,  <42.888176, 28.244076, 24.619135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528679, 28.473793, 24.386480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580738, 28.117142, 24.559944>,  <43.611973, 27.903151, 24.664022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580738, 28.117142, 24.559944>,  <43.528679, 28.473793, 24.386480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580738, 28.117142, 24.559944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439446, -0.340198, -0.831356,
		0.888791, 0.298769, 0.347546,
		0.130149, -0.891629, 0.433658,
		43.619781, 27.849653, 24.690041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227722, 28.324551, 24.265842>,  <43.528679, 28.473793, 24.386480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227722, 28.324551, 24.265842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992161, 28.005596, 24.318556>,  <43.850822, 27.814224, 24.350183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992161, 28.005596, 24.318556>,  <44.227722, 28.324551, 24.265842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992161, 28.005596, 24.318556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347405, -0.396977, -0.849540,
		0.729725, -0.454518, 0.510798,
		-0.588907, -0.797385, 0.131782,
		43.815487, 27.766380, 24.358091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459488, 27.893742, 23.849352>,  <44.227722, 28.324551, 24.265842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459488, 27.893742, 23.849352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130993, 27.690960, 23.954088>,  <43.933895, 27.569292, 24.016930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130993, 27.690960, 23.954088>,  <44.459488, 27.893742, 23.849352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130993, 27.690960, 23.954088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111566, -0.592716, -0.797647,
		0.559567, -0.625849, 0.543322,
		-0.821242, -0.506953, 0.261841,
		43.884621, 27.538874, 24.032640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690189, 27.123579, 23.983978>,  <44.459488, 27.893742, 23.849352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690189, 27.123579, 23.983978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312813, 27.167507, 23.858852>,  <44.086388, 27.193863, 23.783777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312813, 27.167507, 23.858852>,  <44.690189, 27.123579, 23.983978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312813, 27.167507, 23.858852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197839, -0.570634, -0.797017,
		-0.266029, -0.813828, 0.516635,
		-0.943445, 0.109819, -0.312812,
		44.029778, 27.200453, 23.765009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580719, 26.592365, 23.610939>,  <44.690189, 27.123579, 23.983978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580719, 26.592365, 23.610939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267380, 26.812092, 23.494587>,  <44.079376, 26.943928, 23.424776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267380, 26.812092, 23.494587>,  <44.580719, 26.592365, 23.610939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.267380, 26.812092, 23.494587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025189, -0.439531, -0.897874,
		-0.621070, -0.710677, 0.330470,
		-0.783350, 0.549319, -0.290881,
		44.032375, 26.976887, 23.407322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.405499, 32.218609, 20.223154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.748264, 32.065746, 20.361523>,  <39.953922, 31.974030, 20.444544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.748264, 32.065746, 20.361523>,  <39.405499, 32.218609, 20.223154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748264, 32.065746, 20.361523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350053, 0.061179, 0.934730,
		-0.378373, -0.922072, -0.081349,
		0.856911, -0.382153, 0.345922,
		40.005337, 31.951101, 20.465300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167549, 31.734541, 20.698635>,  <39.405499, 32.218609, 20.223154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167549, 31.734541, 20.698635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.554863, 31.801477, 20.772850>,  <39.787251, 31.841640, 20.817379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.554863, 31.801477, 20.772850>,  <39.167549, 31.734541, 20.698635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554863, 31.801477, 20.772850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167959, -0.113819, 0.979201,
		0.184981, -0.979307, -0.082102,
		0.968283, 0.167344, 0.185537,
		39.845348, 31.851681, 20.828510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409477, 31.174986, 21.120842>,  <39.167549, 31.734541, 20.698635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409477, 31.174986, 21.120842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.618996, 31.504469, 21.207693>,  <39.744709, 31.702158, 21.259804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.618996, 31.504469, 21.207693>,  <39.409477, 31.174986, 21.120842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618996, 31.504469, 21.207693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176177, -0.144627, 0.973676,
		0.833425, -0.548263, 0.069363,
		0.523798, 0.823706, 0.217127,
		39.776134, 31.751581, 21.272831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750401, 31.058075, 21.860140>,  <39.409477, 31.174986, 21.120842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750401, 31.058075, 21.860140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767082, 31.449907, 21.781466>,  <39.777092, 31.685007, 21.734261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767082, 31.449907, 21.781466>,  <39.750401, 31.058075, 21.860140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767082, 31.449907, 21.781466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154254, 0.200809, 0.967410,
		0.987151, -0.010009, 0.159480,
		0.041708, 0.979579, -0.196685,
		39.779594, 31.743782, 21.722460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102570, 31.312737, 22.552677>,  <39.750401, 31.058075, 21.860140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102570, 31.312737, 22.552677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.918945, 31.614765, 22.365431>,  <39.808773, 31.795982, 22.253082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.918945, 31.614765, 22.365431>,  <40.102570, 31.312737, 22.552677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918945, 31.614765, 22.365431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392881, 0.300050, 0.869261,
		0.796812, 0.582956, 0.158913,
		-0.459059, 0.755071, -0.468116,
		39.781227, 31.841286, 22.224997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307430, 31.902681, 22.914120>,  <40.102570, 31.312737, 22.552677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307430, 31.902681, 22.914120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.970360, 31.983536, 22.714504>,  <39.768116, 32.032047, 22.594734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.970360, 31.983536, 22.714504>,  <40.307430, 31.902681, 22.914120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970360, 31.983536, 22.714504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459862, 0.211876, 0.862343,
		0.280044, 0.956164, -0.085589,
		-0.842676, 0.202134, -0.499038,
		39.717556, 32.044178, 22.564793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999374, 32.385288, 23.326267>,  <40.307430, 31.902681, 22.914120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999374, 32.385288, 23.326267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.703094, 32.265774, 23.085571>,  <39.525326, 32.194065, 22.941154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.703094, 32.265774, 23.085571>,  <39.999374, 32.385288, 23.326267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703094, 32.265774, 23.085571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660521, 0.160163, 0.733525,
		-0.122793, 0.940783, -0.315989,
		-0.740698, -0.298789, -0.601740,
		39.480885, 32.176136, 22.905048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412407, 32.784763, 23.538099>,  <39.999374, 32.385288, 23.326267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412407, 32.784763, 23.538099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.222965, 32.503605, 23.325821>,  <39.109303, 32.334911, 23.198454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.222965, 32.503605, 23.325821>,  <39.412407, 32.784763, 23.538099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222965, 32.503605, 23.325821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814832, 0.120984, 0.566931,
		-0.334289, 0.700927, -0.630042,
		-0.473602, -0.702897, -0.530694,
		39.080883, 32.292736, 23.166613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755566, 33.126190, 23.351025>,  <39.412407, 32.784763, 23.538099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755566, 33.126190, 23.351025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732456, 32.727539, 23.327728>,  <38.718590, 32.488346, 23.313751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732456, 32.727539, 23.327728>,  <38.755566, 33.126190, 23.351025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732456, 32.727539, 23.327728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759296, 0.005987, 0.650718,
		-0.648176, 0.081813, -0.757082,
		-0.057770, -0.996630, -0.058240,
		38.715126, 32.428551, 23.310257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056850, 33.015156, 23.384369>,  <38.755566, 33.126190, 23.351025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056850, 33.015156, 23.384369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205082, 32.649834, 23.451958>,  <38.294022, 32.430641, 23.492512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205082, 32.649834, 23.451958>,  <38.056850, 33.015156, 23.384369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205082, 32.649834, 23.451958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451037, -0.017920, 0.892325,
		-0.811934, -0.406888, -0.418574,
		0.370577, -0.913302, 0.168972,
		38.316254, 32.375843, 23.502649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440460, 32.580299, 23.668819>,  <38.056850, 33.015156, 23.384369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440460, 32.580299, 23.668819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.788387, 32.421425, 23.785887>,  <37.997143, 32.326099, 23.856127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.788387, 32.421425, 23.785887>,  <37.440460, 32.580299, 23.668819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788387, 32.421425, 23.785887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310827, 0.019514, 0.950266,
		-0.383142, -0.917531, -0.106482,
		0.869821, -0.397184, 0.292670,
		38.049335, 32.302269, 23.873688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219875, 32.164692, 24.114960>,  <37.440460, 32.580299, 23.668819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219875, 32.164692, 24.114960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608212, 32.211487, 24.198654>,  <37.841213, 32.239563, 24.248871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608212, 32.211487, 24.198654>,  <37.219875, 32.164692, 24.114960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608212, 32.211487, 24.198654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206724, -0.033331, 0.977831,
		0.121371, -0.992573, -0.008174,
		0.970842, 0.116991, 0.209234,
		37.899464, 32.246582, 24.261425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321121, 31.693098, 24.593914>,  <37.219875, 32.164692, 24.114960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321121, 31.693098, 24.593914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609856, 31.965557, 24.642874>,  <37.783096, 32.129032, 24.672251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609856, 31.965557, 24.642874>,  <37.321121, 31.693098, 24.593914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609856, 31.965557, 24.642874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211643, 0.048880, 0.976124,
		0.658904, -0.730510, 0.179444,
		0.721840, 0.681150, 0.122400,
		37.826408, 32.169903, 24.679594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636726, 31.616371, 25.251509>,  <37.321121, 31.693098, 24.593914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636726, 31.616371, 25.251509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755196, 31.990538, 25.174282>,  <37.826279, 32.215038, 25.127945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755196, 31.990538, 25.174282>,  <37.636726, 31.616371, 25.251509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755196, 31.990538, 25.174282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184398, 0.254334, 0.949374,
		0.937165, -0.245577, 0.247816,
		0.296173, 0.935417, -0.193069,
		37.844048, 32.271164, 25.116362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062233, 31.019016, 25.674702>,  <37.636726, 31.616371, 25.251509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062233, 31.019016, 25.674702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.743683, 30.788965, 25.749544>,  <37.552551, 30.650934, 25.794449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.743683, 30.788965, 25.749544>,  <38.062233, 31.019016, 25.674702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743683, 30.788965, 25.749544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162660, -0.501649, -0.849641,
		0.582513, -0.646202, 0.493053,
		-0.796380, -0.575127, 0.187105,
		37.504768, 30.616426, 25.805676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261059, 30.394604, 25.503014>,  <38.062233, 31.019016, 25.674702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261059, 30.394604, 25.503014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862591, 30.365625, 25.483397>,  <37.623512, 30.348238, 25.471626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862591, 30.365625, 25.483397>,  <38.261059, 30.394604, 25.503014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862591, 30.365625, 25.483397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076977, -0.459466, -0.884854,
		0.041571, -0.885236, 0.463281,
		-0.996166, -0.072447, -0.049043,
		37.563740, 30.343891, 25.468683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248306, 29.688280, 25.427101>,  <38.261059, 30.394604, 25.503014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248306, 29.688280, 25.427101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.933571, 29.887953, 25.281939>,  <37.744728, 30.007755, 25.194841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.933571, 29.887953, 25.281939>,  <38.248306, 29.688280, 25.427101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933571, 29.887953, 25.281939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087879, -0.491416, -0.866480,
		-0.610868, -0.713673, 0.342798,
		-0.786840, 0.499180, -0.362908,
		37.697517, 30.037706, 25.173067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808662, 29.114063, 25.101599>,  <38.248306, 29.688280, 25.427101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808662, 29.114063, 25.101599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.659489, 29.439837, 24.923782>,  <37.569984, 29.635302, 24.817093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.659489, 29.439837, 24.923782>,  <37.808662, 29.114063, 25.101599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659489, 29.439837, 24.923782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293277, -0.351076, -0.889233,
		-0.880290, -0.461997, -0.107928,
		-0.372932, 0.814435, -0.444541,
		37.547607, 29.684168, 24.790421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313072, 28.845297, 24.522961>,  <37.808662, 29.114063, 25.101599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313072, 28.845297, 24.522961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388069, 29.224308, 24.419395>,  <37.433067, 29.451715, 24.357256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388069, 29.224308, 24.419395>,  <37.313072, 28.845297, 24.522961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388069, 29.224308, 24.419395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143873, -0.287235, -0.946993,
		-0.971672, 0.140305, -0.190179,
		0.187494, 0.947529, -0.258912,
		37.444317, 29.508566, 24.341722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963871, 28.863886, 23.941202>,  <37.313072, 28.845297, 24.522961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963871, 28.863886, 23.941202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224449, 29.167313, 23.935606>,  <37.380798, 29.349369, 23.932247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224449, 29.167313, 23.935606>,  <36.963871, 28.863886, 23.941202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224449, 29.167313, 23.935606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210596, -0.198513, -0.957205,
		-0.728880, 0.620622, -0.289071,
		0.651448, 0.758565, -0.013992,
		37.419884, 29.394882, 23.931408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784000, 29.236519, 23.335697>,  <36.963871, 28.863886, 23.941202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784000, 29.236519, 23.335697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.163094, 29.321615, 23.430805>,  <37.390549, 29.372673, 23.487871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.163094, 29.321615, 23.430805>,  <36.784000, 29.236519, 23.335697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163094, 29.321615, 23.430805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269281, -0.133655, -0.953742,
		-0.171123, 0.967924, -0.183958,
		0.947737, 0.212743, 0.237772,
		37.447414, 29.385439, 23.502136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034805, 29.739061, 22.757759>,  <36.784000, 29.236519, 23.335697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034805, 29.739061, 22.757759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340332, 29.559092, 22.942865>,  <37.523647, 29.451109, 23.053928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340332, 29.559092, 22.942865>,  <37.034805, 29.739061, 22.757759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340332, 29.559092, 22.942865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436349, -0.168342, -0.883889,
		0.475587, 0.877057, 0.067742,
		0.763817, -0.449925, 0.462764,
		37.569477, 29.424114, 23.081696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681355, 30.007547, 22.389622>,  <37.034805, 29.739061, 22.757759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681355, 30.007547, 22.389622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.786453, 29.684336, 22.600546>,  <37.849514, 29.490410, 22.727100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.786453, 29.684336, 22.600546>,  <37.681355, 30.007547, 22.389622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786453, 29.684336, 22.600546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603444, -0.288821, -0.743261,
		0.752873, 0.513493, 0.411712,
		0.262748, -0.808027, 0.527310,
		37.865276, 29.441927, 22.758739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380829, 30.031250, 22.460375>,  <37.681355, 30.007547, 22.389622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380829, 30.031250, 22.460375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.285564, 29.644659, 22.498737>,  <38.228405, 29.412704, 22.521755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.285564, 29.644659, 22.498737>,  <38.380829, 30.031250, 22.460375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285564, 29.644659, 22.498737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691764, -0.238117, -0.681735,
		0.681719, -0.096021, 0.725286,
		-0.238164, -0.966478, 0.095905,
		38.214115, 29.354715, 22.527510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937042, 29.756908, 22.545761>,  <38.380829, 30.031250, 22.460375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937042, 29.756908, 22.545761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.710354, 29.452053, 22.420563>,  <38.574341, 29.269140, 22.345444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.710354, 29.452053, 22.420563>,  <38.937042, 29.756908, 22.545761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710354, 29.452053, 22.420563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708922, -0.257501, -0.656600,
		0.419825, -0.593999, 0.686230,
		-0.566724, -0.762141, -0.312994,
		38.540337, 29.223412, 22.326664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357319, 29.160622, 22.503437>,  <38.937042, 29.756908, 22.545761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357319, 29.160622, 22.503437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.041748, 29.118181, 22.261333>,  <38.852406, 29.092716, 22.116072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.041748, 29.118181, 22.261333>,  <39.357319, 29.160622, 22.503437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041748, 29.118181, 22.261333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612848, -0.207752, -0.762402,
		-0.044849, -0.972410, 0.228927,
		-0.788927, -0.106104, -0.605257,
		38.805069, 29.086349, 22.079756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438278, 28.499472, 22.147560>,  <39.357319, 29.160622, 22.503437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438278, 28.499472, 22.147560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193874, 28.713047, 21.913780>,  <39.047234, 28.841192, 21.773512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193874, 28.713047, 21.913780>,  <39.438278, 28.499472, 22.147560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193874, 28.713047, 21.913780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581836, -0.197725, -0.788906,
		-0.536787, -0.822080, -0.189853,
		-0.611005, 0.533938, -0.584452,
		39.010574, 28.873228, 21.738445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415257, 28.115265, 21.574406>,  <39.438278, 28.499472, 22.147560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415257, 28.115265, 21.574406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274105, 28.460049, 21.428802>,  <39.189415, 28.666918, 21.341440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274105, 28.460049, 21.428802>,  <39.415257, 28.115265, 21.574406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274105, 28.460049, 21.428802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408641, -0.207998, -0.888678,
		-0.841716, -0.462348, -0.278832,
		-0.352883, 0.861958, -0.364010,
		39.168240, 28.718636, 21.319599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394955, 27.279612, 21.709587>,  <39.415257, 28.115265, 21.574406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394955, 27.279612, 21.709587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.756058, 27.179855, 21.849775>,  <39.972721, 27.120001, 21.933889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.756058, 27.179855, 21.849775>,  <39.394955, 27.279612, 21.709587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756058, 27.179855, 21.849775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358000, 0.016068, 0.933583,
		-0.238460, -0.968269, -0.074777,
		0.902758, -0.249393, 0.350472,
		40.026886, 27.105038, 21.954916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431046, 26.703156, 22.255857>,  <39.394955, 27.279612, 21.709587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431046, 26.703156, 22.255857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790131, 26.862408, 22.331327>,  <40.005581, 26.957960, 22.376610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790131, 26.862408, 22.331327>,  <39.431046, 26.703156, 22.255857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790131, 26.862408, 22.331327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201781, -0.009155, 0.979388,
		0.391654, -0.917282, 0.072117,
		0.897714, 0.398133, 0.188675,
		40.059444, 26.981848, 22.387930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737465, 26.272503, 22.819981>,  <39.431046, 26.703156, 22.255857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737465, 26.272503, 22.819981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926414, 26.624210, 22.795481>,  <40.039783, 26.835234, 22.780781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926414, 26.624210, 22.795481>,  <39.737465, 26.272503, 22.819981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926414, 26.624210, 22.795481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099535, 0.122265, 0.987494,
		0.875760, -0.460370, 0.145273,
		0.472375, 0.879267, -0.061252,
		40.068127, 26.887991, 22.777105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182621, 26.433359, 23.451395>,  <39.737465, 26.272503, 22.819981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182621, 26.433359, 23.451395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.150455, 26.808863, 23.317369>,  <40.131157, 27.034164, 23.236954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.150455, 26.808863, 23.317369>,  <40.182621, 26.433359, 23.451395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150455, 26.808863, 23.317369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019601, 0.334598, 0.942157,
		0.996569, 0.082331, -0.008506,
		-0.080414, 0.938757, -0.335063,
		40.126331, 27.090490, 23.216850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583736, 26.722349, 23.968988>,  <40.182621, 26.433359, 23.451395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583736, 26.722349, 23.968988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.414673, 27.027172, 23.772774>,  <40.313236, 27.210066, 23.655045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.414673, 27.027172, 23.772774>,  <40.583736, 26.722349, 23.968988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414673, 27.027172, 23.772774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076371, 0.569283, 0.818587,
		0.903067, 0.308516, -0.298809,
		-0.422655, 0.762060, -0.490539,
		40.287876, 27.255791, 23.625612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965954, 27.275805, 23.979095>,  <40.583736, 26.722349, 23.968988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965954, 27.275805, 23.979095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.615360, 27.450575, 23.898228>,  <40.405003, 27.555437, 23.849707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.615360, 27.450575, 23.898228>,  <40.965954, 27.275805, 23.979095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615360, 27.450575, 23.898228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054505, 0.507289, 0.860051,
		0.478336, 0.742801, -0.468445,
		-0.876484, 0.436926, -0.202168,
		40.352417, 27.581652, 23.837578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993256, 27.993986, 24.245872>,  <40.965954, 27.275805, 23.979095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993256, 27.993986, 24.245872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.606850, 27.901318, 24.200005>,  <40.375008, 27.845716, 24.172483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.606850, 27.901318, 24.200005>,  <40.993256, 27.993986, 24.245872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606850, 27.901318, 24.200005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204440, 0.413251, 0.887371,
		-0.158192, 0.880654, -0.446569,
		-0.966012, -0.231672, -0.114668,
		40.317047, 27.831816, 24.165604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658081, 28.620228, 24.440372>,  <40.993256, 27.993986, 24.245872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658081, 28.620228, 24.440372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.389309, 28.325483, 24.470163>,  <40.228046, 28.148636, 24.488039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.389309, 28.325483, 24.470163>,  <40.658081, 28.620228, 24.440372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389309, 28.325483, 24.470163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236511, 0.308788, 0.921256,
		-0.701836, 0.601404, -0.381759,
		-0.671929, -0.736861, 0.074480,
		40.187729, 28.104425, 24.492508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974869, 28.910364, 24.556162>,  <40.658081, 28.620228, 24.440372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974869, 28.910364, 24.556162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982220, 28.533512, 24.690062>,  <39.986629, 28.307402, 24.770401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982220, 28.533512, 24.690062>,  <39.974869, 28.910364, 24.556162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982220, 28.533512, 24.690062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266811, 0.318043, 0.909759,
		-0.963574, -0.106036, -0.245525,
		0.018379, -0.942128, 0.334749,
		39.987732, 28.250874, 24.790485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329769, 28.812004, 24.874973>,  <39.974869, 28.910364, 24.556162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329769, 28.812004, 24.874973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.567913, 28.528431, 25.026213>,  <39.710800, 28.358286, 25.116957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.567913, 28.528431, 25.026213>,  <39.329769, 28.812004, 24.874973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567913, 28.528431, 25.026213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275871, 0.261608, 0.924909,
		-0.754614, -0.654960, -0.039824,
		0.595360, -0.708935, 0.378097,
		39.746521, 28.315750, 25.139643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993851, 28.578291, 25.414110>,  <39.329769, 28.812004, 24.874973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993851, 28.578291, 25.414110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.341190, 28.388498, 25.471859>,  <39.549595, 28.274624, 25.506508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.341190, 28.388498, 25.471859>,  <38.993851, 28.578291, 25.414110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341190, 28.388498, 25.471859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136388, 0.051423, 0.989320,
		-0.476837, -0.878763, -0.020060,
		0.868346, -0.474481, 0.144373,
		39.601696, 28.246155, 25.515171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737358, 28.053946, 25.889536>,  <38.993851, 28.578291, 25.414110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737358, 28.053946, 25.889536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.133137, 28.108583, 25.908901>,  <39.370602, 28.141365, 25.920521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.133137, 28.108583, 25.908901>,  <38.737358, 28.053946, 25.889536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133137, 28.108583, 25.908901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069053, 0.150668, 0.986170,
		0.127407, -0.979103, 0.158510,
		0.989444, 0.136591, 0.048413,
		39.429970, 28.149561, 25.923426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971928, 27.595730, 26.368700>,  <38.737358, 28.053946, 25.889536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971928, 27.595730, 26.368700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.222263, 27.906487, 26.341084>,  <39.372463, 28.092941, 26.324514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.222263, 27.906487, 26.341084>,  <38.971928, 27.595730, 26.368700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222263, 27.906487, 26.341084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051029, 0.129116, 0.990316,
		0.778283, -0.616253, 0.120449,
		0.625837, 0.776892, -0.069042,
		39.410015, 28.139555, 26.320372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441277, 27.482727, 26.906273>,  <38.971928, 27.595730, 26.368700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441277, 27.482727, 26.906273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.477306, 27.870100, 26.813297>,  <39.498924, 28.102524, 26.757511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.477306, 27.870100, 26.813297>,  <39.441277, 27.482727, 26.906273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477306, 27.870100, 26.813297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083059, 0.225270, 0.970749,
		0.992465, -0.106748, -0.060145,
		0.090076, 0.968431, -0.232440,
		39.504330, 28.160629, 26.743565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.077370, 26.170235, 23.307192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.968124, 26.525000, 23.158171>,  <43.902576, 26.737860, 23.068758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.968124, 26.525000, 23.158171>,  <44.077370, 26.170235, 23.307192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968124, 26.525000, 23.158171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169391, -0.425562, -0.888934,
		-0.946952, -0.179669, 0.266460,
		-0.273109, 0.886914, -0.372552,
		43.886192, 26.791073, 23.046406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551014, 25.899078, 22.859941>,  <44.077370, 26.170235, 23.307192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551014, 25.899078, 22.859941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631596, 26.274614, 22.748234>,  <43.679947, 26.499937, 22.681210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631596, 26.274614, 22.748234>,  <43.551014, 25.899078, 22.859941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631596, 26.274614, 22.748234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198522, -0.240064, -0.950241,
		-0.959169, 0.246874, 0.138018,
		0.201457, 0.938841, -0.279271,
		43.692032, 26.556267, 22.664452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107979, 26.092012, 22.348001>,  <43.551014, 25.899078, 22.859941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107979, 26.092012, 22.348001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.404404, 26.355602, 22.296499>,  <43.582260, 26.513756, 22.265598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.404404, 26.355602, 22.296499>,  <43.107979, 26.092012, 22.348001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404404, 26.355602, 22.296499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043897, -0.143799, -0.988633,
		-0.670000, 0.738291, -0.077637,
		0.741062, 0.658976, -0.128754,
		43.626724, 26.553295, 22.257874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827702, 26.457905, 21.858816>,  <43.107979, 26.092012, 22.348001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827702, 26.457905, 21.858816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.227238, 26.473171, 21.847048>,  <43.466957, 26.482330, 21.839987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.227238, 26.473171, 21.847048>,  <42.827702, 26.457905, 21.858816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227238, 26.473171, 21.847048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021533, -0.192723, -0.981017,
		-0.043110, 0.980511, -0.191677,
		0.998838, 0.038165, -0.029422,
		43.526890, 26.484621, 21.838221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018208, 26.965122, 21.289116>,  <42.827702, 26.457905, 21.858816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018208, 26.965122, 21.289116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.369198, 26.781761, 21.345537>,  <43.579792, 26.671743, 21.379389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.369198, 26.781761, 21.345537>,  <43.018208, 26.965122, 21.289116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369198, 26.781761, 21.345537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217731, 0.118692, -0.968765,
		0.427344, 0.880783, 0.203959,
		0.877479, -0.458404, 0.141052,
		43.632442, 26.644239, 21.387854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455841, 27.384186, 21.079279>,  <43.018208, 26.965122, 21.289116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455841, 27.384186, 21.079279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.649052, 27.034338, 21.062679>,  <43.764977, 26.824429, 21.052719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.649052, 27.034338, 21.062679>,  <43.455841, 27.384186, 21.079279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649052, 27.034338, 21.062679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216249, 0.165086, -0.962280,
		0.848482, 0.455834, 0.268877,
		0.483027, -0.874621, -0.041499,
		43.793961, 26.771952, 21.050230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073940, 27.518478, 20.744677>,  <43.455841, 27.384186, 21.079279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073940, 27.518478, 20.744677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.012718, 27.123728, 20.724075>,  <43.975986, 26.886877, 20.711714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.012718, 27.123728, 20.724075>,  <44.073940, 27.518478, 20.744677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012718, 27.123728, 20.724075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257295, 0.010526, -0.966276,
		0.954135, -0.161142, 0.252307,
		-0.153052, -0.986875, -0.051504,
		43.966801, 26.827665, 20.708624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641537, 27.246967, 20.368668>,  <44.073940, 27.518478, 20.744677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641537, 27.246967, 20.368668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.357502, 26.965893, 20.350771>,  <44.187080, 26.797249, 20.340033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.357502, 26.965893, 20.350771>,  <44.641537, 27.246967, 20.368668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357502, 26.965893, 20.350771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102830, -0.040634, -0.993868,
		0.696561, -0.710338, 0.101111,
		-0.710091, -0.702687, -0.044739,
		44.144474, 26.755087, 20.337349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876400, 26.823141, 19.889297>,  <44.641537, 27.246967, 20.368668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876400, 26.823141, 19.889297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.497154, 26.697470, 19.908743>,  <44.269608, 26.622066, 19.920410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.497154, 26.697470, 19.908743>,  <44.876400, 26.823141, 19.889297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497154, 26.697470, 19.908743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045349, -0.285001, -0.957454,
		0.314665, -0.905576, 0.284462,
		-0.948119, -0.314177, 0.048613,
		44.212719, 26.603216, 19.923326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875416, 26.042948, 19.589769>,  <44.876400, 26.823141, 19.889297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875416, 26.042948, 19.589769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.506264, 26.196333, 19.575634>,  <44.284771, 26.288364, 19.567152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.506264, 26.196333, 19.575634>,  <44.875416, 26.042948, 19.589769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506264, 26.196333, 19.575634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068406, -0.253556, -0.964899,
		-0.378963, -0.888069, 0.260233,
		-0.922880, 0.383462, -0.035339,
		44.229401, 26.311371, 19.565033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566940, 25.590330, 19.037348>,  <44.875416, 26.042948, 19.589769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566940, 25.590330, 19.037348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.359161, 25.925310, 19.105289>,  <44.234493, 26.126299, 19.146055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.359161, 25.925310, 19.105289>,  <44.566940, 25.590330, 19.037348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359161, 25.925310, 19.105289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165767, 0.096243, -0.981457,
		-0.838269, -0.537973, 0.088828,
		-0.519448, 0.837450, 0.169856,
		44.203327, 26.176544, 19.156246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910858, 25.514334, 18.656506>,  <44.566940, 25.590330, 19.037348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910858, 25.514334, 18.656506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.959690, 25.907108, 18.714329>,  <43.988991, 26.142773, 18.749023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.959690, 25.907108, 18.714329>,  <43.910858, 25.514334, 18.656506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959690, 25.907108, 18.714329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007518, 0.144729, -0.989443,
		-0.992491, 0.121881, 0.010286,
		0.122083, 0.981936, 0.144559,
		43.996315, 26.201689, 18.757696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315720, 25.935291, 18.360802>,  <43.910858, 25.514334, 18.656506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315720, 25.935291, 18.360802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.677181, 26.106537, 18.365406>,  <43.894058, 26.209284, 18.368170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.677181, 26.106537, 18.365406>,  <43.315720, 25.935291, 18.360802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677181, 26.106537, 18.365406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005033, 0.016263, -0.999855,
		-0.428238, 0.903579, 0.012542,
		0.903652, 0.428113, 0.011513,
		43.948277, 26.234970, 18.368860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193966, 26.394073, 17.925224>,  <43.315720, 25.935291, 18.360802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193966, 26.394073, 17.925224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.590179, 26.339224, 17.927448>,  <43.827908, 26.306314, 17.928783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.590179, 26.339224, 17.927448>,  <43.193966, 26.394073, 17.925224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590179, 26.339224, 17.927448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011601, 0.043303, -0.998995,
		0.136746, 0.989607, 0.044484,
		0.990538, -0.137125, 0.005559,
		43.887341, 26.298086, 17.929115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924103, 26.891485, 17.422239>,  <43.193966, 26.394073, 17.925224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924103, 26.891485, 17.422239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.673458, 26.685059, 17.188646>,  <42.523071, 26.561203, 17.048491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.673458, 26.685059, 17.188646>,  <42.924103, 26.891485, 17.422239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673458, 26.685059, 17.188646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708246, 0.064412, 0.703021,
		-0.325189, 0.854124, -0.405862,
		-0.626610, -0.516064, -0.583984,
		42.485474, 26.530239, 17.013451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367104, 27.287401, 17.280676>,  <42.924103, 26.891485, 17.422239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367104, 27.287401, 17.280676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.247486, 26.908113, 17.237873>,  <42.175716, 26.680540, 17.212191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.247486, 26.908113, 17.237873>,  <42.367104, 27.287401, 17.280676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247486, 26.908113, 17.237873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681270, 0.133633, 0.719732,
		-0.668164, 0.288134, -0.685956,
		-0.299045, -0.948220, -0.107008,
		42.157772, 26.623648, 17.205770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641033, 27.261206, 17.158457>,  <42.367104, 27.287401, 17.280676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641033, 27.261206, 17.158457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.728313, 26.902845, 17.313248>,  <41.780682, 26.687830, 17.406122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.728313, 26.902845, 17.313248>,  <41.641033, 27.261206, 17.158457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728313, 26.902845, 17.313248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660404, 0.156390, 0.734445,
		-0.718508, -0.415819, -0.557531,
		0.218204, -0.895900, 0.386976,
		41.793774, 26.634075, 17.429340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017536, 26.928247, 17.333632>,  <41.641033, 27.261206, 17.158457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017536, 26.928247, 17.333632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.278576, 26.721880, 17.555601>,  <41.435200, 26.598061, 17.688784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.278576, 26.721880, 17.555601>,  <41.017536, 26.928247, 17.333632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278576, 26.721880, 17.555601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655331, -0.016698, 0.755157,
		-0.380333, -0.856475, -0.348994,
		0.652600, -0.515918, 0.554924,
		41.474358, 26.567104, 17.722078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597282, 26.572826, 17.816761>,  <41.017536, 26.928247, 17.333632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597282, 26.572826, 17.816761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.964092, 26.554119, 17.975197>,  <41.184177, 26.542894, 18.070259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.964092, 26.554119, 17.975197>,  <40.597282, 26.572826, 17.816761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964092, 26.554119, 17.975197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397083, -0.013941, 0.917677,
		-0.037396, -0.998808, -0.031355,
		0.917020, -0.046768, 0.396089,
		41.239197, 26.540089, 18.094023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564846, 25.993422, 18.259331>,  <40.597282, 26.572826, 17.816761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564846, 25.993422, 18.259331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.877281, 26.211832, 18.380499>,  <41.064743, 26.342878, 18.453199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.877281, 26.211832, 18.380499>,  <40.564846, 25.993422, 18.259331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877281, 26.211832, 18.380499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336391, -0.040744, 0.940840,
		0.526067, -0.836776, 0.151854,
		0.781085, 0.546027, 0.302918,
		41.111607, 26.375641, 18.471375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998264, 25.591934, 18.736654>,  <40.564846, 25.993422, 18.259331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998264, 25.591934, 18.736654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.079735, 25.976551, 18.810354>,  <41.128616, 26.207321, 18.854574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.079735, 25.976551, 18.810354>,  <40.998264, 25.591934, 18.736654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079735, 25.976551, 18.810354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208778, -0.141208, 0.967715,
		0.956518, -0.235571, 0.171988,
		0.203680, 0.961544, 0.184250,
		41.140839, 26.265015, 18.865629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291225, 25.545929, 19.302828>,  <40.998264, 25.591934, 18.736654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291225, 25.545929, 19.302828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.221287, 25.939753, 19.306131>,  <41.179325, 26.176046, 19.308113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.221287, 25.939753, 19.306131>,  <41.291225, 25.545929, 19.302828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221287, 25.939753, 19.306131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168613, -0.038208, 0.984941,
		0.970051, 0.170822, 0.172690,
		-0.174847, 0.984561, 0.008261,
		41.168831, 26.235121, 19.308609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650372, 25.772345, 19.812967>,  <41.291225, 25.545929, 19.302828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650372, 25.772345, 19.812967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.365086, 26.046745, 19.755377>,  <41.193916, 26.211386, 19.720823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.365086, 26.046745, 19.755377>,  <41.650372, 25.772345, 19.812967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365086, 26.046745, 19.755377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016401, 0.221679, 0.974982,
		0.700756, 0.693008, -0.169356,
		-0.713213, 0.686001, -0.143977,
		41.151123, 26.252546, 19.712183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909733, 26.404423, 20.242937>,  <41.650372, 25.772345, 19.812967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909733, 26.404423, 20.242937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.524250, 26.486538, 20.174664>,  <41.292961, 26.535809, 20.133699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.524250, 26.486538, 20.174664>,  <41.909733, 26.404423, 20.242937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524250, 26.486538, 20.174664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129181, 0.200933, 0.971050,
		0.233643, 0.957853, -0.167120,
		-0.963703, 0.205290, -0.170683,
		41.235138, 26.548124, 20.123459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738914, 27.032391, 20.697710>,  <41.909733, 26.404423, 20.242937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738914, 27.032391, 20.697710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.376656, 26.892334, 20.602047>,  <41.159298, 26.808300, 20.544649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.376656, 26.892334, 20.602047>,  <41.738914, 27.032391, 20.697710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376656, 26.892334, 20.602047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345091, 0.280897, 0.895549,
		-0.246389, 0.893587, -0.375226,
		-0.905651, -0.350141, -0.239159,
		41.104961, 26.787292, 20.530300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360847, 27.575253, 20.827345>,  <41.738914, 27.032391, 20.697710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360847, 27.575253, 20.827345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.121693, 27.255075, 20.844393>,  <40.978199, 27.062969, 20.854622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.121693, 27.255075, 20.844393>,  <41.360847, 27.575253, 20.827345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121693, 27.255075, 20.844393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264175, 0.246967, 0.932319,
		-0.756795, 0.546166, -0.359117,
		-0.597891, -0.800444, 0.042620,
		40.942326, 27.014942, 20.857178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721180, 27.832172, 21.049402>,  <41.360847, 27.575253, 20.827345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721180, 27.832172, 21.049402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.658783, 27.445736, 21.131701>,  <40.621346, 27.213873, 21.181080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.658783, 27.445736, 21.131701>,  <40.721180, 27.832172, 21.049402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658783, 27.445736, 21.131701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435068, 0.254202, 0.863769,
		-0.886782, 0.045227, -0.459970,
		-0.155991, -0.966093, 0.205745,
		40.611984, 27.155909, 21.193424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998146, 27.739727, 21.294048>,  <40.721180, 27.832172, 21.049402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998146, 27.739727, 21.294048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.212112, 27.437859, 21.446014>,  <40.340492, 27.256737, 21.537195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.212112, 27.437859, 21.446014>,  <39.998146, 27.739727, 21.294048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212112, 27.437859, 21.446014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398535, 0.171123, 0.901048,
		-0.745009, -0.633392, -0.209227,
		0.534913, -0.754673, 0.379917,
		40.372585, 27.211456, 21.559990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488220, 28.037642, 20.767832>,  <39.998146, 27.739727, 21.294048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488220, 28.037642, 20.767832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409344, 28.423916, 20.835436>,  <39.362019, 28.655682, 20.875998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409344, 28.423916, 20.835436>,  <39.488220, 28.037642, 20.767832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409344, 28.423916, 20.835436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406153, 0.237374, -0.882436,
		-0.892276, -0.105361, -0.439024,
		-0.197187, 0.965688, 0.169010,
		39.350189, 28.713623, 20.886139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135719, 28.281792, 20.214828>,  <39.488220, 28.037642, 20.767832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135719, 28.281792, 20.214828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300007, 28.611362, 20.371008>,  <39.398579, 28.809105, 20.464716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300007, 28.611362, 20.371008>,  <39.135719, 28.281792, 20.214828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300007, 28.611362, 20.371008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395588, 0.224799, -0.890492,
		-0.821475, 0.520198, -0.233607,
		0.410718, 0.823929, 0.390451,
		39.423222, 28.858541, 20.488144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945160, 28.845341, 19.808247>,  <39.135719, 28.281792, 20.214828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945160, 28.845341, 19.808247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.270290, 28.996677, 19.985407>,  <39.465370, 29.087481, 20.091703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.270290, 28.996677, 19.985407>,  <38.945160, 28.845341, 19.808247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270290, 28.996677, 19.985407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325919, 0.334793, -0.884132,
		-0.482787, 0.863000, 0.148821,
		0.812831, 0.378344, 0.442902,
		39.514141, 29.110180, 20.118277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104946, 29.452038, 19.397076>,  <38.945160, 28.845341, 19.808247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104946, 29.452038, 19.397076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.427513, 29.362368, 19.615957>,  <39.621056, 29.308565, 19.747286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.427513, 29.362368, 19.615957>,  <39.104946, 29.452038, 19.397076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427513, 29.362368, 19.615957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582463, 0.141346, -0.800474,
		0.102100, 0.964245, 0.244557,
		0.806419, -0.224174, 0.547206,
		39.669437, 29.295115, 19.780119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590202, 29.928246, 19.252296>,  <39.104946, 29.452038, 19.397076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590202, 29.928246, 19.252296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779011, 29.593664, 19.363684>,  <39.892296, 29.392916, 19.430515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779011, 29.593664, 19.363684>,  <39.590202, 29.928246, 19.252296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779011, 29.593664, 19.363684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517149, 0.006902, -0.855868,
		0.713970, 0.547996, 0.435829,
		0.472020, -0.836452, 0.278467,
		39.920616, 29.342728, 19.447224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195282, 29.972443, 18.990339>,  <39.590202, 29.928246, 19.252296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195282, 29.972443, 18.990339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.217937, 29.582903, 19.078352>,  <40.231529, 29.349180, 19.131159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.217937, 29.582903, 19.078352>,  <40.195282, 29.972443, 18.990339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217937, 29.582903, 19.078352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693827, -0.120079, -0.710060,
		0.717911, 0.192878, 0.668881,
		0.056636, -0.973848, 0.220030,
		40.234928, 29.290749, 19.144361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852657, 29.852663, 18.884413>,  <40.195282, 29.972443, 18.990339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852657, 29.852663, 18.884413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.678024, 29.492897, 18.875902>,  <40.573246, 29.277039, 18.870796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.678024, 29.492897, 18.875902>,  <40.852657, 29.852663, 18.884413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678024, 29.492897, 18.875902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645186, -0.296520, -0.704139,
		0.627002, -0.321142, 0.709743,
		-0.436581, -0.899413, -0.021277,
		40.547050, 29.223074, 18.869518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635830, 30.080297, 18.844011>,  <40.852657, 29.852663, 18.884413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635830, 30.080297, 18.844011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.739433, 30.426716, 18.672955>,  <41.801594, 30.634567, 18.570320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.739433, 30.426716, 18.672955>,  <41.635830, 30.080297, 18.844011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739433, 30.426716, 18.672955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543211, 0.496704, 0.676911,
		0.798648, 0.056974, 0.599096,
		0.259007, 0.866048, -0.427640,
		41.817135, 30.686531, 18.544662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005856, 30.458342, 19.351900>,  <41.635830, 30.080297, 18.844011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005856, 30.458342, 19.351900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.819962, 30.689907, 19.083908>,  <41.708424, 30.828846, 18.923113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.819962, 30.689907, 19.083908>,  <42.005856, 30.458342, 19.351900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819962, 30.689907, 19.083908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532869, 0.421439, 0.733784,
		0.707155, 0.698030, 0.112627,
		-0.464739, 0.578915, -0.669981,
		41.680538, 30.863581, 18.882914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001789, 30.968660, 19.736137>,  <42.005856, 30.458342, 19.351900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001789, 30.968660, 19.736137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.757107, 31.061018, 19.433483>,  <41.610298, 31.116432, 19.251890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.757107, 31.061018, 19.433483>,  <42.001789, 30.968660, 19.736137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757107, 31.061018, 19.433483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489237, 0.641198, 0.591196,
		0.621658, 0.731815, -0.279265,
		-0.611710, 0.230895, -0.756637,
		41.573593, 31.130287, 19.206491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936123, 31.638809, 19.837278>,  <42.001789, 30.968660, 19.736137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936123, 31.638809, 19.837278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609673, 31.506628, 19.647654>,  <41.413803, 31.427320, 19.533878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609673, 31.506628, 19.647654>,  <41.936123, 31.638809, 19.837278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609673, 31.506628, 19.647654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565738, 0.624111, 0.538913,
		0.117782, 0.708017, -0.696304,
		-0.816130, -0.330452, -0.474061,
		41.364834, 31.407492, 19.505436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540234, 32.233002, 19.895113>,  <41.936123, 31.638809, 19.837278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540234, 32.233002, 19.895113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.286922, 31.941856, 19.789907>,  <41.134937, 31.767170, 19.726784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.286922, 31.941856, 19.789907>,  <41.540234, 32.233002, 19.895113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286922, 31.941856, 19.789907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699300, 0.392557, 0.597393,
		-0.331573, 0.562240, -0.757592,
		-0.633276, -0.727864, -0.263013,
		41.096939, 31.723497, 19.711004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869518, 32.577332, 19.713409>,  <41.540234, 32.233002, 19.895113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869518, 32.577332, 19.713409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.814163, 32.191837, 19.804676>,  <40.780952, 31.960541, 19.859436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.814163, 32.191837, 19.804676>,  <40.869518, 32.577332, 19.713409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814163, 32.191837, 19.804676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858013, 0.231728, 0.458384,
		-0.494634, -0.132337, -0.858967,
		-0.138385, -0.963737, 0.228168,
		40.772648, 31.902716, 19.873127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146275, 32.542255, 19.696394>,  <40.869518, 32.577332, 19.713409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146275, 32.542255, 19.696394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291584, 32.232262, 19.903246>,  <40.378769, 32.046265, 20.027357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291584, 32.232262, 19.903246>,  <40.146275, 32.542255, 19.696394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291584, 32.232262, 19.903246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729551, 0.108601, 0.675249,
		-0.579471, -0.622575, -0.525941,
		0.363275, -0.774988, 0.517132,
		40.400566, 31.999765, 20.058386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.890575, 28.757729, 18.026489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.553055, 28.612705, 18.184752>,  <45.350540, 28.525692, 18.279709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.553055, 28.612705, 18.184752>,  <45.890575, 28.757729, 18.026489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553055, 28.612705, 18.184752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212393, 0.451452, 0.866649,
		-0.492830, 0.815318, -0.303934,
		-0.843806, -0.362557, 0.395657,
		45.299911, 28.503939, 18.303448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431946, 29.289251, 18.462114>,  <45.890575, 28.757729, 18.026489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431946, 29.289251, 18.462114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.387531, 28.910263, 18.582092>,  <45.360882, 28.682869, 18.654079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.387531, 28.910263, 18.582092>,  <45.431946, 29.289251, 18.462114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387531, 28.910263, 18.582092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131488, 0.285151, 0.949421,
		-0.985080, 0.144860, 0.092919,
		-0.111037, -0.947473, 0.299944,
		45.354221, 28.626020, 18.672075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865421, 29.283030, 18.939121>,  <45.431946, 29.289251, 18.462114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865421, 29.283030, 18.939121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.105232, 28.967308, 18.992136>,  <45.249119, 28.777874, 19.023945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.105232, 28.967308, 18.992136>,  <44.865421, 29.283030, 18.939121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105232, 28.967308, 18.992136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210533, 0.315292, 0.925347,
		-0.772168, -0.526867, 0.355201,
		0.599526, -0.789305, 0.132536,
		45.285091, 28.730516, 19.031897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595680, 28.895792, 19.432203>,  <44.865421, 29.283030, 18.939121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595680, 28.895792, 19.432203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.984131, 28.800516, 19.437462>,  <45.217201, 28.743351, 19.440617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.984131, 28.800516, 19.437462>,  <44.595680, 28.895792, 19.432203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984131, 28.800516, 19.437462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056539, 0.283350, 0.957348,
		-0.231757, -0.928966, 0.288637,
		0.971129, -0.238191, 0.013146,
		45.275471, 28.729059, 19.441406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678066, 28.520304, 20.059015>,  <44.595680, 28.895792, 19.432203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678066, 28.520304, 20.059015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.059025, 28.598564, 19.965492>,  <45.287601, 28.645519, 19.909378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.059025, 28.598564, 19.965492>,  <44.678066, 28.520304, 20.059015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059025, 28.598564, 19.965492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220432, 0.087856, 0.971438,
		0.210603, -0.976730, 0.040546,
		0.952395, 0.195651, -0.233806,
		45.344742, 28.657259, 19.895351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161057, 28.193161, 20.527626>,  <44.678066, 28.520304, 20.059015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161057, 28.193161, 20.527626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.391373, 28.487600, 20.385290>,  <45.529564, 28.664265, 20.299889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.391373, 28.487600, 20.385290>,  <45.161057, 28.193161, 20.527626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391373, 28.487600, 20.385290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325147, 0.193173, 0.925723,
		0.750162, -0.648725, -0.128113,
		0.575792, 0.736098, -0.355842,
		45.564110, 28.708429, 20.278538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.782673, 28.029594, 20.809023>,  <45.161057, 28.193161, 20.527626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.782673, 28.029594, 20.809023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.749809, 28.418369, 20.720850>,  <45.730091, 28.651634, 20.667946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.749809, 28.418369, 20.720850>,  <45.782673, 28.029594, 20.809023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749809, 28.418369, 20.720850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211860, 0.233155, 0.949080,
		0.973841, 0.031272, -0.225069,
		-0.082156, 0.971937, -0.220431,
		45.725163, 28.709949, 20.654720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.313656, 28.343199, 20.987684>,  <45.782673, 28.029594, 20.809023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.313656, 28.343199, 20.987684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.097984, 28.679508, 20.968159>,  <45.968582, 28.881294, 20.956444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.097984, 28.679508, 20.968159>,  <46.313656, 28.343199, 20.987684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097984, 28.679508, 20.968159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364225, 0.285051, 0.886615,
		0.759358, 0.460266, -0.459925,
		-0.539180, 0.840774, -0.048815,
		45.936230, 28.931740, 20.953514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.678265, 28.722479, 21.411493>,  <46.313656, 28.343199, 20.987684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.678265, 28.722479, 21.411493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.358917, 28.961775, 21.384031>,  <46.167309, 29.105352, 21.367554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.358917, 28.961775, 21.384031>,  <46.678265, 28.722479, 21.411493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358917, 28.961775, 21.384031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152902, 0.311676, 0.937805,
		0.582433, 0.738217, -0.340305,
		-0.798369, 0.598242, -0.068656,
		46.119408, 29.141247, 21.363434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.834160, 29.525719, 21.432476>,  <46.678265, 28.722479, 21.411493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.834160, 29.525719, 21.432476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.457138, 29.469511, 21.553705>,  <46.230927, 29.435787, 21.626444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.457138, 29.469511, 21.553705>,  <46.834160, 29.525719, 21.432476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457138, 29.469511, 21.553705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239412, 0.348590, 0.906182,
		-0.232983, 0.926682, -0.294922,
		-0.942550, -0.140517, 0.303075,
		46.174374, 29.427357, 21.644629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741554, 30.070929, 21.893488>,  <46.834160, 29.525719, 21.432476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741554, 30.070929, 21.893488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.415421, 29.852972, 21.971800>,  <46.219742, 29.722198, 22.018787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.415421, 29.852972, 21.971800>,  <46.741554, 30.070929, 21.893488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.415421, 29.852972, 21.971800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142119, 0.516134, 0.844635,
		-0.561282, 0.660833, -0.498259,
		-0.815331, -0.544891, 0.195780,
		46.170822, 29.689505, 22.030533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194801, 30.535269, 22.080709>,  <46.741554, 30.070929, 21.893488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194801, 30.535269, 22.080709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.079369, 30.191643, 22.249813>,  <46.010109, 29.985466, 22.351274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.079369, 30.191643, 22.249813>,  <46.194801, 30.535269, 22.080709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079369, 30.191643, 22.249813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135280, 0.473698, 0.870235,
		-0.947850, 0.193943, -0.252915,
		-0.288581, -0.859067, 0.422758,
		45.992794, 29.933922, 22.376640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653496, 31.007902, 21.983612>,  <46.194801, 30.535269, 22.080709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653496, 31.007902, 21.983612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.525948, 31.369183, 21.868685>,  <45.449421, 31.585951, 21.799728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.525948, 31.369183, 21.868685>,  <45.653496, 31.007902, 21.983612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525948, 31.369183, 21.868685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172586, -0.242745, -0.954614,
		-0.931954, -0.353982, -0.078476,
		-0.318867, 0.903201, -0.287320,
		45.430286, 31.640142, 21.782490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129951, 31.037674, 21.521345>,  <45.653496, 31.007902, 21.983612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129951, 31.037674, 21.521345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.282417, 31.394966, 21.425964>,  <45.373898, 31.609341, 21.368736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.282417, 31.394966, 21.425964>,  <45.129951, 31.037674, 21.521345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282417, 31.394966, 21.425964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045144, -0.239631, -0.969814,
		-0.923406, 0.380421, -0.051014,
		0.381162, 0.893229, -0.238450,
		45.396767, 31.662935, 21.354429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132496, 31.079021, 20.834694>,  <45.129951, 31.037674, 21.521345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132496, 31.079021, 20.834694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.344009, 31.415619, 20.879007>,  <45.470917, 31.617577, 20.905596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.344009, 31.415619, 20.879007>,  <45.132496, 31.079021, 20.834694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344009, 31.415619, 20.879007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218215, -0.008653, -0.975862,
		-0.820224, 0.540198, -0.188202,
		0.528787, 0.841494, 0.110782,
		45.502644, 31.668068, 20.912243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900845, 31.607710, 20.253731>,  <45.132496, 31.079021, 20.834694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900845, 31.607710, 20.253731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.264252, 31.722826, 20.374907>,  <45.482296, 31.791895, 20.447613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.264252, 31.722826, 20.374907>,  <44.900845, 31.607710, 20.253731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264252, 31.722826, 20.374907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314381, 0.006783, -0.949273,
		-0.275244, 0.957670, -0.084312,
		0.908518, 0.287788, 0.302940,
		45.536808, 31.809162, 20.465788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076225, 32.153614, 19.796228>,  <44.900845, 31.607710, 20.253731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076225, 32.153614, 19.796228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.412987, 31.988396, 19.935135>,  <45.615044, 31.889265, 20.018478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.412987, 31.988396, 19.935135>,  <45.076225, 32.153614, 19.796228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412987, 31.988396, 19.935135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302220, -0.172227, -0.937550,
		0.447061, 0.894276, -0.020167,
		0.841902, -0.413047, 0.347264,
		45.665558, 31.864481, 20.039314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612244, 32.585625, 19.551617>,  <45.076225, 32.153614, 19.796228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612244, 32.585625, 19.551617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.766548, 32.229206, 19.647308>,  <45.859131, 32.015354, 19.704723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.766548, 32.229206, 19.647308>,  <45.612244, 32.585625, 19.551617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766548, 32.229206, 19.647308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430557, -0.055461, -0.900858,
		0.815972, 0.450516, 0.362251,
		0.385760, -0.891044, 0.239228,
		45.882275, 31.961893, 19.719076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312599, 32.562550, 19.269365>,  <45.612244, 32.585625, 19.551617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312599, 32.562550, 19.269365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.203411, 32.179634, 19.307491>,  <46.137897, 31.949884, 19.330368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.203411, 32.179634, 19.307491>,  <46.312599, 32.562550, 19.269365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203411, 32.179634, 19.307491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423108, -0.208445, -0.881777,
		0.863984, -0.200367, 0.461936,
		-0.272967, -0.957290, 0.095316,
		46.121521, 31.892447, 19.336086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856030, 32.180237, 18.981621>,  <46.312599, 32.562550, 19.269365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856030, 32.180237, 18.981621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.548252, 31.925486, 19.001024>,  <46.363586, 31.772636, 19.012667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.548252, 31.925486, 19.001024>,  <46.856030, 32.180237, 18.981621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548252, 31.925486, 19.001024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316731, -0.446405, -0.836902,
		0.554655, -0.628582, 0.545200,
		-0.769441, -0.636873, 0.048509,
		46.317421, 31.734423, 19.015577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.217472, 31.603666, 18.756124>,  <46.856030, 32.180237, 18.981621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.217472, 31.603666, 18.756124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.832806, 31.500469, 18.718958>,  <46.602005, 31.438551, 18.696659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.832806, 31.500469, 18.718958>,  <47.217472, 31.603666, 18.756124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.832806, 31.500469, 18.718958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178532, -0.331882, -0.926273,
		0.208137, -0.907355, 0.365220,
		-0.961668, -0.257995, -0.092915,
		46.544304, 31.423071, 18.691084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252438, 30.966984, 18.309168>,  <47.217472, 31.603666, 18.756124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252438, 30.966984, 18.309168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.869534, 31.081028, 18.289690>,  <46.639793, 31.149454, 18.278004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.869534, 31.081028, 18.289690>,  <47.252438, 30.966984, 18.309168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.869534, 31.081028, 18.289690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066881, -0.381976, -0.921749,
		-0.281400, -0.879094, 0.384718,
		-0.957257, 0.285111, -0.048694,
		46.582355, 31.166561, 18.275082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889927, 30.402590, 18.133087>,  <47.252438, 30.966984, 18.309168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889927, 30.402590, 18.133087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.668499, 30.717289, 18.023844>,  <46.535641, 30.906109, 17.958298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.668499, 30.717289, 18.023844>,  <46.889927, 30.402590, 18.133087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668499, 30.717289, 18.023844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137932, -0.410024, -0.901585,
		-0.821301, -0.461420, 0.335494,
		-0.553569, 0.786748, -0.273109,
		46.502426, 30.953314, 17.941912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.311661, 30.124149, 17.860804>,  <46.889927, 30.402590, 18.133087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.311661, 30.124149, 17.860804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.312462, 30.493233, 17.706604>,  <46.312943, 30.714682, 17.614084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.312462, 30.493233, 17.706604>,  <46.311661, 30.124149, 17.860804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312462, 30.493233, 17.706604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057579, -0.384753, -0.921222,
		-0.998339, 0.024043, 0.052357,
		0.002005, 0.922707, -0.385498,
		46.313065, 30.770044, 17.590954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740921, 30.068781, 17.311117>,  <46.311661, 30.124149, 17.860804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740921, 30.068781, 17.311117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.966499, 30.392012, 17.243031>,  <46.101849, 30.585951, 17.202179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.966499, 30.392012, 17.243031>,  <45.740921, 30.068781, 17.311117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966499, 30.392012, 17.243031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003897, -0.203516, -0.979064,
		-0.825800, 0.552805, -0.111624,
		0.563949, 0.808076, -0.170218,
		46.135685, 30.634434, 17.191965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013569, 30.075985, 17.373669>,  <45.740921, 30.068781, 17.311117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013569, 30.075985, 17.373669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.761463, 30.044434, 17.064724>,  <44.610199, 30.025503, 16.879356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.761463, 30.044434, 17.064724>,  <45.013569, 30.075985, 17.373669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761463, 30.044434, 17.064724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656314, 0.585578, 0.475763,
		0.414753, 0.806769, -0.420837,
		-0.630264, -0.078877, -0.772364,
		44.572384, 30.020771, 16.833015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723545, 30.794949, 17.351158>,  <45.013569, 30.075985, 17.373669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723545, 30.794949, 17.351158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.489182, 30.557423, 17.130579>,  <44.348564, 30.414907, 16.998232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.489182, 30.557423, 17.130579>,  <44.723545, 30.794949, 17.351158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489182, 30.557423, 17.130579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808240, 0.477573, 0.344488,
		0.058794, 0.647540, -0.759760,
		-0.585911, -0.593815, -0.551446,
		44.313408, 30.379278, 16.965145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195686, 31.158480, 17.178293>,  <44.723545, 30.794949, 17.351158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195686, 31.158480, 17.178293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.022770, 30.799618, 17.141998>,  <43.919018, 30.584301, 17.120220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.022770, 30.799618, 17.141998>,  <44.195686, 31.158480, 17.178293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022770, 30.799618, 17.141998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810485, 0.342467, 0.475216,
		-0.395268, 0.278976, -0.875178,
		-0.432294, -0.897156, -0.090740,
		43.893082, 30.530472, 17.114777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458355, 31.291889, 16.865532>,  <44.195686, 31.158480, 17.178293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458355, 31.291889, 16.865532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.466385, 30.934637, 17.045273>,  <43.471203, 30.720285, 17.153116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.466385, 30.934637, 17.045273>,  <43.458355, 31.291889, 16.865532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466385, 30.934637, 17.045273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794559, 0.258546, 0.549391,
		-0.606855, -0.368066, -0.704453,
		0.020079, -0.893130, 0.449350,
		43.472408, 30.666698, 17.180079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699417, 31.109667, 16.817640>,  <43.458355, 31.291889, 16.865532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699417, 31.109667, 16.817640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.862206, 30.896378, 17.114302>,  <42.959877, 30.768404, 17.292299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.862206, 30.896378, 17.114302>,  <42.699417, 31.109667, 16.817640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862206, 30.896378, 17.114302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866754, 0.030833, 0.497781,
		-0.288296, -0.845412, -0.449626,
		0.406967, -0.533224, 0.741654,
		42.984295, 30.736410, 17.336798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202126, 30.692959, 17.023161>,  <42.699417, 31.109667, 16.817640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202126, 30.692959, 17.023161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.429562, 30.661995, 17.350748>,  <42.566025, 30.643417, 17.547300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.429562, 30.661995, 17.350748>,  <42.202126, 30.692959, 17.023161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429562, 30.661995, 17.350748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814792, 0.084000, 0.573635,
		-0.113198, -0.993455, -0.015309,
		0.568595, -0.077408, 0.818968,
		42.600140, 30.638773, 17.596437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792297, 30.225069, 17.421507>,  <42.202126, 30.692959, 17.023161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792297, 30.225069, 17.421507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.057140, 30.425104, 17.644764>,  <42.216045, 30.545126, 17.778717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.057140, 30.425104, 17.644764>,  <41.792297, 30.225069, 17.421507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057140, 30.425104, 17.644764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648655, 0.009443, 0.761024,
		0.375308, -0.865923, 0.330637,
		0.662110, 0.500088, 0.558141,
		42.255775, 30.575130, 17.812206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705685, 29.891531, 18.056412>,  <41.792297, 30.225069, 17.421507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705685, 29.891531, 18.056412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.889271, 30.244715, 18.095879>,  <41.999420, 30.456625, 18.119558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.889271, 30.244715, 18.095879>,  <41.705685, 29.891531, 18.056412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889271, 30.244715, 18.095879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691901, 0.285549, 0.663125,
		0.557339, -0.372617, 0.741977,
		0.458963, 0.882960, 0.098666,
		42.026958, 30.509604, 18.125479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295895, 29.414192, 18.478956>,  <41.705685, 29.891531, 18.056412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295895, 29.414192, 18.478956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.985050, 29.162449, 18.480206>,  <40.798546, 29.011402, 18.480955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.985050, 29.162449, 18.480206>,  <41.295895, 29.414192, 18.478956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985050, 29.162449, 18.480206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192278, -0.242137, -0.950999,
		0.599277, -0.738428, 0.309179,
		-0.777108, -0.629360, 0.003124,
		40.751919, 28.973640, 18.481142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572292, 28.834391, 18.266865>,  <41.295895, 29.414192, 18.478956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572292, 28.834391, 18.266865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.181946, 28.825121, 18.180006>,  <40.947739, 28.819559, 18.127890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.181946, 28.825121, 18.180006>,  <41.572292, 28.834391, 18.266865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181946, 28.825121, 18.180006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214330, -0.292285, -0.932004,
		-0.041869, -0.956050, 0.290197,
		-0.975863, -0.023176, -0.217148,
		40.889187, 28.818169, 18.114862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615475, 28.326571, 17.854446>,  <41.572292, 28.834391, 18.266865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615475, 28.326571, 17.854446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.244907, 28.469641, 17.807428>,  <41.022568, 28.555483, 17.779217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.244907, 28.469641, 17.807428>,  <41.615475, 28.326571, 17.854446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244907, 28.469641, 17.807428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033817, -0.389998, -0.920195,
		-0.374968, -0.848513, 0.373397,
		-0.926421, 0.357670, -0.117542,
		40.966980, 28.576942, 17.772165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268761, 27.838089, 17.487669>,  <41.615475, 28.326571, 17.854446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268761, 27.838089, 17.487669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.032925, 28.152275, 17.412380>,  <40.891422, 28.340786, 17.367207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.032925, 28.152275, 17.412380>,  <41.268761, 27.838089, 17.487669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032925, 28.152275, 17.412380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046759, -0.265838, -0.962883,
		-0.806348, -0.558905, 0.193463,
		-0.589590, 0.785465, -0.188224,
		40.856049, 28.387915, 17.355913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693363, 27.566046, 17.202333>,  <41.268761, 27.838089, 17.487669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693363, 27.566046, 17.202333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.722042, 27.949854, 17.093391>,  <40.739250, 28.180140, 17.028027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.722042, 27.949854, 17.093391>,  <40.693363, 27.566046, 17.202333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722042, 27.949854, 17.093391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019311, -0.274341, -0.961438,
		-0.997240, 0.063669, -0.038197,
		0.071693, 0.959522, -0.272355,
		40.743549, 28.237711, 17.011684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191650, 27.597223, 16.758617>,  <40.693363, 27.566046, 17.202333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191650, 27.597223, 16.758617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.437389, 27.899296, 16.667166>,  <40.584835, 28.080540, 16.612295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.437389, 27.899296, 16.667166>,  <40.191650, 27.597223, 16.758617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437389, 27.899296, 16.667166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045693, -0.323323, -0.945185,
		-0.787708, 0.570229, -0.233141,
		0.614351, 0.755183, -0.228629,
		40.621696, 28.125851, 16.598577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015045, 27.970348, 16.190325>,  <40.191650, 27.597223, 16.758617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015045, 27.970348, 16.190325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.410439, 28.030214, 16.199341>,  <40.647675, 28.066133, 16.204750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.410439, 28.030214, 16.199341>,  <40.015045, 27.970348, 16.190325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410439, 28.030214, 16.199341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086176, -0.434092, -0.896737,
		-0.124426, 0.888349, -0.441988,
		0.988480, 0.149666, 0.022542,
		40.706982, 28.075113, 16.206104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204662, 28.274168, 15.510050>,  <40.015045, 27.970348, 16.190325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204662, 28.274168, 15.510050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.555046, 28.127728, 15.635695>,  <40.765278, 28.039864, 15.711082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.555046, 28.127728, 15.635695>,  <40.204662, 28.274168, 15.510050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555046, 28.127728, 15.635695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197870, -0.321171, -0.926119,
		0.439937, 0.873395, -0.208892,
		0.875958, -0.366101, 0.314114,
		40.817833, 28.017897, 15.729930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746181, 28.408119, 14.953585>,  <40.204662, 28.274168, 15.510050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746181, 28.408119, 14.953585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.924728, 28.124062, 15.171375>,  <41.031857, 27.953627, 15.302050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.924728, 28.124062, 15.171375>,  <40.746181, 28.408119, 14.953585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924728, 28.124062, 15.171375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406633, -0.381039, -0.830336,
		0.797125, 0.592035, 0.118686,
		0.446364, -0.710143, 0.544477,
		41.058640, 27.911018, 15.334719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.175274, 31.453470, 30.794445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.319885, 31.087509, 30.722610>,  <36.406651, 30.867933, 30.679510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.319885, 31.087509, 30.722610>,  <36.175274, 31.453470, 30.794445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319885, 31.087509, 30.722610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314592, 0.301017, -0.900234,
		0.877684, 0.268964, 0.396647,
		0.361528, -0.914903, -0.179584,
		36.428345, 30.813038, 30.668736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839226, 31.562197, 30.504988>,  <36.175274, 31.453470, 30.794445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839226, 31.562197, 30.504988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725689, 31.191206, 30.407642>,  <36.657566, 30.968613, 30.349236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725689, 31.191206, 30.407642>,  <36.839226, 31.562197, 30.504988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725689, 31.191206, 30.407642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196921, 0.192010, -0.961433,
		0.938434, -0.320814, 0.128139,
		-0.283838, -0.927475, -0.243364,
		36.640537, 30.912964, 30.334633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345615, 31.252279, 30.152973>,  <36.839226, 31.562197, 30.504988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345615, 31.252279, 30.152973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.067738, 30.990078, 30.034506>,  <36.901012, 30.832756, 29.963427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.067738, 30.990078, 30.034506>,  <37.345615, 31.252279, 30.152973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067738, 30.990078, 30.034506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491659, -0.132175, -0.860698,
		0.525047, -0.743533, 0.414106,
		-0.694692, -0.655506, -0.296167,
		36.859329, 30.793427, 29.945656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664661, 30.824707, 29.735394>,  <37.345615, 31.252279, 30.152973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664661, 30.824707, 29.735394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276527, 30.805088, 29.640703>,  <37.043648, 30.793316, 29.583889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276527, 30.805088, 29.640703>,  <37.664661, 30.824707, 29.735394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276527, 30.805088, 29.640703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240187, -0.084334, -0.967056,
		0.027470, -0.995230, 0.093614,
		-0.970338, -0.049050, -0.236725,
		36.985428, 30.790373, 29.569685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571915, 30.265097, 29.270353>,  <37.664661, 30.824707, 29.735394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571915, 30.265097, 29.270353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233303, 30.471540, 29.218170>,  <37.030136, 30.595406, 29.186861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233303, 30.471540, 29.218170>,  <37.571915, 30.265097, 29.270353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233303, 30.471540, 29.218170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064080, -0.144491, -0.987429,
		-0.528470, -0.844248, 0.089244,
		-0.846530, 0.516108, -0.130458,
		36.979343, 30.626373, 29.179033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188530, 29.901527, 28.773584>,  <37.571915, 30.265097, 29.270353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188530, 29.901527, 28.773584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030270, 30.268522, 28.757189>,  <36.935314, 30.488718, 28.747351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030270, 30.268522, 28.757189>,  <37.188530, 29.901527, 28.773584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030270, 30.268522, 28.757189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094278, -0.084969, -0.991913,
		-0.913549, -0.388586, 0.120117,
		-0.395650, 0.917486, -0.040988,
		36.911575, 30.543768, 28.744892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506184, 29.892641, 28.353701>,  <37.188530, 29.901527, 28.773584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506184, 29.892641, 28.353701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672508, 30.254635, 28.317699>,  <36.772305, 30.471830, 28.296099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672508, 30.254635, 28.317699>,  <36.506184, 29.892641, 28.353701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672508, 30.254635, 28.317699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154390, -0.027283, -0.987633,
		-0.896248, 0.424569, 0.128375,
		0.415816, 0.904985, -0.090002,
		36.797253, 30.526131, 28.290699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090347, 30.284267, 27.818100>,  <36.506184, 29.892641, 28.353701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090347, 30.284267, 27.818100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445728, 30.467009, 27.835703>,  <36.658958, 30.576653, 27.846264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445728, 30.467009, 27.835703>,  <36.090347, 30.284267, 27.818100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445728, 30.467009, 27.835703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008107, 0.111491, -0.993732,
		-0.458895, 0.882528, 0.102758,
		0.888453, 0.456852, 0.044008,
		36.712265, 30.604065, 27.848906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049927, 30.925222, 27.299816>,  <36.090347, 30.284267, 27.818100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049927, 30.925222, 27.299816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443783, 30.882534, 27.355082>,  <36.680096, 30.856920, 27.388241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443783, 30.882534, 27.355082>,  <36.049927, 30.925222, 27.299816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443783, 30.882534, 27.355082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145702, 0.066365, -0.987100,
		0.096177, 0.992072, 0.080896,
		0.984643, -0.106723, 0.138164,
		36.739174, 30.850517, 27.396530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378521, 31.521902, 26.902418>,  <36.049927, 30.925222, 27.299816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378521, 31.521902, 26.902418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658127, 31.237759, 26.935343>,  <36.825890, 31.067272, 26.955097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658127, 31.237759, 26.935343>,  <36.378521, 31.521902, 26.902418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658127, 31.237759, 26.935343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004229, -0.110992, -0.993812,
		0.715099, 0.695033, -0.074580,
		0.699010, -0.710359, 0.082310,
		36.867828, 31.024651, 26.960035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095509, 31.680832, 26.422365>,  <36.378521, 31.521902, 26.902418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095509, 31.680832, 26.422365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.130314, 31.286352, 26.478710>,  <37.151199, 31.049665, 26.512518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.130314, 31.286352, 26.478710>,  <37.095509, 31.680832, 26.422365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130314, 31.286352, 26.478710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195885, -0.121701, -0.973046,
		0.976758, 0.112265, 0.182591,
		0.087017, -0.986197, 0.140864,
		37.156418, 30.990494, 26.520969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502487, 31.515524, 25.956213>,  <37.095509, 31.680832, 26.422365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502487, 31.515524, 25.956213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.380993, 31.148750, 26.059731>,  <37.308098, 30.928686, 26.121841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.380993, 31.148750, 26.059731>,  <37.502487, 31.515524, 25.956213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380993, 31.148750, 26.059731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100626, -0.300980, -0.948307,
		0.947428, -0.261993, 0.183686,
		-0.303735, -0.916936, 0.258793,
		37.289871, 30.873669, 26.137369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180534, 31.821918, 25.845444>,  <37.502487, 31.515524, 25.956213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180534, 31.821918, 25.845444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.056828, 32.168297, 25.688221>,  <37.982605, 32.376125, 25.593887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.056828, 32.168297, 25.688221>,  <38.180534, 31.821918, 25.845444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056828, 32.168297, 25.688221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133284, 0.369770, 0.919514,
		0.941589, 0.336764, 0.001059,
		-0.309267, 0.865945, -0.393056,
		37.964046, 32.428082, 25.570305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383060, 32.308449, 26.293615>,  <38.180534, 31.821918, 25.845444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383060, 32.308449, 26.293615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108582, 32.512810, 26.086500>,  <37.943893, 32.635426, 25.962231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108582, 32.512810, 26.086500>,  <38.383060, 32.308449, 26.293615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108582, 32.512810, 26.086500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198974, 0.552844, 0.809180,
		0.699669, 0.658288, -0.277707,
		-0.686202, 0.510902, -0.517790,
		37.902721, 32.666080, 25.931164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432247, 33.014462, 26.574036>,  <38.383060, 32.308449, 26.293615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432247, 33.014462, 26.574036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.078995, 32.999638, 26.386972>,  <37.867043, 32.990742, 26.274734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.078995, 32.999638, 26.386972>,  <38.432247, 33.014462, 26.574036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078995, 32.999638, 26.386972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444778, 0.383131, 0.809557,
		0.149171, 0.922950, -0.354840,
		-0.883131, -0.037063, -0.467660,
		37.814056, 32.988518, 26.246674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158669, 33.738758, 26.507032>,  <38.432247, 33.014462, 26.574036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158669, 33.738758, 26.507032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.854626, 33.479408, 26.524235>,  <37.672199, 33.323799, 26.534555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.854626, 33.479408, 26.524235>,  <38.158669, 33.738758, 26.507032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854626, 33.479408, 26.524235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426868, 0.548129, 0.719263,
		-0.489926, 0.528356, -0.693406,
		-0.760103, -0.648378, 0.043004,
		37.626595, 33.284893, 26.537136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464565, 34.185085, 26.537050>,  <38.158669, 33.738758, 26.507032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464565, 34.185085, 26.537050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387028, 33.807487, 26.643860>,  <37.340504, 33.580929, 26.707945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387028, 33.807487, 26.643860>,  <37.464565, 34.185085, 26.537050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387028, 33.807487, 26.643860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642630, 0.327844, 0.692492,
		-0.741249, -0.037361, -0.670189,
		-0.193845, -0.943993, 0.267023,
		37.328873, 33.524288, 26.723967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773846, 34.193539, 26.900610>,  <37.464565, 34.185085, 26.537050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773846, 34.193539, 26.900610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.908638, 33.845627, 27.044796>,  <36.989513, 33.636879, 27.131308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.908638, 33.845627, 27.044796>,  <36.773846, 34.193539, 26.900610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908638, 33.845627, 27.044796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408439, 0.209909, 0.888322,
		-0.848307, -0.446571, -0.284517,
		0.336977, -0.869778, 0.360464,
		37.009731, 33.584694, 27.152935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220325, 33.884224, 27.130058>,  <36.773846, 34.193539, 26.900610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220325, 33.884224, 27.130058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531570, 33.718319, 27.318743>,  <36.718319, 33.618778, 27.431953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531570, 33.718319, 27.318743>,  <36.220325, 33.884224, 27.130058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531570, 33.718319, 27.318743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519468, -0.002733, 0.854485,
		-0.353116, -0.909928, -0.217580,
		0.778115, -0.414758, 0.471713,
		36.765003, 33.593891, 27.460257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844410, 33.552547, 27.614161>,  <36.220325, 33.884224, 27.130058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844410, 33.552547, 27.614161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.208027, 33.540234, 27.780384>,  <36.426197, 33.532845, 27.880119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.208027, 33.540234, 27.780384>,  <35.844410, 33.552547, 27.614161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208027, 33.540234, 27.780384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404714, 0.172242, 0.898075,
		-0.099225, -0.984573, 0.144116,
		0.909044, -0.030785, 0.415561,
		36.480740, 33.530998, 27.905052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744732, 33.177174, 28.166498>,  <35.844410, 33.552547, 27.614161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744732, 33.177174, 28.166498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095844, 33.338795, 28.269447>,  <36.306511, 33.435768, 28.331217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095844, 33.338795, 28.269447>,  <35.744732, 33.177174, 28.166498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095844, 33.338795, 28.269447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369719, 0.229726, 0.900296,
		0.304645, -0.885418, 0.351036,
		0.877780, 0.404056, 0.257371,
		36.359180, 33.460011, 28.346659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981689, 32.760201, 28.673681>,  <35.744732, 33.177174, 28.166498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981689, 32.760201, 28.673681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.174778, 33.103516, 28.743341>,  <36.290630, 33.309505, 28.785137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.174778, 33.103516, 28.743341>,  <35.981689, 32.760201, 28.673681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174778, 33.103516, 28.743341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197834, -0.086845, 0.976381,
		0.853139, -0.505768, 0.127877,
		0.482717, 0.858287, 0.174149,
		36.319592, 33.361000, 28.795586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386738, 32.620609, 29.347073>,  <35.981689, 32.760201, 28.673681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386738, 32.620609, 29.347073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360302, 33.019257, 29.327515>,  <36.344440, 33.258446, 29.315779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360302, 33.019257, 29.327515>,  <36.386738, 32.620609, 29.347073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360302, 33.019257, 29.327515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008920, 0.048411, 0.998788,
		0.997774, 0.066442, 0.005690,
		-0.066086, 0.996615, -0.048896,
		36.340477, 33.318241, 29.312845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864330, 32.838844, 29.774719>,  <36.386738, 32.620609, 29.347073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864330, 32.838844, 29.774719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606010, 33.143452, 29.752708>,  <36.451019, 33.326218, 29.739502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606010, 33.143452, 29.752708>,  <36.864330, 32.838844, 29.774719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606010, 33.143452, 29.752708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023676, 0.092011, 0.995476,
		0.763139, 0.641577, -0.077451,
		-0.645801, 0.761520, -0.055027,
		36.412270, 33.371906, 29.736200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918137, 33.200420, 30.423273>,  <36.864330, 32.838844, 29.774719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918137, 33.200420, 30.423273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580318, 33.345074, 30.265303>,  <36.377628, 33.431866, 30.170521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580318, 33.345074, 30.265303>,  <36.918137, 33.200420, 30.423273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580318, 33.345074, 30.265303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416838, 0.018980, 0.908783,
		0.336138, 0.932129, 0.134711,
		-0.844546, 0.361629, -0.394927,
		36.326954, 33.453564, 30.146824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485611, 33.200729, 30.746235>,  <36.918137, 33.200420, 30.423273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485611, 33.200729, 30.746235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.621792, 33.154015, 31.119427>,  <37.703499, 33.125984, 31.343342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.621792, 33.154015, 31.119427>,  <37.485611, 33.200729, 30.746235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621792, 33.154015, 31.119427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595418, -0.741178, -0.310052,
		0.727716, 0.661071, -0.182797,
		0.340452, -0.116790, 0.932981,
		37.723927, 33.118977, 31.399321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177605, 33.337173, 30.776579>,  <37.485611, 33.200729, 30.746235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177605, 33.337173, 30.776579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037743, 33.065105, 31.034294>,  <37.953827, 32.901863, 31.188923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037743, 33.065105, 31.034294>,  <38.177605, 33.337173, 30.776579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037743, 33.065105, 31.034294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512013, -0.714644, -0.476577,
		0.784592, 0.163248, 0.598135,
		-0.349654, -0.680172, 0.644289,
		37.932846, 32.861053, 31.227581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865627, 33.662365, 30.628096>,  <38.177605, 33.337173, 30.776579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865627, 33.662365, 30.628096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085529, 33.446644, 30.372936>,  <39.217472, 33.317211, 30.219841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085529, 33.446644, 30.372936>,  <38.865627, 33.662365, 30.628096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085529, 33.446644, 30.372936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721196, 0.078874, -0.688227,
		0.421477, 0.838409, -0.345583,
		0.549758, -0.539304, -0.637900,
		39.250458, 33.284851, 30.181566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027702, 33.984612, 29.912947>,  <38.865627, 33.662365, 30.628096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027702, 33.984612, 29.912947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.393314, 33.906727, 30.055292>,  <39.612682, 33.859997, 30.140699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.393314, 33.906727, 30.055292>,  <39.027702, 33.984612, 29.912947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393314, 33.906727, 30.055292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403924, 0.517721, -0.754195,
		-0.037387, 0.833098, 0.551861,
		0.914028, -0.194712, 0.355864,
		39.667522, 33.848312, 30.162052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441643, 34.624405, 29.856667>,  <39.027702, 33.984612, 29.912947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441643, 34.624405, 29.856667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.656960, 34.289005, 29.822811>,  <39.786148, 34.087765, 29.802498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.656960, 34.289005, 29.822811>,  <39.441643, 34.624405, 29.856667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656960, 34.289005, 29.822811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384430, 0.333677, -0.860740,
		0.749970, 0.430792, 0.501960,
		0.538292, -0.838497, -0.084638,
		39.818447, 34.037457, 29.797421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058739, 34.860722, 29.544756>,  <39.441643, 34.624405, 29.856667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058739, 34.860722, 29.544756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.080704, 34.463528, 29.502859>,  <40.093884, 34.225212, 29.477720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.080704, 34.463528, 29.502859>,  <40.058739, 34.860722, 29.544756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080704, 34.463528, 29.502859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561782, 0.117446, -0.818907,
		0.825462, -0.013878, 0.564288,
		0.054908, -0.992982, -0.104744,
		40.097176, 34.165634, 29.471436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799053, 34.721760, 29.501482>,  <40.058739, 34.860722, 29.544756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799053, 34.721760, 29.501482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.567963, 34.441132, 29.334612>,  <40.429310, 34.272755, 29.234489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.567963, 34.441132, 29.334612>,  <40.799053, 34.721760, 29.501482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567963, 34.441132, 29.334612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438839, 0.163969, -0.883479,
		0.688227, -0.693478, 0.213148,
		-0.577724, -0.701571, -0.417173,
		40.394646, 34.230659, 29.209459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258469, 34.233063, 29.214861>,  <40.799053, 34.721760, 29.501482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258469, 34.233063, 29.214861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.917549, 34.162281, 29.017979>,  <40.712997, 34.119812, 28.899849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.917549, 34.162281, 29.017979>,  <41.258469, 34.233063, 29.214861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917549, 34.162281, 29.017979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519373, -0.174936, -0.836450,
		0.061913, -0.968547, 0.241006,
		-0.852302, -0.176959, -0.492206,
		40.661858, 34.109192, 28.870317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312737, 33.579296, 28.912294>,  <41.258469, 34.233063, 29.214861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312737, 33.579296, 28.912294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.032532, 33.757278, 28.689117>,  <40.864407, 33.864067, 28.555212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.032532, 33.757278, 28.689117>,  <41.312737, 33.579296, 28.912294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032532, 33.757278, 28.689117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526388, -0.205742, -0.824977,
		-0.481867, -0.871601, -0.090092,
		-0.700514, 0.444952, -0.557940,
		40.822376, 33.890762, 28.521736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082314, 33.152927, 28.359169>,  <41.312737, 33.579296, 28.912294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082314, 33.152927, 28.359169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.945827, 33.501270, 28.217644>,  <40.863934, 33.710274, 28.132729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.945827, 33.501270, 28.217644>,  <41.082314, 33.152927, 28.359169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945827, 33.501270, 28.217644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399735, -0.206239, -0.893128,
		-0.850753, -0.446184, -0.277738,
		-0.341219, 0.870853, -0.353814,
		40.843460, 33.762527, 28.111500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662983, 32.974396, 27.703203>,  <41.082314, 33.152927, 28.359169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662983, 32.974396, 27.703203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.805058, 33.348312, 27.704416>,  <40.890301, 33.572662, 27.705143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.805058, 33.348312, 27.704416>,  <40.662983, 32.974396, 27.703203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805058, 33.348312, 27.704416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370335, -0.137735, -0.918630,
		-0.858310, 0.327407, -0.395107,
		0.355186, 0.934791, 0.003031,
		40.911613, 33.628750, 27.705326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557060, 33.128628, 26.972673>,  <40.662983, 32.974396, 27.703203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557060, 33.128628, 26.972673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.799557, 33.418484, 27.103737>,  <40.945057, 33.592400, 27.182375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.799557, 33.418484, 27.103737>,  <40.557060, 33.128628, 26.972673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799557, 33.418484, 27.103737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465150, 0.011092, -0.885162,
		-0.645060, 0.689036, -0.330343,
		0.606245, 0.724642, 0.327660,
		40.981430, 33.635876, 27.202034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584084, 33.625801, 26.400229>,  <40.557060, 33.128628, 26.972673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584084, 33.625801, 26.400229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.907341, 33.701794, 26.623228>,  <41.101295, 33.747391, 26.757029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.907341, 33.701794, 26.623228>,  <40.584084, 33.625801, 26.400229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907341, 33.701794, 26.623228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584575, -0.143147, -0.798612,
		-0.071916, 0.971296, -0.226741,
		0.808146, 0.189980, 0.557501,
		41.149784, 33.758789, 26.790478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964386, 34.089432, 25.970407>,  <40.584084, 33.625801, 26.400229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964386, 34.089432, 25.970407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.239231, 33.940376, 26.219893>,  <41.404137, 33.850945, 26.369583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.239231, 33.940376, 26.219893>,  <40.964386, 34.089432, 25.970407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239231, 33.940376, 26.219893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622560, -0.140592, -0.769840,
		0.374559, 0.917266, 0.135385,
		0.687113, -0.372636, 0.623713,
		41.445366, 33.828587, 26.407007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572037, 34.406239, 25.730762>,  <40.964386, 34.089432, 25.970407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572037, 34.406239, 25.730762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.696411, 34.078110, 25.922756>,  <41.771034, 33.881233, 26.037952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.696411, 34.078110, 25.922756>,  <41.572037, 34.406239, 25.730762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696411, 34.078110, 25.922756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601349, -0.221276, -0.767735,
		0.736002, 0.527353, 0.424500,
		0.310936, -0.820326, 0.479983,
		41.789692, 33.832012, 26.066751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241695, 34.357613, 25.656488>,  <41.572037, 34.406239, 25.730762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241695, 34.357613, 25.656488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.163853, 33.978268, 25.756678>,  <42.117146, 33.750660, 25.816792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.163853, 33.978268, 25.756678>,  <42.241695, 34.357613, 25.656488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163853, 33.978268, 25.756678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677127, -0.314637, -0.665208,
		0.709667, 0.040148, 0.703393,
		-0.194606, -0.948363, 0.250472,
		42.105473, 33.693760, 25.831820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911255, 33.967724, 25.664474>,  <42.241695, 34.357613, 25.656488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911255, 33.967724, 25.664474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.642574, 33.674213, 25.623692>,  <42.481365, 33.498108, 25.599222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.642574, 33.674213, 25.623692>,  <42.911255, 33.967724, 25.664474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642574, 33.674213, 25.623692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545405, -0.396671, -0.738367,
		0.501350, -0.551570, 0.666648,
		-0.671700, -0.733773, -0.101958,
		42.441063, 33.454082, 25.593103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321064, 33.284504, 25.682085>,  <42.911255, 33.967724, 25.664474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321064, 33.284504, 25.682085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.976318, 33.199413, 25.497938>,  <42.769470, 33.148361, 25.387449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.976318, 33.199413, 25.497938>,  <43.321064, 33.284504, 25.682085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976318, 33.199413, 25.497938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497210, -0.533189, -0.684465,
		-0.099861, -0.818815, 0.565305,
		-0.861864, -0.212724, -0.460368,
		42.717758, 33.135597, 25.359827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297031, 32.597862, 25.622122>,  <43.321064, 33.284504, 25.682085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297031, 32.597862, 25.622122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.067715, 32.760796, 25.337751>,  <42.930122, 32.858555, 25.167130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.067715, 32.760796, 25.337751>,  <43.297031, 32.597862, 25.622122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067715, 32.760796, 25.337751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452879, -0.565549, -0.689242,
		-0.682815, -0.717101, 0.139753,
		-0.573293, 0.407334, -0.710925,
		42.895725, 32.882996, 25.124474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213123, 32.033936, 25.149105>,  <43.297031, 32.597862, 25.622122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213123, 32.033936, 25.149105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.122295, 32.370792, 24.953459>,  <43.067799, 32.572906, 24.836071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.122295, 32.370792, 24.953459>,  <43.213123, 32.033936, 25.149105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122295, 32.370792, 24.953459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366367, -0.391471, -0.844112,
		-0.902337, -0.370871, -0.219641,
		-0.227073, 0.842143, -0.489114,
		43.054173, 32.623436, 24.806725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815716, 31.820498, 24.648151>,  <43.213123, 32.033936, 25.149105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815716, 31.820498, 24.648151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.903221, 32.185192, 24.509081>,  <42.955727, 32.404007, 24.425638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.903221, 32.185192, 24.509081>,  <42.815716, 31.820498, 24.648151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903221, 32.185192, 24.509081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333887, -0.404741, -0.851295,
		-0.916875, 0.070152, -0.392961,
		0.218767, 0.911736, -0.347675,
		42.968853, 32.458714, 24.404778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617214, 31.850864, 23.984104>,  <42.815716, 31.820498, 24.648151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617214, 31.850864, 23.984104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.904243, 32.128578, 24.006199>,  <43.076462, 32.295208, 24.019455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.904243, 32.128578, 24.006199>,  <42.617214, 31.850864, 23.984104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904243, 32.128578, 24.006199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346508, -0.287085, -0.893037,
		-0.604164, 0.659963, -0.446581,
		0.717578, 0.694285, 0.055235,
		43.119518, 32.336864, 24.022770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704964, 32.116516, 23.244543>,  <42.617214, 31.850864, 23.984104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704964, 32.116516, 23.244543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.038280, 32.229084, 23.434877>,  <43.238270, 32.296627, 23.549078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.038280, 32.229084, 23.434877>,  <42.704964, 32.116516, 23.244543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038280, 32.229084, 23.434877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517448, -0.094074, -0.850528,
		-0.194595, 0.954961, -0.224014,
		0.833295, 0.281424, 0.475836,
		43.288269, 32.313511, 23.577629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077286, 32.492886, 22.751968>,  <42.704964, 32.116516, 23.244543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077286, 32.492886, 22.751968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.361996, 32.423485, 23.024227>,  <43.532822, 32.381844, 23.187582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.361996, 32.423485, 23.024227>,  <43.077286, 32.492886, 22.751968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361996, 32.423485, 23.024227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690299, -0.006380, -0.723496,
		0.129869, 0.984813, 0.115225,
		0.711773, -0.173500, 0.680645,
		43.575527, 32.371433, 23.228420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708893, 33.073193, 22.719561>,  <43.077286, 32.492886, 22.751968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708893, 33.073193, 22.719561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.822880, 32.726086, 22.882423>,  <43.891270, 32.517822, 22.980141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.822880, 32.726086, 22.882423>,  <43.708893, 33.073193, 22.719561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822880, 32.726086, 22.882423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711185, -0.093382, -0.696775,
		0.642660, 0.488117, 0.590533,
		0.284963, -0.867768, 0.407155,
		43.908367, 32.465755, 23.004570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465370, 33.034679, 22.758009>,  <43.708893, 33.073193, 22.719561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465370, 33.034679, 22.758009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.381832, 32.645588, 22.798393>,  <44.331711, 32.412132, 22.822624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.381832, 32.645588, 22.798393>,  <44.465370, 33.034679, 22.758009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381832, 32.645588, 22.798393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712156, -0.222022, -0.665988,
		0.670238, -0.067186, 0.739098,
		-0.208841, -0.972724, 0.100961,
		44.319180, 32.353771, 22.828682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130474, 32.711380, 23.109093>,  <44.465370, 33.034679, 22.758009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130474, 32.711380, 23.109093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.911831, 32.449203, 22.900621>,  <44.780647, 32.291897, 22.775539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.911831, 32.449203, 22.900621>,  <45.130474, 32.711380, 23.109093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911831, 32.449203, 22.900621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819348, -0.290110, -0.494476,
		0.172900, -0.697307, 0.695607,
		-0.546604, -0.655439, -0.521177,
		44.747849, 32.252571, 22.744268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719139, 32.325966, 22.881203>,  <45.130474, 32.711380, 23.109093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719139, 32.325966, 22.881203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.390244, 32.217762, 22.680906>,  <45.192905, 32.152840, 22.560728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.390244, 32.217762, 22.680906>,  <45.719139, 32.325966, 22.881203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390244, 32.217762, 22.680906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563390, -0.262111, -0.783511,
		0.080701, -0.926348, 0.367923,
		-0.822240, -0.270514, -0.500742,
		45.143570, 32.136608, 22.530684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925781, 31.644028, 22.609837>,  <45.719139, 32.325966, 22.881203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925781, 31.644028, 22.609837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.626232, 31.773630, 22.378592>,  <45.446503, 31.851391, 22.239843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.626232, 31.773630, 22.378592>,  <45.925781, 31.644028, 22.609837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626232, 31.773630, 22.378592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516897, -0.260363, -0.815493,
		-0.414745, -0.909522, 0.027500,
		-0.748869, 0.324007, -0.578114,
		45.401573, 31.870832, 22.205158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936684, 30.835299, 22.726265>,  <45.925781, 31.644028, 22.609837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936684, 30.835299, 22.726265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.882771, 30.441332, 22.769663>,  <45.850422, 30.204952, 22.795702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.882771, 30.441332, 22.769663>,  <45.936684, 30.835299, 22.726265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882771, 30.441332, 22.769663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384304, 0.152883, 0.910460,
		-0.913315, 0.081021, -0.399114,
		-0.134784, -0.984917, 0.108494,
		45.842335, 30.145857, 22.802212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231491, 30.612589, 22.752594>,  <45.936684, 30.835299, 22.726265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231491, 30.612589, 22.752594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.445412, 30.354706, 22.971077>,  <45.573765, 30.199976, 23.102167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.445412, 30.354706, 22.971077>,  <45.231491, 30.612589, 22.752594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.445412, 30.354706, 22.971077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551545, 0.223371, 0.803681,
		-0.640146, -0.731066, -0.236126,
		0.534800, -0.644708, 0.546205,
		45.605850, 30.161293, 23.134939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721096, 30.418417, 23.378151>,  <45.231491, 30.612589, 22.752594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721096, 30.418417, 23.378151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.086243, 30.296089, 23.486341>,  <45.305328, 30.222692, 23.551256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.086243, 30.296089, 23.486341>,  <44.721096, 30.418417, 23.378151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086243, 30.296089, 23.486341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288254, -0.013628, 0.957457,
		-0.289122, -0.951992, -0.100594,
		0.912863, -0.305818, 0.270476,
		45.360100, 30.204344, 23.567484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647751, 29.842215, 23.829159>,  <44.721096, 30.418417, 23.378151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647751, 29.842215, 23.829159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.015774, 29.972456, 23.916309>,  <45.236588, 30.050600, 23.968599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.015774, 29.972456, 23.916309>,  <44.647751, 29.842215, 23.829159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015774, 29.972456, 23.916309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278583, 0.152713, 0.948193,
		0.275463, -0.933092, 0.231213,
		0.920061, 0.325605, 0.217876,
		45.291794, 30.070137, 23.981672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970863, 29.429413, 24.408384>,  <44.647751, 29.842215, 23.829159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970863, 29.429413, 24.408384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.133488, 29.794640, 24.395611>,  <45.231060, 30.013775, 24.387947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.133488, 29.794640, 24.395611>,  <44.970863, 29.429413, 24.408384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133488, 29.794640, 24.395611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445443, 0.228615, 0.865630,
		0.797680, -0.337703, 0.499664,
		0.406556, 0.913067, -0.031934,
		45.255455, 30.068560, 24.386030>
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
