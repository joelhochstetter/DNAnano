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
	<24.390268, 34.828491, 35.518646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358248, 34.853748, 35.120731>,  <24.339035, 34.868904, 34.881981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358248, 34.853748, 35.120731>,  <24.390268, 34.828491, 35.518646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358248, 34.853748, 35.120731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728572, -0.677388, -0.101626,
		-0.680275, -0.732911, 0.008219,
		-0.080051, 0.063145, -0.994789,
		24.334232, 34.872692, 34.822296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.307211, 34.144428, 35.118908>,  <24.390268, 34.828491, 35.518646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.307211, 34.144428, 35.118908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485361, 34.416653, 34.886192>,  <24.592251, 34.579987, 34.746563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485361, 34.416653, 34.886192>,  <24.307211, 34.144428, 35.118908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485361, 34.416653, 34.886192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762457, -0.628928, -0.152018,
		-0.469361, -0.375884, -0.799007,
		0.445376, 0.680559, -0.581789,
		24.618975, 34.620819, 34.711655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867611, 33.707867, 34.875835>,  <24.307211, 34.144428, 35.118908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867611, 33.707867, 34.875835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924585, 34.085072, 34.755543>,  <24.958771, 34.311394, 34.683365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924585, 34.085072, 34.755543>,  <24.867611, 33.707867, 34.875835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924585, 34.085072, 34.755543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973015, -0.189124, -0.132189,
		-0.181532, -0.273790, -0.944503,
		0.142436, 0.943012, -0.300734,
		24.967316, 34.367973, 34.665321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125418, 33.605835, 34.168812>,  <24.867611, 33.707867, 34.875835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125418, 33.605835, 34.168812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233078, 33.936375, 34.366684>,  <25.297674, 34.134697, 34.485405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233078, 33.936375, 34.366684>,  <25.125418, 33.605835, 34.168812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233078, 33.936375, 34.366684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962888, -0.220166, -0.156120,
		-0.020099, 0.518338, -0.854940,
		0.269152, 0.826349, 0.494676,
		25.313824, 34.184280, 34.515087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771160, 33.929085, 33.793022>,  <25.125418, 33.605835, 34.168812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771160, 33.929085, 33.793022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736706, 33.957344, 34.190533>,  <25.716034, 33.974300, 34.429039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736706, 33.957344, 34.190533>,  <25.771160, 33.929085, 33.793022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736706, 33.957344, 34.190533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949346, -0.296739, 0.103380,
		0.302195, 0.952342, -0.041508,
		-0.086136, 0.070647, 0.993775,
		25.710865, 33.978539, 34.488667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017389, 34.509094, 34.097168>,  <25.771160, 33.929085, 33.793022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017389, 34.509094, 34.097168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042408, 34.179775, 34.322826>,  <26.057419, 33.982182, 34.458221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042408, 34.179775, 34.322826>,  <26.017389, 34.509094, 34.097168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042408, 34.179775, 34.322826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996487, 0.083061, 0.010739,
		-0.055700, 0.561496, 0.825603,
		0.062545, -0.823300, 0.564150,
		26.061171, 33.932785, 34.492073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113472, 34.974140, 34.655148>,  <26.017389, 34.509094, 34.097168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113472, 34.974140, 34.655148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457050, 35.136169, 34.780449>,  <26.663197, 35.233387, 34.855629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457050, 35.136169, 34.780449>,  <26.113472, 34.974140, 34.655148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457050, 35.136169, 34.780449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377593, 0.914249, -0.146873,
		-0.345885, 0.007875, 0.938244,
		0.858945, 0.405076, 0.313251,
		26.714733, 35.257690, 34.874424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984346, 35.509575, 35.148685>,  <26.113472, 34.974140, 34.655148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984346, 35.509575, 35.148685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335598, 35.586781, 34.973579>,  <26.546349, 35.633102, 34.868515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335598, 35.586781, 34.973579>,  <25.984346, 35.509575, 35.148685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335598, 35.586781, 34.973579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253194, 0.963855, -0.082927,
		0.405937, 0.183660, 0.895256,
		0.878128, 0.193010, -0.437766,
		26.599037, 35.644684, 34.842251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143444, 36.139057, 35.372513>,  <25.984346, 35.509575, 35.148685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143444, 36.139057, 35.372513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373320, 36.088760, 35.049049>,  <26.511246, 36.058582, 34.854973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373320, 36.088760, 35.049049>,  <26.143444, 36.139057, 35.372513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373320, 36.088760, 35.049049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009626, 0.989096, -0.146955,
		0.818315, 0.076669, 0.569633,
		0.574689, -0.125739, -0.808655,
		26.545727, 36.051041, 34.806454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800684, 36.592621, 35.419346>,  <26.143444, 36.139057, 35.372513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800684, 36.592621, 35.419346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723194, 36.502899, 35.037319>,  <26.676701, 36.449066, 34.808102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723194, 36.502899, 35.037319>,  <26.800684, 36.592621, 35.419346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723194, 36.502899, 35.037319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034089, 0.971385, -0.235051,
		0.980464, -0.078091, -0.180532,
		-0.193721, -0.224305, -0.955070,
		26.665077, 36.435608, 34.750797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236818, 36.912685, 35.013374>,  <26.800684, 36.592621, 35.419346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236818, 36.912685, 35.013374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946012, 36.827534, 34.752258>,  <26.771530, 36.776443, 34.595589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946012, 36.827534, 34.752258>,  <27.236818, 36.912685, 35.013374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946012, 36.827534, 34.752258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103874, 0.973882, -0.201901,
		0.678721, -0.078977, -0.730137,
		-0.727013, -0.212876, -0.652791,
		26.727909, 36.763672, 34.556419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385778, 37.378735, 34.522789>,  <27.236818, 36.912685, 35.013374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385778, 37.378735, 34.522789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016298, 37.256721, 34.430065>,  <26.794611, 37.183514, 34.374432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016298, 37.256721, 34.430065>,  <27.385778, 37.378735, 34.522789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016298, 37.256721, 34.430065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260407, 0.943678, -0.204106,
		0.281014, -0.128167, -0.951107,
		-0.923699, -0.305031, -0.231812,
		26.739189, 37.165211, 34.360523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307955, 37.545845, 33.867542>,  <27.385778, 37.378735, 34.522789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307955, 37.545845, 33.867542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934046, 37.496815, 34.000912>,  <26.709700, 37.467396, 34.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934046, 37.496815, 34.000912>,  <27.307955, 37.545845, 33.867542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934046, 37.496815, 34.000912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222775, 0.933361, -0.281440,
		-0.276712, -0.337362, -0.899787,
		-0.934774, -0.122572, 0.333428,
		26.653614, 37.460045, 34.100941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846994, 37.767036, 33.280991>,  <27.307955, 37.545845, 33.867542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846994, 37.767036, 33.280991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650078, 37.808651, 33.626667>,  <26.531927, 37.833618, 33.834072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650078, 37.808651, 33.626667>,  <26.846994, 37.767036, 33.280991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650078, 37.808651, 33.626667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302660, 0.910422, -0.282010,
		-0.816116, -0.400387, -0.416708,
		-0.492293, 0.104032, 0.864190,
		26.502390, 37.839859, 33.885925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272480, 37.903027, 33.090229>,  <26.846994, 37.767036, 33.280991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272480, 37.903027, 33.090229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256506, 38.063000, 33.456497>,  <26.246922, 38.158985, 33.676258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256506, 38.063000, 33.456497>,  <26.272480, 37.903027, 33.090229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256506, 38.063000, 33.456497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348321, 0.853349, -0.387902,
		-0.936524, -0.334439, 0.105228,
		-0.039934, 0.399933, 0.915674,
		26.244526, 38.182980, 33.731201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644039, 38.279694, 33.021484>,  <26.272480, 37.903027, 33.090229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644039, 38.279694, 33.021484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831541, 38.408268, 33.350594>,  <25.944042, 38.485413, 33.548058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831541, 38.408268, 33.350594>,  <25.644039, 38.279694, 33.021484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831541, 38.408268, 33.350594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392205, 0.910330, -0.132188,
		-0.791481, -0.260730, 0.552790,
		0.468756, 0.321432, 0.822769,
		25.972168, 38.504696, 33.597424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162502, 38.531193, 33.537048>,  <25.644039, 38.279694, 33.021484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162502, 38.531193, 33.537048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502890, 38.725159, 33.617756>,  <25.707123, 38.841537, 33.666180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502890, 38.725159, 33.617756>,  <25.162502, 38.531193, 33.537048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502890, 38.725159, 33.617756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465909, 0.874290, -0.136184,
		-0.242443, 0.021882, 0.969919,
		0.850971, 0.484910, 0.201770,
		25.758181, 38.870632, 33.678288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.961603, 39.122433, 33.983753>,  <25.162502, 38.531193, 33.537048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.961603, 39.122433, 33.983753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318720, 39.199417, 33.820839>,  <25.532990, 39.245609, 33.723091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318720, 39.199417, 33.820839>,  <24.961603, 39.122433, 33.983753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318720, 39.199417, 33.820839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216888, 0.976093, -0.014176,
		0.394822, 0.100992, 0.913190,
		0.892791, 0.192463, -0.407287,
		25.586557, 39.257156, 33.698654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187998, 39.639820, 34.336983>,  <24.961603, 39.122433, 33.983753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187998, 39.639820, 34.336983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457199, 39.641586, 34.041134>,  <25.618721, 39.642647, 33.863625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457199, 39.641586, 34.041134>,  <25.187998, 39.639820, 34.336983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457199, 39.641586, 34.041134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200218, 0.963734, -0.176436,
		0.712023, 0.266829, 0.649482,
		0.673006, 0.004412, -0.739624,
		25.659101, 39.642910, 33.819248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663935, 40.174274, 34.483093>,  <25.187998, 39.639820, 34.336983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663935, 40.174274, 34.483093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677649, 40.105347, 34.089317>,  <25.685877, 40.063992, 33.853050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677649, 40.105347, 34.089317>,  <25.663935, 40.174274, 34.483093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677649, 40.105347, 34.089317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351653, 0.919954, -0.173276,
		0.935502, 0.352123, -0.029058,
		0.034283, -0.172318, -0.984445,
		25.687933, 40.053650, 33.793983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877495, 40.818417, 34.249855>,  <25.663935, 40.174274, 34.483093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877495, 40.818417, 34.249855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769825, 40.645603, 33.905556>,  <25.705223, 40.541916, 33.698975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769825, 40.645603, 33.905556>,  <25.877495, 40.818417, 34.249855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769825, 40.645603, 33.905556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383248, 0.867978, -0.315809,
		0.883553, 0.244875, -0.399211,
		-0.269173, -0.432031, -0.860753,
		25.689072, 40.515995, 33.647331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180189, 41.259495, 33.666470>,  <25.877495, 40.818417, 34.249855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180189, 41.259495, 33.666470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860727, 41.069489, 33.518684>,  <25.669050, 40.955482, 33.430012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860727, 41.069489, 33.518684>,  <26.180189, 41.259495, 33.666470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860727, 41.069489, 33.518684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388487, 0.875848, -0.286300,
		0.459592, -0.085124, -0.884042,
		-0.798657, -0.475020, -0.369463,
		25.621130, 40.926983, 33.407845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050823, 41.534382, 32.930786>,  <26.180189, 41.259495, 33.666470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050823, 41.534382, 32.930786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708651, 41.363815, 33.048370>,  <25.503347, 41.261475, 33.118919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708651, 41.363815, 33.048370>,  <26.050823, 41.534382, 32.930786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708651, 41.363815, 33.048370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507382, 0.803862, -0.310434,
		-0.103928, -0.414703, -0.904002,
		-0.855431, -0.426412, 0.293957,
		25.452021, 41.235893, 33.136559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684584, 41.590462, 32.347160>,  <26.050823, 41.534382, 32.930786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684584, 41.590462, 32.347160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429993, 41.538284, 32.651234>,  <25.277237, 41.506977, 32.833679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429993, 41.538284, 32.651234>,  <25.684584, 41.590462, 32.347160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429993, 41.538284, 32.651234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620976, 0.671247, -0.404742,
		-0.457475, -0.729666, -0.508237,
		-0.636479, -0.130444, 0.760184,
		25.239050, 41.499149, 32.879288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.159199, 41.445515, 32.005016>,  <25.684584, 41.590462, 32.347160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.159199, 41.445515, 32.005016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066332, 41.609547, 32.357819>,  <25.010611, 41.707966, 32.569500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066332, 41.609547, 32.357819>,  <25.159199, 41.445515, 32.005016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066332, 41.609547, 32.357819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482528, 0.738777, -0.470505,
		-0.844550, -0.534828, 0.026355,
		-0.232169, 0.410082, 0.882004,
		24.996681, 41.732571, 32.622421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.495504, 41.710922, 32.005405>,  <25.159199, 41.445515, 32.005016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.495504, 41.710922, 32.005405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.626402, 41.945381, 32.301876>,  <24.704941, 42.086056, 32.479759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.626402, 41.945381, 32.301876>,  <24.495504, 41.710922, 32.005405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.626402, 41.945381, 32.301876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462590, 0.783323, -0.415230,
		-0.823967, -0.206980, 0.527483,
		0.327245, 0.586144, 0.741179,
		24.724575, 42.121223, 32.524231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983644, 42.012966, 32.487545>,  <24.495504, 41.710922, 32.005405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.983644, 42.012966, 32.487545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285194, 42.275097, 32.468723>,  <24.466125, 42.432377, 32.457432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285194, 42.275097, 32.468723>,  <23.983644, 42.012966, 32.487545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.285194, 42.275097, 32.468723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598447, 0.655351, -0.460843,
		-0.271170, 0.375575, 0.886234,
		0.753876, 0.655331, -0.047050,
		24.511356, 42.471695, 32.454609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.308962, 42.498020, 32.895679>,  <23.983644, 42.012966, 32.487545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.308962, 42.498020, 32.895679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290089, 42.832130, 32.676559>,  <24.278765, 43.032597, 32.545086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290089, 42.832130, 32.676559>,  <24.308962, 42.498020, 32.895679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.290089, 42.832130, 32.676559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504515, 0.453395, 0.734778,
		0.862113, 0.311043, 0.400017,
		-0.047182, 0.835276, -0.547803,
		24.275934, 43.082714, 32.512218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.453684, 43.006203, 33.352146>,  <24.308962, 42.498020, 32.895679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.453684, 43.006203, 33.352146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285360, 43.179096, 33.033123>,  <24.184366, 43.282833, 32.841709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285360, 43.179096, 33.033123>,  <24.453684, 43.006203, 33.352146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.285360, 43.179096, 33.033123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479756, 0.640137, 0.600049,
		0.769905, 0.635139, -0.062010,
		-0.420810, 0.432231, -0.797556,
		24.159117, 43.308765, 32.793858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596384, 43.797031, 33.595749>,  <24.453684, 43.006203, 33.352146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596384, 43.797031, 33.595749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314554, 43.733654, 33.319061>,  <24.145456, 43.695629, 33.153049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314554, 43.733654, 33.319061>,  <24.596384, 43.797031, 33.595749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.314554, 43.733654, 33.319061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557422, 0.726798, 0.401305,
		0.439155, 0.668327, -0.600401,
		-0.704573, -0.158442, -0.691717,
		24.103182, 43.686123, 33.111546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150621, 43.521442, 34.101898>,  <24.596384, 43.797031, 33.595749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150621, 43.521442, 34.101898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958300, 43.619080, 34.438766>,  <24.842907, 43.677662, 34.640888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958300, 43.619080, 34.438766>,  <25.150621, 43.521442, 34.101898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958300, 43.619080, 34.438766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797614, -0.277181, 0.535708,
		0.364195, 0.929295, -0.061423,
		-0.480805, 0.244094, 0.842167,
		24.814058, 43.692307, 34.691418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379793, 44.110622, 34.419144>,  <25.150621, 43.521442, 34.101898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379793, 44.110622, 34.419144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239336, 43.894627, 34.725113>,  <25.155062, 43.765030, 34.908695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239336, 43.894627, 34.725113>,  <25.379793, 44.110622, 34.419144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239336, 43.894627, 34.725113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927774, -0.090531, 0.361993,
		-0.126223, 0.836788, 0.532778,
		-0.351144, -0.539990, 0.764924,
		25.133993, 43.732628, 34.954590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747549, 44.223186, 35.091629>,  <25.379793, 44.110622, 34.419144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747549, 44.223186, 35.091629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607477, 43.849438, 35.117939>,  <25.523434, 43.625191, 35.133724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607477, 43.849438, 35.117939>,  <25.747549, 44.223186, 35.091629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607477, 43.849438, 35.117939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869917, -0.298383, 0.392699,
		-0.347301, 0.194732, 0.917312,
		-0.350181, -0.934370, 0.065772,
		25.502422, 43.569126, 35.137672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856844, 43.909473, 35.741154>,  <25.747549, 44.223186, 35.091629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856844, 43.909473, 35.741154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863676, 43.620956, 35.464184>,  <25.867775, 43.447845, 35.298004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863676, 43.620956, 35.464184>,  <25.856844, 43.909473, 35.741154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863676, 43.620956, 35.464184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844736, -0.360080, 0.395932,
		-0.534909, -0.591678, 0.603149,
		0.017082, -0.721290, -0.692423,
		25.868801, 43.404568, 35.256458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519175, 43.631355, 35.921429>,  <25.856844, 43.909473, 35.741154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519175, 43.631355, 35.921429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403824, 43.433865, 35.593266>,  <26.334614, 43.315372, 35.396366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403824, 43.433865, 35.593266>,  <26.519175, 43.631355, 35.921429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403824, 43.433865, 35.593266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871376, -0.490490, -0.011113,
		-0.396917, -0.718093, 0.571664,
		-0.288376, -0.493723, -0.820412,
		26.317310, 43.285748, 35.347141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872265, 44.322918, 36.032310>,  <26.519175, 43.631355, 35.921429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872265, 44.322918, 36.032310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634577, 44.283863, 36.351650>,  <26.491964, 44.260429, 36.543255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634577, 44.283863, 36.351650>,  <26.872265, 44.322918, 36.032310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634577, 44.283863, 36.351650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242430, -0.968184, 0.062032,
		0.766895, 0.230405, 0.598987,
		-0.594222, -0.097640, 0.798353,
		26.456310, 44.254570, 36.591156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294043, 44.143646, 36.623245>,  <26.872265, 44.322918, 36.032310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294043, 44.143646, 36.623245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922098, 44.000690, 36.658188>,  <26.698931, 43.914917, 36.679153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922098, 44.000690, 36.658188>,  <27.294043, 44.143646, 36.623245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922098, 44.000690, 36.658188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366729, -0.881342, 0.297902,
		-0.029477, 0.309043, 0.950591,
		-0.929861, -0.357390, 0.087356,
		26.643141, 43.893475, 36.684395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322788, 43.690159, 37.209629>,  <27.294043, 44.143646, 36.623245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322788, 43.690159, 37.209629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986683, 43.590809, 37.016853>,  <26.785021, 43.531200, 36.901188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986683, 43.590809, 37.016853>,  <27.322788, 43.690159, 37.209629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986683, 43.590809, 37.016853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235252, -0.967883, 0.088653,
		-0.488483, -0.038887, 0.871706,
		-0.840262, -0.248376, -0.481943,
		26.734604, 43.516296, 36.872269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147215, 43.110542, 37.530289>,  <27.322788, 43.690159, 37.209629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147215, 43.110542, 37.530289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894167, 43.088165, 37.221313>,  <26.742338, 43.074738, 37.035927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894167, 43.088165, 37.221313>,  <27.147215, 43.110542, 37.530289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894167, 43.088165, 37.221313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031821, -0.998423, 0.046248,
		-0.773809, 0.004678, 0.633402,
		-0.632620, -0.055942, -0.772440,
		26.704382, 43.071384, 36.989582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694248, 42.587921, 37.749359>,  <27.147215, 43.110542, 37.530289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694248, 42.587921, 37.749359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675114, 42.625210, 37.351562>,  <26.663633, 42.647583, 37.112885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675114, 42.625210, 37.351562>,  <26.694248, 42.587921, 37.749359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675114, 42.625210, 37.351562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039376, -0.994686, -0.095133,
		-0.998079, -0.043710, 0.043911,
		-0.047836, 0.093221, -0.994495,
		26.660763, 42.653175, 37.053215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236139, 42.096420, 37.507862>,  <26.694248, 42.587921, 37.749359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236139, 42.096420, 37.507862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457537, 42.200592, 37.191425>,  <26.590376, 42.263096, 37.001564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457537, 42.200592, 37.191425>,  <26.236139, 42.096420, 37.507862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457537, 42.200592, 37.191425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200853, -0.963557, -0.176678,
		-0.808271, -0.061102, -0.585632,
		0.553495, 0.260429, -0.791088,
		26.623585, 42.278721, 36.954098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141174, 41.457512, 37.116615>,  <26.236139, 42.096420, 37.507862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141174, 41.457512, 37.116615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461035, 41.645546, 36.967175>,  <26.652952, 41.758366, 36.877510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461035, 41.645546, 36.967175>,  <26.141174, 41.457512, 37.116615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461035, 41.645546, 36.967175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474277, -0.876052, -0.087150,
		-0.368261, -0.107500, -0.923487,
		0.799653, 0.470082, -0.373600,
		26.700932, 41.786572, 36.855095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126802, 41.200043, 36.458012>,  <26.141174, 41.457512, 37.116615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126802, 41.200043, 36.458012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494865, 41.320457, 36.558163>,  <26.715702, 41.392708, 36.618252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494865, 41.320457, 36.558163>,  <26.126802, 41.200043, 36.458012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494865, 41.320457, 36.558163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348474, -0.921202, -0.173071,
		0.178544, 0.246501, -0.952554,
		0.920157, 0.301039, 0.250375,
		26.770912, 41.410770, 36.633274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541849, 40.785648, 36.064472>,  <26.126802, 41.200043, 36.458012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541849, 40.785648, 36.064472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816900, 40.958443, 36.297901>,  <26.981932, 41.062119, 36.437958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816900, 40.958443, 36.297901>,  <26.541849, 40.785648, 36.064472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816900, 40.958443, 36.297901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557514, -0.829041, -0.043233,
		0.465129, 0.355078, -0.810910,
		0.687629, 0.431985, 0.583572,
		27.023190, 41.088039, 36.472973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252760, 40.697117, 35.711796>,  <26.541849, 40.785648, 36.064472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252760, 40.697117, 35.711796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317032, 40.732216, 36.105034>,  <27.355595, 40.753277, 36.340977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317032, 40.732216, 36.105034>,  <27.252760, 40.697117, 35.711796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317032, 40.732216, 36.105034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694299, -0.717990, -0.049391,
		0.701520, 0.690500, -0.176292,
		0.160680, 0.087751, 0.983098,
		27.365236, 40.758541, 36.399963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058426, 40.731354, 35.746078>,  <27.252760, 40.697117, 35.711796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058426, 40.731354, 35.746078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891071, 40.619877, 36.091862>,  <27.790659, 40.552990, 36.299332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891071, 40.619877, 36.091862>,  <28.058426, 40.731354, 35.746078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891071, 40.619877, 36.091862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622468, -0.781081, 0.049449,
		0.661428, 0.558784, 0.500273,
		-0.418385, -0.278697, 0.864455,
		27.765556, 40.536266, 36.351196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616131, 40.557514, 36.143101>,  <28.058426, 40.731354, 35.746078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616131, 40.557514, 36.143101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306135, 40.358837, 36.299404>,  <28.120138, 40.239632, 36.393185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306135, 40.358837, 36.299404>,  <28.616131, 40.557514, 36.143101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306135, 40.358837, 36.299404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554917, -0.830706, 0.044666,
		0.302421, 0.251455, 0.919409,
		-0.774989, -0.496688, 0.390760,
		28.073639, 40.209831, 36.416634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932663, 39.971363, 36.502987>,  <28.616131, 40.557514, 36.143101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932663, 39.971363, 36.502987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556995, 39.838177, 36.536686>,  <28.331594, 39.758263, 36.556908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556995, 39.838177, 36.536686>,  <28.932663, 39.971363, 36.502987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556995, 39.838177, 36.536686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328093, -0.942289, -0.066683,
		0.101593, -0.034984, 0.994211,
		-0.939167, -0.332968, 0.084252,
		28.275246, 39.738285, 36.561962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825514, 39.581116, 37.114784>,  <28.932663, 39.971363, 36.502987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825514, 39.581116, 37.114784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564085, 39.448902, 36.842434>,  <28.407228, 39.369576, 36.679024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564085, 39.448902, 36.842434>,  <28.825514, 39.581116, 37.114784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564085, 39.448902, 36.842434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476894, -0.878401, -0.031350,
		-0.587722, -0.345197, 0.731725,
		-0.653571, -0.330530, -0.680878,
		28.368013, 39.349743, 36.638172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722324, 38.853317, 37.255600>,  <28.825514, 39.581116, 37.114784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722324, 38.853317, 37.255600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591040, 38.900200, 36.880680>,  <28.512268, 38.928329, 36.655727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591040, 38.900200, 36.880680>,  <28.722324, 38.853317, 37.255600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591040, 38.900200, 36.880680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482429, -0.832303, -0.273010,
		-0.812120, -0.541788, 0.216626,
		-0.328212, 0.117210, -0.937304,
		28.492577, 38.935364, 36.599487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661995, 38.184082, 37.014061>,  <28.722324, 38.853317, 37.255600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661995, 38.184082, 37.014061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647139, 38.371689, 36.661098>,  <28.638226, 38.484253, 36.449322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647139, 38.371689, 36.661098>,  <28.661995, 38.184082, 37.014061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647139, 38.371689, 36.661098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311807, -0.833493, -0.456141,
		-0.949419, -0.292083, -0.115286,
		-0.037141, 0.469016, -0.882408,
		28.635996, 38.512394, 36.396378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164431, 37.831966, 36.608398>,  <28.661995, 38.184082, 37.014061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164431, 37.831966, 36.608398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400530, 38.031254, 36.354347>,  <28.542189, 38.150826, 36.201916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400530, 38.031254, 36.354347>,  <28.164431, 37.831966, 36.608398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400530, 38.031254, 36.354347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180647, -0.848373, -0.497624,
		-0.786750, 0.178987, -0.590752,
		0.590246, 0.498223, -0.635125,
		28.577604, 38.180721, 36.163811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888731, 37.672817, 35.881626>,  <28.164431, 37.831966, 36.608398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888731, 37.672817, 35.881626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264854, 37.801811, 35.838142>,  <28.490528, 37.879208, 35.812050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264854, 37.801811, 35.838142>,  <27.888731, 37.672817, 35.881626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264854, 37.801811, 35.838142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187826, -0.758164, -0.624427,
		-0.283793, 0.566735, -0.773480,
		0.940310, 0.322488, -0.108714,
		28.546947, 37.898560, 35.805527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991209, 37.652519, 35.123013>,  <27.888731, 37.672817, 35.881626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991209, 37.652519, 35.123013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360800, 37.661640, 35.275723>,  <28.582554, 37.667114, 35.367348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360800, 37.661640, 35.275723>,  <27.991209, 37.652519, 35.123013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360800, 37.661640, 35.275723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308053, -0.635961, -0.707571,
		0.226658, 0.771384, -0.594637,
		0.923975, 0.022803, 0.381773,
		28.637993, 37.668480, 35.390255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328163, 37.821705, 34.567432>,  <27.991209, 37.652519, 35.123013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328163, 37.821705, 34.567432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582293, 37.663353, 34.832653>,  <28.734770, 37.568340, 34.991787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582293, 37.663353, 34.832653>,  <28.328163, 37.821705, 34.567432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582293, 37.663353, 34.832653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227739, -0.724373, -0.650706,
		0.737903, 0.564412, -0.370053,
		0.635322, -0.395882, 0.663056,
		28.772890, 37.544590, 35.031570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912333, 37.730175, 34.129963>,  <28.328163, 37.821705, 34.567432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912333, 37.730175, 34.129963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993233, 37.480515, 34.431831>,  <29.041773, 37.330719, 34.612953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993233, 37.480515, 34.431831>,  <28.912333, 37.730175, 34.129963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993233, 37.480515, 34.431831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160831, -0.738965, -0.654266,
		0.966038, 0.253699, -0.049072,
		0.202249, -0.624153, 0.754671,
		29.053907, 37.293270, 34.658234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467480, 37.460381, 33.937710>,  <28.912333, 37.730175, 34.129963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467480, 37.460381, 33.937710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342009, 37.200962, 34.215126>,  <29.266726, 37.045311, 34.381577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342009, 37.200962, 34.215126>,  <29.467480, 37.460381, 33.937710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342009, 37.200962, 34.215126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344823, -0.758342, -0.553186,
		0.884705, 0.065625, 0.461509,
		-0.313679, -0.648545, 0.693538,
		29.247906, 37.006397, 34.423187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005022, 36.975567, 34.125687>,  <29.467480, 37.460381, 33.937710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005022, 36.975567, 34.125687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663149, 36.785378, 34.209057>,  <29.458025, 36.671265, 34.259079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663149, 36.785378, 34.209057>,  <30.005022, 36.975567, 34.125687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663149, 36.785378, 34.209057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304412, -0.784211, -0.540690,
		0.420533, -0.398672, 0.814993,
		-0.854685, -0.475472, 0.208425,
		29.406744, 36.642735, 34.271584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422764, 37.471622, 33.827591>,  <30.005022, 36.975567, 34.125687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422764, 37.471622, 33.827591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816486, 37.536705, 33.800274>,  <31.052721, 37.575756, 33.783886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816486, 37.536705, 33.800274>,  <30.422764, 37.471622, 33.827591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816486, 37.536705, 33.800274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118760, -0.324602, 0.938365,
		0.130515, -0.931751, -0.338832,
		0.984308, 0.162711, -0.068289,
		31.111778, 37.585518, 33.779785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750259, 36.848362, 34.052372>,  <30.422764, 37.471622, 33.827591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750259, 36.848362, 34.052372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939241, 37.195351, 34.114700>,  <31.052631, 37.403545, 34.152096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939241, 37.195351, 34.114700>,  <30.750259, 36.848362, 34.052372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939241, 37.195351, 34.114700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360179, -0.351393, 0.864172,
		0.804398, -0.352161, -0.478463,
		0.472456, 0.867471, 0.155818,
		31.080978, 37.455593, 34.161446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565046, 36.797897, 34.239204>,  <30.750259, 36.848362, 34.052372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565046, 36.797897, 34.239204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386631, 37.122379, 34.390461>,  <31.279581, 37.317070, 34.481213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386631, 37.122379, 34.390461>,  <31.565046, 36.797897, 34.239204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386631, 37.122379, 34.390461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203712, -0.319391, 0.925468,
		0.871522, 0.489827, -0.022792,
		-0.446039, 0.811209, 0.378140,
		31.252819, 37.365742, 34.503902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959299, 37.101620, 34.885899>,  <31.565046, 36.797897, 34.239204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959299, 37.101620, 34.885899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563662, 37.160191, 34.892220>,  <31.326279, 37.195332, 34.896011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563662, 37.160191, 34.892220>,  <31.959299, 37.101620, 34.885899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563662, 37.160191, 34.892220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043553, -0.393289, 0.918383,
		0.140690, 0.907680, 0.395377,
		-0.989095, 0.146427, 0.015799,
		31.266933, 37.204117, 34.896957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886194, 37.521500, 35.440197>,  <31.959299, 37.101620, 34.885899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886194, 37.521500, 35.440197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553753, 37.302452, 35.401451>,  <31.354288, 37.171024, 35.378204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553753, 37.302452, 35.401451>,  <31.886194, 37.521500, 35.440197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553753, 37.302452, 35.401451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121610, -0.348932, 0.929224,
		-0.542659, 0.760501, 0.356594,
		-0.831103, -0.547617, -0.096867,
		31.304422, 37.138168, 35.372391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500145, 37.652962, 36.078083>,  <31.886194, 37.521500, 35.440197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500145, 37.652962, 36.078083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356924, 37.322704, 35.903675>,  <31.270992, 37.124550, 35.799030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356924, 37.322704, 35.903675>,  <31.500145, 37.652962, 36.078083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356924, 37.322704, 35.903675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150718, -0.409752, 0.899659,
		-0.921457, 0.387842, 0.022275,
		-0.358053, -0.825640, -0.436024,
		31.249508, 37.075012, 35.772869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752630, 37.526127, 36.362843>,  <31.500145, 37.652962, 36.078083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752630, 37.526127, 36.362843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924383, 37.183533, 36.248260>,  <31.027435, 36.977974, 36.179512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924383, 37.183533, 36.248260>,  <30.752630, 37.526127, 36.362843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924383, 37.183533, 36.248260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183931, -0.393469, 0.900751,
		-0.884194, -0.334080, -0.326484,
		0.429384, -0.856489, -0.286455,
		31.053198, 36.926586, 36.162323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345749, 36.991520, 36.650421>,  <30.752630, 37.526127, 36.362843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345749, 36.991520, 36.650421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690386, 36.815922, 36.548485>,  <30.897167, 36.710564, 36.487324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690386, 36.815922, 36.548485>,  <30.345749, 36.991520, 36.650421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690386, 36.815922, 36.548485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050828, -0.574141, 0.817177,
		-0.505050, -0.691120, -0.516989,
		0.861593, -0.438993, -0.254841,
		30.948864, 36.684223, 36.472031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212788, 36.264973, 36.558987>,  <30.345749, 36.991520, 36.650421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212788, 36.264973, 36.558987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606222, 36.288525, 36.627209>,  <30.842283, 36.302654, 36.668144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606222, 36.288525, 36.627209>,  <30.212788, 36.264973, 36.558987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606222, 36.288525, 36.627209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081320, -0.699155, 0.710331,
		0.161072, -0.712542, -0.682891,
		0.983587, 0.058881, 0.170558,
		30.901299, 36.306190, 36.678375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448599, 35.576763, 36.576069>,  <30.212788, 36.264973, 36.558987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448599, 35.576763, 36.576069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760429, 35.767883, 36.738041>,  <30.947527, 35.882553, 36.835224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760429, 35.767883, 36.738041>,  <30.448599, 35.576763, 36.576069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760429, 35.767883, 36.738041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021729, -0.666785, 0.744933,
		0.625931, -0.571933, -0.530192,
		0.779576, 0.477797, 0.404934,
		30.994303, 35.911221, 36.859520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917444, 35.099701, 36.722717>,  <30.448599, 35.576763, 36.576069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917444, 35.099701, 36.722717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055090, 35.383274, 36.968967>,  <31.137678, 35.553417, 37.116718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055090, 35.383274, 36.968967>,  <30.917444, 35.099701, 36.722717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055090, 35.383274, 36.968967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022752, -0.649185, 0.760290,
		0.938652, -0.275633, -0.207264,
		0.344114, 0.708933, 0.615630,
		31.158323, 35.595955, 37.153656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596704, 34.862129, 37.069134>,  <30.917444, 35.099701, 36.722717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596704, 34.862129, 37.069134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437710, 35.144287, 37.303886>,  <31.342314, 35.313580, 37.444736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437710, 35.144287, 37.303886>,  <31.596704, 34.862129, 37.069134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437710, 35.144287, 37.303886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113920, -0.596694, 0.794341,
		0.910509, 0.382597, 0.156820,
		-0.397486, 0.705390, 0.586881,
		31.318464, 35.355904, 37.479950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869946, 34.740791, 37.649151>,  <31.596704, 34.862129, 37.069134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869946, 34.740791, 37.649151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562075, 34.971577, 37.758488>,  <31.377352, 35.110046, 37.824089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562075, 34.971577, 37.758488>,  <31.869946, 34.740791, 37.649151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562075, 34.971577, 37.758488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167885, -0.595986, 0.785249,
		0.615966, 0.558496, 0.555578,
		-0.769675, 0.576960, 0.273344,
		31.331173, 35.144665, 37.840492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031502, 35.020218, 38.343258>,  <31.869946, 34.740791, 37.649151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031502, 35.020218, 38.343258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634073, 35.030441, 38.299129>,  <31.395617, 35.036575, 38.272652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634073, 35.030441, 38.299129>,  <32.031502, 35.020218, 38.343258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634073, 35.030441, 38.299129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111294, -0.400335, 0.909585,
		-0.020922, 0.916012, 0.400604,
		-0.993567, 0.025555, -0.110323,
		31.336002, 35.038109, 38.266033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670788, 35.294559, 38.929646>,  <32.031502, 35.020218, 38.343258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670788, 35.294559, 38.929646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385221, 35.087563, 38.740955>,  <31.213881, 34.963364, 38.627743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385221, 35.087563, 38.740955>,  <31.670788, 35.294559, 38.929646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385221, 35.087563, 38.740955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127058, -0.566750, 0.814034,
		-0.688606, 0.641089, 0.338861,
		-0.713917, -0.517494, -0.471723,
		31.171047, 34.932316, 38.599438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272915, 35.254623, 39.458462>,  <31.670788, 35.294559, 38.929646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272915, 35.254623, 39.458462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138058, 34.992481, 39.188099>,  <31.057144, 34.835197, 39.025883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138058, 34.992481, 39.188099>,  <31.272915, 35.254623, 39.458462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138058, 34.992481, 39.188099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278341, -0.616459, 0.736550,
		-0.899367, 0.436455, 0.025423,
		-0.337143, -0.655352, -0.675906,
		31.036915, 34.795876, 38.985329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701958, 35.170479, 39.666462>,  <31.272915, 35.254623, 39.458462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701958, 35.170479, 39.666462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780504, 34.840141, 39.455021>,  <30.827633, 34.641941, 39.328156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780504, 34.840141, 39.455021>,  <30.701958, 35.170479, 39.666462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780504, 34.840141, 39.455021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282133, -0.563892, 0.776162,
		-0.939064, -0.003276, -0.343728,
		0.196368, -0.825842, -0.528606,
		30.839415, 34.592388, 39.296440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253195, 34.668011, 39.869068>,  <30.701958, 35.170479, 39.666462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253195, 34.668011, 39.869068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508602, 34.437298, 39.665257>,  <30.661846, 34.298870, 39.542969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508602, 34.437298, 39.665257>,  <30.253195, 34.668011, 39.869068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508602, 34.437298, 39.665257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272200, -0.788519, 0.551494,
		-0.719863, -0.213446, -0.660484,
		0.638518, -0.576783, -0.509526,
		30.700157, 34.264263, 39.512398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881630, 34.040501, 39.611446>,  <30.253195, 34.668011, 39.869068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881630, 34.040501, 39.611446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266499, 33.942242, 39.658573>,  <30.497419, 33.883286, 39.686848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266499, 33.942242, 39.658573>,  <29.881630, 34.040501, 39.611446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266499, 33.942242, 39.658573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268914, -0.786962, 0.555316,
		-0.043697, -0.565992, -0.823251,
		0.962172, -0.245650, 0.117816,
		30.555151, 33.868546, 39.693916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018902, 33.361195, 39.373745>,  <29.881630, 34.040501, 39.611446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018902, 33.361195, 39.373745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301893, 33.422070, 39.649807>,  <30.471689, 33.458595, 39.815445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301893, 33.422070, 39.649807>,  <30.018902, 33.361195, 39.373745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301893, 33.422070, 39.649807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215538, -0.883554, 0.415783,
		0.673064, -0.442912, -0.592295,
		0.707480, 0.152187, 0.690153,
		30.514137, 33.467724, 39.856853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356764, 32.674137, 39.542034>,  <30.018902, 33.361195, 39.373745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356764, 32.674137, 39.542034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458038, 32.925648, 39.836121>,  <30.518803, 33.076553, 40.012573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458038, 32.925648, 39.836121>,  <30.356764, 32.674137, 39.542034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458038, 32.925648, 39.836121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225124, -0.700820, 0.676883,
		0.940859, -0.336893, -0.035888,
		0.253188, 0.628772, 0.735215,
		30.533995, 33.114281, 40.056686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814440, 32.289101, 40.033707>,  <30.356764, 32.674137, 39.542034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814440, 32.289101, 40.033707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696302, 32.605713, 40.247715>,  <30.625420, 32.795681, 40.376118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696302, 32.605713, 40.247715>,  <30.814440, 32.289101, 40.033707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696302, 32.605713, 40.247715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460921, -0.608568, 0.645908,
		0.836854, -0.055836, 0.544572,
		-0.295344, 0.791535, 0.535019,
		30.607698, 32.843174, 40.408222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107639, 32.170921, 40.709972>,  <30.814440, 32.289101, 40.033707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107639, 32.170921, 40.709972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804108, 32.429836, 40.738811>,  <30.621988, 32.585186, 40.756115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804108, 32.429836, 40.738811>,  <31.107639, 32.170921, 40.709972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804108, 32.429836, 40.738811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334026, -0.481822, 0.810108,
		0.559108, 0.590653, 0.581831,
		-0.758831, 0.647284, 0.072097,
		30.576458, 32.624023, 40.760441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094585, 32.523018, 41.430927>,  <31.107639, 32.170921, 40.709972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094585, 32.523018, 41.430927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733610, 32.519184, 41.258644>,  <30.517025, 32.516884, 41.155273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733610, 32.519184, 41.258644>,  <31.094585, 32.523018, 41.430927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733610, 32.519184, 41.258644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354510, -0.551558, 0.755054,
		-0.244799, 0.834082, 0.494349,
		-0.902439, -0.009585, -0.430712,
		30.462879, 32.516308, 41.129429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645838, 32.603397, 41.985531>,  <31.094585, 32.523018, 41.430927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645838, 32.603397, 41.985531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397886, 32.477184, 41.698147>,  <30.249115, 32.401459, 41.525715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397886, 32.477184, 41.698147>,  <30.645838, 32.603397, 41.985531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397886, 32.477184, 41.698147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513867, -0.528733, 0.675561,
		-0.593036, 0.787961, 0.165609,
		-0.619878, -0.315531, -0.718465,
		30.211924, 32.382526, 41.482609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036709, 32.616531, 42.315937>,  <30.645838, 32.603397, 41.985531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036709, 32.616531, 42.315937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989374, 32.370457, 42.004158>,  <29.960974, 32.222813, 41.817089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989374, 32.370457, 42.004158>,  <30.036709, 32.616531, 42.315937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989374, 32.370457, 42.004158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549846, -0.613035, 0.567325,
		-0.826841, 0.495713, -0.265713,
		-0.118339, -0.615189, -0.779448,
		29.953873, 32.185902, 41.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407665, 32.377319, 42.392879>,  <30.036709, 32.616531, 42.315937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407665, 32.377319, 42.392879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568840, 32.127926, 42.124878>,  <29.665545, 31.978289, 41.964077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568840, 32.127926, 42.124878>,  <29.407665, 32.377319, 42.392879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568840, 32.127926, 42.124878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361193, -0.780973, 0.509530,
		-0.840941, 0.036693, -0.539882,
		0.402937, -0.623486, -0.670005,
		29.689722, 31.940880, 41.923878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886148, 31.944748, 42.292923>,  <29.407665, 32.377319, 42.392879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886148, 31.944748, 42.292923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224110, 31.755774, 42.192566>,  <29.426886, 31.642389, 42.132351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224110, 31.755774, 42.192566>,  <28.886148, 31.944748, 42.292923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224110, 31.755774, 42.192566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276425, -0.787149, 0.551349,
		-0.457965, -0.396484, -0.795656,
		0.844901, -0.472438, -0.250888,
		29.477579, 31.614042, 42.117298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685087, 31.196346, 41.952980>,  <28.886148, 31.944748, 42.292923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685087, 31.196346, 41.952980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062691, 31.179089, 42.083813>,  <29.289253, 31.168734, 42.162312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062691, 31.179089, 42.083813>,  <28.685087, 31.196346, 41.952980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062691, 31.179089, 42.083813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198452, -0.866257, 0.458492,
		0.263556, -0.497731, -0.826318,
		0.944010, -0.043146, 0.327083,
		29.345894, 31.166145, 42.181938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892029, 30.499678, 41.826275>,  <28.685087, 31.196346, 41.952980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892029, 30.499678, 41.826275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118677, 30.648060, 42.120575>,  <29.254665, 30.737089, 42.297157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118677, 30.648060, 42.120575>,  <28.892029, 30.499678, 41.826275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118677, 30.648060, 42.120575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069933, -0.868055, 0.491518,
		0.821007, -0.329957, -0.465914,
		0.566619, 0.370957, 0.735754,
		29.288662, 30.759348, 42.341301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387259, 29.947872, 42.077560>,  <28.892029, 30.499678, 41.826275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387259, 29.947872, 42.077560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328594, 30.205618, 42.377769>,  <29.293396, 30.360266, 42.557896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328594, 30.205618, 42.377769>,  <29.387259, 29.947872, 42.077560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328594, 30.205618, 42.377769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196251, -0.724692, 0.660536,
		0.969524, 0.244164, -0.020175,
		-0.146659, 0.644365, 0.750523,
		29.284597, 30.398928, 42.602928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862326, 29.694487, 42.506832>,  <29.387259, 29.947872, 42.077560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862326, 29.694487, 42.506832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600412, 29.924524, 42.703007>,  <29.443264, 30.062548, 42.820709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600412, 29.924524, 42.703007>,  <29.862326, 29.694487, 42.506832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600412, 29.924524, 42.703007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000754, -0.648383, 0.761314,
		0.755817, 0.498865, 0.424116,
		-0.654783, 0.575094, 0.490434,
		29.403978, 30.097054, 42.850136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030931, 29.558319, 43.262547>,  <29.862326, 29.694487, 42.506832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030931, 29.558319, 43.262547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661524, 29.710712, 43.280262>,  <29.439878, 29.802149, 43.290894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661524, 29.710712, 43.280262>,  <30.030931, 29.558319, 43.262547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661524, 29.710712, 43.280262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180795, -0.534252, 0.825765,
		0.338266, 0.754603, 0.562273,
		-0.923520, 0.380984, 0.044291,
		29.384468, 29.825008, 43.293549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811403, 29.745424, 43.910484>,  <30.030931, 29.558319, 43.262547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811403, 29.745424, 43.910484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433113, 29.774475, 43.783787>,  <29.206139, 29.791906, 43.707767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433113, 29.774475, 43.783787>,  <29.811403, 29.745424, 43.910484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433113, 29.774475, 43.783787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320011, -0.377632, 0.868900,
		-0.056504, 0.923103, 0.380379,
		-0.945727, 0.072629, -0.316741,
		29.149395, 29.796265, 43.688763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335745, 30.182596, 44.399284>,  <29.811403, 29.745424, 43.910484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335745, 30.182596, 44.399284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073133, 29.951937, 44.204781>,  <28.915567, 29.813541, 44.088078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073133, 29.951937, 44.204781>,  <29.335745, 30.182596, 44.399284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073133, 29.951937, 44.204781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400136, -0.280223, 0.872563,
		-0.639423, 0.767432, -0.046763,
		-0.656529, -0.576648, -0.486258,
		28.876175, 29.778942, 44.058903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721710, 30.352682, 44.704826>,  <29.335745, 30.182596, 44.399284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721710, 30.352682, 44.704826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663893, 29.991524, 44.542892>,  <28.629202, 29.774830, 44.445732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663893, 29.991524, 44.542892>,  <28.721710, 30.352682, 44.704826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663893, 29.991524, 44.542892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246248, -0.363433, 0.898487,
		-0.958368, 0.229561, -0.169803,
		-0.144546, -0.902894, -0.404831,
		28.620529, 29.720655, 44.421444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111294, 30.001244, 44.912380>,  <28.721710, 30.352682, 44.704826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111294, 30.001244, 44.912380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337809, 29.692999, 44.795433>,  <28.473717, 29.508051, 44.725266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337809, 29.692999, 44.795433>,  <28.111294, 30.001244, 44.912380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337809, 29.692999, 44.795433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126224, -0.431620, 0.893181,
		-0.814487, -0.468891, -0.341689,
		0.566284, -0.770614, -0.292364,
		28.507694, 29.461815, 44.707726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749840, 29.449343, 45.177853>,  <28.111294, 30.001244, 44.912380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749840, 29.449343, 45.177853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108875, 29.300327, 45.083580>,  <28.324297, 29.210918, 45.027016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108875, 29.300327, 45.083580>,  <27.749840, 29.449343, 45.177853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108875, 29.300327, 45.083580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051709, -0.619917, 0.782962,
		-0.437787, -0.690592, -0.575695,
		0.897591, -0.372539, -0.235682,
		28.378153, 29.188566, 45.012875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714155, 28.742895, 45.328732>,  <27.749840, 29.449343, 45.177853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714155, 28.742895, 45.328732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109743, 28.801924, 45.323616>,  <28.347095, 28.837341, 45.320545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109743, 28.801924, 45.323616>,  <27.714155, 28.742895, 45.328732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109743, 28.801924, 45.323616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117742, -0.730793, 0.672368,
		0.089877, -0.666456, -0.740107,
		0.988969, 0.147572, -0.012789,
		28.406433, 28.846195, 45.319778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979776, 28.043894, 45.215000>,  <27.714155, 28.742895, 45.328732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979776, 28.043894, 45.215000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254297, 28.279638, 45.385479>,  <28.419010, 28.421085, 45.487766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254297, 28.279638, 45.385479>,  <27.979776, 28.043894, 45.215000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254297, 28.279638, 45.385479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283529, -0.756418, 0.589443,
		0.669777, -0.283698, -0.686232,
		0.686302, 0.589362, 0.426195,
		28.460188, 28.456448, 45.513336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457441, 27.636633, 45.160526>,  <27.979776, 28.043894, 45.215000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457441, 27.636633, 45.160526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493202, 27.880188, 45.475807>,  <28.514658, 28.026321, 45.664974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493202, 27.880188, 45.475807>,  <28.457441, 27.636633, 45.160526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493202, 27.880188, 45.475807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144968, -0.790897, 0.594530,
		0.985389, 0.061111, -0.158978,
		0.089403, 0.608890, 0.788201,
		28.520023, 28.062855, 45.712269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975920, 27.289373, 45.610966>,  <28.457441, 27.636633, 45.160526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975920, 27.289373, 45.610966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803120, 27.567362, 45.840885>,  <28.699440, 27.734156, 45.978836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803120, 27.567362, 45.840885>,  <28.975920, 27.289373, 45.610966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803120, 27.567362, 45.840885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040357, -0.621799, 0.782136,
		0.900971, 0.361079, 0.240570,
		-0.431999, 0.694973, 0.574795,
		28.673519, 27.775854, 46.013325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082558, 27.066978, 46.245239>,  <28.975920, 27.289373, 45.610966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082558, 27.066978, 46.245239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823877, 27.353704, 46.349514>,  <28.668669, 27.525740, 46.412079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823877, 27.353704, 46.349514>,  <29.082558, 27.066978, 46.245239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823877, 27.353704, 46.349514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020484, -0.357968, 0.933509,
		0.762469, 0.598361, 0.246181,
		-0.646700, 0.716815, 0.260683,
		28.629868, 27.568748, 46.427719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370119, 27.473410, 46.857655>,  <29.082558, 27.066978, 46.245239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370119, 27.473410, 46.857655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972002, 27.441216, 46.836071>,  <28.733131, 27.421900, 46.823120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972002, 27.441216, 46.836071>,  <29.370119, 27.473410, 46.857655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972002, 27.441216, 46.836071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008964, -0.478010, 0.878309,
		-0.096483, 0.874659, 0.475039,
		-0.995294, -0.080484, -0.053960,
		28.673414, 27.417070, 46.819881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121729, 27.554985, 47.491791>,  <29.370119, 27.473410, 46.857655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121729, 27.554985, 47.491791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800554, 27.395882, 47.314217>,  <28.607849, 27.300419, 47.207672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800554, 27.395882, 47.314217>,  <29.121729, 27.554985, 47.491791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800554, 27.395882, 47.314217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211143, -0.506687, 0.835875,
		-0.557412, 0.764890, 0.322854,
		-0.802939, -0.397758, -0.443935,
		28.559673, 27.276554, 47.181038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632336, 27.716280, 47.987354>,  <29.121729, 27.554985, 47.491791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632336, 27.716280, 47.987354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476686, 27.426437, 47.759834>,  <28.383297, 27.252533, 47.623322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476686, 27.426437, 47.759834>,  <28.632336, 27.716280, 47.987354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476686, 27.426437, 47.759834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192581, -0.539828, 0.819450,
		-0.900830, 0.428407, 0.070515,
		-0.389125, -0.724605, -0.568797,
		28.359949, 27.209055, 47.589195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980843, 27.550415, 48.316750>,  <28.632336, 27.716280, 47.987354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980843, 27.550415, 48.316750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071035, 27.242771, 48.077541>,  <28.125151, 27.058184, 47.934017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071035, 27.242771, 48.077541>,  <27.980843, 27.550415, 48.316750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071035, 27.242771, 48.077541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147071, -0.633663, 0.759500,
		-0.963082, -0.083303, -0.255995,
		0.225483, -0.769111, -0.598018,
		28.138680, 27.012037, 47.898136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921108, 27.081770, 48.799110>,  <27.980843, 27.550415, 48.316750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921108, 27.081770, 48.799110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953964, 26.813681, 48.504070>,  <27.973677, 26.652826, 48.327045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953964, 26.813681, 48.504070>,  <27.921108, 27.081770, 48.799110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953964, 26.813681, 48.504070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098155, -0.741943, 0.663240,
		-0.991776, 0.017922, -0.126728,
		0.082138, -0.670224, -0.737600,
		27.978605, 26.612614, 48.282791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310326, 26.753040, 48.816078>,  <27.921108, 27.081770, 48.799110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310326, 26.753040, 48.816078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602253, 26.501438, 48.708958>,  <27.777409, 26.350477, 48.644684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602253, 26.501438, 48.708958>,  <27.310326, 26.753040, 48.816078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602253, 26.501438, 48.708958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254463, -0.613520, 0.747557,
		-0.634523, -0.477433, -0.607815,
		0.729815, -0.629008, -0.267803,
		27.821198, 26.312737, 48.628616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043396, 26.087500, 48.967560>,  <27.310326, 26.753040, 48.816078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043396, 26.087500, 48.967560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441458, 26.055613, 48.944553>,  <27.680296, 26.036480, 48.930748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441458, 26.055613, 48.944553>,  <27.043396, 26.087500, 48.967560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441458, 26.055613, 48.944553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001360, -0.573874, 0.818943,
		-0.098292, -0.815054, -0.570986,
		0.995157, -0.079719, -0.057516,
		27.740005, 26.031696, 48.927299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173943, 25.286842, 49.014866>,  <27.043396, 26.087500, 48.967560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173943, 25.286842, 49.014866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511137, 25.491898, 49.080078>,  <27.713453, 25.614931, 49.119205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511137, 25.491898, 49.080078>,  <27.173943, 25.286842, 49.014866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511137, 25.491898, 49.080078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242196, -0.632302, 0.735891,
		0.480333, -0.580858, -0.657179,
		0.842984, 0.512638, 0.163034,
		27.764032, 25.645689, 49.128990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831015, 24.855639, 48.800980>,  <27.173943, 25.286842, 49.014866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831015, 24.855639, 48.800980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874254, 25.124077, 49.094357>,  <27.900198, 25.285141, 49.270382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874254, 25.124077, 49.094357>,  <27.831015, 24.855639, 48.800980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874254, 25.124077, 49.094357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108903, -0.741323, 0.662254,
		0.988157, 0.008285, -0.153221,
		0.108099, 0.671097, 0.733446,
		27.906685, 25.325405, 49.314392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444273, 24.593729, 49.193001>,  <27.831015, 24.855639, 48.800980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444273, 24.593729, 49.193001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206528, 24.815487, 49.426025>,  <28.063881, 24.948542, 49.565842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206528, 24.815487, 49.426025>,  <28.444273, 24.593729, 49.193001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206528, 24.815487, 49.426025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062935, -0.754246, 0.653569,
		0.801732, 0.351793, 0.483185,
		-0.594361, 0.554396, 0.582563,
		28.028219, 24.981806, 49.600796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223333, 24.416441, 48.408321>,  <28.444273, 24.593729, 49.193001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223333, 24.416441, 48.408321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045006, 24.218525, 48.109943>,  <27.938009, 24.099775, 47.930916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045006, 24.218525, 48.109943>,  <28.223333, 24.416441, 48.408321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045006, 24.218525, 48.109943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706028, 0.317895, -0.632825,
		0.550248, -0.808779, 0.207614,
		-0.445816, -0.494791, -0.745942,
		27.911261, 24.070087, 47.886162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648737, 24.276463, 47.911163>,  <28.223333, 24.416441, 48.408321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648737, 24.276463, 47.911163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312614, 24.254438, 47.695438>,  <28.110941, 24.241224, 47.566006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312614, 24.254438, 47.695438>,  <28.648737, 24.276463, 47.911163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312614, 24.254438, 47.695438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460874, 0.451262, -0.764171,
		0.285446, -0.890691, -0.353822,
		-0.840307, -0.055062, -0.539308,
		28.060522, 24.237919, 47.533646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716799, 23.916574, 47.271854>,  <28.648737, 24.276463, 47.911163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716799, 23.916574, 47.271854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437170, 24.198400, 47.223057>,  <28.269392, 24.367496, 47.193779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437170, 24.198400, 47.223057>,  <28.716799, 23.916574, 47.271854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437170, 24.198400, 47.223057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541330, 0.410009, -0.734067,
		-0.467182, -0.579205, -0.668030,
		-0.699074, 0.704567, -0.121992,
		28.227448, 24.409771, 47.186459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516417, 24.037437, 46.601788>,  <28.716799, 23.916574, 47.271854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516417, 24.037437, 46.601788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439451, 24.401720, 46.747990>,  <28.393272, 24.620289, 46.835712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439451, 24.401720, 46.747990>,  <28.516417, 24.037437, 46.601788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439451, 24.401720, 46.747990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356754, 0.411896, -0.838491,
		-0.914168, -0.030941, -0.404152,
		-0.192412, 0.910705, 0.365504,
		28.381727, 24.674932, 46.857639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937019, 24.262997, 46.246395>,  <28.516417, 24.037437, 46.601788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937019, 24.262997, 46.246395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179253, 24.552612, 46.378479>,  <28.324593, 24.726383, 46.457729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179253, 24.552612, 46.378479>,  <27.937019, 24.262997, 46.246395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179253, 24.552612, 46.378479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133566, 0.316579, -0.939116,
		-0.784495, 0.612815, 0.095007,
		0.605581, 0.724042, 0.330206,
		28.360928, 24.769825, 46.477539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726034, 24.813137, 45.881802>,  <27.937019, 24.262997, 46.246395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726034, 24.813137, 45.881802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086138, 24.936005, 46.005211>,  <28.302200, 25.009726, 46.079258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086138, 24.936005, 46.005211>,  <27.726034, 24.813137, 45.881802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086138, 24.936005, 46.005211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187843, 0.365250, -0.911761,
		-0.392750, 0.878773, 0.271119,
		0.900257, 0.307167, 0.308523,
		28.356215, 25.028154, 46.097767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895430, 25.537718, 45.585468>,  <27.726034, 24.813137, 45.881802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895430, 25.537718, 45.585468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242174, 25.364447, 45.684189>,  <28.450220, 25.260485, 45.743423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242174, 25.364447, 45.684189>,  <27.895430, 25.537718, 45.585468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242174, 25.364447, 45.684189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441935, 0.438526, -0.782553,
		0.230754, 0.787435, 0.571576,
		0.866860, -0.433177, 0.246803,
		28.502232, 25.234493, 45.758228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342981, 26.003141, 45.505371>,  <27.895430, 25.537718, 45.585468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342981, 26.003141, 45.505371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600996, 25.697523, 45.500374>,  <28.755806, 25.514153, 45.497375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600996, 25.697523, 45.500374>,  <28.342981, 26.003141, 45.505371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600996, 25.697523, 45.500374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563278, 0.486464, -0.667885,
		0.516375, 0.423774, 0.744159,
		0.645039, -0.764048, -0.012495,
		28.794508, 25.468309, 45.496624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003111, 26.273758, 45.479404>,  <28.342981, 26.003141, 45.505371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003111, 26.273758, 45.479404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041578, 25.896952, 45.350807>,  <29.064659, 25.670868, 45.273647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041578, 25.896952, 45.350807>,  <29.003111, 26.273758, 45.479404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041578, 25.896952, 45.350807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686344, 0.296687, -0.664010,
		0.720891, -0.156799, 0.675079,
		0.096171, -0.942015, -0.321496,
		29.070429, 25.614347, 45.254356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741869, 26.095066, 45.416653>,  <29.003111, 26.273758, 45.479404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741869, 26.095066, 45.416653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604912, 25.780956, 45.210308>,  <29.522738, 25.592489, 45.086502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604912, 25.780956, 45.210308>,  <29.741869, 26.095066, 45.416653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604912, 25.780956, 45.210308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760263, 0.091045, -0.643204,
		0.552059, -0.612415, 0.565843,
		-0.342391, -0.785276, -0.515859,
		29.502195, 25.545374, 45.055550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230289, 25.498507, 45.450928>,  <29.741869, 26.095066, 45.416653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230289, 25.498507, 45.450928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018456, 25.510689, 45.111843>,  <29.891356, 25.517998, 44.908394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018456, 25.510689, 45.111843>,  <30.230289, 25.498507, 45.450928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018456, 25.510689, 45.111843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838765, 0.167873, -0.517968,
		0.126532, -0.985338, -0.114449,
		-0.529587, 0.030456, -0.847709,
		29.859579, 25.519825, 44.857529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752539, 25.148710, 44.975052>,  <30.230289, 25.498507, 45.450928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752539, 25.148710, 44.975052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465706, 25.336542, 44.769028>,  <30.293606, 25.449242, 44.645412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465706, 25.336542, 44.769028>,  <30.752539, 25.148710, 44.975052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465706, 25.336542, 44.769028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679464, 0.306306, -0.666712,
		-0.155310, -0.828052, -0.538710,
		-0.717083, 0.469581, -0.515059,
		30.250582, 25.477417, 44.614510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924274, 24.908020, 44.237572>,  <30.752539, 25.148710, 44.975052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924274, 24.908020, 44.237572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730185, 25.257774, 44.237064>,  <30.613729, 25.467627, 44.236759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730185, 25.257774, 44.237064>,  <30.924274, 24.908020, 44.237572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730185, 25.257774, 44.237064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640996, 0.354722, -0.680659,
		-0.594710, -0.331086, -0.732599,
		-0.485226, 0.874388, -0.001268,
		30.584618, 25.520090, 44.236683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818089, 25.131588, 43.499249>,  <30.924274, 24.908020, 44.237572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818089, 25.131588, 43.499249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775402, 25.468410, 43.710739>,  <30.749790, 25.670504, 43.837635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775402, 25.468410, 43.710739>,  <30.818089, 25.131588, 43.499249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775402, 25.468410, 43.710739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518543, 0.500853, -0.693007,
		-0.848366, 0.200213, -0.490092,
		-0.106715, 0.842058, 0.528726,
		30.743387, 25.721027, 43.869358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657717, 25.649378, 43.018398>,  <30.818089, 25.131588, 43.499249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657717, 25.649378, 43.018398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764977, 25.880163, 43.327000>,  <30.829332, 26.018635, 43.512161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764977, 25.880163, 43.327000>,  <30.657717, 25.649378, 43.018398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764977, 25.880163, 43.327000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392618, 0.665855, -0.634419,
		-0.879742, 0.473024, -0.047976,
		0.268151, 0.576962, 0.771499,
		30.845421, 26.053251, 43.558449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546202, 26.396137, 42.787037>,  <30.657717, 25.649378, 43.018398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546202, 26.396137, 42.787037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784489, 26.445711, 43.104465>,  <30.927462, 26.475456, 43.294922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784489, 26.445711, 43.104465>,  <30.546202, 26.396137, 42.787037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784489, 26.445711, 43.104465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351929, 0.847854, -0.396597,
		-0.721988, 0.515542, 0.461465,
		0.595717, 0.123935, 0.793575,
		30.963203, 26.482891, 43.342537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581966, 27.121468, 42.923721>,  <30.546202, 26.396137, 42.787037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581966, 27.121468, 42.923721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915113, 26.950077, 43.063858>,  <31.115002, 26.847242, 43.147942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915113, 26.950077, 43.063858>,  <30.581966, 27.121468, 42.923721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915113, 26.950077, 43.063858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539526, 0.769730, -0.341215,
		-0.123465, 0.473205, 0.872257,
		0.832868, -0.428477, 0.350341,
		31.164974, 26.821533, 43.168961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993502, 27.562090, 43.299168>,  <30.581966, 27.121468, 42.923721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993502, 27.562090, 43.299168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254887, 27.293306, 43.159767>,  <31.411718, 27.132036, 43.076126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254887, 27.293306, 43.159767>,  <30.993502, 27.562090, 43.299168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254887, 27.293306, 43.159767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479115, 0.723603, -0.496838,
		0.586031, 0.157694, 0.794796,
		0.653465, -0.671961, -0.348500,
		31.450926, 27.091719, 43.055218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699884, 27.839848, 43.387135>,  <30.993502, 27.562090, 43.299168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699884, 27.839848, 43.387135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713032, 27.576784, 43.086094>,  <31.720921, 27.418947, 42.905468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713032, 27.576784, 43.086094>,  <31.699884, 27.839848, 43.387135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713032, 27.576784, 43.086094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374059, 0.706375, -0.600927,
		0.926822, -0.261766, 0.269219,
		0.032867, -0.657657, -0.752600,
		31.722893, 27.379488, 42.860313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276779, 27.940434, 43.093609>,  <31.699884, 27.839848, 43.387135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276779, 27.940434, 43.093609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035339, 27.787994, 42.813488>,  <31.890474, 27.696531, 42.645416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035339, 27.787994, 42.813488>,  <32.276779, 27.940434, 43.093609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035339, 27.787994, 42.813488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285030, 0.717166, -0.635948,
		0.744593, -0.583469, -0.324260,
		-0.603604, -0.381099, -0.700304,
		31.854258, 27.673664, 42.603397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717285, 28.127539, 42.399227>,  <32.276779, 27.940434, 43.093609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717285, 28.127539, 42.399227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352825, 28.010986, 42.282673>,  <32.134148, 27.941055, 42.212742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352825, 28.010986, 42.282673>,  <32.717285, 28.127539, 42.399227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352825, 28.010986, 42.282673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032441, 0.654196, -0.755629,
		0.410797, -0.697944, -0.586618,
		-0.911150, -0.291380, -0.291384,
		32.079479, 27.923573, 42.195259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777706, 28.023026, 41.609150>,  <32.717285, 28.127539, 42.399227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777706, 28.023026, 41.609150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395073, 28.071796, 41.715042>,  <32.165493, 28.101059, 41.778580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395073, 28.071796, 41.715042>,  <32.777706, 28.023026, 41.609150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395073, 28.071796, 41.715042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125959, 0.646165, -0.752732,
		-0.262839, -0.753395, -0.602753,
		-0.956582, 0.121925, 0.264735,
		32.108097, 28.108374, 41.794464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499783, 28.112228, 41.019680>,  <32.777706, 28.023026, 41.609150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499783, 28.112228, 41.019680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197639, 28.247007, 41.244503>,  <32.016354, 28.327875, 41.379398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197639, 28.247007, 41.244503>,  <32.499783, 28.112228, 41.019680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197639, 28.247007, 41.244503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198871, 0.699373, -0.686533,
		-0.624414, -0.630352, -0.461264,
		-0.755353, 0.336949, 0.562056,
		31.971033, 28.348091, 41.413120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906460, 28.220604, 40.631714>,  <32.499783, 28.112228, 41.019680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906460, 28.220604, 40.631714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817261, 28.465977, 40.934757>,  <31.763741, 28.613201, 41.116585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817261, 28.465977, 40.934757>,  <31.906460, 28.220604, 40.631714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817261, 28.465977, 40.934757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265283, 0.709660, -0.652693,
		-0.938028, -0.346530, 0.004481,
		-0.222997, 0.613433, 0.757610,
		31.750362, 28.650007, 41.162041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165573, 28.591185, 40.506882>,  <31.906460, 28.220604, 40.631714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165573, 28.591185, 40.506882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364506, 28.816996, 40.770386>,  <31.483866, 28.952482, 40.928490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364506, 28.816996, 40.770386>,  <31.165573, 28.591185, 40.506882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364506, 28.816996, 40.770386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168709, 0.807765, -0.564848,
		-0.850997, 0.169779, 0.496970,
		0.497334, 0.564528, 0.658762,
		31.513706, 28.986355, 40.968014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802994, 29.140085, 40.589626>,  <31.165573, 28.591185, 40.506882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802994, 29.140085, 40.589626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178478, 29.231178, 40.693130>,  <31.403769, 29.285833, 40.755234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178478, 29.231178, 40.693130>,  <30.802994, 29.140085, 40.589626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178478, 29.231178, 40.693130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008183, 0.765192, -0.643750,
		-0.344603, 0.602179, 0.720159,
		0.938713, 0.227731, 0.258760,
		31.460093, 29.299498, 40.770760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794355, 29.833765, 40.515236>,  <30.802994, 29.140085, 40.589626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794355, 29.833765, 40.515236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191763, 29.789463, 40.525463>,  <31.430208, 29.762882, 40.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191763, 29.789463, 40.525463>,  <30.794355, 29.833765, 40.515236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191763, 29.789463, 40.525463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100916, 0.755902, -0.646860,
		0.052314, 0.645248, 0.762180,
		0.993519, -0.110756, 0.025572,
		31.489819, 29.756237, 40.533134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972504, 30.543413, 40.547588>,  <30.794355, 29.833765, 40.515236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972504, 30.543413, 40.547588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271276, 30.309111, 40.421741>,  <31.450541, 30.168530, 40.346233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271276, 30.309111, 40.421741>,  <30.972504, 30.543413, 40.547588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271276, 30.309111, 40.421741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246085, 0.683119, -0.687598,
		0.617687, 0.436164, 0.654388,
		0.746931, -0.585755, -0.314620,
		31.495356, 30.133385, 40.327354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440929, 31.048113, 40.595135>,  <30.972504, 30.543413, 40.547588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440929, 31.048113, 40.595135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545153, 30.737638, 40.365475>,  <31.607685, 30.551353, 40.227680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545153, 30.737638, 40.365475>,  <31.440929, 31.048113, 40.595135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545153, 30.737638, 40.365475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183315, 0.623643, -0.759911,
		0.947896, 0.092750, 0.304781,
		0.260556, -0.776187, -0.574146,
		31.623320, 30.504782, 40.193230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035080, 31.235332, 40.352764>,  <31.440929, 31.048113, 40.595135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035080, 31.235332, 40.352764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897247, 30.959576, 40.097893>,  <31.814547, 30.794121, 39.944969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897247, 30.959576, 40.097893>,  <32.035080, 31.235332, 40.352764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897247, 30.959576, 40.097893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261251, 0.581513, -0.770448,
		0.901670, -0.431948, -0.020276,
		-0.344584, -0.689394, -0.637180,
		31.793873, 30.752758, 39.906738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575607, 31.078190, 39.957893>,  <32.035080, 31.235332, 40.352764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575607, 31.078190, 39.957893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261032, 30.982794, 39.729984>,  <32.072289, 30.925556, 39.593239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261032, 30.982794, 39.729984>,  <32.575607, 31.078190, 39.957893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261032, 30.982794, 39.729984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396152, 0.512980, -0.761521,
		0.473893, -0.824605, -0.308951,
		-0.786440, -0.238488, -0.569767,
		32.025101, 30.911245, 39.559055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900581, 31.022621, 39.289486>,  <32.575607, 31.078190, 39.957893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900581, 31.022621, 39.289486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513744, 31.014061, 39.188084>,  <32.281643, 31.008924, 39.127243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513744, 31.014061, 39.188084>,  <32.900581, 31.022621, 39.289486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513744, 31.014061, 39.188084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229815, 0.353959, -0.906586,
		0.109133, -0.935016, -0.337395,
		-0.967096, -0.021400, -0.253509,
		32.223614, 31.007641, 39.112030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689629, 30.613901, 38.631378>,  <32.900581, 31.022621, 39.289486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689629, 30.613901, 38.631378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396328, 30.881329, 38.680954>,  <32.220348, 31.041784, 38.710701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396328, 30.881329, 38.680954>,  <32.689629, 30.613901, 38.631378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396328, 30.881329, 38.680954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120044, 0.306694, -0.944208,
		-0.669279, -0.677461, -0.305141,
		-0.733249, 0.668569, 0.123939,
		32.176353, 31.081900, 38.718136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411579, 30.735302, 37.980572>,  <32.689629, 30.613901, 38.631378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411579, 30.735302, 37.980572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248272, 31.036940, 38.186352>,  <32.150288, 31.217922, 38.309818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248272, 31.036940, 38.186352>,  <32.411579, 30.735302, 37.980572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248272, 31.036940, 38.186352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026824, 0.553404, -0.832481,
		-0.912468, -0.353676, -0.205709,
		-0.408269, 0.754094, 0.514450,
		32.125790, 31.263168, 38.340687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812109, 30.963718, 37.621346>,  <32.411579, 30.735302, 37.980572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812109, 30.963718, 37.621346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856184, 31.275984, 37.867409>,  <31.882629, 31.463343, 38.015045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856184, 31.275984, 37.867409>,  <31.812109, 30.963718, 37.621346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856184, 31.275984, 37.867409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004239, 0.619291, -0.785150,
		-0.993902, 0.083907, 0.071548,
		0.110189, 0.780665, 0.615159,
		31.889240, 31.510183, 38.051956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200201, 31.394062, 37.555424>,  <31.812109, 30.963718, 37.621346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200201, 31.394062, 37.555424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505417, 31.619562, 37.681885>,  <31.688547, 31.754862, 37.757759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505417, 31.619562, 37.681885>,  <31.200201, 31.394062, 37.555424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505417, 31.619562, 37.681885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034949, 0.524403, -0.850753,
		-0.645404, 0.638111, 0.419844,
		0.763042, 0.563752, 0.316150,
		31.734329, 31.788689, 37.776730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089598, 32.183498, 37.445835>,  <31.200201, 31.394062, 37.555424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089598, 32.183498, 37.445835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487524, 32.155182, 37.475025>,  <31.726280, 32.138191, 37.492538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487524, 32.155182, 37.475025>,  <31.089598, 32.183498, 37.445835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487524, 32.155182, 37.475025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099779, 0.541937, -0.834475,
		0.019528, 0.837432, 0.546192,
		0.994818, -0.070794, 0.072975,
		31.785969, 32.133945, 37.496918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354050, 32.881195, 37.479771>,  <31.089598, 32.183498, 37.445835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354050, 32.881195, 37.479771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674978, 32.687653, 37.339962>,  <31.867535, 32.571529, 37.256077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674978, 32.687653, 37.339962>,  <31.354050, 32.881195, 37.479771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674978, 32.687653, 37.339962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225781, 0.788076, -0.572677,
		0.552544, 0.380555, 0.741534,
		0.802320, -0.483854, -0.349525,
		31.915674, 32.542496, 37.235104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886368, 33.359592, 37.557373>,  <31.354050, 32.881195, 37.479771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886368, 33.359592, 37.557373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041981, 33.097027, 37.298832>,  <32.135349, 32.939487, 37.143707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041981, 33.097027, 37.298832>,  <31.886368, 33.359592, 37.557373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041981, 33.097027, 37.298832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300529, 0.753672, -0.584517,
		0.870824, 0.033149, 0.490476,
		0.389034, -0.656414, -0.646354,
		32.158691, 32.900105, 37.104927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327507, 33.769245, 37.127434>,  <31.886368, 33.359592, 37.557373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327507, 33.769245, 37.127434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299362, 33.426937, 36.922413>,  <32.282475, 33.221554, 36.799400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299362, 33.426937, 36.922413>,  <32.327507, 33.769245, 37.127434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299362, 33.426937, 36.922413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203773, 0.490657, -0.847191,
		0.976486, -0.164055, 0.139858,
		-0.070363, -0.855770, -0.512549,
		32.278252, 33.170208, 36.768646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902737, 33.758888, 36.708134>,  <32.327507, 33.769245, 37.127434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902737, 33.758888, 36.708134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617531, 33.529869, 36.546249>,  <32.446407, 33.392456, 36.449120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617531, 33.529869, 36.546249>,  <32.902737, 33.758888, 36.708134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617531, 33.529869, 36.546249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254567, 0.326428, -0.910297,
		0.653301, -0.752084, -0.086997,
		-0.713018, -0.572551, -0.404711,
		32.403625, 33.358105, 36.424835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257183, 33.483822, 36.100208>,  <32.902737, 33.758888, 36.708134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257183, 33.483822, 36.100208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867607, 33.419407, 36.036316>,  <32.633862, 33.380756, 35.997982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867607, 33.419407, 36.036316>,  <33.257183, 33.483822, 36.100208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867607, 33.419407, 36.036316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131780, 0.171408, -0.976347,
		0.184629, -0.971946, -0.145715,
		-0.973933, -0.161060, -0.159730,
		32.575424, 33.371094, 35.988400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191708, 32.916454, 35.659241>,  <33.257183, 33.483822, 36.100208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191708, 32.916454, 35.659241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871479, 33.151806, 35.613823>,  <32.679340, 33.293015, 35.586571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871479, 33.151806, 35.613823>,  <33.191708, 32.916454, 35.659241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871479, 33.151806, 35.613823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313200, 0.249308, -0.916379,
		-0.510868, -0.769193, -0.383870,
		-0.800575, 0.588377, -0.113548,
		32.631306, 33.328320, 35.579758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675762, 32.426689, 35.547558>,  <33.191708, 32.916454, 35.659241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675762, 32.426689, 35.547558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877747, 32.350536, 35.210804>,  <33.998936, 32.304844, 35.008751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877747, 32.350536, 35.210804>,  <33.675762, 32.426689, 35.547558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877747, 32.350536, 35.210804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357593, -0.841583, 0.404802,
		-0.785583, -0.505461, -0.356887,
		0.504962, -0.190385, -0.841883,
		34.029236, 32.293423, 34.958241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484245, 31.781281, 35.167099>,  <33.675762, 32.426689, 35.547558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484245, 31.781281, 35.167099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869968, 31.865759, 35.103214>,  <34.101402, 31.916447, 35.064884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869968, 31.865759, 35.103214>,  <33.484245, 31.781281, 35.167099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869968, 31.865759, 35.103214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260751, -0.862291, 0.434124,
		-0.046030, -0.460273, -0.886584,
		0.964308, 0.211195, -0.159708,
		34.159260, 31.929117, 35.055302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749142, 31.125565, 35.130531>,  <33.484245, 31.781281, 35.167099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749142, 31.125565, 35.130531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067768, 31.362841, 35.177193>,  <34.258945, 31.505205, 35.205189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067768, 31.362841, 35.177193>,  <33.749142, 31.125565, 35.130531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067768, 31.362841, 35.177193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498789, -0.753894, 0.427613,
		0.341600, -0.282436, -0.896403,
		0.796567, 0.593189, 0.116654,
		34.306740, 31.540798, 35.212189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390701, 30.778540, 34.875206>,  <33.749142, 31.125565, 35.130531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390701, 30.778540, 34.875206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476360, 31.062002, 35.144112>,  <34.527756, 31.232080, 35.305454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476360, 31.062002, 35.144112>,  <34.390701, 30.778540, 34.875206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476360, 31.062002, 35.144112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299153, -0.702745, 0.645490,
		0.929864, 0.062878, -0.362491,
		0.214152, 0.708658, 0.672267,
		34.540607, 31.274599, 35.345791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947838, 30.522125, 35.125168>,  <34.390701, 30.778540, 34.875206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947838, 30.522125, 35.125168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884995, 30.794975, 35.410831>,  <34.847286, 30.958685, 35.582230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884995, 30.794975, 35.410831>,  <34.947838, 30.522125, 35.125168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884995, 30.794975, 35.410831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466003, -0.586367, 0.662582,
		0.870722, 0.436900, -0.225746,
		-0.157112, 0.682123, 0.714159,
		34.837860, 30.999613, 35.625080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510315, 30.606327, 35.523579>,  <34.947838, 30.522125, 35.125168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510315, 30.606327, 35.523579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234360, 30.703243, 35.796448>,  <35.068787, 30.761393, 35.960167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234360, 30.703243, 35.796448>,  <35.510315, 30.606327, 35.523579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234360, 30.703243, 35.796448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416064, -0.638434, 0.647528,
		0.592410, 0.730545, 0.339638,
		-0.689885, 0.242291, 0.682168,
		35.027393, 30.775930, 36.001099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743004, 30.332453, 36.149193>,  <35.510315, 30.606327, 35.523579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743004, 30.332453, 36.149193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362850, 30.410488, 36.246117>,  <35.134758, 30.457310, 36.304272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362850, 30.410488, 36.246117>,  <35.743004, 30.332453, 36.149193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362850, 30.410488, 36.246117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047383, -0.679040, 0.732571,
		0.307452, 0.707704, 0.636104,
		-0.950383, 0.195090, 0.242305,
		35.077736, 30.469015, 36.318810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735210, 30.695381, 36.800629>,  <35.743004, 30.332453, 36.149193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735210, 30.695381, 36.800629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397579, 30.488865, 36.742687>,  <35.195000, 30.364956, 36.707920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397579, 30.488865, 36.742687>,  <35.735210, 30.695381, 36.800629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397579, 30.488865, 36.742687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095010, -0.409863, 0.907185,
		-0.527742, 0.751969, 0.395008,
		-0.844074, -0.516289, -0.144858,
		35.144356, 30.333979, 36.699230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451984, 30.598755, 37.444244>,  <35.735210, 30.695381, 36.800629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451984, 30.598755, 37.444244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247227, 30.311670, 37.255417>,  <35.124371, 30.139420, 37.142120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247227, 30.311670, 37.255417>,  <35.451984, 30.598755, 37.444244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247227, 30.311670, 37.255417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035809, -0.566879, 0.823022,
		-0.858302, 0.404396, 0.315883,
		-0.511894, -0.717713, -0.472072,
		35.093658, 30.096357, 37.113796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108356, 30.215237, 37.945896>,  <35.451984, 30.598755, 37.444244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108356, 30.215237, 37.945896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026485, 29.955671, 37.652771>,  <34.977364, 29.799932, 37.476894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026485, 29.955671, 37.652771>,  <35.108356, 30.215237, 37.945896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026485, 29.955671, 37.652771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112797, -0.728041, 0.676190,
		-0.972309, 0.221060, 0.075818,
		-0.204677, -0.648914, -0.732815,
		34.965084, 29.760998, 37.432926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434460, 29.806501, 38.136143>,  <35.108356, 30.215237, 37.945896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434460, 29.806501, 38.136143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636147, 29.601252, 37.858303>,  <34.757160, 29.478102, 37.691601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636147, 29.601252, 37.858303>,  <34.434460, 29.806501, 38.136143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636147, 29.601252, 37.858303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142158, -0.842675, 0.519318,
		-0.851802, -0.163100, -0.497828,
		0.504207, -0.513126, -0.694606,
		34.787411, 29.447315, 37.649921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982426, 29.268656, 37.928810>,  <34.434460, 29.806501, 38.136143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982426, 29.268656, 37.928810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359821, 29.154104, 37.862106>,  <34.586258, 29.085373, 37.822083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359821, 29.154104, 37.862106>,  <33.982426, 29.268656, 37.928810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359821, 29.154104, 37.862106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139112, -0.798983, 0.585042,
		-0.300782, -0.528784, -0.793673,
		0.943492, -0.286379, -0.166760,
		34.642868, 29.068190, 37.812077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930275, 28.549746, 37.816864>,  <33.982426, 29.268656, 37.928810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930275, 28.549746, 37.816864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298580, 28.647705, 37.938332>,  <34.519566, 28.706480, 38.011211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298580, 28.647705, 37.938332>,  <33.930275, 28.549746, 37.816864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298580, 28.647705, 37.938332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045511, -0.705658, 0.707089,
		0.387452, -0.664884, -0.638600,
		0.920766, 0.244900, 0.303668,
		34.574810, 28.721174, 38.029430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281906, 27.970470, 37.888790>,  <33.930275, 28.549746, 37.816864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281906, 27.970470, 37.888790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463146, 28.235737, 38.127087>,  <34.571892, 28.394897, 38.270065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463146, 28.235737, 38.127087>,  <34.281906, 27.970470, 37.888790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463146, 28.235737, 38.127087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110980, -0.621115, 0.775822,
		0.884523, -0.417642, -0.207831,
		0.453103, 0.663168, 0.595740,
		34.599075, 28.434687, 38.305809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013397, 27.749567, 38.248760>,  <34.281906, 27.970470, 37.888790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013397, 27.749567, 38.248760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817551, 28.024015, 38.463985>,  <34.700043, 28.188684, 38.593121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817551, 28.024015, 38.463985>,  <35.013397, 27.749567, 38.248760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817551, 28.024015, 38.463985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059702, -0.589262, 0.805733,
		0.869891, 0.426624, 0.247550,
		-0.489617, 0.686121, 0.538064,
		34.670666, 28.229853, 38.625404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138035, 27.598934, 38.841503>,  <35.013397, 27.749567, 38.248760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138035, 27.598934, 38.841503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880417, 27.880203, 38.962006>,  <34.725845, 28.048964, 39.034306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880417, 27.880203, 38.962006>,  <35.138035, 27.598934, 38.841503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880417, 27.880203, 38.962006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202558, -0.536500, 0.819230,
		0.737681, 0.466602, 0.487965,
		-0.644047, 0.703171, 0.301252,
		34.687202, 28.091154, 39.052380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248623, 27.808706, 39.547768>,  <35.138035, 27.598934, 38.841503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248623, 27.808706, 39.547768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861595, 27.890314, 39.488186>,  <34.629379, 27.939278, 39.452438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861595, 27.890314, 39.488186>,  <35.248623, 27.808706, 39.547768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861595, 27.890314, 39.488186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244345, -0.606292, 0.756774,
		0.064086, 0.768627, 0.636479,
		-0.967568, 0.204019, -0.148955,
		34.571323, 27.951519, 39.443501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043056, 28.153244, 40.100037>,  <35.248623, 27.808706, 39.547768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043056, 28.153244, 40.100037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718544, 27.989706, 39.932861>,  <34.523838, 27.891582, 39.832558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718544, 27.989706, 39.932861>,  <35.043056, 28.153244, 40.100037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718544, 27.989706, 39.932861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202527, -0.474058, 0.856885,
		-0.548458, 0.779818, 0.301792,
		-0.811281, -0.408844, -0.417935,
		34.475159, 27.867052, 39.807480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659306, 28.237005, 40.669285>,  <35.043056, 28.153244, 40.100037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659306, 28.237005, 40.669285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464539, 27.994709, 40.417576>,  <34.347679, 27.849331, 40.266548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464539, 27.994709, 40.417576>,  <34.659306, 28.237005, 40.669285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464539, 27.994709, 40.417576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298159, -0.561904, 0.771599,
		-0.820982, 0.563330, 0.092994,
		-0.486918, -0.605742, -0.629275,
		34.318462, 27.812986, 40.228794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968655, 28.310419, 40.850220>,  <34.659306, 28.237005, 40.669285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968655, 28.310419, 40.850220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980698, 27.948578, 40.680145>,  <33.987923, 27.731472, 40.578102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980698, 27.948578, 40.680145>,  <33.968655, 28.310419, 40.850220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980698, 27.948578, 40.680145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406421, -0.399710, 0.821617,
		-0.913190, 0.148065, -0.379686,
		0.030111, -0.904604, -0.425188,
		33.989731, 27.677197, 40.552589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288971, 27.991840, 40.917973>,  <33.968655, 28.310419, 40.850220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288971, 27.991840, 40.917973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532063, 27.681606, 40.849693>,  <33.677917, 27.495466, 40.808727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532063, 27.681606, 40.849693>,  <33.288971, 27.991840, 40.917973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532063, 27.681606, 40.849693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337638, -0.446894, 0.828424,
		-0.718797, -0.445820, -0.533456,
		0.607726, -0.775584, -0.170700,
		33.714382, 27.448931, 40.798485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853741, 27.428638, 40.966049>,  <33.288971, 27.991840, 40.917973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853741, 27.428638, 40.966049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216858, 27.267323, 41.012119>,  <33.434727, 27.170532, 41.039761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216858, 27.267323, 41.012119>,  <32.853741, 27.428638, 40.966049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216858, 27.267323, 41.012119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329552, -0.516001, 0.790657,
		-0.259431, -0.755712, -0.601328,
		0.907794, -0.403290, 0.115180,
		33.489197, 27.146336, 41.046673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654213, 26.831009, 41.173996>,  <32.853741, 27.428638, 40.966049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654213, 26.831009, 41.173996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037144, 26.876917, 41.280087>,  <33.266903, 26.904461, 41.343742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037144, 26.876917, 41.280087>,  <32.654213, 26.831009, 41.173996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037144, 26.876917, 41.280087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196212, -0.415684, 0.888092,
		0.212177, -0.902238, -0.375428,
		0.957330, 0.114769, 0.265229,
		33.324345, 26.911348, 41.359653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939606, 26.157562, 41.401901>,  <32.654213, 26.831009, 41.173996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939606, 26.157562, 41.401901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170521, 26.421963, 41.593658>,  <33.309071, 26.580603, 41.708714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170521, 26.421963, 41.593658>,  <32.939606, 26.157562, 41.401901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170521, 26.421963, 41.593658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147703, -0.492887, 0.857465,
		0.803072, -0.565811, -0.186905,
		0.577286, 0.661000, 0.479396,
		33.343708, 26.620262, 41.737476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305771, 25.814877, 41.811558>,  <32.939606, 26.157562, 41.401901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305771, 25.814877, 41.811558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336727, 26.172127, 41.988800>,  <33.355301, 26.386477, 42.095146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336727, 26.172127, 41.988800>,  <33.305771, 25.814877, 41.811558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336727, 26.172127, 41.988800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026612, -0.442428, 0.896409,
		0.996646, -0.081162, -0.010471,
		0.077387, 0.893124, 0.443104,
		33.359943, 26.440063, 42.121731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806282, 25.779036, 42.366661>,  <33.305771, 25.814877, 41.811558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806282, 25.779036, 42.366661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567093, 26.085476, 42.460915>,  <33.423580, 26.269341, 42.517467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567093, 26.085476, 42.460915>,  <33.806282, 25.779036, 42.366661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567093, 26.085476, 42.460915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136458, -0.192381, 0.971786,
		0.789815, 0.613255, 0.010498,
		-0.597972, 0.766100, 0.235629,
		33.387703, 26.315306, 42.531605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119972, 26.193979, 42.912567>,  <33.806282, 25.779036, 42.366661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119972, 26.193979, 42.912567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723404, 26.246174, 42.909695>,  <33.485462, 26.277491, 42.907970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723404, 26.246174, 42.909695>,  <34.119972, 26.193979, 42.912567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723404, 26.246174, 42.909695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021466, -0.108389, 0.993877,
		0.128910, 0.985508, 0.110261,
		-0.991424, 0.130487, -0.007183,
		33.425976, 26.285320, 42.907539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935532, 26.756508, 43.461262>,  <34.119972, 26.193979, 42.912567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935532, 26.756508, 43.461262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604275, 26.541176, 43.398796>,  <33.405521, 26.411978, 43.361317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604275, 26.541176, 43.398796>,  <33.935532, 26.756508, 43.461262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604275, 26.541176, 43.398796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201652, 0.026173, 0.979107,
		-0.522994, 0.842329, -0.130230,
		-0.828139, -0.538328, -0.156169,
		33.355835, 26.379677, 43.351944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422466, 27.125284, 43.721363>,  <33.935532, 26.756508, 43.461262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422466, 27.125284, 43.721363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296268, 26.746706, 43.693928>,  <33.220551, 26.519560, 43.677467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296268, 26.746706, 43.693928>,  <33.422466, 27.125284, 43.721363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296268, 26.746706, 43.693928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148489, -0.022148, 0.988666,
		-0.937237, 0.322104, -0.133549,
		-0.315496, -0.946445, -0.068587,
		33.201618, 26.462772, 43.673351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839958, 27.148905, 44.172905>,  <33.422466, 27.125284, 43.721363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839958, 27.148905, 44.172905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973625, 26.773531, 44.137878>,  <33.053825, 26.548306, 44.116863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973625, 26.773531, 44.137878>,  <32.839958, 27.148905, 44.172905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973625, 26.773531, 44.137878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095902, -0.126279, 0.987348,
		-0.937621, -0.321543, -0.132197,
		0.334168, -0.938437, -0.087565,
		33.073875, 26.492001, 44.111610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442081, 26.841480, 44.716713>,  <32.839958, 27.148905, 44.172905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442081, 26.841480, 44.716713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725632, 26.570608, 44.637802>,  <32.895763, 26.408085, 44.590454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725632, 26.570608, 44.637802>,  <32.442081, 26.841480, 44.716713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725632, 26.570608, 44.637802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046303, -0.323772, 0.945001,
		-0.703812, -0.660754, -0.260870,
		0.708875, -0.677183, -0.197279,
		32.938293, 26.367453, 44.578617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161869, 26.173151, 44.849663>,  <32.442081, 26.841480, 44.716713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161869, 26.173151, 44.849663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558487, 26.148081, 44.895111>,  <32.796459, 26.133038, 44.922382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558487, 26.148081, 44.895111>,  <32.161869, 26.173151, 44.849663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558487, 26.148081, 44.895111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123421, -0.185104, 0.974938,
		-0.040071, -0.980718, -0.191274,
		0.991545, -0.062674, 0.113624,
		32.855949, 26.129278, 44.929199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289848, 25.560310, 45.216095>,  <32.161869, 26.173151, 44.849663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289848, 25.560310, 45.216095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622524, 25.778114, 45.259529>,  <32.822132, 25.908798, 45.285591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622524, 25.778114, 45.259529>,  <32.289848, 25.560310, 45.216095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622524, 25.778114, 45.259529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012846, -0.176641, 0.984191,
		0.555085, -0.819942, -0.139917,
		0.831694, 0.544512, 0.108584,
		32.872032, 25.941467, 45.292103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728310, 25.117552, 45.566994>,  <32.289848, 25.560310, 45.216095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728310, 25.117552, 45.566994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875702, 25.477524, 45.660244>,  <32.964138, 25.693508, 45.716194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875702, 25.477524, 45.660244>,  <32.728310, 25.117552, 45.566994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875702, 25.477524, 45.660244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011104, -0.246494, 0.969081,
		0.929570, -0.359674, -0.080835,
		0.368478, 0.899931, 0.233127,
		32.986244, 25.747503, 45.730183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305859, 24.997572, 45.995262>,  <32.728310, 25.117552, 45.566994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305859, 24.997572, 45.995262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190655, 25.372181, 46.075233>,  <33.121532, 25.596947, 46.123219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190655, 25.372181, 46.075233>,  <33.305859, 24.997572, 45.995262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190655, 25.372181, 46.075233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010507, -0.205674, 0.978564,
		0.957570, 0.283936, 0.049396,
		-0.288009, 0.936525, 0.199931,
		33.104252, 25.653139, 46.135212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840122, 25.329088, 46.425625>,  <33.305859, 24.997572, 45.995262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840122, 25.329088, 46.425625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505280, 25.542446, 46.474190>,  <33.304375, 25.670462, 46.503330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505280, 25.542446, 46.474190>,  <33.840122, 25.329088, 46.425625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505280, 25.542446, 46.474190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055929, -0.137339, 0.988944,
		0.544174, 0.834642, 0.085135,
		-0.837106, 0.533396, 0.121417,
		33.254147, 25.702465, 46.510616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987106, 25.680105, 47.009388>,  <33.840122, 25.329088, 46.425625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987106, 25.680105, 47.009388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590805, 25.728909, 46.985676>,  <33.353024, 25.758190, 46.971447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590805, 25.728909, 46.985676>,  <33.987106, 25.680105, 47.009388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590805, 25.728909, 46.985676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078377, -0.158174, 0.984296,
		0.110714, 0.979844, 0.166275,
		-0.990757, 0.122007, -0.059285,
		33.293579, 25.765511, 46.967892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753704, 26.077332, 47.565037>,  <33.987106, 25.680105, 47.009388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753704, 26.077332, 47.565037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430981, 25.876783, 47.440018>,  <33.237347, 25.756454, 47.365005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430981, 25.876783, 47.440018>,  <33.753704, 26.077332, 47.565037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430981, 25.876783, 47.440018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292392, -0.120848, 0.948632,
		-0.513386, 0.856752, -0.049095,
		-0.806810, -0.501369, -0.312550,
		33.188938, 25.726372, 47.346252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213032, 26.278458, 48.074707>,  <33.753704, 26.077332, 47.565037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213032, 26.278458, 48.074707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058777, 25.956095, 47.895020>,  <32.966225, 25.762676, 47.787209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058777, 25.956095, 47.895020>,  <33.213032, 26.278458, 48.074707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058777, 25.956095, 47.895020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404561, -0.289881, 0.867352,
		-0.829225, 0.516219, -0.214250,
		-0.385637, -0.805907, -0.449219,
		32.943085, 25.714323, 47.760254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914783, 26.730350, 48.502842>,  <33.213032, 26.278458, 48.074707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914783, 26.730350, 48.502842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144844, 27.000660, 48.687248>,  <33.282879, 27.162846, 48.797890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144844, 27.000660, 48.687248>,  <32.914783, 26.730350, 48.502842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144844, 27.000660, 48.687248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104943, 0.497944, -0.860836,
		-0.811289, 0.543490, 0.215475,
		0.575150, 0.675774, 0.461012,
		33.317390, 27.203392, 48.825550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727253, 27.377249, 48.273247>,  <32.914783, 26.730350, 48.502842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727253, 27.377249, 48.273247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097996, 27.436100, 48.411400>,  <33.320442, 27.471411, 48.494293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097996, 27.436100, 48.411400>,  <32.727253, 27.377249, 48.273247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097996, 27.436100, 48.411400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232817, 0.496454, -0.836260,
		-0.294504, 0.855504, 0.425888,
		0.926857, 0.147128, 0.345384,
		33.376053, 27.480238, 48.515015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837746, 28.140642, 48.255249>,  <32.727253, 27.377249, 48.273247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837746, 28.140642, 48.255249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177605, 27.932985, 48.218178>,  <33.381519, 27.808392, 48.195934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177605, 27.932985, 48.218178>,  <32.837746, 28.140642, 48.255249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177605, 27.932985, 48.218178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250849, 0.552461, -0.794897,
		0.463869, 0.652133, 0.599624,
		0.849647, -0.519143, -0.092682,
		33.432499, 27.777243, 48.190372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189148, 28.651978, 48.022430>,  <32.837746, 28.140642, 48.255249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189148, 28.651978, 48.022430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399723, 28.325699, 47.926506>,  <33.526066, 28.129932, 47.868950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399723, 28.325699, 47.926506>,  <33.189148, 28.651978, 48.022430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399723, 28.325699, 47.926506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249515, 0.417859, -0.873577,
		0.812779, 0.400044, 0.423503,
		0.526434, -0.815695, -0.239810,
		33.557652, 28.080990, 47.854565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857941, 28.937683, 47.740768>,  <33.189148, 28.651978, 48.022430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857941, 28.937683, 47.740768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837151, 28.552954, 47.633289>,  <33.824677, 28.322117, 47.568802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837151, 28.552954, 47.633289>,  <33.857941, 28.937683, 47.740768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837151, 28.552954, 47.633289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298027, 0.241860, -0.923409,
		0.953141, -0.128075, 0.274077,
		-0.051977, -0.961821, -0.268696,
		33.821556, 28.264408, 47.552681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284100, 28.919794, 47.263683>,  <33.857941, 28.937683, 47.740768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284100, 28.919794, 47.263683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110508, 28.570318, 47.175747>,  <34.006355, 28.360632, 47.122986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110508, 28.570318, 47.175747>,  <34.284100, 28.919794, 47.263683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110508, 28.570318, 47.175747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265947, 0.108912, -0.957815,
		0.860777, -0.474136, 0.185090,
		-0.433976, -0.873689, -0.219844,
		33.980316, 28.308212, 47.109795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787632, 28.450394, 46.891216>,  <34.284100, 28.919794, 47.263683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787632, 28.450394, 46.891216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408989, 28.354727, 46.804741>,  <34.181805, 28.297327, 46.752857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408989, 28.354727, 46.804741>,  <34.787632, 28.450394, 46.891216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408989, 28.354727, 46.804741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212893, 0.039855, -0.976262,
		0.242108, -0.970160, 0.013191,
		-0.946605, -0.239169, -0.216189,
		34.125008, 28.282976, 46.739883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810829, 27.979361, 46.319149>,  <34.787632, 28.450394, 46.891216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810829, 27.979361, 46.319149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429955, 28.101522, 46.322449>,  <34.201431, 28.174820, 46.324429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429955, 28.101522, 46.322449>,  <34.810829, 27.979361, 46.319149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429955, 28.101522, 46.322449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031381, 0.124616, -0.991709,
		-0.303900, -0.944033, -0.128241,
		-0.952187, 0.305405, 0.008246,
		34.144299, 28.193144, 46.324921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571564, 27.635479, 45.719013>,  <34.810829, 27.979361, 46.319149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571564, 27.635479, 45.719013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304405, 27.918499, 45.811352>,  <34.144112, 28.088310, 45.866756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304405, 27.918499, 45.811352>,  <34.571564, 27.635479, 45.719013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304405, 27.918499, 45.811352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046276, 0.270092, -0.961722,
		-0.742816, -0.653012, -0.147650,
		-0.667895, 0.707549, 0.230847,
		34.104038, 28.130764, 45.880608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902439, 27.568083, 45.236889>,  <34.571564, 27.635479, 45.719013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902439, 27.568083, 45.236889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915096, 27.943909, 45.373249>,  <33.922691, 28.169405, 45.455067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915096, 27.943909, 45.373249>,  <33.902439, 27.568083, 45.236889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915096, 27.943909, 45.373249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047253, 0.339287, -0.939495,
		-0.998381, 0.045841, -0.033660,
		0.031647, 0.939565, 0.340904,
		33.924591, 28.225779, 45.475521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296509, 28.068949, 44.896526>,  <33.902439, 27.568083, 45.236889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296509, 28.068949, 44.896526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583466, 28.317186, 45.023148>,  <33.755642, 28.466129, 45.099121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583466, 28.317186, 45.023148>,  <33.296509, 28.068949, 44.896526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583466, 28.317186, 45.023148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058909, 0.398722, -0.915178,
		-0.694172, 0.675191, 0.249482,
		0.717394, 0.620594, 0.316557,
		33.798683, 28.503365, 45.118114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110878, 28.792595, 44.755852>,  <33.296509, 28.068949, 44.896526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110878, 28.792595, 44.755852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510235, 28.784437, 44.777004>,  <33.749847, 28.779543, 44.789696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510235, 28.784437, 44.777004>,  <33.110878, 28.792595, 44.755852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510235, 28.784437, 44.777004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056472, 0.279341, -0.958530,
		0.004778, 0.959975, 0.280043,
		0.998393, -0.020395, 0.052877,
		33.809753, 28.778318, 44.792866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350029, 29.423952, 44.495270>,  <33.110878, 28.792595, 44.755852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350029, 29.423952, 44.495270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644863, 29.163479, 44.422981>,  <33.821766, 29.007195, 44.379608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644863, 29.163479, 44.422981>,  <33.350029, 29.423952, 44.495270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644863, 29.163479, 44.422981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117010, 0.386355, -0.914898,
		0.665588, 0.653216, 0.360973,
		0.737090, -0.651183, -0.180721,
		33.865990, 28.968124, 44.368767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792908, 29.802860, 44.021713>,  <33.350029, 29.423952, 44.495270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792908, 29.802860, 44.021713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934334, 29.429308, 44.000332>,  <34.019188, 29.205175, 43.987503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934334, 29.429308, 44.000332>,  <33.792908, 29.802860, 44.021713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934334, 29.429308, 44.000332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462116, 0.224070, -0.858045,
		0.813292, 0.278668, 0.510784,
		0.353561, -0.933883, -0.053458,
		34.040401, 29.149143, 43.984295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454273, 29.875477, 43.834637>,  <33.792908, 29.802860, 44.021713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454273, 29.875477, 43.834637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399643, 29.492691, 43.732212>,  <34.366863, 29.263020, 43.670757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399643, 29.492691, 43.732212>,  <34.454273, 29.875477, 43.834637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399643, 29.492691, 43.732212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414902, 0.179466, -0.891991,
		0.899557, -0.228067, 0.372535,
		-0.136577, -0.956962, -0.256066,
		34.358669, 29.205603, 43.655392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999901, 29.803585, 43.495773>,  <34.454273, 29.875477, 43.834637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999901, 29.803585, 43.495773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788174, 29.479612, 43.394711>,  <34.661137, 29.285229, 43.334072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788174, 29.479612, 43.394711>,  <34.999901, 29.803585, 43.495773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788174, 29.479612, 43.394711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247060, 0.137750, -0.959159,
		0.811656, -0.570120, 0.127188,
		-0.529316, -0.809931, -0.252660,
		34.629379, 29.236633, 43.318913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463886, 29.271299, 43.090996>,  <34.999901, 29.803585, 43.495773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463886, 29.271299, 43.090996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077461, 29.243956, 42.991356>,  <34.845608, 29.227549, 42.931572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077461, 29.243956, 42.991356>,  <35.463886, 29.271299, 43.090996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077461, 29.243956, 42.991356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240296, 0.115991, -0.963745,
		0.094769, -0.990895, -0.095629,
		-0.966062, -0.068354, -0.249101,
		34.787643, 29.223448, 42.916626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440865, 28.758137, 42.629513>,  <35.463886, 29.271299, 43.090996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440865, 28.758137, 42.629513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117725, 28.982800, 42.558041>,  <34.923843, 29.117598, 42.515156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117725, 28.982800, 42.558041>,  <35.440865, 28.758137, 42.629513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117725, 28.982800, 42.558041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250656, 0.053011, -0.966624,
		-0.533437, -0.825671, -0.183607,
		-0.807847, 0.561655, -0.178681,
		34.875370, 29.151297, 42.504436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170116, 28.541754, 41.961456>,  <35.440865, 28.758137, 42.629513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170116, 28.541754, 41.961456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014744, 28.907568, 42.006611>,  <34.921520, 29.127056, 42.033703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014744, 28.907568, 42.006611>,  <35.170116, 28.541754, 41.961456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014744, 28.907568, 42.006611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279645, 0.233720, -0.931221,
		-0.878019, -0.330149, -0.346530,
		-0.388433, 0.914536, 0.112886,
		34.898212, 29.181929, 42.040478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759338, 28.573730, 41.358971>,  <35.170116, 28.541754, 41.961456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759338, 28.573730, 41.358971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805248, 28.954227, 41.473484>,  <34.832794, 29.182526, 41.542194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805248, 28.954227, 41.473484>,  <34.759338, 28.573730, 41.358971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805248, 28.954227, 41.473484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193754, 0.261221, -0.945634,
		-0.974313, 0.164005, -0.154326,
		0.114776, 0.951244, 0.286287,
		34.839680, 29.239601, 41.559372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405750, 28.927223, 40.872082>,  <34.759338, 28.573730, 41.358971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405750, 28.927223, 40.872082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649574, 29.198540, 41.036209>,  <34.795868, 29.361330, 41.134686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649574, 29.198540, 41.036209>,  <34.405750, 28.927223, 40.872082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649574, 29.198540, 41.036209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169286, 0.394283, -0.903263,
		-0.774455, 0.620052, 0.125514,
		0.609558, 0.678289, 0.410320,
		34.832443, 29.402027, 41.159306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274685, 29.515373, 40.473400>,  <34.405750, 28.927223, 40.872082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274685, 29.515373, 40.473400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631123, 29.575508, 40.644680>,  <34.844986, 29.611589, 40.747448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631123, 29.575508, 40.644680>,  <34.274685, 29.515373, 40.473400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631123, 29.575508, 40.644680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360360, 0.339119, -0.868987,
		-0.275850, 0.928653, 0.248011,
		0.891093, 0.150337, 0.428196,
		34.898449, 29.620609, 40.773140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597488, 30.165623, 40.200184>,  <34.274685, 29.515373, 40.473400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597488, 30.165623, 40.200184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888386, 29.926918, 40.335827>,  <35.062923, 29.783695, 40.417213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888386, 29.926918, 40.335827>,  <34.597488, 30.165623, 40.200184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888386, 29.926918, 40.335827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498154, 0.119014, -0.858882,
		0.472188, 0.793544, 0.383831,
		0.727242, -0.596761, 0.339110,
		35.106560, 29.747890, 40.437561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067272, 30.453358, 39.767368>,  <34.597488, 30.165623, 40.200184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067272, 30.453358, 39.767368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252323, 30.152916, 39.955757>,  <35.363354, 29.972651, 40.068790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252323, 30.152916, 39.955757>,  <35.067272, 30.453358, 39.767368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252323, 30.152916, 39.955757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629675, -0.095582, -0.770957,
		0.624085, 0.653228, 0.428732,
		0.462632, -0.751104, 0.470972,
		35.391113, 29.927586, 40.097050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775845, 30.636335, 39.882500>,  <35.067272, 30.453358, 39.767368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775845, 30.636335, 39.882500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760849, 30.236689, 39.874947>,  <35.751850, 29.996901, 39.870415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760849, 30.236689, 39.874947>,  <35.775845, 30.636335, 39.882500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760849, 30.236689, 39.874947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681357, -0.011738, -0.731857,
		0.730990, -0.040303, 0.681197,
		-0.037492, -0.999119, -0.018880,
		35.749603, 29.936953, 39.869282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486660, 30.365555, 40.039318>,  <35.775845, 30.636335, 39.882500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486660, 30.365555, 40.039318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291904, 30.069471, 39.853832>,  <36.175053, 29.891821, 39.742542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291904, 30.069471, 39.853832>,  <36.486660, 30.365555, 40.039318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291904, 30.069471, 39.853832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664879, 0.030212, -0.746339,
		0.566457, -0.671697, 0.477440,
		-0.486890, -0.740209, -0.463711,
		36.145836, 29.847408, 39.714718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013710, 29.919807, 39.780701>,  <36.486660, 30.365555, 40.039318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013710, 29.919807, 39.780701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702076, 29.815329, 39.552734>,  <36.515095, 29.752642, 39.415955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702076, 29.815329, 39.552734>,  <37.013710, 29.919807, 39.780701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702076, 29.815329, 39.552734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553105, 0.141567, -0.820995,
		0.295121, -0.954848, 0.034175,
		-0.779088, -0.261196, -0.569911,
		36.468349, 29.736971, 39.381760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278145, 29.486740, 39.242970>,  <37.013710, 29.919807, 39.780701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278145, 29.486740, 39.242970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929802, 29.607105, 39.087505>,  <36.720795, 29.679325, 38.994228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929802, 29.607105, 39.087505>,  <37.278145, 29.486740, 39.242970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929802, 29.607105, 39.087505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455947, 0.199164, -0.867436,
		-0.183617, -0.932622, -0.310645,
		-0.870860, 0.300913, -0.388657,
		36.668545, 29.697380, 38.970909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291157, 29.219341, 38.504356>,  <37.278145, 29.486740, 39.242970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291157, 29.219341, 38.504356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023014, 29.515944, 38.515606>,  <36.862129, 29.693905, 38.522354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023014, 29.515944, 38.515606>,  <37.291157, 29.219341, 38.504356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023014, 29.515944, 38.515606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372650, 0.369181, -0.851373,
		-0.641682, -0.560243, -0.523805,
		-0.670355, 0.741507, 0.028122,
		36.821907, 29.738396, 38.524044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150063, 29.351919, 37.774368>,  <37.291157, 29.219341, 38.504356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150063, 29.351919, 37.774368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027710, 29.664852, 37.991398>,  <36.954296, 29.852612, 38.121616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027710, 29.664852, 37.991398>,  <37.150063, 29.351919, 37.774368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027710, 29.664852, 37.991398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475426, 0.619266, -0.624884,
		-0.824866, 0.066812, -0.561366,
		-0.305885, 0.782334, 0.542575,
		36.935944, 29.899551, 38.154171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945477, 29.979250, 37.260895>,  <37.150063, 29.351919, 37.774368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945477, 29.979250, 37.260895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010540, 30.152617, 37.615452>,  <37.049576, 30.256636, 37.828186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010540, 30.152617, 37.615452>,  <36.945477, 29.979250, 37.260895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010540, 30.152617, 37.615452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492923, 0.742526, -0.453522,
		-0.854734, 0.510692, -0.092865,
		0.162655, 0.433416, 0.886394,
		37.059338, 30.282640, 37.881371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880421, 30.708286, 37.055237>,  <36.945477, 29.979250, 37.260895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880421, 30.708286, 37.055237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088688, 30.683586, 37.395847>,  <37.213650, 30.668766, 37.600212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088688, 30.683586, 37.395847>,  <36.880421, 30.708286, 37.055237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088688, 30.683586, 37.395847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537665, 0.798469, -0.270856,
		-0.663189, 0.598860, 0.448939,
		0.520669, -0.061750, 0.851523,
		37.244888, 30.665062, 37.651302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058289, 31.370537, 37.230865>,  <36.880421, 30.708286, 37.055237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058289, 31.370537, 37.230865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308956, 31.196102, 37.489204>,  <37.459354, 31.091442, 37.644207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308956, 31.196102, 37.489204>,  <37.058289, 31.370537, 37.230865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308956, 31.196102, 37.489204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692839, 0.691169, -0.205573,
		-0.356741, 0.576294, 0.735269,
		0.626666, -0.436087, 0.645847,
		37.496956, 31.065275, 37.682957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294987, 31.901716, 37.669899>,  <37.058289, 31.370537, 37.230865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294987, 31.901716, 37.669899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587231, 31.629883, 37.696377>,  <37.762577, 31.466784, 37.712265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587231, 31.629883, 37.696377>,  <37.294987, 31.901716, 37.669899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587231, 31.629883, 37.696377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662083, 0.681403, -0.311987,
		0.166915, 0.271766, 0.947778,
		0.730606, -0.679583, 0.066195,
		37.806412, 31.426008, 37.716236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854301, 32.189453, 38.028843>,  <37.294987, 31.901716, 37.669899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854301, 32.189453, 38.028843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027561, 31.885597, 37.834797>,  <38.131519, 31.703285, 37.718369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027561, 31.885597, 37.834797>,  <37.854301, 32.189453, 38.028843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027561, 31.885597, 37.834797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825672, 0.550261, -0.124416,
		0.361449, -0.346651, 0.865556,
		0.433153, -0.759636, -0.485111,
		38.157505, 31.657707, 37.689262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549038, 32.112823, 38.217247>,  <37.854301, 32.189453, 38.028843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549038, 32.112823, 38.217247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536488, 31.900496, 37.878487>,  <38.528957, 31.773100, 37.675228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536488, 31.900496, 37.878487>,  <38.549038, 32.112823, 38.217247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536488, 31.900496, 37.878487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843301, 0.440774, -0.307508,
		0.536524, -0.723845, 0.433810,
		-0.031376, -0.530818, -0.846905,
		38.527077, 31.741251, 37.624416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186245, 31.934748, 38.135220>,  <38.549038, 32.112823, 38.217247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186245, 31.934748, 38.135220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030560, 31.894053, 37.769012>,  <38.937149, 31.869637, 37.549290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030560, 31.894053, 37.769012>,  <39.186245, 31.934748, 38.135220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030560, 31.894053, 37.769012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804734, 0.446077, -0.391685,
		0.448247, -0.889191, -0.091728,
		-0.389201, -0.101755, -0.915516,
		38.913795, 31.863531, 37.494358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699966, 31.747215, 37.743622>,  <39.186245, 31.934748, 38.135220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699966, 31.747215, 37.743622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439095, 31.907270, 37.486080>,  <39.282574, 32.003304, 37.331554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439095, 31.907270, 37.486080>,  <39.699966, 31.747215, 37.743622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439095, 31.907270, 37.486080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755488, 0.413073, -0.508536,
		0.062475, -0.818082, -0.571698,
		-0.652177, 0.400140, -0.643858,
		39.243443, 32.027313, 37.292923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011185, 31.533131, 37.029636>,  <39.699966, 31.747215, 37.743622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011185, 31.533131, 37.029636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769131, 31.848003, 36.982048>,  <39.623898, 32.036926, 36.953495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769131, 31.848003, 36.982048>,  <40.011185, 31.533131, 37.029636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769131, 31.848003, 36.982048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651338, 0.403589, -0.642554,
		-0.457791, -0.466323, -0.756948,
		-0.605133, 0.787184, -0.118974,
		39.587589, 32.084160, 36.946354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120033, 31.748766, 36.359051>,  <40.011185, 31.533131, 37.029636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120033, 31.748766, 36.359051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933292, 32.077595, 36.489429>,  <39.821247, 32.274891, 36.567657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933292, 32.077595, 36.489429>,  <40.120033, 31.748766, 36.359051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933292, 32.077595, 36.489429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591126, 0.564232, -0.576378,
		-0.657736, -0.076407, -0.749363,
		-0.466854, 0.822073, 0.325949,
		39.793236, 32.324215, 36.587215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846817, 32.142296, 35.798969>,  <40.120033, 31.748766, 36.359051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846817, 32.142296, 35.798969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957798, 32.402206, 36.082039>,  <40.024387, 32.558155, 36.251881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957798, 32.402206, 36.082039>,  <39.846817, 32.142296, 35.798969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957798, 32.402206, 36.082039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547871, 0.498079, -0.672127,
		-0.789214, 0.574197, -0.217804,
		0.277450, 0.649781, 0.707677,
		40.041035, 32.597141, 36.294342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182915, 32.808357, 35.512806>,  <39.846817, 32.142296, 35.798969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182915, 32.808357, 35.512806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305115, 32.917442, 35.877728>,  <40.378433, 32.982891, 36.096680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305115, 32.917442, 35.877728>,  <40.182915, 32.808357, 35.512806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305115, 32.917442, 35.877728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671609, 0.617471, -0.409476,
		-0.674990, 0.737807, 0.005483,
		0.305500, 0.272710, 0.912304,
		40.396763, 32.999256, 36.151421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211903, 33.635128, 35.602318>,  <40.182915, 32.808357, 35.512806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211903, 33.635128, 35.602318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481815, 33.429619, 35.814243>,  <40.643764, 33.306313, 35.941399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481815, 33.429619, 35.814243>,  <40.211903, 33.635128, 35.602318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481815, 33.429619, 35.814243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736531, 0.423316, -0.527566,
		0.046768, 0.746220, 0.664055,
		0.674785, -0.513770, 0.529816,
		40.684250, 33.275486, 35.973186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663815, 34.082432, 36.191551>,  <40.211903, 33.635128, 35.602318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663815, 34.082432, 36.191551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817696, 33.767334, 35.999107>,  <40.910023, 33.578278, 35.883640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817696, 33.767334, 35.999107>,  <40.663815, 34.082432, 36.191551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817696, 33.767334, 35.999107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740049, 0.574739, -0.349289,
		0.551662, -0.221672, 0.804071,
		0.384704, -0.787741, -0.481110,
		40.933105, 33.531013, 35.854774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324532, 33.900135, 36.201847>,  <40.663815, 34.082432, 36.191551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324532, 33.900135, 36.201847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229176, 33.750393, 35.843399>,  <41.171963, 33.660549, 35.628330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229176, 33.750393, 35.843399>,  <41.324532, 33.900135, 36.201847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229176, 33.750393, 35.843399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834569, 0.392912, -0.386155,
		0.496654, -0.839929, 0.218757,
		-0.238391, -0.374353, -0.896119,
		41.157658, 33.638088, 35.574562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708202, 33.908291, 36.859982>,  <41.324532, 33.900135, 36.201847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708202, 33.908291, 36.859982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525188, 34.248470, 36.756134>,  <41.415379, 34.452576, 36.693825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525188, 34.248470, 36.756134>,  <41.708202, 33.908291, 36.859982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525188, 34.248470, 36.756134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672947, -0.140337, 0.726256,
		0.581206, 0.507001, 0.636514,
		-0.457539, 0.850444, -0.259620,
		41.387928, 34.503605, 36.678249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532307, 34.323166, 37.501797>,  <41.708202, 33.908291, 36.859982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532307, 34.323166, 37.501797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278591, 34.440613, 37.215729>,  <41.126362, 34.511082, 37.044086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278591, 34.440613, 37.215729>,  <41.532307, 34.323166, 37.501797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278591, 34.440613, 37.215729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773058, -0.250172, 0.582919,
		-0.007761, 0.922607, 0.385662,
		-0.634287, 0.293615, -0.715171,
		41.088306, 34.528698, 37.001179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233376, 34.691090, 37.416050>,  <41.532307, 34.323166, 37.501797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233376, 34.691090, 37.416050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552586, 34.575447, 37.204552>,  <42.744110, 34.506062, 37.077652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552586, 34.575447, 37.204552>,  <42.233376, 34.691090, 37.416050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552586, 34.575447, 37.204552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409308, 0.904002, 0.123477,
		0.442290, -0.314958, 0.839751,
		0.798027, -0.289105, -0.528746,
		42.791992, 34.488716, 37.045929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659271, 35.108593, 37.714745>,  <42.233376, 34.691090, 37.416050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659271, 35.108593, 37.714745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859856, 34.963894, 37.400375>,  <42.980206, 34.877075, 37.211754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859856, 34.963894, 37.400375>,  <42.659271, 35.108593, 37.714745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859856, 34.963894, 37.400375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568749, 0.822363, -0.015622,
		0.651965, -0.439159, 0.618128,
		0.501465, -0.361744, -0.785923,
		43.010296, 34.855370, 37.164600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327515, 35.326477, 37.746540>,  <42.659271, 35.108593, 37.714745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327515, 35.326477, 37.746540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264278, 35.256046, 37.357903>,  <43.226337, 35.213787, 37.124718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264278, 35.256046, 37.357903>,  <43.327515, 35.326477, 37.746540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264278, 35.256046, 37.357903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348455, 0.910719, -0.221745,
		0.923898, -0.373613, -0.082615,
		-0.158086, -0.176082, -0.971599,
		43.216854, 35.203220, 37.066422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869457, 35.500370, 37.330750>,  <43.327515, 35.326477, 37.746540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869457, 35.500370, 37.330750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571827, 35.514835, 37.063900>,  <43.393250, 35.523514, 36.903790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571827, 35.514835, 37.063900>,  <43.869457, 35.500370, 37.330750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571827, 35.514835, 37.063900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275921, 0.926031, -0.257554,
		0.608460, -0.375711, -0.699012,
		-0.744073, 0.036161, -0.667119,
		43.348606, 35.525684, 36.863766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159843, 35.739952, 36.819019>,  <43.869457, 35.500370, 37.330750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159843, 35.739952, 36.819019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773003, 35.836277, 36.786201>,  <43.540897, 35.894070, 36.766510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773003, 35.836277, 36.786201>,  <44.159843, 35.739952, 36.819019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773003, 35.836277, 36.786201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254286, 0.924730, -0.283220,
		0.007668, -0.294765, -0.955539,
		-0.967098, 0.240809, -0.082045,
		43.482872, 35.908520, 36.761589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227901, 36.247261, 36.259323>,  <44.159843, 35.739952, 36.819019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227901, 36.247261, 36.259323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852879, 36.307087, 36.384933>,  <43.627865, 36.342983, 36.460300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852879, 36.307087, 36.384933>,  <44.227901, 36.247261, 36.259323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852879, 36.307087, 36.384933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082141, 0.972497, -0.217950,
		-0.337985, -0.178547, -0.924060,
		-0.937560, 0.149568, 0.314024,
		43.571609, 36.351955, 36.479141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105900, 36.745483, 35.843853>,  <44.227901, 36.247261, 36.259323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105900, 36.745483, 35.843853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.847942, 36.764458, 36.148972>,  <43.693169, 36.775841, 36.332043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.847942, 36.764458, 36.148972>,  <44.105900, 36.745483, 35.843853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.847942, 36.764458, 36.148972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111021, 0.993300, 0.032089,
		-0.756167, 0.105381, -0.645837,
		-0.644892, 0.047437, 0.762800,
		43.654476, 36.778690, 36.377811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767120, 37.341297, 35.705391>,  <44.105900, 36.745483, 35.843853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767120, 37.341297, 35.705391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658791, 37.286011, 36.086452>,  <43.593792, 37.252838, 36.315090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658791, 37.286011, 36.086452>,  <43.767120, 37.341297, 35.705391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658791, 37.286011, 36.086452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031001, 0.990378, 0.134872,
		-0.962131, 0.006993, -0.272499,
		-0.270820, -0.138213, 0.952656,
		43.577545, 37.244549, 36.372250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383842, 37.876835, 35.742142>,  <43.767120, 37.341297, 35.705391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383842, 37.876835, 35.742142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472099, 37.772682, 36.118122>,  <43.525055, 37.710190, 36.343712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472099, 37.772682, 36.118122>,  <43.383842, 37.876835, 35.742142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472099, 37.772682, 36.118122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109159, 0.951060, 0.289083,
		-0.969227, -0.166389, 0.181423,
		0.220644, -0.260383, 0.939956,
		43.538292, 37.694569, 36.400108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735832, 37.972359, 36.119617>,  <43.383842, 37.876835, 35.742142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735832, 37.972359, 36.119617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081322, 38.009033, 36.317841>,  <43.288616, 38.031036, 36.436775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081322, 38.009033, 36.317841>,  <42.735832, 37.972359, 36.119617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081322, 38.009033, 36.317841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156787, 0.983401, 0.091321,
		-0.478960, -0.156573, 0.863760,
		0.863722, 0.091687, 0.495559,
		43.340439, 38.036541, 36.466507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643845, 38.360516, 36.795345>,  <42.735832, 37.972359, 36.119617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643845, 38.360516, 36.795345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036842, 38.377411, 36.722775>,  <43.272640, 38.387550, 36.679230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036842, 38.377411, 36.722775>,  <42.643845, 38.360516, 36.795345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036842, 38.377411, 36.722775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033416, 0.918192, 0.394724,
		0.183262, -0.393877, 0.900708,
		0.982496, 0.042240, -0.181432,
		43.331593, 38.390083, 36.668346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774963, 38.919800, 37.266575>,  <42.643845, 38.360516, 36.795345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774963, 38.919800, 37.266575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132694, 38.879360, 37.092236>,  <43.347332, 38.855095, 36.987633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132694, 38.879360, 37.092236>,  <42.774963, 38.919800, 37.266575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132694, 38.879360, 37.092236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188648, 0.968519, 0.162425,
		0.405704, -0.227482, 0.885243,
		0.894324, -0.101103, -0.435846,
		43.400993, 38.849030, 36.961483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315937, 39.201027, 37.739422>,  <42.774963, 38.919800, 37.266575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315937, 39.201027, 37.739422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511688, 39.207771, 37.390659>,  <43.629139, 39.211819, 37.181400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511688, 39.207771, 37.390659>,  <43.315937, 39.201027, 37.739422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511688, 39.207771, 37.390659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456467, 0.846957, 0.272584,
		0.743066, -0.531394, 0.406784,
		0.489378, 0.016864, -0.871909,
		43.658501, 39.212830, 37.129086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065414, 39.389671, 37.900391>,  <43.315937, 39.201027, 37.739422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065414, 39.389671, 37.900391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986057, 39.478802, 37.518608>,  <43.938442, 39.532280, 37.289539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986057, 39.478802, 37.518608>,  <44.065414, 39.389671, 37.900391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986057, 39.478802, 37.518608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417988, 0.900054, 0.123244,
		0.886526, -0.374502, -0.271699,
		-0.198389, 0.222826, -0.954458,
		43.926540, 39.545650, 37.232269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621010, 39.780281, 37.756554>,  <44.065414, 39.389671, 37.900391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621010, 39.780281, 37.756554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349705, 39.871723, 37.477211>,  <44.186920, 39.926586, 37.309605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349705, 39.871723, 37.477211>,  <44.621010, 39.780281, 37.756554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349705, 39.871723, 37.477211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198019, 0.972081, 0.125884,
		0.707637, -0.052906, -0.704594,
		-0.678262, 0.228603, -0.698356,
		44.146225, 39.940304, 37.267704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972309, 40.382458, 37.350842>,  <44.621010, 39.780281, 37.756554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972309, 40.382458, 37.350842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583866, 40.384136, 37.255405>,  <44.350800, 40.385143, 37.198143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583866, 40.384136, 37.255405>,  <44.972309, 40.382458, 37.350842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583866, 40.384136, 37.255405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032693, 0.992755, -0.115622,
		0.236381, -0.120082, -0.964212,
		-0.971110, 0.004192, -0.238594,
		44.292534, 40.385395, 37.183826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875301, 40.683659, 36.728176>,  <44.972309, 40.382458, 37.350842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875301, 40.683659, 36.728176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531223, 40.722843, 36.928364>,  <44.324776, 40.746353, 37.048477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531223, 40.722843, 36.928364>,  <44.875301, 40.683659, 36.728176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531223, 40.722843, 36.928364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083595, 0.995188, -0.051111,
		-0.503064, -0.002129, -0.864246,
		-0.860197, 0.097959, 0.500466,
		44.273163, 40.752232, 37.078503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662212, 41.287746, 36.442509>,  <44.875301, 40.683659, 36.728176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662212, 41.287746, 36.442509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435963, 41.237560, 36.768532>,  <44.300213, 41.207447, 36.964146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435963, 41.237560, 36.768532>,  <44.662212, 41.287746, 36.442509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435963, 41.237560, 36.768532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004620, 0.988825, 0.149011,
		-0.824650, 0.080519, -0.559883,
		-0.565625, -0.125469, 0.815062,
		44.266273, 41.199921, 37.013050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199409, 41.785172, 36.424694>,  <44.662212, 41.287746, 36.442509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199409, 41.785172, 36.424694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179462, 41.678635, 36.809731>,  <44.167496, 41.614712, 37.040752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179462, 41.678635, 36.809731>,  <44.199409, 41.785172, 36.424694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179462, 41.678635, 36.809731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057801, 0.962941, 0.263445,
		-0.997082, -0.042502, -0.063411,
		-0.049864, -0.266341, 0.962588,
		44.164505, 41.598732, 37.098507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661591, 42.194450, 36.728745>,  <44.199409, 41.785172, 36.424694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661591, 42.194450, 36.728745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909019, 42.065903, 37.015545>,  <44.057476, 41.988773, 37.187626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909019, 42.065903, 37.015545>,  <43.661591, 42.194450, 36.728745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909019, 42.065903, 37.015545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034943, 0.922879, 0.383502,
		-0.784954, -0.212168, 0.582093,
		0.618568, -0.321372, 0.717003,
		44.094589, 41.969490, 37.230644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365158, 42.585510, 37.313946>,  <43.661591, 42.194450, 36.728745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365158, 42.585510, 37.313946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717796, 42.451893, 37.447342>,  <43.929379, 42.371723, 37.527378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717796, 42.451893, 37.447342>,  <43.365158, 42.585510, 37.313946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717796, 42.451893, 37.447342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184263, 0.894014, 0.408394,
		-0.434562, -0.298588, 0.849707,
		0.881591, -0.334042, 0.333486,
		43.982273, 42.351681, 37.547386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480042, 42.698467, 37.987965>,  <43.365158, 42.585510, 37.313946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480042, 42.698467, 37.987965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845898, 42.691498, 37.826408>,  <44.065411, 42.687317, 37.729473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845898, 42.691498, 37.826408>,  <43.480042, 42.698467, 37.987965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845898, 42.691498, 37.826408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203001, 0.883781, 0.421571,
		0.349607, -0.467577, 0.811879,
		0.914639, -0.017428, -0.403894,
		44.120289, 42.686268, 37.705238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980328, 42.845482, 38.496479>,  <43.480042, 42.698467, 37.987965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980328, 42.845482, 38.496479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126644, 42.955013, 38.140678>,  <44.214436, 43.020733, 37.927197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126644, 42.955013, 38.140678>,  <43.980328, 42.845482, 38.496479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126644, 42.955013, 38.140678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210939, 0.906476, 0.365796,
		0.906476, -0.321437, 0.273825,
		-0.365796, -0.273825, 0.889502,
		44.236382, 43.037159, 37.873829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684044, 42.944664, 38.521255>,  <43.980328, 42.845482, 38.496479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684044, 42.944664, 38.521255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544140, 43.195267, 38.242641>,  <44.460197, 43.345631, 38.075474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544140, 43.195267, 38.242641>,  <44.684044, 42.944664, 38.521255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544140, 43.195267, 38.242641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447926, 0.764835, 0.463023,
		0.822819, -0.150048, -0.548137,
		-0.349758, 0.626509, -0.696531,
		44.439213, 43.383221, 38.033684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839031, 43.329155, 39.053509>,  <44.684044, 42.944664, 38.521255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839031, 43.329155, 39.053509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076176, 43.018044, 38.970013>,  <45.218464, 42.831375, 38.919914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076176, 43.018044, 38.970013>,  <44.839031, 43.329155, 39.053509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076176, 43.018044, 38.970013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788700, 0.508427, 0.345622,
		-0.162686, -0.369543, 0.914862,
		0.592863, -0.777779, -0.208744,
		45.254036, 42.784710, 38.907391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351463, 43.022511, 39.564320>,  <44.839031, 43.329155, 39.053509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351463, 43.022511, 39.564320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515953, 42.978859, 39.202328>,  <45.614647, 42.952667, 38.985134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515953, 42.978859, 39.202328>,  <45.351463, 43.022511, 39.564320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515953, 42.978859, 39.202328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849820, 0.404991, 0.337325,
		0.329694, -0.907784, 0.259286,
		0.411227, -0.109133, -0.904976,
		45.639320, 42.946117, 38.930836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013859, 42.697124, 39.566910>,  <45.351463, 43.022511, 39.564320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013859, 42.697124, 39.566910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993641, 42.949089, 39.256901>,  <45.981510, 43.100266, 39.070896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993641, 42.949089, 39.256901>,  <46.013859, 42.697124, 39.566910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993641, 42.949089, 39.256901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822800, 0.466111, 0.325178,
		0.566079, -0.621254, -0.541847,
		-0.050543, 0.629908, -0.775024,
		45.978477, 43.138062, 39.024395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556164, 42.876530, 38.998829>,  <46.013859, 42.697124, 39.566910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556164, 42.876530, 38.998829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.617416, 42.789921, 39.384506>,  <46.654167, 42.737953, 39.615913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.617416, 42.789921, 39.384506>,  <46.556164, 42.876530, 38.998829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.617416, 42.789921, 39.384506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118834, -0.964585, -0.235486,
		0.981034, 0.150640, -0.121979,
		0.153133, -0.216524, 0.964193,
		46.663357, 42.724964, 39.673763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.997528, 42.431644, 39.012363>,  <46.556164, 42.876530, 38.998829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.997528, 42.431644, 39.012363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.812115, 42.380539, 39.363091>,  <46.700867, 42.349876, 39.573528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.812115, 42.380539, 39.363091>,  <46.997528, 42.431644, 39.012363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.812115, 42.380539, 39.363091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126753, -0.969812, -0.208321,
		0.876969, -0.207703, 0.433341,
		-0.463528, -0.127764, 0.876823,
		46.673058, 42.342209, 39.626137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.839993, 42.007130, 38.340927>,  <46.997528, 42.431644, 39.012363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.839993, 42.007130, 38.340927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004276, 41.960812, 38.702682>,  <47.102844, 41.933022, 38.919735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004276, 41.960812, 38.702682>,  <46.839993, 42.007130, 38.340927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.004276, 41.960812, 38.702682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085829, -0.992409, -0.088083,
		0.907719, -0.041447, -0.417526,
		0.410706, -0.115791, 0.904386,
		47.127487, 41.926075, 38.973999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.335819, 41.596024, 38.250011>,  <46.839993, 42.007130, 38.340927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.335819, 41.596024, 38.250011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.245838, 41.521576, 38.632584>,  <47.191849, 41.476906, 38.862125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.245838, 41.521576, 38.632584>,  <47.335819, 41.596024, 38.250011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.245838, 41.521576, 38.632584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034606, -0.979441, -0.198740,
		0.973755, -0.077805, 0.213885,
		-0.224951, -0.186122, 0.956429,
		47.178352, 41.465740, 38.919514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.740837, 41.074326, 38.627998>,  <47.335819, 41.596024, 38.250011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.740837, 41.074326, 38.627998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376743, 41.094604, 38.792389>,  <47.158287, 41.106773, 38.891022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376743, 41.094604, 38.792389>,  <47.740837, 41.074326, 38.627998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.376743, 41.094604, 38.792389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177376, -0.944550, -0.276339,
		0.374179, -0.324431, 0.868755,
		-0.910235, 0.050696, 0.410977,
		47.103672, 41.109814, 38.915684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.637653, 40.490215, 39.171974>,  <47.740837, 41.074326, 38.627998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.637653, 40.490215, 39.171974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276272, 40.604527, 39.044155>,  <47.059444, 40.673111, 38.967464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276272, 40.604527, 39.044155>,  <47.637653, 40.490215, 39.171974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276272, 40.604527, 39.044155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192583, -0.936503, -0.293042,
		-0.383003, -0.203209, 0.901119,
		-0.903449, 0.285776, -0.319549,
		47.005238, 40.690258, 38.948292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249855, 40.065285, 39.543411>,  <47.637653, 40.490215, 39.171974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249855, 40.065285, 39.543411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.020527, 40.183800, 39.237858>,  <46.882931, 40.254910, 39.054527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.020527, 40.183800, 39.237858>,  <47.249855, 40.065285, 39.543411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.020527, 40.183800, 39.237858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271325, -0.948378, -0.164203,
		-0.773101, 0.113120, 0.624114,
		-0.573322, 0.296283, -0.763884,
		46.848530, 40.272686, 39.008694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646564, 39.657898, 39.628609>,  <47.249855, 40.065285, 39.543411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646564, 39.657898, 39.628609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673744, 39.782661, 39.249538>,  <46.690052, 39.857517, 39.022095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673744, 39.782661, 39.249538>,  <46.646564, 39.657898, 39.628609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.673744, 39.782661, 39.249538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302706, -0.898655, -0.317474,
		-0.950659, 0.308442, 0.033349,
		0.067953, 0.311904, -0.947681,
		46.694130, 39.876232, 38.965233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132210, 39.299896, 39.309704>,  <46.646564, 39.657898, 39.628609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132210, 39.299896, 39.309704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353001, 39.406071, 38.993511>,  <46.485474, 39.469776, 38.803795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353001, 39.406071, 38.993511>,  <46.132210, 39.299896, 39.309704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353001, 39.406071, 38.993511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234703, -0.860201, -0.452734,
		-0.800150, 0.435426, -0.412509,
		0.551974, 0.265438, -0.790486,
		46.518593, 39.485703, 38.756367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733353, 39.172543, 38.751152>,  <46.132210, 39.299896, 39.309704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733353, 39.172543, 38.751152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086571, 39.196083, 38.564915>,  <46.298500, 39.210209, 38.453175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086571, 39.196083, 38.564915>,  <45.733353, 39.172543, 38.751152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086571, 39.196083, 38.564915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243126, -0.791220, -0.561125,
		-0.401407, 0.608694, -0.684372,
		0.883042, 0.058851, -0.465591,
		46.351482, 39.213737, 38.425236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623444, 38.925835, 38.095417>,  <45.733353, 39.172543, 38.751152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623444, 38.925835, 38.095417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.018772, 38.870670, 38.121319>,  <46.255970, 38.837570, 38.136860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.018772, 38.870670, 38.121319>,  <45.623444, 38.925835, 38.095417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.018772, 38.870670, 38.121319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092588, -0.881191, -0.463606,
		0.120998, 0.452198, -0.883672,
		0.988325, -0.137913, 0.064755,
		46.315269, 38.829296, 38.140747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813873, 38.869938, 37.438553>,  <45.623444, 38.925835, 38.095417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813873, 38.869938, 37.438553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063095, 38.696243, 37.698780>,  <46.212627, 38.592026, 37.854916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063095, 38.696243, 37.698780>,  <45.813873, 38.869938, 37.438553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063095, 38.696243, 37.698780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020919, -0.822189, -0.568830,
		0.781897, 0.368023, -0.503187,
		0.623057, -0.434240, 0.650565,
		46.250011, 38.565971, 37.893951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288105, 38.560436, 36.972069>,  <45.813873, 38.869938, 37.438553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288105, 38.560436, 36.972069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349102, 38.379353, 37.323475>,  <46.385700, 38.270702, 37.534321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349102, 38.379353, 37.323475>,  <46.288105, 38.560436, 36.972069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349102, 38.379353, 37.323475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001189, -0.889000, -0.457905,
		0.988303, 0.068784, -0.136108,
		0.152496, -0.452711, 0.878520,
		46.394852, 38.243538, 37.587032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.816967, 38.111542, 36.883984>,  <46.288105, 38.560436, 36.972069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.816967, 38.111542, 36.883984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624439, 37.956131, 37.198277>,  <46.508923, 37.862885, 37.386852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624439, 37.956131, 37.198277>,  <46.816967, 38.111542, 36.883984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.624439, 37.956131, 37.198277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057391, -0.880510, -0.470541,
		0.874664, -0.271575, 0.401510,
		-0.481320, -0.388522, 0.785736,
		46.480042, 37.839573, 37.433998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.106010, 37.423882, 36.963711>,  <46.816967, 38.111542, 36.883984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.106010, 37.423882, 36.963711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.767937, 37.419537, 37.177460>,  <46.565094, 37.416927, 37.305710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.767937, 37.419537, 37.177460>,  <47.106010, 37.423882, 36.963711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.767937, 37.419537, 37.177460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213124, -0.910020, -0.355586,
		0.490153, -0.414421, 0.766815,
		-0.845179, -0.010865, 0.534372,
		46.514381, 37.416279, 37.337772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.127132, 36.838360, 37.352402>,  <47.106010, 37.423882, 36.963711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.127132, 36.838360, 37.352402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.737900, 36.930195, 37.360336>,  <46.504360, 36.985298, 37.365097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.737900, 36.930195, 37.360336>,  <47.127132, 36.838360, 37.352402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737900, 36.930195, 37.360336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228314, -0.948831, -0.218158,
		-0.031269, -0.216814, 0.975712,
		-0.973085, 0.229590, 0.019833,
		46.445972, 36.999073, 37.366287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673267, 36.259682, 37.726128>,  <47.127132, 36.838360, 37.352402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673267, 36.259682, 37.726128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416851, 36.456844, 37.490803>,  <46.263000, 36.575142, 37.349606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416851, 36.456844, 37.490803>,  <46.673267, 36.259682, 37.726128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.416851, 36.456844, 37.490803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370902, -0.870026, -0.324786,
		-0.671938, 0.010008, 0.740539,
		-0.641038, 0.492904, -0.588316,
		46.224541, 36.604717, 37.314308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128365, 35.861454, 37.758945>,  <46.673267, 36.259682, 37.726128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128365, 35.861454, 37.758945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067909, 36.073917, 37.425472>,  <46.031635, 36.201397, 37.225388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067909, 36.073917, 37.425472>,  <46.128365, 35.861454, 37.758945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067909, 36.073917, 37.425472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445046, -0.789625, -0.422405,
		-0.882662, 0.307188, 0.355729,
		-0.151134, 0.531157, -0.833685,
		46.022568, 36.233265, 37.175365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480335, 35.795094, 37.605133>,  <46.128365, 35.861454, 37.758945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480335, 35.795094, 37.605133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654137, 35.895908, 37.259258>,  <45.758419, 35.956398, 37.051735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654137, 35.895908, 37.259258>,  <45.480335, 35.795094, 37.605133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654137, 35.895908, 37.259258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462796, -0.761137, -0.454413,
		-0.772674, 0.597618, -0.214075,
		0.434505, 0.252040, -0.864686,
		45.784489, 35.971519, 36.999851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939045, 35.679615, 37.069458>,  <45.480335, 35.795094, 37.605133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939045, 35.679615, 37.069458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296925, 35.690487, 36.891125>,  <45.511654, 35.697010, 36.784122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296925, 35.690487, 36.891125>,  <44.939045, 35.679615, 37.069458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296925, 35.690487, 36.891125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302708, -0.697075, -0.649966,
		-0.328445, 0.716484, -0.615447,
		0.894702, 0.027177, -0.445836,
		45.565334, 35.698639, 36.757374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832932, 35.802628, 36.347412>,  <44.939045, 35.679615, 37.069458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832932, 35.802628, 36.347412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187721, 35.619568, 36.372177>,  <45.400593, 35.509731, 36.387035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187721, 35.619568, 36.372177>,  <44.832932, 35.802628, 36.347412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187721, 35.619568, 36.372177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303475, -0.678650, -0.668833,
		0.348113, 0.574447, -0.740830,
		0.886973, -0.457653, 0.061917,
		45.453812, 35.482273, 36.390751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034275, 35.720253, 35.649727>,  <44.832932, 35.802628, 36.347412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034275, 35.720253, 35.649727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279716, 35.467213, 35.838749>,  <45.426983, 35.315388, 35.952164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279716, 35.467213, 35.838749>,  <45.034275, 35.720253, 35.649727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279716, 35.467213, 35.838749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124801, -0.668637, -0.733041,
		0.779689, 0.390821, -0.489228,
		0.613604, -0.632600, 0.472554,
		45.463799, 35.277431, 35.980515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469521, 35.406651, 35.121799>,  <45.034275, 35.720253, 35.649727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469521, 35.406651, 35.121799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458332, 35.150612, 35.428913>,  <45.451618, 34.996986, 35.613182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458332, 35.150612, 35.428913>,  <45.469521, 35.406651, 35.121799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458332, 35.150612, 35.428913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290297, -0.729779, -0.618992,
		0.956528, -0.240197, -0.165408,
		-0.027969, -0.640100, 0.767782,
		45.449940, 34.958580, 35.659248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688950, 34.793350, 34.776974>,  <45.469521, 35.406651, 35.121799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688950, 34.793350, 34.776974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536831, 34.672218, 35.126526>,  <45.445560, 34.599541, 35.336258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536831, 34.672218, 35.126526>,  <45.688950, 34.793350, 34.776974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536831, 34.672218, 35.126526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552817, -0.683075, -0.477286,
		0.741462, -0.664607, 0.092362,
		-0.380298, -0.302830, 0.873881,
		45.422741, 34.581367, 35.388691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848789, 34.065033, 34.812912>,  <45.688950, 34.793350, 34.776974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848789, 34.065033, 34.812912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531353, 34.161133, 35.036514>,  <45.340889, 34.218792, 35.170677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531353, 34.161133, 35.036514>,  <45.848789, 34.065033, 34.812912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531353, 34.161133, 35.036514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528109, -0.728263, -0.436731,
		0.302179, -0.641803, 0.704824,
		-0.793592, 0.240253, 0.559008,
		45.293274, 34.233208, 35.204216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.421757, 34.101910, 34.168598>,  <45.848789, 34.065033, 34.812912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.421757, 34.101910, 34.168598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.476688, 34.472561, 34.028595>,  <46.509647, 34.694950, 33.944595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.476688, 34.472561, 34.028595>,  <46.421757, 34.101910, 34.168598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.476688, 34.472561, 34.028595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856626, 0.066305, 0.511659,
		0.497324, -0.370091, -0.784666,
		0.137334, 0.926626, -0.350005,
		46.517887, 34.750549, 33.923592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075748, 34.157799, 33.983421>,  <46.421757, 34.101910, 34.168598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075748, 34.157799, 33.983421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962330, 34.537800, 34.035728>,  <46.894279, 34.765800, 34.067112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962330, 34.537800, 34.035728>,  <47.075748, 34.157799, 33.983421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.962330, 34.537800, 34.035728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900374, 0.216803, 0.377257,
		0.330044, 0.224709, -0.916830,
		-0.283545, 0.950001, 0.130767,
		46.877266, 34.822800, 34.074959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.395725, 34.589809, 34.414871>,  <47.075748, 34.157799, 33.983421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.395725, 34.589809, 34.414871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.736050, 34.695045, 34.596817>,  <47.940247, 34.758186, 34.705986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.736050, 34.695045, 34.596817>,  <47.395725, 34.589809, 34.414871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.736050, 34.695045, 34.596817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431261, 0.844177, 0.318402,
		-0.300218, -0.467066, 0.831696,
		0.850813, 0.263088, 0.454865,
		47.991295, 34.773972, 34.733276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.225456, 34.828285, 35.253250>,  <47.395725, 34.589809, 34.414871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.225456, 34.828285, 35.253250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571217, 34.965176, 35.105904>,  <47.778671, 35.047310, 35.017494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571217, 34.965176, 35.105904>,  <47.225456, 34.828285, 35.253250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.571217, 34.965176, 35.105904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243604, 0.925942, 0.288597,
		0.439853, -0.159727, 0.883751,
		0.864399, 0.342225, -0.368369,
		47.830536, 35.067844, 34.995392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.218510, 32.926571, 44.417454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.879725, 32.848656, 44.219582>,  <31.676453, 32.801907, 44.100857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.879725, 32.848656, 44.219582>,  <32.218510, 32.926571, 44.417454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879725, 32.848656, 44.219582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294378, 0.602993, -0.741445,
		0.442712, -0.773601, -0.453373,
		-0.846964, -0.194784, -0.494683,
		31.625635, 32.790222, 44.071175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261948, 32.652462, 43.740829>,  <32.218510, 32.926571, 44.417454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261948, 32.652462, 43.740829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.897240, 32.815838, 43.723629>,  <31.678413, 32.913864, 43.713306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.897240, 32.815838, 43.723629>,  <32.261948, 32.652462, 43.740829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897240, 32.815838, 43.723629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244693, 0.456155, -0.855598,
		-0.329841, -0.790634, -0.515852,
		-0.911773, 0.408437, -0.043004,
		31.623707, 32.938370, 43.710728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097683, 32.553135, 43.163189>,  <32.261948, 32.652462, 43.740829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097683, 32.553135, 43.163189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.851452, 32.856831, 43.247684>,  <31.703712, 33.039047, 43.298382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.851452, 32.856831, 43.247684>,  <32.097683, 32.553135, 43.163189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851452, 32.856831, 43.247684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103214, 0.343411, -0.933497,
		-0.781286, -0.552840, -0.289760,
		-0.615581, 0.759235, 0.211241,
		31.666779, 33.084602, 43.311058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645815, 32.569092, 42.651604>,  <32.097683, 32.553135, 43.163189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645815, 32.569092, 42.651604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.600229, 32.941414, 42.790520>,  <31.572878, 33.164806, 42.873871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.600229, 32.941414, 42.790520>,  <31.645815, 32.569092, 42.651604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600229, 32.941414, 42.790520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128085, 0.360418, -0.923955,
		-0.985194, -0.060813, -0.160296,
		-0.113962, 0.930807, 0.347292,
		31.566040, 33.220657, 42.894707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226377, 32.975155, 42.192112>,  <31.645815, 32.569092, 42.651604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226377, 32.975155, 42.192112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.418549, 33.268696, 42.384216>,  <31.533852, 33.444820, 42.499477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.418549, 33.268696, 42.384216>,  <31.226377, 32.975155, 42.192112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418549, 33.268696, 42.384216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240132, 0.416607, -0.876799,
		-0.843520, 0.536564, 0.023928,
		0.480428, 0.733851, 0.480262,
		31.562677, 33.488850, 42.528294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080690, 33.646980, 41.889561>,  <31.226377, 32.975155, 42.192112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080690, 33.646980, 41.889561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.427563, 33.742733, 42.064236>,  <31.635687, 33.800186, 42.169041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.427563, 33.742733, 42.064236>,  <31.080690, 33.646980, 41.889561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427563, 33.742733, 42.064236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254400, 0.540885, -0.801701,
		-0.428108, 0.806312, 0.408147,
		0.867182, 0.239382, 0.436683,
		31.687717, 33.814548, 42.195240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191658, 34.348331, 41.785694>,  <31.080690, 33.646980, 41.889561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191658, 34.348331, 41.785694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.562338, 34.228268, 41.876141>,  <31.784746, 34.156227, 41.930408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.562338, 34.228268, 41.876141>,  <31.191658, 34.348331, 41.785694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562338, 34.228268, 41.876141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315159, 0.292985, -0.902682,
		0.204703, 0.907778, 0.366109,
		0.926699, -0.300164, 0.226119,
		31.840347, 34.138218, 41.943977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582848, 34.804882, 41.529667>,  <31.191658, 34.348331, 41.785694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582848, 34.804882, 41.529667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.858248, 34.519611, 41.582348>,  <32.023487, 34.348450, 41.613956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.858248, 34.519611, 41.582348>,  <31.582848, 34.804882, 41.529667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858248, 34.519611, 41.582348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571287, 0.421461, -0.704274,
		0.446764, 0.560133, 0.697605,
		0.688500, -0.713177, 0.131703,
		32.064796, 34.305656, 41.621861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182343, 35.114231, 41.444847>,  <31.582848, 34.804882, 41.529667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182343, 35.114231, 41.444847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.275799, 34.733017, 41.367767>,  <32.331871, 34.504288, 41.321518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.275799, 34.733017, 41.367767>,  <32.182343, 35.114231, 41.444847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275799, 34.733017, 41.367767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644163, 0.300168, -0.703529,
		0.728331, 0.040243, 0.684043,
		0.233640, -0.953037, -0.192699,
		32.345890, 34.447105, 41.309959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955406, 35.031521, 41.408897>,  <32.182343, 35.114231, 41.444847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955406, 35.031521, 41.408897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.789532, 34.716919, 41.225834>,  <32.690006, 34.528160, 41.115993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.789532, 34.716919, 41.225834>,  <32.955406, 35.031521, 41.408897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789532, 34.716919, 41.225834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694177, 0.051762, -0.717941,
		0.588351, -0.615415, 0.524506,
		-0.414682, -0.786502, -0.457662,
		32.665127, 34.480968, 41.088535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539272, 34.655575, 41.236832>,  <32.955406, 35.031521, 41.408897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539272, 34.655575, 41.236832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.234058, 34.644424, 40.978527>,  <33.050930, 34.637733, 40.823544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.234058, 34.644424, 40.978527>,  <33.539272, 34.655575, 41.236832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234058, 34.644424, 40.978527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645549, 0.017105, -0.763527,
		0.032325, -0.999465, 0.004939,
		-0.763034, -0.027870, -0.645757,
		33.005150, 34.636063, 40.784801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818554, 34.201458, 40.779408>,  <33.539272, 34.655575, 41.236832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818554, 34.201458, 40.779408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.507290, 34.381950, 40.604660>,  <33.320530, 34.490246, 40.499813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.507290, 34.381950, 40.604660>,  <33.818554, 34.201458, 40.779408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507290, 34.381950, 40.604660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480983, -0.019147, -0.876521,
		-0.403878, -0.892202, -0.202135,
		-0.778163, 0.451231, -0.436867,
		33.273842, 34.517319, 40.473598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732819, 33.894527, 40.134071>,  <33.818554, 34.201458, 40.779408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732819, 33.894527, 40.134071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.539093, 34.240791, 40.083355>,  <33.422859, 34.448551, 40.052925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.539093, 34.240791, 40.083355>,  <33.732819, 33.894527, 40.134071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539093, 34.240791, 40.083355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358491, 0.064157, -0.931326,
		-0.798076, -0.496506, -0.341403,
		-0.484312, 0.865659, -0.126791,
		33.393799, 34.500488, 40.045319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471512, 33.852104, 39.527058>,  <33.732819, 33.894527, 40.134071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471512, 33.852104, 39.527058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.503834, 34.245163, 39.593838>,  <33.523228, 34.480999, 39.633907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.503834, 34.245163, 39.593838>,  <33.471512, 33.852104, 39.527058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503834, 34.245163, 39.593838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382136, 0.124158, -0.915727,
		-0.920566, 0.137797, -0.365472,
		0.080809, 0.982648, 0.166953,
		33.528076, 34.539959, 39.643925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078228, 34.188339, 38.949726>,  <33.471512, 33.852104, 39.527058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078228, 34.188339, 38.949726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.319450, 34.468582, 39.102295>,  <33.464184, 34.636726, 39.193836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.319450, 34.468582, 39.102295>,  <33.078228, 34.188339, 38.949726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319450, 34.468582, 39.102295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264148, 0.275783, -0.924213,
		-0.752698, 0.658099, -0.018752,
		0.603052, 0.700606, 0.381417,
		33.500366, 34.678764, 39.216721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817444, 34.878746, 38.602524>,  <33.078228, 34.188339, 38.949726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817444, 34.878746, 38.602524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.195896, 34.899498, 38.730366>,  <33.422966, 34.911949, 38.807072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.195896, 34.899498, 38.730366>,  <32.817444, 34.878746, 38.602524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195896, 34.899498, 38.730366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298315, 0.244130, -0.922718,
		-0.125897, 0.968354, 0.215502,
		0.946128, 0.051880, 0.319609,
		33.479736, 34.915062, 38.826248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153214, 35.433514, 38.246578>,  <32.817444, 34.878746, 38.602524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153214, 35.433514, 38.246578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.465946, 35.227993, 38.387859>,  <33.653584, 35.104683, 38.472630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.465946, 35.227993, 38.387859>,  <33.153214, 35.433514, 38.246578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465946, 35.227993, 38.387859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509099, 0.199030, -0.837380,
		0.359946, 0.834505, 0.417182,
		0.781829, -0.513799, 0.353205,
		33.700497, 35.073853, 38.493820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704548, 35.818027, 38.157951>,  <33.153214, 35.433514, 38.246578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704548, 35.818027, 38.157951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872917, 35.456947, 38.193611>,  <33.973938, 35.240299, 38.215008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872917, 35.456947, 38.193611>,  <33.704548, 35.818027, 38.157951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872917, 35.456947, 38.193611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523142, 0.161295, -0.836843,
		0.741042, 0.398887, 0.540135,
		0.420927, -0.902703, 0.089148,
		33.999195, 35.186138, 38.220356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490498, 35.867577, 38.097153>,  <33.704548, 35.818027, 38.157951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490498, 35.867577, 38.097153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450371, 35.474762, 38.033237>,  <34.426296, 35.239071, 37.994888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450371, 35.474762, 38.033237>,  <34.490498, 35.867577, 38.097153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450371, 35.474762, 38.033237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546468, 0.079824, -0.833667,
		0.831450, -0.170948, 0.528646,
		-0.100315, -0.982041, -0.159787,
		34.420277, 35.180149, 37.985302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137104, 35.657234, 37.985287>,  <34.490498, 35.867577, 38.097153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137104, 35.657234, 37.985287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911652, 35.373318, 37.816280>,  <34.776382, 35.202969, 37.714874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911652, 35.373318, 37.816280>,  <35.137104, 35.657234, 37.985287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911652, 35.373318, 37.816280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669609, -0.093089, -0.736857,
		0.483681, -0.698237, 0.527748,
		-0.563628, -0.709789, -0.422520,
		34.742561, 35.160381, 37.689526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593468, 35.202362, 37.781086>,  <35.137104, 35.657234, 37.985287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593468, 35.202362, 37.781086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270603, 35.115479, 37.561520>,  <35.076885, 35.063347, 37.429779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270603, 35.115479, 37.561520>,  <35.593468, 35.202362, 37.781086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270603, 35.115479, 37.561520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556714, 0.029203, -0.830191,
		0.196355, -0.975688, 0.097352,
		-0.807164, -0.217210, -0.548913,
		35.028454, 35.050316, 37.396847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744324, 34.595188, 37.406982>,  <35.593468, 35.202362, 37.781086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744324, 34.595188, 37.406982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455391, 34.800972, 37.222130>,  <35.282032, 34.924442, 37.111217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455391, 34.800972, 37.222130>,  <35.744324, 34.595188, 37.406982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455391, 34.800972, 37.222130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601253, 0.137056, -0.787217,
		-0.341658, -0.846488, -0.408323,
		-0.722333, 0.514464, -0.462127,
		35.238689, 34.955311, 37.083492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455471, 34.611240, 37.658958>,  <35.744324, 34.595188, 37.406982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455471, 34.611240, 37.658958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835590, 34.651417, 37.776840>,  <37.063660, 34.675522, 37.847569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835590, 34.651417, 37.776840>,  <36.455471, 34.611240, 37.658958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835590, 34.651417, 37.776840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294480, -0.017349, 0.955500,
		0.101091, -0.994791, 0.013094,
		0.950296, 0.100448, 0.294700,
		37.120678, 34.681549, 37.865250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709232, 34.001026, 37.977886>,  <36.455471, 34.611240, 37.658958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709232, 34.001026, 37.977886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.940620, 34.298725, 38.111431>,  <37.079453, 34.477345, 38.191559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.940620, 34.298725, 38.111431>,  <36.709232, 34.001026, 37.977886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940620, 34.298725, 38.111431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220247, -0.251584, 0.942442,
		0.785404, -0.618711, 0.018383,
		0.578474, 0.744246, 0.333865,
		37.114162, 34.521999, 38.211590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038277, 33.682175, 38.450809>,  <36.709232, 34.001026, 37.977886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038277, 33.682175, 38.450809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.065662, 34.072834, 38.532272>,  <37.082096, 34.307228, 38.581150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.065662, 34.072834, 38.532272>,  <37.038277, 33.682175, 38.450809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065662, 34.072834, 38.532272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271596, -0.178184, 0.945773,
		0.959973, -0.120067, 0.253053,
		0.068466, 0.976644, 0.203662,
		37.086201, 34.365826, 38.593372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497734, 33.771049, 39.099766>,  <37.038277, 33.682175, 38.450809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497734, 33.771049, 39.099766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338600, 34.137405, 39.121189>,  <37.243118, 34.357220, 39.134045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338600, 34.137405, 39.121189>,  <37.497734, 33.771049, 39.099766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338600, 34.137405, 39.121189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119770, -0.109726, 0.986719,
		0.909605, 0.386137, 0.153350,
		-0.397836, 0.915892, 0.053560,
		37.219250, 34.412174, 39.137257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758945, 34.181454, 39.742840>,  <37.497734, 33.771049, 39.099766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758945, 34.181454, 39.742840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402225, 34.321434, 39.628136>,  <37.188194, 34.405422, 39.559315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402225, 34.321434, 39.628136>,  <37.758945, 34.181454, 39.742840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402225, 34.321434, 39.628136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281219, 0.067742, 0.957250,
		0.354418, 0.934315, 0.038002,
		-0.891798, 0.349953, -0.286756,
		37.134686, 34.426418, 39.542110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618153, 34.606010, 40.179520>,  <37.758945, 34.181454, 39.742840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618153, 34.606010, 40.179520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249016, 34.568344, 40.030125>,  <37.027534, 34.545742, 39.940487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249016, 34.568344, 40.030125>,  <37.618153, 34.606010, 40.179520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249016, 34.568344, 40.030125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368051, -0.070356, 0.927140,
		-0.113584, 0.993067, 0.030269,
		-0.922842, -0.094168, -0.373490,
		36.972164, 34.540092, 39.918079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253513, 35.205025, 40.496449>,  <37.618153, 34.606010, 40.179520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253513, 35.205025, 40.496449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989262, 34.930328, 40.375145>,  <36.830711, 34.765511, 40.302364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989262, 34.930328, 40.375145>,  <37.253513, 35.205025, 40.496449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989262, 34.930328, 40.375145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423204, 0.007024, 0.906007,
		-0.620059, 0.726871, -0.295271,
		-0.660625, -0.686738, -0.303259,
		36.791073, 34.724308, 40.284168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455154, 35.392143, 40.574261>,  <37.253513, 35.205025, 40.496449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455154, 35.392143, 40.574261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451107, 34.992451, 40.559116>,  <36.448677, 34.752636, 40.550030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451107, 34.992451, 40.559116>,  <36.455154, 35.392143, 40.574261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451107, 34.992451, 40.559116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568729, -0.025391, 0.822133,
		-0.822463, 0.029854, -0.568035,
		-0.010121, -0.999232, -0.037862,
		36.448071, 34.692680, 40.547756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727249, 35.139290, 40.623028>,  <36.455154, 35.392143, 40.574261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727249, 35.139290, 40.623028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923096, 34.801495, 40.709850>,  <36.040604, 34.598816, 40.761944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923096, 34.801495, 40.709850>,  <35.727249, 35.139290, 40.623028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923096, 34.801495, 40.709850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509609, -0.075154, 0.857118,
		-0.707514, -0.530272, -0.467156,
		0.489615, -0.844490, 0.217059,
		36.069981, 34.548149, 40.774967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216724, 34.584412, 40.677490>,  <35.727249, 35.139290, 40.623028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216724, 34.584412, 40.677490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535751, 34.473804, 40.891941>,  <35.727165, 34.407440, 41.020611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535751, 34.473804, 40.891941>,  <35.216724, 34.584412, 40.677490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535751, 34.473804, 40.891941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591817, -0.186580, 0.784182,
		-0.116809, -0.942723, -0.312457,
		0.797564, -0.276516, 0.536125,
		35.775021, 34.390850, 41.052780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916538, 34.089279, 41.124264>,  <35.216724, 34.584412, 40.677490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916538, 34.089279, 41.124264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278160, 34.142056, 41.286880>,  <35.495132, 34.173721, 41.384449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278160, 34.142056, 41.286880>,  <34.916538, 34.089279, 41.124264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278160, 34.142056, 41.286880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372132, -0.224876, 0.900527,
		0.210235, -0.965413, -0.154202,
		0.904057, 0.131938, 0.406538,
		35.549377, 34.181637, 41.408840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068424, 33.483688, 41.418179>,  <34.916538, 34.089279, 41.124264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068424, 33.483688, 41.418179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308765, 33.737961, 41.612038>,  <35.452969, 33.890526, 41.728355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308765, 33.737961, 41.612038>,  <35.068424, 33.483688, 41.418179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308765, 33.737961, 41.612038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359504, -0.326626, 0.874112,
		0.713957, -0.699445, 0.032277,
		0.600851, 0.635683, 0.484651,
		35.489021, 33.928665, 41.757431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294575, 33.017254, 41.934612>,  <35.068424, 33.483688, 41.418179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294575, 33.017254, 41.934612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335419, 33.397724, 42.051121>,  <35.359924, 33.626007, 42.121025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335419, 33.397724, 42.051121>,  <35.294575, 33.017254, 41.934612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335419, 33.397724, 42.051121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365271, -0.236502, 0.900358,
		0.925284, -0.198330, 0.323288,
		0.102109, 0.951174, 0.291275,
		35.366051, 33.683075, 42.138504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518497, 33.010197, 42.547802>,  <35.294575, 33.017254, 41.934612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518497, 33.010197, 42.547802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374916, 33.382809, 42.524475>,  <35.288765, 33.606377, 42.510479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374916, 33.382809, 42.524475>,  <35.518497, 33.010197, 42.547802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374916, 33.382809, 42.524475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355767, -0.078792, 0.931247,
		0.862890, 0.355025, 0.359691,
		-0.358957, 0.931530, -0.058318,
		35.267227, 33.662270, 42.506981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733429, 33.221539, 43.128532>,  <35.518497, 33.010197, 42.547802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733429, 33.221539, 43.128532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435223, 33.466454, 43.023224>,  <35.256298, 33.613403, 42.960037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435223, 33.466454, 43.023224>,  <35.733429, 33.221539, 43.128532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435223, 33.466454, 43.023224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459038, -0.185322, 0.868873,
		0.483212, 0.768607, 0.419224,
		-0.745514, 0.612289, -0.263270,
		35.211567, 33.650139, 42.944244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500645, 33.713436, 43.669453>,  <35.733429, 33.221539, 43.128532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500645, 33.713436, 43.669453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180565, 33.681530, 43.431690>,  <34.988518, 33.662388, 43.289032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180565, 33.681530, 43.431690>,  <35.500645, 33.713436, 43.669453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180565, 33.681530, 43.431690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573922, -0.185770, 0.797561,
		-0.174038, 0.979351, 0.102877,
		-0.800203, -0.079762, -0.594402,
		34.940502, 33.657600, 43.253368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052475, 33.846550, 44.203690>,  <35.500645, 33.713436, 43.669453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052475, 33.846550, 44.203690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.802532, 33.712204, 43.921768>,  <34.652565, 33.631596, 43.752613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.802532, 33.712204, 43.921768>,  <35.052475, 33.846550, 44.203690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802532, 33.712204, 43.921768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669374, -0.234196, 0.705047,
		-0.401861, 0.912332, -0.078478,
		-0.624857, -0.335861, -0.704805,
		34.615074, 33.611446, 43.710327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517021, 34.160698, 44.399887>,  <35.052475, 33.846550, 44.203690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517021, 34.160698, 44.399887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.396793, 33.867439, 44.155869>,  <34.324657, 33.691483, 44.009457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.396793, 33.867439, 44.155869>,  <34.517021, 34.160698, 44.399887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396793, 33.867439, 44.155869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644061, -0.315732, 0.696777,
		-0.703450, 0.602336, -0.377292,
		-0.300571, -0.733147, -0.610043,
		34.306622, 33.647495, 43.972855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.741409, 33.971764, 44.418873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.940842, 33.639576, 44.319485>,  <34.060501, 33.440262, 44.259853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.940842, 33.639576, 44.319485>,  <33.741409, 33.971764, 44.418873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940842, 33.639576, 44.319485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576096, -0.531626, 0.620876,
		-0.647712, -0.166414, -0.743489,
		0.498581, -0.830469, -0.248470,
		34.090416, 33.390434, 44.244946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236652, 33.452034, 44.346859>,  <33.741409, 33.971764, 44.418873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236652, 33.452034, 44.346859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.585175, 33.266884, 44.412067>,  <33.794289, 33.155796, 44.451191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.585175, 33.266884, 44.412067>,  <33.236652, 33.452034, 44.346859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585175, 33.266884, 44.412067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473002, -0.703605, 0.530291,
		-0.130754, -0.539155, -0.831995,
		0.871305, -0.462873, 0.163022,
		33.846565, 33.128021, 44.460976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054722, 32.814175, 44.198589>,  <33.236652, 33.452034, 44.346859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054722, 32.814175, 44.198589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377792, 32.799603, 44.433987>,  <33.571636, 32.790859, 44.575226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377792, 32.799603, 44.433987>,  <33.054722, 32.814175, 44.198589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377792, 32.799603, 44.433987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432639, -0.714729, 0.549533,
		0.400599, -0.698452, -0.593030,
		0.807678, -0.036426, 0.588497,
		33.620094, 32.788673, 44.610535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986240, 32.124741, 44.337887>,  <33.054722, 32.814175, 44.198589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986240, 32.124741, 44.337887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.269718, 32.230301, 44.599606>,  <33.439804, 32.293636, 44.756638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.269718, 32.230301, 44.599606>,  <32.986240, 32.124741, 44.337887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269718, 32.230301, 44.599606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307000, -0.719650, 0.622780,
		0.635214, -0.642233, -0.428999,
		0.708699, 0.263896, 0.654297,
		33.482327, 32.309471, 44.795895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208530, 31.594194, 44.617912>,  <32.986240, 32.124741, 44.337887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208530, 31.594194, 44.617912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.346066, 31.851879, 44.891193>,  <33.428585, 32.006489, 45.055161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.346066, 31.851879, 44.891193>,  <33.208530, 31.594194, 44.617912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346066, 31.851879, 44.891193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261874, -0.632914, 0.728589,
		0.901775, -0.429428, -0.048916,
		0.343836, 0.644214, 0.683203,
		33.449215, 32.045143, 45.096153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571758, 31.157465, 45.183163>,  <33.208530, 31.594194, 44.617912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571758, 31.157465, 45.183163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.466316, 31.516064, 45.325603>,  <33.403053, 31.731222, 45.411068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.466316, 31.516064, 45.325603>,  <33.571758, 31.157465, 45.183163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466316, 31.516064, 45.325603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371090, -0.434995, 0.820409,
		0.890396, 0.084116, 0.447346,
		-0.263603, 0.896495, 0.356104,
		33.387234, 31.785013, 45.432434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965805, 31.262659, 45.918205>,  <33.571758, 31.157465, 45.183163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965805, 31.262659, 45.918205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652290, 31.507351, 45.875370>,  <33.464184, 31.654167, 45.849670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652290, 31.507351, 45.875370>,  <33.965805, 31.262659, 45.918205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652290, 31.507351, 45.875370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375966, -0.330141, 0.865827,
		0.494300, 0.718882, 0.488749,
		-0.783783, 0.611732, -0.107087,
		33.417156, 31.690870, 45.843243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904690, 31.521181, 46.554752>,  <33.965805, 31.262659, 45.918205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904690, 31.521181, 46.554752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548237, 31.610285, 46.396633>,  <33.334366, 31.663746, 46.301762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548237, 31.610285, 46.396633>,  <33.904690, 31.521181, 46.554752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548237, 31.610285, 46.396633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423792, -0.097373, 0.900510,
		0.162104, 0.969999, 0.181175,
		-0.891135, 0.222757, -0.395294,
		33.280895, 31.677113, 46.278046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653889, 32.032047, 46.928272>,  <33.904690, 31.521181, 46.554752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653889, 32.032047, 46.928272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.342056, 31.853155, 46.752892>,  <33.154957, 31.745821, 46.647663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.342056, 31.853155, 46.752892>,  <33.653889, 32.032047, 46.928272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342056, 31.853155, 46.752892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456523, -0.073487, 0.886671,
		-0.428765, 0.891396, -0.146881,
		-0.779581, -0.447228, -0.438452,
		33.108181, 31.718987, 46.621357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066669, 32.269745, 47.333260>,  <33.653889, 32.032047, 46.928272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066669, 32.269745, 47.333260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.960747, 31.938271, 47.136021>,  <32.897194, 31.739386, 47.017677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.960747, 31.938271, 47.136021>,  <33.066669, 32.269745, 47.333260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960747, 31.938271, 47.136021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556424, -0.286325, 0.780007,
		-0.787571, 0.480928, -0.385281,
		-0.264811, -0.828690, -0.493101,
		32.881302, 31.689663, 46.988091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385567, 32.237637, 47.556702>,  <33.066669, 32.269745, 47.333260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385567, 32.237637, 47.556702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.511398, 31.881983, 47.423748>,  <32.586899, 31.668591, 47.343975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.511398, 31.881983, 47.423748>,  <32.385567, 32.237637, 47.556702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511398, 31.881983, 47.423748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493097, -0.452281, 0.743168,
		-0.811108, -0.069884, -0.580706,
		0.314578, -0.889133, -0.332389,
		32.605770, 31.615242, 47.324032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797834, 31.939054, 47.688946>,  <32.385567, 32.237637, 47.556702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797834, 31.939054, 47.688946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079750, 31.658972, 47.643372>,  <32.248901, 31.490923, 47.616028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079750, 31.658972, 47.643372>,  <31.797834, 31.939054, 47.688946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079750, 31.658972, 47.643372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390199, -0.516749, 0.762047,
		-0.592467, -0.492625, -0.637419,
		0.704789, -0.700208, -0.113935,
		32.291187, 31.448910, 47.609192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464151, 31.250292, 47.642548>,  <31.797834, 31.939054, 47.688946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464151, 31.250292, 47.642548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832081, 31.164846, 47.774181>,  <32.052837, 31.113579, 47.853161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832081, 31.164846, 47.774181>,  <31.464151, 31.250292, 47.642548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832081, 31.164846, 47.774181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391628, -0.550275, 0.737445,
		0.023562, -0.807197, -0.589811,
		0.919822, -0.213611, 0.329086,
		32.108028, 31.100763, 47.872906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423586, 30.531126, 47.915546>,  <31.464151, 31.250292, 47.642548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423586, 30.531126, 47.915546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750250, 30.691048, 48.082027>,  <31.946249, 30.787001, 48.181915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750250, 30.691048, 48.082027>,  <31.423586, 30.531126, 47.915546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750250, 30.691048, 48.082027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147330, -0.552851, 0.820152,
		0.557997, -0.731104, -0.392589,
		0.816660, 0.399802, 0.416203,
		31.995249, 30.810987, 48.206890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708502, 29.988003, 48.310738>,  <31.423586, 30.531126, 47.915546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708502, 29.988003, 48.310738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891907, 30.311459, 48.458179>,  <32.001949, 30.505531, 48.546646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891907, 30.311459, 48.458179>,  <31.708502, 29.988003, 48.310738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891907, 30.311459, 48.458179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058041, -0.386642, 0.920402,
		0.886790, -0.443410, -0.130346,
		0.458512, 0.808638, 0.368606,
		32.029461, 30.554050, 48.568760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428070, 29.855642, 48.622543>,  <31.708502, 29.988003, 48.310738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428070, 29.855642, 48.622543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302025, 30.191916, 48.798706>,  <32.226398, 30.393681, 48.904404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302025, 30.191916, 48.798706>,  <32.428070, 29.855642, 48.622543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302025, 30.191916, 48.798706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005883, -0.462305, 0.886701,
		0.949036, 0.282001, 0.140732,
		-0.315112, 0.840684, 0.440403,
		32.207493, 30.444120, 48.930828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949764, 30.052464, 49.150925>,  <32.428070, 29.855642, 48.622543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949764, 30.052464, 49.150925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610527, 30.233408, 49.261280>,  <32.406986, 30.341974, 49.327492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610527, 30.233408, 49.261280>,  <32.949764, 30.052464, 49.150925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610527, 30.233408, 49.261280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024139, -0.487156, 0.872981,
		0.529301, 0.747027, 0.402233,
		-0.848091, 0.452360, 0.275884,
		32.356098, 30.369116, 49.344044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964237, 30.058109, 49.871452>,  <32.949764, 30.052464, 49.150925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964237, 30.058109, 49.871452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580833, 30.160120, 49.820496>,  <32.350792, 30.221327, 49.789921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580833, 30.160120, 49.820496>,  <32.964237, 30.058109, 49.871452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580833, 30.160120, 49.820496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240920, -0.485759, 0.840235,
		0.152401, 0.836061, 0.527044,
		-0.958505, 0.255028, -0.127394,
		32.293282, 30.236628, 49.782276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676537, 30.254986, 50.416878>,  <32.964237, 30.058109, 49.871452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676537, 30.254986, 50.416878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.340900, 30.137949, 50.233437>,  <32.139519, 30.067726, 50.123371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.340900, 30.137949, 50.233437>,  <32.676537, 30.254986, 50.416878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340900, 30.137949, 50.233437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190732, -0.631280, 0.751736,
		-0.509460, 0.718244, 0.473894,
		-0.839090, -0.292593, -0.458604,
		32.089172, 30.050171, 50.095856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147308, 30.395452, 50.853058>,  <32.676537, 30.254986, 50.416878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147308, 30.395452, 50.853058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060017, 30.094891, 50.603973>,  <32.007641, 29.914555, 50.454521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060017, 30.094891, 50.603973>,  <32.147308, 30.395452, 50.853058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060017, 30.094891, 50.603973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167960, -0.599650, 0.782438,
		-0.961335, 0.275342, 0.004656,
		-0.218230, -0.751403, -0.622711,
		31.994547, 29.869471, 50.417160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692755, 29.890760, 51.249817>,  <32.147308, 30.395452, 50.853058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692755, 29.890760, 51.249817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.783470, 29.655920, 50.938976>,  <31.837900, 29.515017, 50.752472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.783470, 29.655920, 50.938976>,  <31.692755, 29.890760, 51.249817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783470, 29.655920, 50.938976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093969, -0.807355, 0.582536,
		-0.969400, -0.059089, -0.238268,
		0.226788, -0.587101, -0.777097,
		31.851507, 29.479790, 50.705849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238844, 29.322571, 51.301346>,  <31.692755, 29.890760, 51.249817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238844, 29.322571, 51.301346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.496309, 29.162189, 51.040600>,  <31.650789, 29.065962, 50.884151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.496309, 29.162189, 51.040600>,  <31.238844, 29.322571, 51.301346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496309, 29.162189, 51.040600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037778, -0.867381, 0.496208,
		-0.764373, -0.294767, -0.573452,
		0.643667, -0.400952, -0.651867,
		31.689409, 29.041904, 50.845039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947073, 28.778687, 51.016113>,  <31.238844, 29.322571, 51.301346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947073, 28.778687, 51.016113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344194, 28.731251, 51.009403>,  <31.582466, 28.702789, 51.005375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344194, 28.731251, 51.009403>,  <30.947073, 28.778687, 51.016113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344194, 28.731251, 51.009403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095167, -0.866134, 0.490668,
		-0.072719, -0.485539, -0.871185,
		0.992802, -0.118589, -0.016777,
		31.642035, 28.695675, 51.004372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311840, 28.743076, 51.028637>,  <30.947073, 28.778687, 51.016113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311840, 28.743076, 51.028637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.003441, 28.500532, 50.950771>,  <29.818401, 28.355005, 50.904053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.003441, 28.500532, 50.950771>,  <30.311840, 28.743076, 51.028637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003441, 28.500532, 50.950771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061546, 0.375185, -0.924904,
		0.633860, -0.701116, -0.326585,
		-0.770995, -0.606360, -0.194664,
		29.772142, 28.318624, 50.892372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377293, 28.313425, 50.426609>,  <30.311840, 28.743076, 51.028637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377293, 28.313425, 50.426609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.991266, 28.376577, 50.510250>,  <29.759651, 28.414469, 50.560436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.991266, 28.376577, 50.510250>,  <30.377293, 28.313425, 50.426609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991266, 28.376577, 50.510250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106074, 0.494319, -0.862784,
		-0.239584, -0.854823, -0.460302,
		-0.965064, 0.157883, 0.209105,
		29.701748, 28.423943, 50.572983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109173, 28.147594, 49.762371>,  <30.377293, 28.313425, 50.426609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109173, 28.147594, 49.762371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.787796, 28.313742, 49.932991>,  <29.594969, 28.413429, 50.035362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.787796, 28.313742, 49.932991>,  <30.109173, 28.147594, 49.762371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787796, 28.313742, 49.932991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247664, 0.418350, -0.873868,
		-0.541426, -0.807746, -0.233249,
		-0.803444, 0.415367, 0.426555,
		29.546762, 28.438353, 50.060959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457455, 28.006815, 49.372364>,  <30.109173, 28.147594, 49.762371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457455, 28.006815, 49.372364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.373440, 28.345236, 49.568356>,  <29.323030, 28.548288, 49.685951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.373440, 28.345236, 49.568356>,  <29.457455, 28.006815, 49.372364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373440, 28.345236, 49.568356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245886, 0.439343, -0.864013,
		-0.946268, -0.301956, 0.115753,
		-0.210038, 0.846050, 0.489983,
		29.310429, 28.599051, 49.715351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812054, 28.133362, 49.161469>,  <29.457455, 28.006815, 49.372364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812054, 28.133362, 49.161469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.954388, 28.489758, 49.274269>,  <29.039787, 28.703594, 49.341949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.954388, 28.489758, 49.274269>,  <28.812054, 28.133362, 49.161469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954388, 28.489758, 49.274269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275023, 0.388222, -0.879572,
		-0.893166, 0.235426, 0.383184,
		0.355834, 0.890988, 0.281999,
		29.061138, 28.757053, 49.358868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384628, 28.625441, 48.767582>,  <28.812054, 28.133362, 49.161469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384628, 28.625441, 48.767582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.716619, 28.817394, 48.881313>,  <28.915815, 28.932568, 48.949551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.716619, 28.817394, 48.881313>,  <28.384628, 28.625441, 48.767582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716619, 28.817394, 48.881313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007322, 0.500323, -0.865808,
		-0.557745, 0.720685, 0.411745,
		0.829980, 0.479885, 0.284330,
		28.965614, 28.961359, 48.966614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268585, 29.359547, 48.552040>,  <28.384628, 28.625441, 48.767582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268585, 29.359547, 48.552040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.667557, 29.339993, 48.573009>,  <28.906939, 29.328260, 48.585590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.667557, 29.339993, 48.573009>,  <28.268585, 29.359547, 48.552040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667557, 29.339993, 48.573009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065315, 0.318464, -0.945682,
		0.029534, 0.946674, 0.320838,
		0.997428, -0.048885, 0.052426,
		28.966785, 29.325327, 48.588737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449251, 29.973560, 48.257202>,  <28.268585, 29.359547, 48.552040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449251, 29.973560, 48.257202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778111, 29.749704, 48.215500>,  <28.975426, 29.615391, 48.190479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778111, 29.749704, 48.215500>,  <28.449251, 29.973560, 48.257202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778111, 29.749704, 48.215500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192587, 0.445777, -0.874181,
		0.535704, 0.698630, 0.474275,
		0.822150, -0.559642, -0.104258,
		29.024755, 29.581812, 48.184223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855053, 30.411324, 48.086876>,  <28.449251, 29.973560, 48.257202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855053, 30.411324, 48.086876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.061678, 30.088726, 47.971825>,  <29.185652, 29.895168, 47.902794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.061678, 30.088726, 47.971825>,  <28.855053, 30.411324, 48.086876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061678, 30.088726, 47.971825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408323, 0.527285, -0.745146,
		0.752620, 0.267467, 0.601685,
		0.516561, -0.806494, -0.287632,
		29.216646, 29.846777, 47.885536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559149, 30.710051, 47.978527>,  <28.855053, 30.411324, 48.086876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559149, 30.710051, 47.978527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.553238, 30.367775, 47.771614>,  <29.549692, 30.162411, 47.647465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.553238, 30.367775, 47.771614>,  <29.559149, 30.710051, 47.978527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553238, 30.367775, 47.771614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495573, 0.443059, -0.747065,
		0.868441, -0.267389, 0.417509,
		-0.014776, -0.855688, -0.517281,
		29.548805, 30.111069, 47.616428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209232, 30.657911, 47.690720>,  <29.559149, 30.710051, 47.978527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209232, 30.657911, 47.690720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.962240, 30.456213, 47.449238>,  <29.814045, 30.335194, 47.304348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.962240, 30.456213, 47.449238>,  <30.209232, 30.657911, 47.690720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962240, 30.456213, 47.449238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467732, 0.381681, -0.797211,
		0.632412, -0.774633, 0.000172,
		-0.617480, -0.504246, -0.603701,
		29.776997, 30.304939, 47.268127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615854, 30.289005, 47.289143>,  <30.209232, 30.657911, 47.690720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615854, 30.289005, 47.289143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.267952, 30.310722, 47.092945>,  <30.059212, 30.323753, 46.975227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.267952, 30.310722, 47.092945>,  <30.615854, 30.289005, 47.289143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267952, 30.310722, 47.092945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481275, 0.313063, -0.818759,
		0.109101, -0.948179, -0.298418,
		-0.869754, 0.054293, -0.490490,
		30.007027, 30.327009, 46.945797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760592, 29.911446, 46.621750>,  <30.615854, 30.289005, 47.289143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760592, 29.911446, 46.621750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.461130, 30.174358, 46.587105>,  <30.281454, 30.332106, 46.566319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.461130, 30.174358, 46.587105>,  <30.760592, 29.911446, 46.621750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461130, 30.174358, 46.587105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526486, 0.510048, -0.680194,
		-0.402903, -0.554828, -0.727898,
		-0.748653, 0.657280, -0.086609,
		30.236534, 30.371542, 46.561123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679052, 30.044415, 45.956505>,  <30.760592, 29.911446, 46.621750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679052, 30.044415, 45.956505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.486311, 30.349880, 46.128380>,  <30.370667, 30.533159, 46.231506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.486311, 30.349880, 46.128380>,  <30.679052, 30.044415, 45.956505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486311, 30.349880, 46.128380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407748, 0.629459, -0.661455,
		-0.775602, -0.143519, -0.614690,
		-0.481853, 0.763665, 0.429690,
		30.341755, 30.578979, 46.257286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624935, 30.456184, 45.388371>,  <30.679052, 30.044415, 45.956505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624935, 30.456184, 45.388371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.532482, 30.708603, 45.684574>,  <30.477011, 30.860054, 45.862297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.532482, 30.708603, 45.684574>,  <30.624935, 30.456184, 45.388371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532482, 30.708603, 45.684574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298092, 0.770448, -0.563517,
		-0.926131, 0.090492, -0.366187,
		-0.231134, 0.631048, 0.740510,
		30.463142, 30.897917, 45.906727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126274, 30.872854, 45.105656>,  <30.624935, 30.456184, 45.388371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126274, 30.872854, 45.105656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.302214, 31.057489, 45.413803>,  <30.407778, 31.168270, 45.598694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.302214, 31.057489, 45.413803>,  <30.126274, 30.872854, 45.105656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302214, 31.057489, 45.413803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330402, 0.714471, -0.616738,
		-0.835087, 0.525802, 0.161749,
		0.439847, 0.461587, 0.770371,
		30.434168, 31.195965, 45.644913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925985, 31.597536, 45.170200>,  <30.126274, 30.872854, 45.105656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925985, 31.597536, 45.170200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.291420, 31.615965, 45.331810>,  <30.510681, 31.627022, 45.428776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.291420, 31.615965, 45.331810>,  <29.925985, 31.597536, 45.170200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291420, 31.615965, 45.331810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165434, 0.865515, -0.472774,
		-0.371473, 0.498759, 0.783101,
		0.913586, 0.046071, 0.404027,
		30.565496, 31.629786, 45.453018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060446, 32.305206, 45.351128>,  <29.925985, 31.597536, 45.170200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060446, 32.305206, 45.351128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.406656, 32.107929, 45.316204>,  <30.614382, 31.989563, 45.295250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.406656, 32.107929, 45.316204>,  <30.060446, 32.305206, 45.351128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406656, 32.107929, 45.316204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413220, 0.801648, -0.431983,
		0.283046, 0.337813, 0.897645,
		0.865525, -0.493196, -0.087312,
		30.666313, 31.959970, 45.290009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425198, 32.836620, 45.570148>,  <30.060446, 32.305206, 45.351128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425198, 32.836620, 45.570148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660229, 32.587559, 45.363441>,  <30.801247, 32.438122, 45.239418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660229, 32.587559, 45.363441>,  <30.425198, 32.836620, 45.570148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660229, 32.587559, 45.363441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294096, 0.759300, -0.580492,
		0.753830, 0.189105, 0.629269,
		0.587578, -0.622658, -0.516768,
		30.836502, 32.400761, 45.208412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074474, 33.206753, 45.444149>,  <30.425198, 32.836620, 45.570148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074474, 33.206753, 45.444149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.052608, 32.920887, 45.165218>,  <31.039490, 32.749367, 44.997860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.052608, 32.920887, 45.165218>,  <31.074474, 33.206753, 45.444149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052608, 32.920887, 45.165218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380598, 0.630733, -0.676255,
		0.923123, -0.302368, 0.237522,
		-0.054665, -0.714667, -0.697325,
		31.036209, 32.706486, 44.956020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754728, 33.252628, 45.003952>,  <31.074474, 33.206753, 45.444149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754728, 33.252628, 45.003952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.481894, 33.065403, 44.779209>,  <31.318193, 32.953068, 44.644363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.481894, 33.065403, 44.779209>,  <31.754728, 33.252628, 45.003952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481894, 33.065403, 44.779209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144688, 0.666754, -0.731098,
		0.716818, -0.579963, -0.387059,
		-0.682083, -0.468061, -0.561855,
		31.277267, 32.924984, 44.610653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.203022, 42.063274, 37.782814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.813770, 42.134651, 37.724594>,  <44.580219, 42.177479, 37.689663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.813770, 42.134651, 37.724594>,  <45.203022, 42.063274, 37.782814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813770, 42.134651, 37.724594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152992, -0.973405, -0.170518,
		-0.172103, -0.143668, 0.974546,
		-0.973126, 0.178444, -0.145546,
		44.521832, 42.188183, 37.680931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823345, 41.593552, 38.195965>,  <45.203022, 42.063274, 37.782814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823345, 41.593552, 38.195965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.585781, 41.717220, 37.898865>,  <44.443245, 41.791424, 37.720604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.585781, 41.717220, 37.898865>,  <44.823345, 41.593552, 38.195965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585781, 41.717220, 37.898865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344992, -0.931894, -0.112048,
		-0.726810, 0.189698, 0.660122,
		-0.593908, 0.309175, -0.742755,
		44.407608, 41.809971, 37.676037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175198, 41.274658, 38.346706>,  <44.823345, 41.593552, 38.195965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175198, 41.274658, 38.346706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.175686, 41.385864, 37.962475>,  <44.175980, 41.452587, 37.731937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.175686, 41.385864, 37.962475>,  <44.175198, 41.274658, 38.346706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175686, 41.385864, 37.962475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353180, -0.898553, -0.260510,
		-0.935555, 0.339573, 0.097094,
		0.001218, 0.278013, -0.960576,
		44.176052, 41.469269, 37.674301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551262, 41.040306, 38.083588>,  <44.175198, 41.274658, 38.346706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551262, 41.040306, 38.083588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774719, 41.085991, 37.754982>,  <43.908794, 41.113400, 37.557819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774719, 41.085991, 37.754982>,  <43.551262, 41.040306, 38.083588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774719, 41.085991, 37.754982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422836, -0.812881, -0.400543,
		-0.713535, 0.571123, -0.405815,
		0.558639, 0.114209, -0.821510,
		43.942310, 41.120255, 37.508530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075699, 41.065830, 37.455090>,  <43.551262, 41.040306, 38.083588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075699, 41.065830, 37.455090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.436474, 40.964260, 37.315353>,  <43.652939, 40.903316, 37.231514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.436474, 40.964260, 37.315353>,  <43.075699, 41.065830, 37.455090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436474, 40.964260, 37.315353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381178, -0.848309, -0.367526,
		-0.203020, 0.464643, -0.861910,
		0.901935, -0.253926, -0.349336,
		43.707054, 40.888081, 37.210552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018681, 40.554192, 36.891117>,  <43.075699, 41.065830, 37.455090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018681, 40.554192, 36.891117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.407791, 40.485886, 36.953777>,  <43.641258, 40.444904, 36.991375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.407791, 40.485886, 36.953777>,  <43.018681, 40.554192, 36.891117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407791, 40.485886, 36.953777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107573, -0.931522, -0.347411,
		0.205251, 0.321102, -0.924535,
		0.972780, -0.170762, 0.156654,
		43.699623, 40.434658, 37.000774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208576, 40.163036, 36.397839>,  <43.018681, 40.554192, 36.891117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208576, 40.163036, 36.397839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515217, 40.104908, 36.648026>,  <43.699200, 40.070030, 36.798138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515217, 40.104908, 36.648026>,  <43.208576, 40.163036, 36.397839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515217, 40.104908, 36.648026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054308, -0.955890, -0.288662,
		0.639825, 0.255255, -0.724892,
		0.766599, -0.145326, 0.625464,
		43.745197, 40.061310, 36.835667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616039, 39.811245, 36.013950>,  <43.208576, 40.163036, 36.397839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616039, 39.811245, 36.013950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.707878, 39.719738, 36.392357>,  <43.762981, 39.664833, 36.619400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.707878, 39.719738, 36.392357>,  <43.616039, 39.811245, 36.013950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707878, 39.719738, 36.392357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075169, -0.964914, -0.251575,
		0.970379, 0.128871, -0.204343,
		0.229594, -0.228763, 0.946020,
		43.776756, 39.651108, 36.676163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070251, 39.268169, 35.927868>,  <43.616039, 39.811245, 36.013950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070251, 39.268169, 35.927868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.965134, 39.225086, 36.311398>,  <43.902061, 39.199238, 36.541515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.965134, 39.225086, 36.311398>,  <44.070251, 39.268169, 35.927868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965134, 39.225086, 36.311398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018711, -0.994132, -0.106547,
		0.964670, -0.010060, 0.263270,
		-0.262797, -0.107709, 0.958820,
		43.886295, 39.192772, 36.599045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454056, 38.760601, 36.195621>,  <44.070251, 39.268169, 35.927868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454056, 38.760601, 36.195621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147514, 38.773060, 36.452286>,  <43.963589, 38.780533, 36.606285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147514, 38.773060, 36.452286>,  <44.454056, 38.760601, 36.195621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147514, 38.773060, 36.452286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084104, -0.995091, -0.052151,
		0.636885, -0.093932, 0.765215,
		-0.766358, 0.031143, 0.641659,
		43.917606, 38.782402, 36.644783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634731, 38.380684, 36.705509>,  <44.454056, 38.760601, 36.195621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634731, 38.380684, 36.705509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235348, 38.392277, 36.686554>,  <43.995720, 38.399235, 36.675182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235348, 38.392277, 36.686554>,  <44.634731, 38.380684, 36.705509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235348, 38.392277, 36.686554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027892, -0.999334, -0.023541,
		-0.048035, -0.022183, 0.998599,
		-0.998456, 0.028984, -0.047384,
		43.935810, 38.400970, 36.672340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383327, 37.948399, 37.333298>,  <44.634731, 38.380684, 36.705509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383327, 37.948399, 37.333298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.083744, 37.970825, 37.069202>,  <43.903992, 37.984283, 36.910744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.083744, 37.970825, 37.069202>,  <44.383327, 37.948399, 37.333298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083744, 37.970825, 37.069202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148404, -0.985295, 0.084673,
		-0.645782, 0.161399, 0.746268,
		-0.748960, 0.056069, -0.660238,
		43.859055, 37.987644, 36.871132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045628, 37.347275, 37.543766>,  <44.383327, 37.948399, 37.333298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045628, 37.347275, 37.543766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866058, 37.442467, 37.199245>,  <43.758316, 37.499584, 36.992535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866058, 37.442467, 37.199245>,  <44.045628, 37.347275, 37.543766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866058, 37.442467, 37.199245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473569, -0.880750, 0.003474,
		-0.757761, 0.409444, 0.508087,
		-0.448920, 0.237982, -0.861298,
		43.731380, 37.513863, 36.940857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389641, 37.084538, 37.668800>,  <44.045628, 37.347275, 37.543766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389641, 37.084538, 37.668800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439350, 37.128128, 37.274303>,  <43.469177, 37.154282, 37.037605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439350, 37.128128, 37.274303>,  <43.389641, 37.084538, 37.668800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439350, 37.128128, 37.274303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241380, -0.960772, -0.136579,
		-0.962440, 0.255034, -0.093097,
		0.124277, 0.108977, -0.986245,
		43.476635, 37.160820, 36.978432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844749, 36.889290, 37.362740>,  <43.389641, 37.084538, 37.668800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844749, 36.889290, 37.362740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092712, 36.865341, 37.049786>,  <43.241489, 36.850971, 36.862015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092712, 36.865341, 37.049786>,  <42.844749, 36.889290, 37.362740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092712, 36.865341, 37.049786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317773, -0.930818, -0.180547,
		-0.717449, 0.360544, -0.596050,
		0.619909, -0.059876, -0.782386,
		43.278687, 36.847378, 36.815071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373169, 36.522278, 36.979790>,  <42.844749, 36.889290, 37.362740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373169, 36.522278, 36.979790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740551, 36.464928, 36.832336>,  <42.960979, 36.430519, 36.743866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740551, 36.464928, 36.832336>,  <42.373169, 36.522278, 36.979790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740551, 36.464928, 36.832336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208477, -0.967499, -0.143121,
		-0.336132, 0.208301, -0.918492,
		0.918452, -0.143376, -0.368633,
		43.016087, 36.421913, 36.721748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265038, 36.169594, 36.372120>,  <42.373169, 36.522278, 36.979790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265038, 36.169594, 36.372120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.626392, 36.088970, 36.523518>,  <42.843204, 36.040596, 36.614357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.626392, 36.088970, 36.523518>,  <42.265038, 36.169594, 36.372120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626392, 36.088970, 36.523518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203353, -0.978455, -0.035686,
		0.377533, -0.044729, -0.924915,
		0.903392, -0.201557, 0.378495,
		42.897411, 36.028503, 36.637066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450485, 35.550156, 35.982853>,  <42.265038, 36.169594, 36.372120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450485, 35.550156, 35.982853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.719795, 35.552929, 36.278599>,  <42.881382, 35.554592, 36.456047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.719795, 35.552929, 36.278599>,  <42.450485, 35.550156, 35.982853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719795, 35.552929, 36.278599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084770, -0.994086, -0.067873,
		0.734521, 0.108373, -0.669877,
		0.673270, 0.006932, 0.739364,
		42.921776, 35.555008, 36.500408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906322, 35.056828, 35.819855>,  <42.450485, 35.550156, 35.982853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906322, 35.056828, 35.819855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.029938, 35.088463, 36.198956>,  <43.104107, 35.107445, 36.426418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.029938, 35.088463, 36.198956>,  <42.906322, 35.056828, 35.819855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029938, 35.088463, 36.198956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010841, -0.996764, 0.079644,
		0.950987, -0.014339, -0.308897,
		0.309039, 0.079089, 0.947755,
		43.122650, 35.112190, 36.483280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524109, 34.592754, 35.994408>,  <42.906322, 35.056828, 35.819855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524109, 34.592754, 35.994408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356308, 34.666214, 36.349998>,  <43.255627, 34.710289, 36.563354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356308, 34.666214, 36.349998>,  <43.524109, 34.592754, 35.994408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356308, 34.666214, 36.349998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101326, -0.982674, 0.155193,
		0.902080, -0.024972, 0.430846,
		-0.419506, 0.183653, 0.888981,
		43.230457, 34.721310, 36.616692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869904, 34.105877, 36.462517>,  <43.524109, 34.592754, 35.994408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869904, 34.105877, 36.462517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539799, 34.234287, 36.648369>,  <43.341736, 34.311333, 36.759880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539799, 34.234287, 36.648369>,  <43.869904, 34.105877, 36.462517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539799, 34.234287, 36.648369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272901, -0.946978, 0.169583,
		0.494433, 0.013153, 0.869116,
		-0.825264, 0.321030, 0.464628,
		43.292221, 34.330597, 36.787758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358437, 34.462627, 36.089634>,  <43.869904, 34.105877, 36.462517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358437, 34.462627, 36.089634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.637352, 34.366749, 35.819424>,  <44.804703, 34.309219, 35.657299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.637352, 34.366749, 35.819424>,  <44.358437, 34.462627, 36.089634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637352, 34.366749, 35.819424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692345, 0.469253, 0.548143,
		0.185600, -0.849909, 0.493161,
		0.697289, -0.239702, -0.675524,
		44.846539, 34.294838, 35.616768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868122, 34.248642, 36.494148>,  <44.358437, 34.462627, 36.089634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868122, 34.248642, 36.494148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.042263, 34.348465, 36.148159>,  <45.146748, 34.408360, 35.940563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.042263, 34.348465, 36.148159>,  <44.868122, 34.248642, 36.494148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042263, 34.348465, 36.148159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717084, 0.484776, 0.500783,
		0.544296, -0.838279, 0.032093,
		0.435354, 0.249560, -0.864977,
		45.172871, 34.423332, 35.888664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576855, 34.123447, 36.601997>,  <44.868122, 34.248642, 36.494148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576855, 34.123447, 36.601997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.546570, 34.383408, 36.299503>,  <45.528400, 34.539383, 36.118008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.546570, 34.383408, 36.299503>,  <45.576855, 34.123447, 36.601997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546570, 34.383408, 36.299503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668745, 0.595652, 0.444948,
		0.739627, -0.472043, -0.479717,
		-0.075710, 0.649904, -0.756236,
		45.523857, 34.578377, 36.072632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231380, 34.424904, 36.612160>,  <45.576855, 34.123447, 36.601997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.231380, 34.424904, 36.612160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008854, 34.689053, 36.410400>,  <45.875340, 34.847542, 36.289345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008854, 34.689053, 36.410400>,  <46.231380, 34.424904, 36.612160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008854, 34.689053, 36.410400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391800, 0.743745, 0.541606,
		0.732806, 0.103681, -0.672492,
		-0.556317, 0.660374, -0.504398,
		45.841957, 34.887165, 36.259083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626972, 34.969944, 36.349667>,  <46.231380, 34.424904, 36.612160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626972, 34.969944, 36.349667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.263885, 35.137421, 36.360550>,  <46.046032, 35.237907, 36.367081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.263885, 35.137421, 36.360550>,  <46.626972, 34.969944, 36.349667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263885, 35.137421, 36.360550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405927, 0.859944, 0.309386,
		0.106139, 0.291881, -0.950547,
		-0.907721, 0.418691, 0.027209,
		45.991570, 35.263027, 36.368713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604321, 35.651989, 36.037045>,  <46.626972, 34.969944, 36.349667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604321, 35.651989, 36.037045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.299816, 35.670750, 36.295742>,  <46.117111, 35.682007, 36.450958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.299816, 35.670750, 36.295742>,  <46.604321, 35.651989, 36.037045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299816, 35.670750, 36.295742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252438, 0.940135, 0.228957,
		-0.597285, 0.337559, -0.727533,
		-0.761266, 0.046904, 0.646742,
		46.071438, 35.684822, 36.489765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365814, 36.372326, 35.925091>,  <46.604321, 35.651989, 36.037045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365814, 36.372326, 35.925091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.205734, 36.238964, 36.266541>,  <46.109688, 36.158947, 36.471413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.205734, 36.238964, 36.266541>,  <46.365814, 36.372326, 35.925091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205734, 36.238964, 36.266541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097556, 0.910681, 0.401427,
		-0.911221, 0.243927, -0.331927,
		-0.400198, -0.333407, 0.853628,
		46.085674, 36.138943, 36.522629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797894, 36.846649, 36.002949>,  <46.365814, 36.372326, 35.925091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797894, 36.846649, 36.002949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.872417, 36.685837, 36.361538>,  <45.917133, 36.589352, 36.576691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.872417, 36.685837, 36.361538>,  <45.797894, 36.846649, 36.002949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872417, 36.685837, 36.361538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078397, 0.915622, 0.394323,
		-0.979358, -0.003186, 0.202108,
		0.186311, -0.402028, 0.896472,
		45.928310, 36.565228, 36.630478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406013, 37.323143, 36.604187>,  <45.797894, 36.846649, 36.002949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406013, 37.323143, 36.604187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671131, 37.100941, 36.805031>,  <45.830204, 36.967621, 36.925537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671131, 37.100941, 36.805031>,  <45.406013, 37.323143, 36.604187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671131, 37.100941, 36.805031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133736, 0.747591, 0.650555,
		-0.736759, -0.364036, 0.569793,
		0.662798, -0.555505, 0.502109,
		45.869972, 36.934288, 36.955666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143974, 37.287849, 37.352661>,  <45.406013, 37.323143, 36.604187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143974, 37.287849, 37.352661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.535778, 37.210491, 37.330215>,  <45.770863, 37.164074, 37.316746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.535778, 37.210491, 37.330215>,  <45.143974, 37.287849, 37.352661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535778, 37.210491, 37.330215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189730, 0.792906, 0.579054,
		-0.067494, -0.577838, 0.813356,
		0.979514, -0.193400, -0.056117,
		45.829632, 37.152470, 37.313381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.445271, 37.326157, 38.003441>,  <45.143974, 37.287849, 37.352661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.445271, 37.326157, 38.003441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.793053, 37.333431, 37.805969>,  <46.001720, 37.337795, 37.687485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.793053, 37.333431, 37.805969>,  <45.445271, 37.326157, 38.003441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793053, 37.333431, 37.805969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327752, 0.726484, 0.603987,
		0.369639, -0.686943, 0.625681,
		0.869452, 0.018189, -0.493683,
		46.053886, 37.338886, 37.657864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971550, 37.404793, 38.532982>,  <45.445271, 37.326157, 38.003441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971550, 37.404793, 38.532982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.130585, 37.533051, 38.189095>,  <46.226006, 37.610004, 37.982761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.130585, 37.533051, 38.189095>,  <45.971550, 37.404793, 38.532982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130585, 37.533051, 38.189095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207146, 0.881402, 0.424525,
		0.893879, -0.346871, 0.284010,
		0.397583, 0.320643, -0.859719,
		46.249859, 37.629242, 37.931179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567017, 37.693787, 38.740158>,  <45.971550, 37.404793, 38.532982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567017, 37.693787, 38.740158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.505035, 37.859074, 38.381218>,  <46.467846, 37.958244, 38.165852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.505035, 37.859074, 38.381218>,  <46.567017, 37.693787, 38.740158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505035, 37.859074, 38.381218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146048, 0.907925, 0.392864,
		0.977066, -0.070180, -0.201038,
		-0.154956, 0.413216, -0.897353,
		46.458549, 37.983040, 38.112011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.167278, 38.071136, 38.659126>,  <46.567017, 37.693787, 38.740158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.167278, 38.071136, 38.659126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.901894, 38.215977, 38.397228>,  <46.742661, 38.302879, 38.240089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.901894, 38.215977, 38.397228>,  <47.167278, 38.071136, 38.659126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.901894, 38.215977, 38.397228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275021, 0.931853, 0.236669,
		0.695828, -0.023048, -0.717838,
		-0.663465, 0.362102, -0.654749,
		46.702854, 38.324608, 38.200802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.511005, 38.556946, 38.255424>,  <47.167278, 38.071136, 38.659126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.511005, 38.556946, 38.255424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.125347, 38.659283, 38.227226>,  <46.893951, 38.720684, 38.210308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.125347, 38.659283, 38.227226>,  <47.511005, 38.556946, 38.255424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125347, 38.659283, 38.227226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233125, 0.943472, 0.235611,
		0.126785, 0.210730, -0.969287,
		-0.964146, 0.255838, -0.070492,
		46.836102, 38.736034, 38.206078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.487400, 39.262573, 37.918026>,  <47.511005, 38.556946, 38.255424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.487400, 39.262573, 37.918026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.118580, 39.230457, 38.069485>,  <46.897285, 39.211185, 38.160358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.118580, 39.230457, 38.069485>,  <47.487400, 39.262573, 37.918026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.118580, 39.230457, 38.069485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013112, 0.984165, 0.176769,
		-0.386843, 0.158025, -0.908505,
		-0.922053, -0.080294, 0.378645,
		46.841965, 39.206367, 38.183079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.182556, 39.780487, 37.675541>,  <47.487400, 39.262573, 37.918026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.182556, 39.780487, 37.675541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.974682, 39.694809, 38.006371>,  <46.849957, 39.643402, 38.204868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.974682, 39.694809, 38.006371>,  <47.182556, 39.780487, 37.675541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974682, 39.694809, 38.006371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081599, 0.976080, 0.201515,
		-0.850452, 0.037237, -0.524734,
		-0.519686, -0.214197, 0.827071,
		46.818775, 39.630550, 38.254490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680958, 40.296680, 37.712517>,  <47.182556, 39.780487, 37.675541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680958, 40.296680, 37.712517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.677731, 40.168137, 38.091286>,  <46.675793, 40.091011, 38.318546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.677731, 40.168137, 38.091286>,  <46.680958, 40.296680, 37.712517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.677731, 40.168137, 38.091286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047972, 0.945987, 0.320635,
		-0.998816, -0.042837, -0.023052,
		-0.008072, -0.321361, 0.946922,
		46.675308, 40.071728, 38.375362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130043, 40.569950, 37.956223>,  <46.680958, 40.296680, 37.712517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130043, 40.569950, 37.956223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.347168, 40.487408, 38.281864>,  <46.477444, 40.437881, 38.477249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.347168, 40.487408, 38.281864>,  <46.130043, 40.569950, 37.956223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.347168, 40.487408, 38.281864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023237, 0.965283, 0.260169,
		-0.839530, -0.160141, 0.519176,
		0.542816, -0.206355, 0.814106,
		46.510014, 40.425503, 38.526096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.782448, 40.905811, 38.588211>,  <46.130043, 40.569950, 37.956223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.782448, 40.905811, 38.588211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.166359, 40.855495, 38.688622>,  <46.396706, 40.825306, 38.748867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.166359, 40.855495, 38.688622>,  <45.782448, 40.905811, 38.588211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166359, 40.855495, 38.688622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054164, 0.960188, 0.274054,
		-0.275502, -0.249433, 0.928376,
		0.959773, -0.125787, 0.251023,
		46.454292, 40.817760, 38.763927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894253, 41.273750, 39.253117>,  <45.782448, 40.905811, 38.588211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894253, 41.273750, 39.253117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.266335, 41.227863, 39.113659>,  <46.489586, 41.200333, 39.029984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.266335, 41.227863, 39.113659>,  <45.894253, 41.273750, 39.253117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266335, 41.227863, 39.113659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227985, 0.925017, 0.303919,
		0.287636, -0.362193, 0.886612,
		0.930208, -0.114717, -0.348643,
		46.545399, 41.193447, 39.009068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.330677, 34.730930, 42.272720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072628, 34.460804, 42.129738>,  <35.917801, 34.298729, 42.043949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072628, 34.460804, 42.129738>,  <36.330677, 34.730930, 42.272720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072628, 34.460804, 42.129738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568831, -0.112123, -0.814776,
		0.510150, -0.728959, 0.456472,
		-0.645119, -0.675313, -0.357455,
		35.879093, 34.258209, 42.022503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704346, 34.257957, 41.998985>,  <36.330677, 34.730930, 42.272720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704346, 34.257957, 41.998985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351860, 34.202782, 41.818127>,  <36.140369, 34.169678, 41.709610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351860, 34.202782, 41.818127>,  <36.704346, 34.257957, 41.998985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351860, 34.202782, 41.818127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459618, -0.026372, -0.887725,
		0.110524, -0.990090, 0.086636,
		-0.881213, -0.137935, -0.452149,
		36.087498, 34.161400, 41.682484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787964, 33.702065, 41.620590>,  <36.704346, 34.257957, 41.998985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787964, 33.702065, 41.620590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476536, 33.891781, 41.456211>,  <36.289680, 34.005611, 41.357586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476536, 33.891781, 41.456211>,  <36.787964, 33.702065, 41.620590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476536, 33.891781, 41.456211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477898, 0.023669, -0.878096,
		-0.406750, -0.880048, -0.245093,
		-0.778568, 0.474295, -0.410946,
		36.242966, 34.034069, 41.332928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743999, 33.444706, 41.023869>,  <36.787964, 33.702065, 41.620590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743999, 33.444706, 41.023869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543400, 33.785107, 40.961521>,  <36.423038, 33.989346, 40.924114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543400, 33.785107, 40.961521>,  <36.743999, 33.444706, 41.023869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543400, 33.785107, 40.961521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297896, 0.000709, -0.954598,
		-0.812251, -0.525167, -0.253865,
		-0.501503, 0.850999, -0.155869,
		36.392948, 34.040405, 40.914761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377361, 33.415932, 40.328472>,  <36.743999, 33.444706, 41.023869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377361, 33.415932, 40.328472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407925, 33.809147, 40.395157>,  <36.426262, 34.045078, 40.435165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407925, 33.809147, 40.395157>,  <36.377361, 33.415932, 40.328472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407925, 33.809147, 40.395157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203443, 0.148309, -0.967789,
		-0.976101, 0.107863, -0.188661,
		0.076409, 0.983041, 0.166709,
		36.430847, 34.104057, 40.445171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957481, 33.773712, 39.848270>,  <36.377361, 33.415932, 40.328472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957481, 33.773712, 39.848270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224106, 34.044277, 39.973595>,  <36.384079, 34.206615, 40.048790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224106, 34.044277, 39.973595>,  <35.957481, 33.773712, 39.848270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224106, 34.044277, 39.973595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251187, 0.191919, -0.948721,
		-0.701859, 0.711077, -0.041982,
		0.666557, 0.676414, 0.313313,
		36.424072, 34.247200, 40.067589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841763, 34.314724, 39.395859>,  <35.957481, 33.773712, 39.848270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841763, 34.314724, 39.395859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200138, 34.377174, 39.562191>,  <36.415165, 34.414646, 39.661991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200138, 34.377174, 39.562191>,  <35.841763, 34.314724, 39.395859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200138, 34.377174, 39.562191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363445, 0.280508, -0.888382,
		-0.255344, 0.947069, 0.194576,
		0.895939, 0.156125, 0.415834,
		36.468922, 34.424011, 39.686939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092270, 35.032101, 39.172150>,  <35.841763, 34.314724, 39.395859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092270, 35.032101, 39.172150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416962, 34.834724, 39.297115>,  <36.611778, 34.716297, 39.372093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416962, 34.834724, 39.297115>,  <36.092270, 35.032101, 39.172150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416962, 34.834724, 39.297115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543690, 0.443117, -0.712775,
		0.213281, 0.748438, 0.627974,
		0.811734, -0.493445, 0.312410,
		36.660480, 34.686691, 39.390839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550034, 35.482300, 39.056477>,  <36.092270, 35.032101, 39.172150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550034, 35.482300, 39.056477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755764, 35.139904, 39.077461>,  <36.879204, 34.934467, 39.090054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755764, 35.139904, 39.077461>,  <36.550034, 35.482300, 39.056477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755764, 35.139904, 39.077461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586343, 0.306349, -0.749902,
		0.625834, 0.416457, 0.659466,
		0.514328, -0.855987, 0.052463,
		36.910061, 34.883106, 39.093201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296913, 35.547287, 39.045898>,  <36.550034, 35.482300, 39.056477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296913, 35.547287, 39.045898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210281, 35.182915, 38.905441>,  <37.158302, 34.964291, 38.821167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210281, 35.182915, 38.905441>,  <37.296913, 35.547287, 39.045898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210281, 35.182915, 38.905441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394694, 0.247272, -0.884914,
		0.892923, -0.330246, 0.305985,
		-0.216577, -0.910930, -0.351141,
		37.145309, 34.909637, 38.800098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915966, 35.329456, 38.725193>,  <37.296913, 35.547287, 39.045898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915966, 35.329456, 38.725193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621807, 35.114380, 38.560230>,  <37.445312, 34.985336, 38.461254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621807, 35.114380, 38.560230>,  <37.915966, 35.329456, 38.725193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621807, 35.114380, 38.560230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409730, 0.131912, -0.902619,
		0.539730, -0.832760, 0.123299,
		-0.735400, -0.537689, -0.412404,
		37.401188, 34.953072, 38.436508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355099, 34.887421, 38.263817>,  <37.915966, 35.329456, 38.725193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355099, 34.887421, 38.263817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977730, 34.867805, 38.132637>,  <37.751308, 34.856037, 38.053928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977730, 34.867805, 38.132637>,  <38.355099, 34.887421, 38.263817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977730, 34.867805, 38.132637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330192, -0.048065, -0.942689,
		0.030469, -0.997640, 0.061539,
		-0.943422, -0.049042, -0.327948,
		37.694702, 34.853092, 38.034252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302402, 34.221478, 37.877968>,  <38.355099, 34.887421, 38.263817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302402, 34.221478, 37.877968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053120, 34.503372, 37.742344>,  <37.903549, 34.672508, 37.660969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053120, 34.503372, 37.742344>,  <38.302402, 34.221478, 37.877968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053120, 34.503372, 37.742344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268965, -0.213961, -0.939084,
		-0.734350, -0.676440, -0.056207,
		-0.623208, 0.704734, -0.339061,
		37.866158, 34.714794, 37.640625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548542, 33.775154, 37.239170>,  <38.302402, 34.221478, 37.877968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548542, 33.775154, 37.239170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429813, 34.048515, 36.972378>,  <38.358574, 34.212532, 36.812302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429813, 34.048515, 36.972378>,  <38.548542, 33.775154, 37.239170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429813, 34.048515, 36.972378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905535, 0.020293, 0.423785,
		0.303150, 0.729763, 0.612819,
		-0.296826, 0.683399, -0.666978,
		38.340767, 34.253536, 36.772285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158432, 33.363991, 37.117214>,  <38.548542, 33.775154, 37.239170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158432, 33.363991, 37.117214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313263, 33.058929, 36.909935>,  <39.406162, 32.875893, 36.785568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313263, 33.058929, 36.909935>,  <39.158432, 33.363991, 37.117214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313263, 33.058929, 36.909935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567641, -0.639984, 0.517884,
		-0.726606, 0.093690, -0.680637,
		0.387076, -0.762655, -0.518199,
		39.429386, 32.830132, 36.754475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688267, 33.003971, 36.769516>,  <39.158432, 33.363991, 37.117214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688267, 33.003971, 36.769516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978947, 32.732536, 36.812275>,  <39.153355, 32.569675, 36.837929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978947, 32.732536, 36.812275>,  <38.688267, 33.003971, 36.769516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978947, 32.732536, 36.812275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653549, -0.634996, 0.411891,
		-0.211625, -0.369183, -0.904941,
		0.726697, -0.678590, 0.106899,
		39.196957, 32.528961, 36.844345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494194, 32.392529, 36.376663>,  <38.688267, 33.003971, 36.769516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494194, 32.392529, 36.376663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741241, 32.277981, 36.669659>,  <38.889469, 32.209251, 36.845455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741241, 32.277981, 36.669659>,  <38.494194, 32.392529, 36.376663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741241, 32.277981, 36.669659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696086, -0.632552, 0.339621,
		0.366082, -0.719632, -0.590012,
		0.617615, -0.286370, 0.732492,
		38.926525, 32.192070, 36.889404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351845, 31.756435, 36.348106>,  <38.494194, 32.392529, 36.376663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351845, 31.756435, 36.348106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546097, 31.768494, 36.697563>,  <38.662647, 31.775728, 36.907238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546097, 31.768494, 36.697563>,  <38.351845, 31.756435, 36.348106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546097, 31.768494, 36.697563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572842, -0.743943, 0.344095,
		0.660313, -0.667563, -0.344015,
		0.485633, 0.030144, 0.873643,
		38.691788, 31.777536, 36.959656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437595, 31.043993, 36.491055>,  <38.351845, 31.756435, 36.348106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437595, 31.043993, 36.491055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458111, 31.258970, 36.827751>,  <38.470421, 31.387957, 37.029770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458111, 31.258970, 36.827751>,  <38.437595, 31.043993, 36.491055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458111, 31.258970, 36.827751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526635, -0.701581, 0.480041,
		0.848543, -0.467911, 0.247052,
		0.051290, 0.537441, 0.841740,
		38.473499, 31.420202, 37.080273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623390, 30.600252, 37.063099>,  <38.437595, 31.043993, 36.491055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623390, 30.600252, 37.063099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460922, 30.921175, 37.238064>,  <38.363441, 31.113729, 37.343040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460922, 30.921175, 37.238064>,  <38.623390, 30.600252, 37.063099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460922, 30.921175, 37.238064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594965, -0.595500, 0.539811,
		0.693572, -0.040987, 0.719220,
		-0.406171, 0.802309, 0.437408,
		38.339069, 31.161867, 37.369286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612709, 30.425493, 37.775600>,  <38.623390, 30.600252, 37.063099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612709, 30.425493, 37.775600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356586, 30.729776, 37.733021>,  <38.202915, 30.912346, 37.707474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356586, 30.729776, 37.733021>,  <38.612709, 30.425493, 37.775600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356586, 30.729776, 37.733021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676938, -0.493358, 0.546217,
		0.362994, 0.421805, 0.830852,
		-0.640304, 0.760709, -0.106450,
		38.164494, 30.957989, 37.701084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320614, 30.520737, 38.499519>,  <38.612709, 30.425493, 37.775600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320614, 30.520737, 38.499519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049274, 30.698299, 38.265327>,  <37.886471, 30.804838, 38.124813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049274, 30.698299, 38.265327>,  <38.320614, 30.520737, 38.499519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049274, 30.698299, 38.265327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731687, -0.480678, 0.483304,
		-0.066885, 0.756237, 0.650870,
		-0.678351, 0.443908, -0.585479,
		37.845768, 30.831472, 38.089684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825989, 30.738539, 38.824368>,  <38.320614, 30.520737, 38.499519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825989, 30.738539, 38.824368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647579, 30.698286, 38.468628>,  <37.540535, 30.674135, 38.255184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647579, 30.698286, 38.468628>,  <37.825989, 30.738539, 38.824368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647579, 30.698286, 38.468628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711742, -0.562595, 0.420607,
		-0.542670, 0.820585, 0.179305,
		-0.446020, -0.100632, -0.889348,
		37.513775, 30.668097, 38.201824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181236, 30.961153, 38.932640>,  <37.825989, 30.738539, 38.824368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181236, 30.961153, 38.932640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145180, 30.740705, 38.600822>,  <37.123547, 30.608437, 38.401733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145180, 30.740705, 38.600822>,  <37.181236, 30.961153, 38.932640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145180, 30.740705, 38.600822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742463, -0.517970, 0.424800,
		-0.663794, 0.654198, -0.362494,
		-0.090143, -0.551119, -0.829543,
		37.118137, 30.575371, 38.351959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439735, 30.966734, 38.812191>,  <37.181236, 30.961153, 38.932640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439735, 30.966734, 38.812191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581253, 30.651627, 38.610497>,  <36.666164, 30.462563, 38.489479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581253, 30.651627, 38.610497>,  <36.439735, 30.966734, 38.812191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581253, 30.651627, 38.610497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669006, -0.589886, 0.452179,
		-0.653654, 0.177361, -0.735717,
		0.353790, -0.787767, -0.504237,
		36.687389, 30.415297, 38.459225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885414, 30.682026, 38.637104>,  <36.439735, 30.966734, 38.812191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885414, 30.682026, 38.637104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162716, 30.396818, 38.595146>,  <36.329098, 30.225695, 38.569973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162716, 30.396818, 38.595146>,  <35.885414, 30.682026, 38.637104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162716, 30.396818, 38.595146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569605, -0.631254, 0.526372,
		-0.441526, -0.305163, -0.843759,
		0.693256, -0.713017, -0.104893,
		36.370693, 30.182913, 38.563679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529480, 30.041031, 38.543186>,  <35.885414, 30.682026, 38.637104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529480, 30.041031, 38.543186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890553, 29.948385, 38.688251>,  <36.107197, 29.892797, 38.775291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890553, 29.948385, 38.688251>,  <35.529480, 30.041031, 38.543186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890553, 29.948385, 38.688251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430309, -0.488426, 0.759127,
		0.001311, -0.841306, -0.540558,
		0.902680, -0.231612, 0.362662,
		36.161358, 29.878902, 38.797050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473026, 29.371069, 38.642944>,  <35.529480, 30.041031, 38.543186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473026, 29.371069, 38.642944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760925, 29.498640, 38.889603>,  <35.933662, 29.575182, 39.037598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760925, 29.498640, 38.889603>,  <35.473026, 29.371069, 38.642944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760925, 29.498640, 38.889603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449454, -0.462907, 0.764008,
		0.529113, -0.827045, -0.189831,
		0.719743, 0.318926, 0.616649,
		35.976849, 29.594318, 39.074596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835609, 28.887650, 38.250862>,  <35.473026, 29.371069, 38.642944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835609, 28.887650, 38.250862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442993, 28.838264, 38.192448>,  <35.207424, 28.808634, 38.157398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442993, 28.838264, 38.192448>,  <35.835609, 28.887650, 38.250862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442993, 28.838264, 38.192448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064778, 0.503861, -0.861352,
		0.179928, -0.854915, -0.486565,
		-0.981545, -0.123463, -0.146039,
		35.148529, 28.801226, 38.148636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822987, 28.655893, 37.527039>,  <35.835609, 28.887650, 38.250862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822987, 28.655893, 37.527039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447750, 28.770603, 37.604748>,  <35.222607, 28.839428, 37.651375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447750, 28.770603, 37.604748>,  <35.822987, 28.655893, 37.527039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447750, 28.770603, 37.604748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014040, 0.591887, -0.805899,
		-0.346099, -0.753280, -0.559271,
		-0.938093, 0.286773, 0.194275,
		35.166321, 28.856636, 37.663029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484264, 28.727390, 36.834568>,  <35.822987, 28.655893, 37.527039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484264, 28.727390, 36.834568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262238, 28.945301, 37.086002>,  <35.129021, 29.076048, 37.236862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262238, 28.945301, 37.086002>,  <35.484264, 28.727390, 36.834568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262238, 28.945301, 37.086002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042832, 0.735968, -0.675660,
		-0.830704, -0.401958, -0.385175,
		-0.555064, 0.544776, 0.628588,
		35.095718, 29.108734, 37.274578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778996, 28.899853, 36.485107>,  <35.484264, 28.727390, 36.834568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778996, 28.899853, 36.485107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842049, 29.167147, 36.775932>,  <34.879879, 29.327522, 36.950428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842049, 29.167147, 36.775932>,  <34.778996, 28.899853, 36.485107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842049, 29.167147, 36.775932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356193, 0.725175, -0.589277,
		-0.921021, -0.166087, 0.352328,
		0.157628, 0.668233, 0.727061,
		34.889336, 29.367617, 36.994049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157803, 29.344612, 36.610970>,  <34.778996, 28.899853, 36.485107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157803, 29.344612, 36.610970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473206, 29.555225, 36.738102>,  <34.662449, 29.681593, 36.814381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473206, 29.555225, 36.738102>,  <34.157803, 29.344612, 36.610970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473206, 29.555225, 36.738102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369131, 0.818514, -0.440202,
		-0.491932, 0.229780, 0.839765,
		0.788508, 0.526533, 0.317834,
		34.709759, 29.713184, 36.833450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917084, 29.940216, 36.669655>,  <34.157803, 29.344612, 36.610970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917084, 29.940216, 36.669655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302929, 30.045334, 36.678276>,  <34.534435, 30.108404, 36.683449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302929, 30.045334, 36.678276>,  <33.917084, 29.940216, 36.669655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302929, 30.045334, 36.678276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206638, 0.804196, -0.557288,
		-0.163783, 0.533113, 0.830040,
		0.964612, 0.262792, 0.021552,
		34.592312, 30.124172, 36.684742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810005, 30.605734, 36.658440>,  <33.917084, 29.940216, 36.669655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810005, 30.605734, 36.658440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197247, 30.579874, 36.561607>,  <34.429592, 30.564358, 36.503510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197247, 30.579874, 36.561607>,  <33.810005, 30.605734, 36.658440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197247, 30.579874, 36.561607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098117, 0.791168, -0.603677,
		0.230554, 0.608172, 0.759586,
		0.968100, -0.064652, -0.242079,
		34.487675, 30.560478, 36.488983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117580, 31.213619, 36.749229>,  <33.810005, 30.605734, 36.658440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117580, 31.213619, 36.749229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398132, 31.069422, 36.503265>,  <34.566463, 30.982904, 36.355686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398132, 31.069422, 36.503265>,  <34.117580, 31.213619, 36.749229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398132, 31.069422, 36.503265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262551, 0.671365, -0.693063,
		0.662671, 0.647545, 0.376235,
		0.701380, -0.360492, -0.614908,
		34.608547, 30.961273, 36.318794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490768, 31.847933, 36.507862>,  <34.117580, 31.213619, 36.749229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490768, 31.847933, 36.507862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618656, 31.582331, 36.237492>,  <34.695389, 31.422970, 36.075272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618656, 31.582331, 36.237492>,  <34.490768, 31.847933, 36.507862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618656, 31.582331, 36.237492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027866, 0.719648, -0.693779,
		0.947102, 0.202981, 0.248590,
		0.319721, -0.664007, -0.675924,
		34.714573, 31.383129, 36.034714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951481, 32.240635, 36.095322>,  <34.490768, 31.847933, 36.507862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951481, 32.240635, 36.095322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803928, 31.933422, 35.885925>,  <34.715397, 31.749094, 35.760288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803928, 31.933422, 35.885925>,  <34.951481, 32.240635, 36.095322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803928, 31.933422, 35.885925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090720, 0.590277, -0.802087,
		0.925037, -0.248387, -0.287421,
		-0.368886, -0.768035, -0.523494,
		34.693264, 31.703012, 35.728878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319401, 32.281372, 35.450920>,  <34.951481, 32.240635, 36.095322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319401, 32.281372, 35.450920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992153, 32.066307, 35.369331>,  <34.795803, 31.937267, 35.320377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992153, 32.066307, 35.369331>,  <35.319401, 32.281372, 35.450920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992153, 32.066307, 35.369331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164616, 0.558822, -0.812785,
		0.550983, -0.631379, -0.545691,
		-0.818119, -0.537660, -0.203966,
		34.746719, 31.905008, 35.308140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327271, 32.207027, 34.672592>,  <35.319401, 32.281372, 35.450920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327271, 32.207027, 34.672592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962891, 32.141644, 34.824093>,  <34.744263, 32.102413, 34.914993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962891, 32.141644, 34.824093>,  <35.327271, 32.207027, 34.672592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962891, 32.141644, 34.824093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391901, 0.629561, -0.670870,
		-0.128785, -0.759561, -0.637559,
		-0.910949, -0.163462, 0.378751,
		34.689606, 32.092606, 34.937717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.696583, 26.673595, 41.271996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.330353, 26.811993, 41.190010>,  <34.110615, 26.895031, 41.140820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.330353, 26.811993, 41.190010>,  <34.696583, 26.673595, 41.271996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330353, 26.811993, 41.190010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341160, 0.398423, -0.851392,
		-0.212914, -0.849439, -0.482826,
		-0.915575, 0.345994, -0.204965,
		34.055679, 26.915791, 41.128521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541691, 26.393232, 40.595036>,  <34.696583, 26.673595, 41.271996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541691, 26.393232, 40.595036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.299973, 26.707142, 40.650105>,  <34.154942, 26.895487, 40.683144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.299973, 26.707142, 40.650105>,  <34.541691, 26.393232, 40.595036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299973, 26.707142, 40.650105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187164, 0.307771, -0.932870,
		-0.774462, -0.537967, -0.332868,
		-0.604300, 0.784773, 0.137669,
		34.118683, 26.942574, 40.691406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280590, 26.550035, 39.933048>,  <34.541691, 26.393232, 40.595036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280590, 26.550035, 39.933048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.172104, 26.886190, 40.120743>,  <34.107010, 27.087883, 40.233360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.172104, 26.886190, 40.120743>,  <34.280590, 26.550035, 39.933048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172104, 26.886190, 40.120743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014630, 0.491057, -0.871005,
		-0.962407, -0.229366, -0.145478,
		-0.271217, 0.840389, 0.469241,
		34.090740, 27.138308, 40.261517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749569, 26.847446, 39.513264>,  <34.280590, 26.550035, 39.933048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749569, 26.847446, 39.513264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.909470, 27.146500, 39.725391>,  <34.005409, 27.325932, 39.852669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.909470, 27.146500, 39.725391>,  <33.749569, 26.847446, 39.513264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909470, 27.146500, 39.725391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038359, 0.591699, -0.805246,
		-0.915820, 0.301556, 0.265212,
		0.399752, 0.747634, 0.530322,
		34.029396, 27.370790, 39.884487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359722, 27.483498, 39.255390>,  <33.749569, 26.847446, 39.513264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359722, 27.483498, 39.255390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.699570, 27.595612, 39.434093>,  <33.903477, 27.662880, 39.541317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.699570, 27.595612, 39.434093>,  <33.359722, 27.483498, 39.255390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699570, 27.595612, 39.434093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147027, 0.687638, -0.711011,
		-0.506494, 0.669772, 0.543019,
		0.849616, 0.280284, 0.446759,
		33.954456, 27.679697, 39.568123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321365, 28.162752, 39.221210>,  <33.359722, 27.483498, 39.255390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321365, 28.162752, 39.221210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.709019, 28.094698, 39.292583>,  <33.941608, 28.053865, 39.335407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.709019, 28.094698, 39.292583>,  <33.321365, 28.162752, 39.221210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709019, 28.094698, 39.292583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245150, 0.741890, -0.624099,
		-0.026197, 0.648577, 0.760698,
		0.969131, -0.170136, 0.178434,
		33.999760, 28.043657, 39.346115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655376, 28.733822, 39.301613>,  <33.321365, 28.162752, 39.221210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655376, 28.733822, 39.301613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.987091, 28.525999, 39.219296>,  <34.186119, 28.401306, 39.169907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.987091, 28.525999, 39.219296>,  <33.655376, 28.733822, 39.301613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987091, 28.525999, 39.219296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373132, 0.788942, -0.488204,
		0.416005, 0.328074, 0.848120,
		0.829285, -0.519556, -0.205789,
		34.235878, 28.370132, 39.157558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310314, 29.175121, 39.413151>,  <33.655376, 28.733822, 39.301613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310314, 29.175121, 39.413151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.426067, 28.876806, 39.173130>,  <34.495522, 28.697817, 39.029118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.426067, 28.876806, 39.173130>,  <34.310314, 29.175121, 39.413151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426067, 28.876806, 39.173130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536547, 0.645514, -0.543533,
		0.792700, -0.164665, 0.586951,
		0.289385, -0.745786, -0.600050,
		34.512882, 28.653070, 38.993114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993279, 29.287743, 39.282337>,  <34.310314, 29.175121, 39.413151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993279, 29.287743, 39.282337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.917435, 29.046261, 38.972603>,  <34.871929, 28.901373, 38.786762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.917435, 29.046261, 38.972603>,  <34.993279, 29.287743, 39.282337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917435, 29.046261, 38.972603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518415, 0.608197, -0.601117,
		0.833844, -0.515401, 0.197651,
		-0.189606, -0.603703, -0.774333,
		34.860554, 28.865150, 38.740303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640228, 28.796350, 39.106400>,  <34.993279, 29.287743, 39.282337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640228, 28.796350, 39.106400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785355, 29.110689, 39.306721>,  <35.872429, 29.299294, 39.426914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785355, 29.110689, 39.306721>,  <35.640228, 28.796350, 39.106400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785355, 29.110689, 39.306721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509176, -0.282922, 0.812832,
		0.780452, -0.549906, 0.297487,
		0.362815, 0.785849, 0.500806,
		35.894199, 29.346443, 39.456963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697613, 28.666012, 39.774162>,  <35.640228, 28.796350, 39.106400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697613, 28.666012, 39.774162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707970, 29.062546, 39.825676>,  <35.714184, 29.300467, 39.856583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707970, 29.062546, 39.825676>,  <35.697613, 28.666012, 39.774162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707970, 29.062546, 39.825676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528539, -0.095771, 0.843489,
		0.848514, -0.089909, 0.521479,
		0.025894, 0.991335, 0.128783,
		35.715736, 29.359945, 39.864311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837025, 28.744442, 40.494148>,  <35.697613, 28.666012, 39.774162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837025, 28.744442, 40.494148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719582, 29.113382, 40.393696>,  <35.649117, 29.334745, 40.333424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719582, 29.113382, 40.393696>,  <35.837025, 28.744442, 40.494148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719582, 29.113382, 40.393696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476712, 0.086433, 0.874800,
		0.828577, 0.376564, 0.414318,
		-0.293608, 0.922350, -0.251129,
		35.631500, 29.390087, 40.318356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164890, 29.193199, 40.964668>,  <35.837025, 28.744442, 40.494148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164890, 29.193199, 40.964668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827442, 29.347122, 40.814877>,  <35.624973, 29.439476, 40.725002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827442, 29.347122, 40.814877>,  <36.164890, 29.193199, 40.964668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827442, 29.347122, 40.814877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355766, 0.121787, 0.926606,
		0.402172, 0.914927, 0.034160,
		-0.843616, 0.384808, -0.374479,
		35.574356, 29.462564, 40.702534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066662, 29.803162, 41.327610>,  <36.164890, 29.193199, 40.964668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066662, 29.803162, 41.327610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707497, 29.750334, 41.159653>,  <35.491997, 29.718637, 41.058876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707497, 29.750334, 41.159653>,  <36.066662, 29.803162, 41.327610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707497, 29.750334, 41.159653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421825, -0.014400, 0.906563,
		-0.125775, 0.991136, -0.042780,
		-0.897911, -0.132069, -0.419898,
		35.438122, 29.710712, 41.033684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582165, 30.305147, 41.721561>,  <36.066662, 29.803162, 41.327610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582165, 30.305147, 41.721561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344692, 30.030579, 41.553577>,  <35.202209, 29.865837, 41.452785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344692, 30.030579, 41.553577>,  <35.582165, 30.305147, 41.721561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344692, 30.030579, 41.553577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496501, -0.098238, 0.862459,
		-0.633266, 0.720538, -0.282486,
		-0.593684, -0.686421, -0.419959,
		35.166588, 29.824652, 41.427589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959301, 30.464018, 41.970211>,  <35.582165, 30.305147, 41.721561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959301, 30.464018, 41.970211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.900455, 30.096270, 41.824272>,  <34.865147, 29.875620, 41.736710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.900455, 30.096270, 41.824272>,  <34.959301, 30.464018, 41.970211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900455, 30.096270, 41.824272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398553, -0.282489, 0.872557,
		-0.905269, 0.273778, -0.324859,
		-0.147118, -0.919372, -0.364844,
		34.856319, 29.820457, 41.714821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177097, 30.265196, 42.009804>,  <34.959301, 30.464018, 41.970211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177097, 30.265196, 42.009804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.428730, 29.957178, 42.052315>,  <34.579708, 29.772367, 42.077820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.428730, 29.957178, 42.052315>,  <34.177097, 30.265196, 42.009804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428730, 29.957178, 42.052315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459728, -0.258309, 0.849663,
		-0.626826, -0.583361, -0.516507,
		0.629079, -0.770043, 0.106273,
		34.617455, 29.726166, 42.084198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765846, 29.807371, 42.330769>,  <34.177097, 30.265196, 42.009804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765846, 29.807371, 42.330769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.094250, 29.579370, 42.343700>,  <34.291290, 29.442570, 42.351460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.094250, 29.579370, 42.343700>,  <33.765846, 29.807371, 42.330769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094250, 29.579370, 42.343700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312167, -0.400780, 0.861352,
		-0.478019, -0.717265, -0.506979,
		0.821005, -0.570005, 0.032326,
		34.340553, 29.408369, 42.353397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531261, 29.074142, 42.608658>,  <33.765846, 29.807371, 42.330769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531261, 29.074142, 42.608658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.923130, 29.108999, 42.680939>,  <34.158253, 29.129913, 42.724308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.923130, 29.108999, 42.680939>,  <33.531261, 29.074142, 42.608658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923130, 29.108999, 42.680939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129050, -0.415887, 0.900213,
		0.153596, -0.905232, -0.396187,
		0.979671, 0.087141, 0.180699,
		34.217030, 29.135141, 42.735149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747631, 28.410294, 42.818848>,  <33.531261, 29.074142, 42.608658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747631, 28.410294, 42.818848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.031876, 28.645176, 42.973881>,  <34.202423, 28.786104, 43.066902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.031876, 28.645176, 42.973881>,  <33.747631, 28.410294, 42.818848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031876, 28.645176, 42.973881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236176, -0.319827, 0.917568,
		0.662759, -0.743574, -0.088590,
		0.710613, 0.587204, 0.387582,
		34.245060, 28.821337, 43.090157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086613, 28.011736, 43.323994>,  <33.747631, 28.410294, 42.818848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086613, 28.011736, 43.323994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.212154, 28.374023, 43.437954>,  <34.287479, 28.591396, 43.506332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.212154, 28.374023, 43.437954>,  <34.086613, 28.011736, 43.323994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212154, 28.374023, 43.437954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228418, -0.219227, 0.948559,
		0.921585, -0.362789, 0.138076,
		0.313857, 0.905717, 0.284904,
		34.306313, 28.645739, 43.523426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663795, 27.978016, 43.839359>,  <34.086613, 28.011736, 43.323994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663795, 27.978016, 43.839359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.485020, 28.328796, 43.910011>,  <34.377754, 28.539265, 43.952404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.485020, 28.328796, 43.910011>,  <34.663795, 27.978016, 43.839359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485020, 28.328796, 43.910011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104509, -0.247289, 0.963289,
		0.888436, 0.412076, 0.202173,
		-0.446944, 0.876950, 0.176634,
		34.350937, 28.591881, 43.963001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965595, 28.291246, 44.420074>,  <34.663795, 27.978016, 43.839359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965595, 28.291246, 44.420074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.601063, 28.453907, 44.394447>,  <34.382343, 28.551504, 44.379070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.601063, 28.453907, 44.394447>,  <34.965595, 28.291246, 44.420074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601063, 28.453907, 44.394447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136385, -0.151413, 0.979016,
		0.388420, 0.900948, 0.193449,
		-0.911334, 0.406653, -0.064064,
		34.327663, 28.575903, 44.375229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.227011, 30.391560, 43.240818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.582115, 30.209221, 43.266373>,  <28.795177, 30.099817, 43.281704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.582115, 30.209221, 43.266373>,  <28.227011, 30.391560, 43.240818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582115, 30.209221, 43.266373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441562, 0.804182, -0.397887,
		0.129998, 0.381440, 0.915207,
		0.887763, -0.455845, 0.063888,
		28.848444, 30.072468, 43.285538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633263, 30.826527, 43.624767>,  <28.227011, 30.391560, 43.240818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633263, 30.826527, 43.624767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.852806, 30.601706, 43.377266>,  <28.984531, 30.466814, 43.228767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.852806, 30.601706, 43.377266>,  <28.633263, 30.826527, 43.624767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852806, 30.601706, 43.377266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352931, 0.826810, -0.437979,
		0.757756, 0.022012, 0.652167,
		0.548859, -0.562050, -0.618751,
		29.017464, 30.433090, 43.191639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159243, 31.313158, 43.465096>,  <28.633263, 30.826527, 43.624767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159243, 31.313158, 43.465096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.171783, 31.023724, 43.189285>,  <29.179308, 30.850063, 43.023800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.171783, 31.023724, 43.189285>,  <29.159243, 31.313158, 43.465096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171783, 31.023724, 43.189285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326742, 0.659378, -0.677097,
		0.944593, -0.204066, 0.257100,
		0.031354, -0.723586, -0.689521,
		29.181190, 30.806648, 42.982430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934338, 31.409899, 43.180264>,  <29.159243, 31.313158, 43.465096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934338, 31.409899, 43.180264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.734861, 31.180868, 42.919968>,  <29.615175, 31.043449, 42.763790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.734861, 31.180868, 42.919968>,  <29.934338, 31.409899, 43.180264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734861, 31.180868, 42.919968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468451, 0.453636, -0.758135,
		0.729290, -0.682915, 0.042000,
		-0.498688, -0.572575, -0.650744,
		29.585255, 31.009096, 42.724743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499697, 31.247749, 42.735615>,  <29.934338, 31.409899, 43.180264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499697, 31.247749, 42.735615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.144154, 31.215956, 42.555119>,  <29.930828, 31.196878, 42.446823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.144154, 31.215956, 42.555119>,  <30.499697, 31.247749, 42.735615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144154, 31.215956, 42.555119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358790, 0.491754, -0.793377,
		0.284958, -0.867099, -0.408582,
		-0.888858, -0.079485, -0.451236,
		29.877497, 31.192110, 42.419746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607962, 31.048681, 41.929707>,  <30.499697, 31.247749, 42.735615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607962, 31.048681, 41.929707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.240776, 31.206053, 41.949928>,  <30.020466, 31.300476, 41.962063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.240776, 31.206053, 41.949928>,  <30.607962, 31.048681, 41.929707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240776, 31.206053, 41.949928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246333, 0.665314, -0.704753,
		-0.310908, -0.634484, -0.707649,
		-0.917963, 0.393431, 0.050557,
		29.965387, 31.324081, 41.965096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315092, 31.083649, 41.188747>,  <30.607962, 31.048681, 41.929707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315092, 31.083649, 41.188747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.120686, 31.343851, 41.422199>,  <30.004042, 31.499973, 41.562271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.120686, 31.343851, 41.422199>,  <30.315092, 31.083649, 41.188747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120686, 31.343851, 41.422199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270686, 0.747018, -0.607201,
		-0.830974, -0.137129, -0.539146,
		-0.486017, 0.650507, 0.583633,
		29.974880, 31.539003, 41.597290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869076, 31.409143, 40.712482>,  <30.315092, 31.083649, 41.188747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869076, 31.409143, 40.712482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.887314, 31.641100, 41.037849>,  <29.898256, 31.780273, 41.233070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.887314, 31.641100, 41.037849>,  <29.869076, 31.409143, 40.712482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887314, 31.641100, 41.037849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130526, 0.803824, -0.580370,
		-0.990396, 0.132634, -0.039040,
		0.045596, 0.579892, 0.813417,
		29.900993, 31.815067, 41.281876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419582, 31.996492, 40.538555>,  <29.869076, 31.409143, 40.712482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419582, 31.996492, 40.538555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.657833, 32.113075, 40.837963>,  <29.800783, 32.183025, 41.017609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.657833, 32.113075, 40.837963>,  <29.419582, 31.996492, 40.538555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657833, 32.113075, 40.837963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173528, 0.863160, -0.474177,
		-0.784295, 0.412320, 0.463544,
		0.595625, 0.291457, 0.748521,
		29.836521, 32.200512, 41.062519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211308, 32.622185, 40.679043>,  <29.419582, 31.996492, 40.538555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211308, 32.622185, 40.679043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.596554, 32.585312, 40.780163>,  <29.827702, 32.563187, 40.840836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.596554, 32.585312, 40.780163>,  <29.211308, 32.622185, 40.679043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596554, 32.585312, 40.780163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210851, 0.842236, -0.496166,
		-0.167182, 0.531170, 0.830608,
		0.963116, -0.092185, 0.252804,
		29.885489, 32.557655, 40.856003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471806, 33.275150, 40.986610>,  <29.211308, 32.622185, 40.679043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471806, 33.275150, 40.986610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.794403, 33.072350, 40.864944>,  <29.987961, 32.950668, 40.791946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.794403, 33.072350, 40.864944>,  <29.471806, 33.275150, 40.986610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794403, 33.072350, 40.864944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320097, 0.806952, -0.496353,
		0.497099, 0.302943, 0.813092,
		0.806493, -0.507004, -0.304164,
		30.036350, 32.920250, 40.773697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994795, 33.727623, 41.076885>,  <29.471806, 33.275150, 40.986610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994795, 33.727623, 41.076885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.143488, 33.461998, 40.817398>,  <30.232704, 33.302624, 40.661705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.143488, 33.461998, 40.817398>,  <29.994795, 33.727623, 41.076885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143488, 33.461998, 40.817398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561512, 0.717310, -0.412519,
		0.739269, -0.210914, 0.639529,
		0.371735, -0.664065, -0.648715,
		30.255009, 33.262779, 40.622784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654741, 34.015896, 41.015537>,  <29.994795, 33.727623, 41.076885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654741, 34.015896, 41.015537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619024, 33.732903, 40.735111>,  <30.597595, 33.563107, 40.566856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619024, 33.732903, 40.735111>,  <30.654741, 34.015896, 41.015537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619024, 33.732903, 40.735111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680842, 0.470395, -0.561411,
		0.726967, -0.527446, 0.439681,
		-0.089290, -0.707481, -0.701069,
		30.592237, 33.520657, 40.524792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339985, 33.779671, 40.830612>,  <30.654741, 34.015896, 41.015537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339985, 33.779671, 40.830612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.096518, 33.679253, 40.529549>,  <30.950438, 33.619003, 40.348911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.096518, 33.679253, 40.529549>,  <31.339985, 33.779671, 40.830612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096518, 33.679253, 40.529549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648042, 0.390033, -0.654153,
		0.457787, -0.885917, -0.074711,
		-0.608665, -0.251047, -0.752664,
		30.913918, 33.603939, 40.303749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928661, 33.556744, 40.563953>,  <31.339985, 33.779671, 40.830612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928661, 33.556744, 40.563953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.197845, 33.818008, 40.702808>,  <32.359356, 33.974766, 40.786121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.197845, 33.818008, 40.702808>,  <31.928661, 33.556744, 40.563953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197845, 33.818008, 40.702808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163800, -0.326057, 0.931051,
		0.721313, -0.683422, -0.112436,
		0.672961, 0.653162, 0.347134,
		32.399734, 34.013958, 40.806950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493469, 33.211548, 41.095890>,  <31.928661, 33.556744, 40.563953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493469, 33.211548, 41.095890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450542, 33.604034, 41.160023>,  <32.424786, 33.839527, 41.198502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450542, 33.604034, 41.160023>,  <32.493469, 33.211548, 41.095890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450542, 33.604034, 41.160023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153918, -0.175714, 0.972334,
		0.982238, 0.079672, 0.169884,
		-0.107319, 0.981212, 0.160330,
		32.418346, 33.898399, 41.208122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906090, 33.357189, 41.749035>,  <32.493469, 33.211548, 41.095890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906090, 33.357189, 41.749035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642670, 33.650208, 41.680115>,  <32.484619, 33.826019, 41.638763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642670, 33.650208, 41.680115>,  <32.906090, 33.357189, 41.749035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642670, 33.650208, 41.680115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299269, -0.044857, 0.953114,
		0.690470, 0.679239, 0.248769,
		-0.658551, 0.732545, -0.172303,
		32.445103, 33.869972, 41.628426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875645, 33.635441, 42.422039>,  <32.906090, 33.357189, 41.749035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875645, 33.635441, 42.422039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.571327, 33.838905, 42.260815>,  <32.388737, 33.960983, 42.164078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.571327, 33.838905, 42.260815>,  <32.875645, 33.635441, 42.422039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571327, 33.838905, 42.260815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515782, -0.096942, 0.851217,
		0.393904, 0.855494, 0.336110,
		-0.760794, 0.508658, -0.403063,
		32.343090, 33.991501, 42.139896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707943, 34.248638, 42.832172>,  <32.875645, 33.635441, 42.422039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707943, 34.248638, 42.832172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401436, 34.088463, 42.631180>,  <32.217533, 33.992355, 42.510586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401436, 34.088463, 42.631180>,  <32.707943, 34.248638, 42.832172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401436, 34.088463, 42.631180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471866, -0.180068, 0.863086,
		-0.436095, 0.898456, -0.050975,
		-0.766266, -0.400441, -0.502478,
		32.171555, 33.968330, 42.480438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151001, 34.377628, 43.253277>,  <32.707943, 34.248638, 42.832172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151001, 34.377628, 43.253277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.996265, 34.080570, 43.034615>,  <31.903425, 33.902336, 42.903419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.996265, 34.080570, 43.034615>,  <32.151001, 34.377628, 43.253277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996265, 34.080570, 43.034615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598876, -0.248452, 0.761327,
		-0.701216, 0.621886, -0.348645,
		-0.386837, -0.742650, -0.546652,
		31.880215, 33.857777, 42.870621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456789, 34.389477, 43.468204>,  <32.151001, 34.377628, 43.253277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456789, 34.389477, 43.468204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530041, 34.035133, 43.297688>,  <31.573992, 33.822529, 43.195377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530041, 34.035133, 43.297688>,  <31.456789, 34.389477, 43.468204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530041, 34.035133, 43.297688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432796, -0.461986, 0.774116,
		-0.882696, 0.042733, -0.467998,
		0.183128, -0.885857, -0.426288,
		31.584980, 33.769375, 43.169800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811701, 34.021374, 43.560036>,  <31.456789, 34.389477, 43.468204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811701, 34.021374, 43.560036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.095140, 33.745350, 43.501110>,  <31.265203, 33.579735, 43.465755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.095140, 33.745350, 43.501110>,  <30.811701, 34.021374, 43.560036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095140, 33.745350, 43.501110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442853, -0.597460, 0.668523,
		-0.549334, -0.408479, -0.728956,
		0.708600, -0.690062, -0.147309,
		31.307720, 33.538330, 43.456917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411818, 33.358326, 43.637333>,  <30.811701, 34.021374, 43.560036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411818, 33.358326, 43.637333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.793455, 33.242908, 43.669441>,  <31.022438, 33.173656, 43.688705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.793455, 33.242908, 43.669441>,  <30.411818, 33.358326, 43.637333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793455, 33.242908, 43.669441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244560, -0.595862, 0.764944,
		-0.172890, -0.749460, -0.639076,
		0.954096, -0.288544, 0.080269,
		31.079683, 33.156345, 43.693523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280014, 32.817974, 44.005535>,  <30.411818, 33.358326, 43.637333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280014, 32.817974, 44.005535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.678740, 32.843822, 43.986816>,  <30.917974, 32.859333, 43.975586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.678740, 32.843822, 43.986816>,  <30.280014, 32.817974, 44.005535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678740, 32.843822, 43.986816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077776, -0.655965, 0.750774,
		0.017820, -0.752020, -0.658900,
		0.996812, 0.064625, -0.046799,
		30.977783, 32.863209, 43.972778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636469, 32.167637, 43.835861>,  <30.280014, 32.817974, 44.005535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636469, 32.167637, 43.835861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858589, 32.395645, 44.078091>,  <30.991861, 32.532448, 44.223427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858589, 32.395645, 44.078091>,  <30.636469, 32.167637, 43.835861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858589, 32.395645, 44.078091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031197, -0.713369, 0.700093,
		0.831063, -0.407655, -0.378352,
		0.555302, 0.570018, 0.605573,
		31.025179, 32.566650, 44.259762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102753, 31.767799, 44.098362>,  <30.636469, 32.167637, 43.835861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102753, 31.767799, 44.098362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101635, 32.053246, 44.378574>,  <31.100964, 32.224514, 44.546703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101635, 32.053246, 44.378574>,  <31.102753, 31.767799, 44.098362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101635, 32.053246, 44.378574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051258, -0.699718, 0.712578,
		0.998682, -0.033916, 0.038534,
		-0.002795, 0.713614, 0.700534,
		31.100796, 32.267330, 44.588734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611221, 31.556749, 44.522514>,  <31.102753, 31.767799, 44.098362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611221, 31.556749, 44.522514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377796, 31.817511, 44.716206>,  <31.237741, 31.973967, 44.832420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377796, 31.817511, 44.716206>,  <31.611221, 31.556749, 44.522514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377796, 31.817511, 44.716206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070436, -0.634678, 0.769560,
		0.809009, 0.414979, 0.416291,
		-0.583561, 0.651903, 0.484231,
		31.202728, 32.013081, 44.861473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892155, 31.566885, 45.128315>,  <31.611221, 31.556749, 44.522514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892155, 31.566885, 45.128315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.512598, 31.684868, 45.173218>,  <31.284864, 31.755657, 45.200161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.512598, 31.684868, 45.173218>,  <31.892155, 31.566885, 45.128315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512598, 31.684868, 45.173218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113979, -0.651977, 0.749623,
		0.294299, 0.698517, 0.652275,
		-0.948893, 0.294959, 0.112260,
		31.227930, 31.773355, 45.206894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152107, 31.857861, 45.719658>,  <31.892155, 31.566885, 45.128315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152107, 31.857861, 45.719658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493008, 31.803610, 45.921761>,  <32.697548, 31.771059, 46.043022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493008, 31.803610, 45.921761>,  <32.152107, 31.857861, 45.719658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493008, 31.803610, 45.921761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488916, 0.550079, -0.677034,
		-0.186106, 0.824026, 0.535112,
		0.852248, -0.135625, 0.505252,
		32.748680, 31.762922, 46.073338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387627, 32.512627, 45.872917>,  <32.152107, 31.857861, 45.719658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387627, 32.512627, 45.872917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.682552, 32.243622, 45.847324>,  <32.859509, 32.082218, 45.831970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.682552, 32.243622, 45.847324>,  <32.387627, 32.512627, 45.872917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682552, 32.243622, 45.847324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495920, 0.603139, -0.624729,
		0.458726, 0.428895, 0.778216,
		0.737315, -0.672513, -0.063977,
		32.903748, 32.041866, 45.828133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974491, 32.869785, 46.023823>,  <32.387627, 32.512627, 45.872917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974491, 32.869785, 46.023823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110191, 32.544998, 45.833828>,  <33.191612, 32.350124, 45.719830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110191, 32.544998, 45.833828>,  <32.974491, 32.869785, 46.023823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110191, 32.544998, 45.833828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608707, 0.574454, -0.547247,
		0.717206, -0.103474, 0.689136,
		0.339251, -0.811970, -0.474987,
		33.211967, 32.301407, 45.691330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699089, 32.898712, 45.992931>,  <32.974491, 32.869785, 46.023823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699089, 32.898712, 45.992931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624027, 32.628651, 45.707569>,  <33.578991, 32.466614, 45.536350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624027, 32.628651, 45.707569>,  <33.699089, 32.898712, 45.992931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624027, 32.628651, 45.707569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811121, 0.303103, -0.500211,
		0.553956, -0.672527, 0.490754,
		-0.187657, -0.675156, -0.713407,
		33.567730, 32.426105, 45.493546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343800, 32.824726, 45.722908>,  <33.699089, 32.898712, 45.992931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343800, 32.824726, 45.722908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.117447, 32.670902, 45.431187>,  <33.981636, 32.578609, 45.256153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.117447, 32.670902, 45.431187>,  <34.343800, 32.824726, 45.722908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117447, 32.670902, 45.431187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653849, 0.329531, -0.681095,
		0.502252, -0.862277, 0.064969,
		-0.565884, -0.384561, -0.729307,
		33.947681, 32.555534, 45.212395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767124, 32.555302, 45.233322>,  <34.343800, 32.824726, 45.722908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767124, 32.555302, 45.233322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.413589, 32.613300, 45.055416>,  <34.201469, 32.648098, 44.948673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.413589, 32.613300, 45.055416>,  <34.767124, 32.555302, 45.233322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413589, 32.613300, 45.055416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464020, 0.392372, -0.794185,
		0.059359, -0.908306, -0.414072,
		-0.883834, 0.144996, -0.444764,
		34.148441, 32.656799, 44.921986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883659, 32.415802, 44.454010>,  <34.767124, 32.555302, 45.233322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883659, 32.415802, 44.454010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545113, 32.628750, 44.460308>,  <34.341984, 32.756519, 44.464085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545113, 32.628750, 44.460308>,  <34.883659, 32.415802, 44.454010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545113, 32.628750, 44.460308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180827, 0.315027, -0.931697,
		-0.500970, -0.785708, -0.362895,
		-0.846363, 0.532373, 0.015742,
		34.291203, 32.788464, 44.465031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585640, 32.295780, 43.805458>,  <34.883659, 32.415802, 44.454010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585640, 32.295780, 43.805458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460880, 32.651783, 43.938496>,  <34.386024, 32.865383, 44.018318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460880, 32.651783, 43.938496>,  <34.585640, 32.295780, 43.805458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460880, 32.651783, 43.938496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254278, 0.415474, -0.873341,
		-0.915458, -0.187820, -0.355893,
		-0.311896, 0.890003, 0.332590,
		34.367313, 32.918785, 44.038273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215069, 32.560673, 43.142586>,  <34.585640, 32.295780, 43.805458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215069, 32.560673, 43.142586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.235729, 32.874027, 43.390339>,  <34.248127, 33.062038, 43.538990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.235729, 32.874027, 43.390339>,  <34.215069, 32.560673, 43.142586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235729, 32.874027, 43.390339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203958, 0.598867, -0.774441,
		-0.977616, 0.166330, -0.128846,
		0.051651, 0.783386, 0.619386,
		34.251225, 33.109043, 43.576157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784855, 33.147697, 42.732239>,  <34.215069, 32.560673, 43.142586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784855, 33.147697, 42.732239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.025284, 33.301945, 43.012241>,  <34.169540, 33.394493, 43.180244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.025284, 33.301945, 43.012241>,  <33.784855, 33.147697, 42.732239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025284, 33.301945, 43.012241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345887, 0.664089, -0.662833,
		-0.720468, 0.640534, 0.265785,
		0.601072, 0.385619, 0.700007,
		34.205605, 33.417629, 43.222244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831669, 33.969677, 42.842381>,  <33.784855, 33.147697, 42.732239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831669, 33.969677, 42.842381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198608, 33.849350, 42.946678>,  <34.418770, 33.777153, 43.009254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198608, 33.849350, 42.946678>,  <33.831669, 33.969677, 42.842381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198608, 33.849350, 42.946678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396189, 0.625886, -0.671790,
		0.038892, 0.719566, 0.693334,
		0.917345, -0.300819, 0.260742,
		34.473812, 33.759106, 43.024902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240932, 34.535164, 42.635590>,  <33.831669, 33.969677, 42.842381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240932, 34.535164, 42.635590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528824, 34.272324, 42.725227>,  <34.701557, 34.114620, 42.779011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528824, 34.272324, 42.725227>,  <34.240932, 34.535164, 42.635590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528824, 34.272324, 42.725227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596407, 0.419958, -0.684057,
		0.355381, 0.625986, 0.694151,
		0.719724, -0.657098, 0.224097,
		34.744740, 34.075195, 42.792458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877380, 34.877338, 42.472183>,  <34.240932, 34.535164, 42.635590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877380, 34.877338, 42.472183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972927, 34.488926, 42.469746>,  <35.030254, 34.255878, 42.468285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972927, 34.488926, 42.469746>,  <34.877380, 34.877338, 42.472183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972927, 34.488926, 42.469746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736250, 0.185197, -0.650875,
		0.633149, 0.150987, 0.759161,
		0.238868, -0.971033, -0.006093,
		35.044586, 34.197617, 42.467918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583801, 34.880417, 42.404713>,  <34.877380, 34.877338, 42.472183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583801, 34.880417, 42.404713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507915, 34.502392, 42.298233>,  <35.462383, 34.275578, 42.234344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507915, 34.502392, 42.298233>,  <35.583801, 34.880417, 42.404713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507915, 34.502392, 42.298233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728257, 0.046395, -0.683732,
		0.658522, -0.323572, 0.679449,
		-0.189713, -0.945065, -0.266196,
		35.451000, 34.218872, 42.218376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.536791, 42.202946, 33.795166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.622070, 42.079071, 33.424515>,  <24.673237, 42.004745, 33.202126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.622070, 42.079071, 33.424515>,  <24.536791, 42.202946, 33.795166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622070, 42.079071, 33.424515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003259, -0.948204, 0.317645,
		-0.977004, -0.070741, -0.201145,
		0.213197, -0.309685, -0.926630,
		24.686029, 41.986164, 33.146526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.270975, 41.402744, 33.724007>,  <24.536791, 42.202946, 33.795166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.270975, 41.402744, 33.724007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.584244, 41.421902, 33.476025>,  <24.772205, 41.433395, 33.327236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.584244, 41.421902, 33.476025>,  <24.270975, 41.402744, 33.724007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.584244, 41.421902, 33.476025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202690, -0.962236, 0.181711,
		-0.587842, -0.267970, -0.763305,
		0.783172, 0.047897, -0.619957,
		24.819195, 41.436272, 33.290039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.248348, 40.766365, 33.461414>,  <24.270975, 41.402744, 33.724007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.248348, 40.766365, 33.461414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.620192, 40.900196, 33.399590>,  <24.843298, 40.980495, 33.362495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.620192, 40.900196, 33.399590>,  <24.248348, 40.766365, 33.461414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620192, 40.900196, 33.399590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363782, -0.900249, 0.239196,
		-0.059114, -0.278584, -0.958591,
		0.929606, 0.334578, -0.154562,
		24.899073, 41.000568, 33.353222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560505, 40.209087, 32.994499>,  <24.248348, 40.766365, 33.461414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560505, 40.209087, 32.994499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.865479, 40.429535, 33.130123>,  <25.048462, 40.561806, 33.211498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.865479, 40.429535, 33.130123>,  <24.560505, 40.209087, 32.994499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865479, 40.429535, 33.130123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538870, -0.830875, 0.138800,
		0.358211, 0.076883, -0.930470,
		0.762433, 0.551122, 0.339058,
		25.094208, 40.594872, 33.231842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131367, 40.047455, 32.576824>,  <24.560505, 40.209087, 32.994499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131367, 40.047455, 32.576824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.286173, 40.183086, 32.919811>,  <25.379057, 40.264465, 33.125603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.286173, 40.183086, 32.919811>,  <25.131367, 40.047455, 32.576824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286173, 40.183086, 32.919811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682589, -0.730550, -0.019198,
		0.619912, 0.592727, -0.514183,
		0.387015, 0.339074, 0.857466,
		25.402277, 40.284809, 33.177052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806919, 39.841076, 32.480789>,  <25.131367, 40.047455, 32.576824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806919, 39.841076, 32.480789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.771469, 39.917095, 32.871895>,  <25.750200, 39.962708, 33.106560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.771469, 39.917095, 32.871895>,  <25.806919, 39.841076, 32.480789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771469, 39.917095, 32.871895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441483, -0.872446, 0.209594,
		0.892882, 0.450243, -0.006584,
		-0.088623, 0.190049, 0.977766,
		25.744883, 39.974110, 33.165226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459978, 39.612484, 32.814983>,  <25.806919, 39.841076, 32.480789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459978, 39.612484, 32.814983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.194027, 39.618793, 33.113697>,  <26.034456, 39.622581, 33.292927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.194027, 39.618793, 33.113697>,  <26.459978, 39.612484, 32.814983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194027, 39.618793, 33.113697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401986, -0.835091, 0.375539,
		0.629557, 0.549885, 0.548894,
		-0.664880, 0.015776, 0.746784,
		25.994562, 39.623528, 33.337730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805166, 39.600399, 33.410862>,  <26.459978, 39.612484, 32.814983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805166, 39.600399, 33.410862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.434370, 39.470291, 33.485573>,  <26.211893, 39.392227, 33.530399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.434370, 39.470291, 33.485573>,  <26.805166, 39.600399, 33.410862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434370, 39.470291, 33.485573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373804, -0.842239, 0.388465,
		0.030950, 0.429920, 0.902337,
		-0.926991, -0.325274, 0.186773,
		26.156273, 39.372707, 33.541603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881390, 39.345905, 34.039757>,  <26.805166, 39.600399, 33.410862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881390, 39.345905, 34.039757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549467, 39.196499, 33.873909>,  <26.350313, 39.106853, 33.774399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549467, 39.196499, 33.873909>,  <26.881390, 39.345905, 34.039757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549467, 39.196499, 33.873909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232419, -0.906787, 0.351737,
		-0.507350, 0.195508, 0.839269,
		-0.829806, -0.373516, -0.414618,
		26.300526, 39.084442, 33.749523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551565, 39.057407, 34.670368>,  <26.881390, 39.345905, 34.039757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551565, 39.057407, 34.670368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.354116, 38.893406, 34.363583>,  <26.235647, 38.795006, 34.179512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.354116, 38.893406, 34.363583>,  <26.551565, 39.057407, 34.670368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354116, 38.893406, 34.363583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216017, -0.912063, 0.348535,
		-0.842421, 0.006367, 0.538783,
		-0.493623, -0.410000, -0.766966,
		26.206030, 38.770405, 34.133492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105858, 38.573666, 34.975723>,  <26.551565, 39.057407, 34.670368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105858, 38.573666, 34.975723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.156897, 38.459141, 34.595882>,  <26.187519, 38.390427, 34.367977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.156897, 38.459141, 34.595882>,  <26.105858, 38.573666, 34.975723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156897, 38.459141, 34.595882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039165, -0.955228, 0.293268,
		-0.991053, -0.074611, -0.110670,
		0.127596, -0.286309, -0.949603,
		26.195175, 38.373249, 34.311001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679474, 37.945938, 34.843609>,  <26.105858, 38.573666, 34.975723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679474, 37.945938, 34.843609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.949203, 37.907917, 34.550690>,  <26.111040, 37.885105, 34.374939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.949203, 37.907917, 34.550690>,  <25.679474, 37.945938, 34.843609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949203, 37.907917, 34.550690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031168, -0.987133, 0.156837,
		-0.737779, -0.128582, -0.662682,
		0.674322, -0.095057, -0.732294,
		26.151501, 37.879398, 34.331001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503479, 37.291435, 34.679199>,  <25.679474, 37.945938, 34.843609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503479, 37.291435, 34.679199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.851128, 37.372303, 34.498642>,  <26.059717, 37.420822, 34.390308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.851128, 37.372303, 34.498642>,  <25.503479, 37.291435, 34.679199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851128, 37.372303, 34.498642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213678, -0.976559, -0.025962,
		-0.446063, -0.073890, -0.891946,
		0.869120, 0.202170, -0.451396,
		26.111864, 37.432953, 34.363224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495405, 36.792862, 34.160103>,  <25.503479, 37.291435, 34.679199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495405, 36.792862, 34.160103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.873486, 36.920151, 34.189301>,  <26.100334, 36.996525, 34.206818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.873486, 36.920151, 34.189301>,  <25.495405, 36.792862, 34.160103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873486, 36.920151, 34.189301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323873, -0.942143, -0.086442,
		0.041263, 0.105346, -0.993579,
		0.945200, 0.318227, 0.072994,
		26.157045, 37.015617, 34.211201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825603, 36.457214, 33.632248>,  <25.495405, 36.792862, 34.160103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825603, 36.457214, 33.632248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.093151, 36.540741, 33.917625>,  <26.253679, 36.590858, 34.088852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.093151, 36.540741, 33.917625>,  <25.825603, 36.457214, 33.632248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093151, 36.540741, 33.917625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366219, -0.927755, -0.071790,
		0.646912, 0.309296, -0.697023,
		0.668871, 0.208821, 0.713446,
		26.293812, 36.603386, 34.131660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417238, 36.061501, 33.476753>,  <25.825603, 36.457214, 33.632248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417238, 36.061501, 33.476753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.507437, 36.172314, 33.850365>,  <26.561556, 36.238800, 34.074532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.507437, 36.172314, 33.850365>,  <26.417238, 36.061501, 33.476753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507437, 36.172314, 33.850365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317870, -0.927175, 0.198256,
		0.920929, 0.252194, -0.297134,
		0.225496, 0.277029, 0.934027,
		26.575085, 36.255421, 34.130573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064737, 35.863796, 33.628613>,  <26.417238, 36.061501, 33.476753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064737, 35.863796, 33.628613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.892015, 35.903664, 33.987190>,  <26.788382, 35.927586, 34.202335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.892015, 35.903664, 33.987190>,  <27.064737, 35.863796, 33.628613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892015, 35.903664, 33.987190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446478, -0.839950, 0.308451,
		0.783710, 0.533433, 0.318195,
		-0.431806, 0.099669, 0.896443,
		26.762474, 35.933563, 34.256123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656218, 35.750648, 34.029789>,  <27.064737, 35.863796, 33.628613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656218, 35.750648, 34.029789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.333406, 35.700909, 34.260696>,  <27.139719, 35.671066, 34.399242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.333406, 35.700909, 34.260696>,  <27.656218, 35.750648, 34.029789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333406, 35.700909, 34.260696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386414, -0.850423, 0.357023,
		0.446530, 0.511193, 0.734365,
		-0.807028, -0.124348, 0.577272,
		27.091297, 35.663605, 34.433876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360554, 36.015968, 34.177887>,  <27.656218, 35.750648, 34.029789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360554, 36.015968, 34.177887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758980, 36.039585, 34.204327>,  <28.998035, 36.053757, 34.220188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758980, 36.039585, 34.204327>,  <28.360554, 36.015968, 34.177887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758980, 36.039585, 34.204327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086717, 0.803250, 0.589295,
		-0.018298, -0.592708, 0.805209,
		0.996065, 0.059042, 0.066096,
		29.057798, 36.057297, 34.224155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466211, 35.896320, 34.797733>,  <28.360554, 36.015968, 34.177887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466211, 35.896320, 34.797733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768976, 36.113899, 34.652840>,  <28.950634, 36.244446, 34.565903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768976, 36.113899, 34.652840>,  <28.466211, 35.896320, 34.797733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768976, 36.113899, 34.652840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223731, 0.736465, 0.638407,
		0.614028, -0.402175, 0.679135,
		0.756911, 0.543944, -0.362231,
		28.996050, 36.277084, 34.544170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912148, 36.195034, 35.341839>,  <28.466211, 35.896320, 34.797733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912148, 36.195034, 35.341839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.000912, 36.443707, 35.041367>,  <29.054171, 36.592911, 34.861084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.000912, 36.443707, 35.041367>,  <28.912148, 36.195034, 35.341839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000912, 36.443707, 35.041367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018521, 0.767559, 0.640710,
		0.974892, -0.156091, 0.158814,
		0.221909, 0.621681, -0.751178,
		29.067484, 36.630211, 34.816013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202299, 36.553780, 35.714409>,  <28.912148, 36.195034, 35.341839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202299, 36.553780, 35.714409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169115, 36.781353, 35.387131>,  <29.149204, 36.917896, 35.190765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169115, 36.781353, 35.387131>,  <29.202299, 36.553780, 35.714409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169115, 36.781353, 35.387131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063365, 0.816349, 0.574073,
		0.994536, 0.099471, -0.031675,
		-0.082962, 0.568929, -0.818191,
		29.144226, 36.952030, 35.141674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678057, 37.022926, 35.863159>,  <29.202299, 36.553780, 35.714409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678057, 37.022926, 35.863159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415979, 37.176800, 35.603085>,  <29.258734, 37.269123, 35.447041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415979, 37.176800, 35.603085>,  <29.678057, 37.022926, 35.863159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415979, 37.176800, 35.603085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075409, 0.889647, 0.450379,
		0.751689, 0.246055, -0.611899,
		-0.655193, 0.384688, -0.650183,
		29.219421, 37.292206, 35.408031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874702, 37.664139, 35.870174>,  <29.678057, 37.022926, 35.863159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874702, 37.664139, 35.870174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.501509, 37.685356, 35.727779>,  <29.277594, 37.698086, 35.642342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.501509, 37.685356, 35.727779>,  <29.874702, 37.664139, 35.870174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501509, 37.685356, 35.727779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084422, 0.929235, 0.359714,
		0.349881, 0.365661, -0.862482,
		-0.932982, 0.053045, -0.355992,
		29.221615, 37.701271, 35.620983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761438, 38.400803, 35.663860>,  <29.874702, 37.664139, 35.870174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761438, 38.400803, 35.663860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398930, 38.236443, 35.703522>,  <29.181423, 38.137825, 35.727318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398930, 38.236443, 35.703522>,  <29.761438, 38.400803, 35.663860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398930, 38.236443, 35.703522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344694, 0.854190, 0.389288,
		-0.244654, 0.318623, -0.915764,
		-0.906273, -0.410899, 0.099154,
		29.127048, 38.113174, 35.733269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310204, 38.849453, 35.348324>,  <29.761438, 38.400803, 35.663860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310204, 38.849453, 35.348324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063963, 38.639996, 35.583893>,  <28.916218, 38.514320, 35.725235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063963, 38.639996, 35.583893>,  <29.310204, 38.849453, 35.348324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063963, 38.639996, 35.583893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456429, 0.846121, 0.275231,
		-0.642421, -0.099367, -0.759882,
		-0.615603, -0.523647, 0.588920,
		28.879282, 38.482903, 35.760571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682228, 39.234104, 35.285957>,  <29.310204, 38.849453, 35.348324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682228, 39.234104, 35.285957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655939, 39.013241, 35.618416>,  <28.640165, 38.880722, 35.817890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655939, 39.013241, 35.618416>,  <28.682228, 39.234104, 35.285957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655939, 39.013241, 35.618416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510827, 0.734141, 0.447318,
		-0.857168, -0.395175, -0.330304,
		-0.065721, -0.552154, 0.831147,
		28.636223, 38.847595, 35.867760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017973, 39.123032, 35.385937>,  <28.682228, 39.234104, 35.285957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017973, 39.123032, 35.385937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.152275, 39.066547, 35.758457>,  <28.232857, 39.032658, 35.981972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.152275, 39.066547, 35.758457>,  <28.017973, 39.123032, 35.385937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152275, 39.066547, 35.758457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724303, 0.593390, 0.351103,
		-0.602206, -0.792431, 0.096955,
		0.335757, -0.141212, 0.931303,
		28.253002, 39.024185, 36.037849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454073, 39.204414, 35.733383>,  <28.017973, 39.123032, 35.385937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454073, 39.204414, 35.733383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.724800, 39.218494, 36.027508>,  <27.887236, 39.226940, 36.203983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.724800, 39.218494, 36.027508>,  <27.454073, 39.204414, 35.733383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724800, 39.218494, 36.027508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546459, 0.693301, 0.469804,
		-0.493256, -0.719788, 0.488471,
		0.676817, 0.035196, 0.735309,
		27.927845, 39.229053, 36.248100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084730, 39.293850, 36.396202>,  <27.454073, 39.204414, 35.733383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084730, 39.293850, 36.396202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450462, 39.444832, 36.454887>,  <27.669903, 39.535419, 36.490101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450462, 39.444832, 36.454887>,  <27.084730, 39.293850, 36.396202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450462, 39.444832, 36.454887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402899, 0.811309, 0.423616,
		0.040863, -0.446438, 0.893881,
		0.914332, 0.377454, 0.146717,
		27.724762, 39.558067, 36.498901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047583, 39.572647, 37.001751>,  <27.084730, 39.293850, 36.396202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047583, 39.572647, 37.001751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.352888, 39.772369, 36.837742>,  <27.536072, 39.892204, 36.739334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.352888, 39.772369, 36.837742>,  <27.047583, 39.572647, 37.001751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352888, 39.772369, 36.837742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389512, 0.861945, 0.324546,
		0.515467, -0.088005, 0.852378,
		0.763265, 0.499305, -0.410026,
		27.581867, 39.922161, 36.714733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244852, 40.064739, 37.433311>,  <27.047583, 39.572647, 37.001751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244852, 40.064739, 37.433311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.414555, 40.232822, 37.112453>,  <27.516376, 40.333672, 36.919937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.414555, 40.232822, 37.112453>,  <27.244852, 40.064739, 37.433311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414555, 40.232822, 37.112453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354362, 0.892214, 0.279967,
		0.833328, 0.165472, 0.527431,
		0.424255, 0.420205, -0.802144,
		27.541832, 40.358883, 36.871811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599009, 40.693569, 37.623169>,  <27.244852, 40.064739, 37.433311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599009, 40.693569, 37.623169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503290, 40.708920, 37.235092>,  <27.445858, 40.718128, 37.002247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503290, 40.708920, 37.235092>,  <27.599009, 40.693569, 37.623169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503290, 40.708920, 37.235092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288771, 0.951191, 0.108847,
		0.927010, 0.306209, -0.216537,
		-0.239298, 0.038372, -0.970188,
		27.431501, 40.720432, 36.944035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669338, 41.368950, 37.536068>,  <27.599009, 40.693569, 37.623169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669338, 41.368950, 37.536068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.481493, 41.291985, 37.191406>,  <27.368786, 41.245808, 36.984612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.481493, 41.291985, 37.191406>,  <27.669338, 41.368950, 37.536068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481493, 41.291985, 37.191406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293033, 0.954606, -0.053460,
		0.832824, 0.227387, -0.504677,
		-0.469612, -0.192410, -0.861651,
		27.340609, 41.234261, 36.932911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027395, 41.718658, 36.969292>,  <27.669338, 41.368950, 37.536068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027395, 41.718658, 36.969292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.647715, 41.644772, 36.867397>,  <27.419907, 41.600441, 36.806259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.647715, 41.644772, 36.867397>,  <28.027395, 41.718658, 36.969292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647715, 41.644772, 36.867397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153807, 0.978627, -0.136503,
		0.274510, -0.090389, -0.957327,
		-0.949204, -0.184715, -0.254740,
		27.362953, 41.589355, 36.790974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814260, 42.280560, 36.500435>,  <28.027395, 41.718658, 36.969292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814260, 42.280560, 36.500435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456747, 42.128250, 36.595234>,  <27.242239, 42.036865, 36.652111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456747, 42.128250, 36.595234>,  <27.814260, 42.280560, 36.500435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456747, 42.128250, 36.595234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430289, 0.877045, -0.213642,
		-0.126506, -0.292926, -0.947729,
		-0.893783, -0.380770, 0.236994,
		27.188612, 42.014019, 36.666332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374506, 42.528831, 35.939896>,  <27.814260, 42.280560, 36.500435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374506, 42.528831, 35.939896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144230, 42.448135, 36.256851>,  <27.006063, 42.399715, 36.447025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144230, 42.448135, 36.256851>,  <27.374506, 42.528831, 35.939896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144230, 42.448135, 36.256851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543779, 0.818185, -0.186758,
		-0.610642, -0.538399, -0.580727,
		-0.575692, -0.201744, 0.792387,
		26.971521, 42.387611, 36.494568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559374, 42.530720, 35.752571>,  <27.374506, 42.528831, 35.939896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559374, 42.530720, 35.752571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.597586, 42.607716, 36.143227>,  <26.620512, 42.653912, 36.377621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.597586, 42.607716, 36.143227>,  <26.559374, 42.530720, 35.752571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597586, 42.607716, 36.143227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479861, 0.868504, -0.124239,
		-0.872128, -0.456782, 0.175334,
		0.095528, 0.192488, 0.976638,
		26.626244, 42.665462, 36.436218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073278, 43.050034, 35.876930>,  <26.559374, 42.530720, 35.752571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073278, 43.050034, 35.876930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.238815, 43.054375, 36.241043>,  <26.338137, 43.056980, 36.459511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.238815, 43.054375, 36.241043>,  <26.073278, 43.050034, 35.876930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238815, 43.054375, 36.241043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459092, 0.865952, 0.198396,
		-0.786111, -0.500009, 0.363348,
		0.413842, 0.010848, 0.910284,
		26.362968, 43.057629, 36.514130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569168, 43.323696, 36.341217>,  <26.073278, 43.050034, 35.876930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569168, 43.323696, 36.341217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.928364, 43.373352, 36.510075>,  <26.143881, 43.403145, 36.611389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.928364, 43.373352, 36.510075>,  <25.569168, 43.323696, 36.341217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928364, 43.373352, 36.510075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182709, 0.977958, 0.101072,
		-0.400291, -0.167891, 0.900877,
		0.897989, 0.124140, 0.422143,
		26.197762, 43.410595, 36.636719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414206, 43.662174, 37.021423>,  <25.569168, 43.323696, 36.341217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414206, 43.662174, 37.021423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.781168, 43.724464, 36.874935>,  <26.001345, 43.761841, 36.787045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.781168, 43.724464, 36.874935>,  <25.414206, 43.662174, 37.021423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781168, 43.724464, 36.874935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173531, 0.984699, -0.015979,
		0.358126, 0.078209, 0.930392,
		0.917406, 0.155729, -0.366218,
		26.056389, 43.771183, 36.765068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881964, 44.037846, 37.442616>,  <25.414206, 43.662174, 37.021423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881964, 44.037846, 37.442616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.904020, 44.087456, 37.046318>,  <25.917253, 44.117222, 36.808540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.904020, 44.087456, 37.046318>,  <25.881964, 44.037846, 37.442616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904020, 44.087456, 37.046318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226420, 0.967960, 0.108574,
		0.972468, 0.218338, 0.081454,
		0.055139, 0.124028, -0.990745,
		25.920563, 44.124664, 36.749096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.077766, 28.874254, 44.820702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681854, 28.823400, 44.794861>,  <34.444305, 28.792889, 44.779358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681854, 28.823400, 44.794861>,  <35.077766, 28.874254, 44.820702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681854, 28.823400, 44.794861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061626, -0.027174, 0.997729,
		-0.128599, 0.991513, 0.019061,
		-0.989780, -0.127132, -0.064598,
		34.384922, 28.785261, 44.775482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772655, 29.221575, 45.375927>,  <35.077766, 28.874254, 44.820702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772655, 29.221575, 45.375927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479015, 28.968086, 45.278358>,  <34.302830, 28.815994, 45.219818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479015, 28.968086, 45.278358>,  <34.772655, 29.221575, 45.375927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479015, 28.968086, 45.278358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190885, -0.152141, 0.969751,
		-0.651660, 0.758454, -0.009281,
		-0.734099, -0.633719, -0.243922,
		34.258785, 28.777971, 45.205181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076508, 29.471085, 45.820328>,  <34.772655, 29.221575, 45.375927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076508, 29.471085, 45.820328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028564, 29.085846, 45.723934>,  <33.999798, 28.854702, 45.666096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028564, 29.085846, 45.723934>,  <34.076508, 29.471085, 45.820328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028564, 29.085846, 45.723934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184201, -0.216949, 0.958647,
		-0.975553, 0.159295, -0.151400,
		-0.119862, -0.963098, -0.240988,
		33.992607, 28.796917, 45.651638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490456, 29.228327, 46.191418>,  <34.076508, 29.471085, 45.820328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490456, 29.228327, 46.191418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666466, 28.883583, 46.090557>,  <33.772072, 28.676737, 46.030041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666466, 28.883583, 46.090557>,  <33.490456, 29.228327, 46.191418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666466, 28.883583, 46.090557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283875, -0.399900, 0.871490,
		-0.851934, -0.311899, -0.420626,
		0.440026, -0.861858, -0.252148,
		33.798473, 28.625025, 46.014912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978664, 28.686165, 46.216564>,  <33.490456, 29.228327, 46.191418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978664, 28.686165, 46.216564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.346539, 28.535475, 46.260834>,  <33.567265, 28.445061, 46.287395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.346539, 28.535475, 46.260834>,  <32.978664, 28.686165, 46.216564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346539, 28.535475, 46.260834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261549, -0.377557, 0.888281,
		-0.292851, -0.845890, -0.445767,
		0.919691, -0.376724, 0.110674,
		33.622444, 28.422457, 46.294037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923336, 27.934191, 46.434803>,  <32.978664, 28.686165, 46.216564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923336, 27.934191, 46.434803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295280, 28.049810, 46.525856>,  <33.518448, 28.119183, 46.580486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295280, 28.049810, 46.525856>,  <32.923336, 27.934191, 46.434803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295280, 28.049810, 46.525856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117614, -0.352699, 0.928316,
		0.348616, -0.889973, -0.293963,
		0.929857, 0.289051, 0.227630,
		33.574238, 28.136526, 46.594147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287327, 27.313459, 46.731434>,  <32.923336, 27.934191, 46.434803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287327, 27.313459, 46.731434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517067, 27.617933, 46.851913>,  <33.654911, 27.800617, 46.924202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517067, 27.617933, 46.851913>,  <33.287327, 27.313459, 46.731434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517067, 27.617933, 46.851913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091405, -0.425274, 0.900437,
		0.813493, -0.489632, -0.313831,
		0.574347, 0.761185, 0.301202,
		33.689373, 27.846289, 46.942276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797405, 27.023167, 47.105877>,  <33.287327, 27.313459, 46.731434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797405, 27.023167, 47.105877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846672, 27.392475, 47.251423>,  <33.876232, 27.614059, 47.338753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846672, 27.392475, 47.251423>,  <33.797405, 27.023167, 47.105877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846672, 27.392475, 47.251423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022045, -0.369116, 0.929122,
		0.992141, -0.106418, -0.065817,
		0.123169, 0.923271, 0.363869,
		33.883621, 27.669456, 47.360584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361454, 27.058481, 47.644131>,  <33.797405, 27.023167, 47.105877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361454, 27.058481, 47.644131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104012, 27.358107, 47.706959>,  <33.949547, 27.537882, 47.744656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104012, 27.358107, 47.706959>,  <34.361454, 27.058481, 47.644131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104012, 27.358107, 47.706959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002654, -0.203042, 0.979166,
		0.765348, 0.630619, 0.128692,
		-0.643611, 0.749062, 0.157072,
		33.910927, 27.582825, 47.754082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640167, 27.381603, 48.293324>,  <34.361454, 27.058481, 47.644131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640167, 27.381603, 48.293324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265739, 27.514545, 48.247173>,  <34.041080, 27.594311, 48.219482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265739, 27.514545, 48.247173>,  <34.640167, 27.381603, 48.293324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265739, 27.514545, 48.247173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200906, -0.235779, 0.950813,
		0.288804, 0.913208, 0.287478,
		-0.936071, 0.332355, -0.115375,
		33.984917, 27.614252, 48.212563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563686, 27.705688, 48.933651>,  <34.640167, 27.381603, 48.293324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563686, 27.705688, 48.933651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190853, 27.643990, 48.802551>,  <33.967152, 27.606970, 48.723892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190853, 27.643990, 48.802551>,  <34.563686, 27.705688, 48.933651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190853, 27.643990, 48.802551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285855, -0.242529, 0.927074,
		-0.222487, 0.957804, 0.181966,
		-0.932087, -0.154246, -0.327752,
		33.911228, 27.597715, 48.704224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117821, 27.972534, 49.445049>,  <34.563686, 27.705688, 48.933651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117821, 27.972534, 49.445049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.863987, 27.728415, 49.255383>,  <33.711685, 27.581942, 49.141582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.863987, 27.728415, 49.255383>,  <34.117821, 27.972534, 49.445049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863987, 27.728415, 49.255383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393302, -0.273124, 0.877905,
		-0.665292, 0.743597, -0.066711,
		-0.634587, -0.610301, -0.474165,
		33.673611, 27.545324, 49.113132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462994, 28.107473, 49.698917>,  <34.117821, 27.972534, 49.445049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462994, 28.107473, 49.698917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422806, 27.725651, 49.586685>,  <33.398693, 27.496557, 49.519348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422806, 27.725651, 49.586685>,  <33.462994, 28.107473, 49.698917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422806, 27.725651, 49.586685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643001, -0.152902, 0.750447,
		-0.759246, 0.255811, -0.598419,
		-0.100473, -0.954558, -0.280578,
		33.392662, 27.439283, 49.502510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810249, 27.804573, 50.068779>,  <33.462994, 28.107473, 49.698917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810249, 27.804573, 50.068779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031460, 27.475725, 50.014698>,  <33.164185, 27.278416, 49.982250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031460, 27.475725, 50.014698>,  <32.810249, 27.804573, 50.068779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031460, 27.475725, 50.014698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156020, -0.261592, 0.952485,
		-0.818426, -0.505655, -0.272934,
		0.553026, -0.822121, -0.135201,
		33.197369, 27.229090, 49.974136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602875, 28.624809, 50.026592>,  <32.810249, 27.804573, 50.068779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602875, 28.624809, 50.026592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324154, 28.747368, 50.286003>,  <32.156921, 28.820904, 50.441650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324154, 28.747368, 50.286003>,  <32.602875, 28.624809, 50.026592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324154, 28.747368, 50.286003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246421, 0.746873, -0.617622,
		-0.673608, -0.590170, -0.444918,
		-0.696799, 0.306398, 0.648530,
		32.115112, 28.839287, 50.480560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987700, 28.605505, 49.767796>,  <32.602875, 28.624809, 50.026592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987700, 28.605505, 49.767796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960226, 28.889765, 50.047871>,  <31.943743, 29.060322, 50.215916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960226, 28.889765, 50.047871>,  <31.987700, 28.605505, 49.767796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960226, 28.889765, 50.047871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240712, 0.669301, -0.702918,
		-0.968163, -0.216822, 0.125092,
		-0.068684, 0.710651, 0.700184,
		31.939621, 29.102961, 50.257927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405363, 29.018906, 49.591267>,  <31.987700, 28.605505, 49.767796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405363, 29.018906, 49.591267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601944, 29.253363, 49.848919>,  <31.719893, 29.394037, 50.003510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601944, 29.253363, 49.848919>,  <31.405363, 29.018906, 49.591267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601944, 29.253363, 49.848919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143795, 0.784077, -0.603777,
		-0.858952, 0.204104, 0.469621,
		0.491452, 0.586144, 0.644135,
		31.749380, 29.429207, 50.042160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956051, 29.729465, 49.552242>,  <31.405363, 29.018906, 49.591267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956051, 29.729465, 49.552242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313210, 29.819296, 49.708344>,  <31.527506, 29.873194, 49.802006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313210, 29.819296, 49.708344>,  <30.956051, 29.729465, 49.552242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313210, 29.819296, 49.708344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039343, 0.824504, -0.564486,
		-0.448537, 0.519382, 0.727362,
		0.892898, 0.224576, 0.390255,
		31.581079, 29.886669, 49.825420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996264, 30.402254, 49.520687>,  <30.956051, 29.729465, 49.552242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996264, 30.402254, 49.520687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.388086, 30.352171, 49.583664>,  <31.623180, 30.322121, 49.621452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.388086, 30.352171, 49.583664>,  <30.996264, 30.402254, 49.520687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388086, 30.352171, 49.583664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197929, 0.739685, -0.643187,
		-0.035927, 0.661202, 0.749347,
		0.979558, -0.125210, 0.157446,
		31.681953, 30.314608, 49.630898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323299, 31.040321, 49.699753>,  <30.996264, 30.402254, 49.520687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323299, 31.040321, 49.699753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.609203, 30.811779, 49.538422>,  <31.780745, 30.674654, 49.441624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.609203, 30.811779, 49.538422>,  <31.323299, 31.040321, 49.699753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609203, 30.811779, 49.538422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300972, 0.771858, -0.560046,
		0.631298, 0.278906, 0.723654,
		0.714758, -0.571355, -0.403329,
		31.823631, 30.640373, 49.417423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839825, 31.499697, 49.530807>,  <31.323299, 31.040321, 49.699753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839825, 31.499697, 49.530807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.965918, 31.167923, 49.346344>,  <32.041573, 30.968859, 49.235664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.965918, 31.167923, 49.346344>,  <31.839825, 31.499697, 49.530807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965918, 31.167923, 49.346344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253369, 0.541855, -0.801372,
		0.914567, 0.135775, 0.380964,
		0.315234, -0.829433, -0.461161,
		32.060486, 30.919094, 49.207996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530499, 31.581829, 49.201717>,  <31.839825, 31.499697, 49.530807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530499, 31.581829, 49.201717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376461, 31.274805, 48.996754>,  <32.284039, 31.090591, 48.873775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376461, 31.274805, 48.996754>,  <32.530499, 31.581829, 49.201717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376461, 31.274805, 48.996754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372123, 0.378944, -0.847305,
		0.844528, -0.516969, 0.139697,
		-0.385093, -0.767558, -0.512405,
		32.260933, 31.044538, 48.843033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036564, 31.382626, 48.666203>,  <32.530499, 31.581829, 49.201717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036564, 31.382626, 48.666203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731548, 31.172066, 48.515774>,  <32.548538, 31.045729, 48.425514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731548, 31.172066, 48.515774>,  <33.036564, 31.382626, 48.666203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731548, 31.172066, 48.515774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302638, 0.223531, -0.926523,
		0.571786, -0.820327, -0.011142,
		-0.762542, -0.526401, -0.376074,
		32.502785, 31.014145, 48.402950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293903, 30.890423, 48.302643>,  <33.036564, 31.382626, 48.666203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293903, 30.890423, 48.302643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929104, 30.942753, 48.147129>,  <32.710224, 30.974152, 48.053822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929104, 30.942753, 48.147129>,  <33.293903, 30.890423, 48.302643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929104, 30.942753, 48.147129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410201, 0.293092, -0.863616,
		0.000965, -0.947091, -0.320963,
		-0.911994, 0.130826, -0.388781,
		32.655506, 30.982000, 48.030495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284035, 30.505117, 47.661533>,  <33.293903, 30.890423, 48.302643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284035, 30.505117, 47.661533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000900, 30.786934, 47.641174>,  <32.831020, 30.956024, 47.628960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000900, 30.786934, 47.641174>,  <33.284035, 30.505117, 47.661533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000900, 30.786934, 47.641174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361928, 0.299857, -0.882663,
		-0.606611, -0.643200, -0.467243,
		-0.707835, 0.704541, -0.050896,
		32.788551, 30.998297, 47.625904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931660, 30.417721, 47.037006>,  <33.284035, 30.505117, 47.661533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931660, 30.417721, 47.037006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883633, 30.804218, 47.128185>,  <32.854816, 31.036116, 47.182892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883633, 30.804218, 47.128185>,  <32.931660, 30.417721, 47.037006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883633, 30.804218, 47.128185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249996, 0.251634, -0.934977,
		-0.960773, -0.055275, -0.271770,
		-0.120068, 0.966243, 0.227945,
		32.847610, 31.094091, 47.196568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410622, 30.603178, 46.406231>,  <32.931660, 30.417721, 47.037006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410622, 30.603178, 46.406231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551777, 30.944502, 46.559769>,  <32.636471, 31.149296, 46.651890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551777, 30.944502, 46.559769>,  <32.410622, 30.603178, 46.406231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551777, 30.944502, 46.559769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200020, 0.331953, -0.921846,
		-0.914038, 0.402080, -0.053538,
		0.352884, 0.853310, 0.383842,
		32.657642, 31.200495, 46.674923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167992, 31.101421, 45.957920>,  <32.410622, 30.603178, 46.406231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167992, 31.101421, 45.957920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447208, 31.285873, 46.177048>,  <32.614738, 31.396545, 46.308525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447208, 31.285873, 46.177048>,  <32.167992, 31.101421, 45.957920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447208, 31.285873, 46.177048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255177, 0.554620, -0.792011,
		-0.669050, 0.692643, 0.269475,
		0.698038, 0.461131, 0.547815,
		32.656620, 31.424213, 46.341393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482967, 31.346724, 46.295437>,  <32.167992, 31.101421, 45.957920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482967, 31.346724, 46.295437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213524, 31.458727, 46.021839>,  <31.051857, 31.525928, 45.857681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213524, 31.458727, 46.021839>,  <31.482967, 31.346724, 46.295437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213524, 31.458727, 46.021839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738040, -0.304064, 0.602364,
		-0.039309, 0.910571, 0.411479,
		-0.673611, 0.280010, -0.683990,
		31.011440, 31.542730, 45.816643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016802, 31.733753, 46.651447>,  <31.482967, 31.346724, 46.295437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016802, 31.733753, 46.651447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.827133, 31.582397, 46.333458>,  <30.713331, 31.491585, 46.142666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.827133, 31.582397, 46.333458>,  <31.016802, 31.733753, 46.651447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827133, 31.582397, 46.333458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644001, -0.466635, 0.606229,
		-0.600352, 0.799421, -0.022416,
		-0.474173, -0.378387, -0.794974,
		30.684881, 31.468882, 46.094967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232256, 31.865232, 46.791771>,  <31.016802, 31.733753, 46.651447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232256, 31.865232, 46.791771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.300516, 31.565767, 46.535526>,  <30.341473, 31.386089, 46.381779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.300516, 31.565767, 46.535526>,  <30.232256, 31.865232, 46.791771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300516, 31.565767, 46.535526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552181, -0.611130, 0.567112,
		-0.816073, 0.256958, -0.517685,
		0.170649, -0.748661, -0.640614,
		30.351711, 31.341169, 46.343342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676468, 31.546415, 46.811653>,  <30.232256, 31.865232, 46.791771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676468, 31.546415, 46.811653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.897327, 31.256090, 46.647545>,  <30.029842, 31.081894, 46.549080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.897327, 31.256090, 46.647545>,  <29.676468, 31.546415, 46.811653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897327, 31.256090, 46.647545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580618, -0.687887, 0.435539,
		-0.598342, -0.002271, -0.801238,
		0.552150, -0.725814, -0.410273,
		30.062973, 31.038345, 46.524464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146835, 31.127096, 46.450268>,  <29.676468, 31.546415, 46.811653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146835, 31.127096, 46.450268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.479115, 30.907187, 46.485332>,  <29.678482, 30.775240, 46.506371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.479115, 30.907187, 46.485332>,  <29.146835, 31.127096, 46.450268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479115, 30.907187, 46.485332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500232, -0.667989, 0.550961,
		-0.244345, -0.501536, -0.829914,
		0.830701, -0.549775, 0.087664,
		29.728325, 30.742254, 46.511631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883894, 30.441559, 46.350300>,  <29.146835, 31.127096, 46.450268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883894, 30.441559, 46.350300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.236265, 30.422672, 46.538654>,  <29.447689, 30.411341, 46.651665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.236265, 30.422672, 46.538654>,  <28.883894, 30.441559, 46.350300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236265, 30.422672, 46.538654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346431, -0.742213, 0.573676,
		0.322409, -0.668498, -0.670196,
		0.880930, -0.047219, 0.470885,
		29.500544, 30.408506, 46.679920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964018, 29.738186, 46.438698>,  <28.883894, 30.441559, 46.350300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964018, 29.738186, 46.438698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.221045, 29.898727, 46.699780>,  <29.375261, 29.995052, 46.856430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.221045, 29.898727, 46.699780>,  <28.964018, 29.738186, 46.438698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221045, 29.898727, 46.699780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309956, -0.642878, 0.700454,
		0.700739, -0.652398, -0.288691,
		0.642567, 0.401354, 0.652704,
		29.413815, 30.019135, 46.895592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456371, 29.260374, 46.049122>,  <28.964018, 29.738186, 46.438698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456371, 29.260374, 46.049122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.195375, 29.013325, 45.873489>,  <29.038778, 28.865095, 45.768108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.195375, 29.013325, 45.873489>,  <29.456371, 29.260374, 46.049122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195375, 29.013325, 45.873489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036265, 0.604210, -0.796000,
		0.756928, -0.503459, -0.416640,
		-0.652491, -0.617624, -0.439085,
		28.999628, 28.828037, 45.741764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715149, 29.121809, 45.370529>,  <29.456371, 29.260374, 46.049122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715149, 29.121809, 45.370529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.324471, 29.037239, 45.355736>,  <29.090063, 28.986498, 45.346859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.324471, 29.037239, 45.355736>,  <29.715149, 29.121809, 45.370529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324471, 29.037239, 45.355736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041451, 0.354868, -0.933997,
		0.210594, -0.910697, -0.355361,
		-0.976694, -0.211424, -0.036984,
		29.031462, 28.973812, 45.344639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609812, 28.803629, 44.696301>,  <29.715149, 29.121809, 45.370529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609812, 28.803629, 44.696301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.223715, 28.877256, 44.770515>,  <28.992056, 28.921432, 44.815044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.223715, 28.877256, 44.770515>,  <29.609812, 28.803629, 44.696301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223715, 28.877256, 44.770515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147920, 0.200526, -0.968457,
		-0.215469, -0.962241, -0.166329,
		-0.965243, 0.184069, 0.185542,
		28.934141, 28.932478, 44.826180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178560, 28.499008, 44.209290>,  <29.609812, 28.803629, 44.696301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178560, 28.499008, 44.209290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.924707, 28.769888, 44.358231>,  <28.772396, 28.932415, 44.447594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.924707, 28.769888, 44.358231>,  <29.178560, 28.499008, 44.209290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924707, 28.769888, 44.358231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136762, 0.375794, -0.916556,
		-0.760617, -0.632599, -0.145876,
		-0.634632, 0.677198, 0.372351,
		28.734318, 28.973047, 44.469936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584106, 28.526501, 43.805367>,  <29.178560, 28.499008, 44.209290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584106, 28.526501, 43.805367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.584452, 28.883541, 43.985706>,  <28.584658, 29.097765, 44.093910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.584452, 28.883541, 43.985706>,  <28.584106, 28.526501, 43.805367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584452, 28.883541, 43.985706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137577, 0.446664, -0.884061,
		-0.990491, -0.061265, 0.123186,
		0.000861, 0.892601, 0.450845,
		28.584709, 29.151321, 44.120960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214170, 28.975513, 43.350071>,  <28.584106, 28.526501, 43.805367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214170, 28.975513, 43.350071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.411886, 29.231058, 43.585880>,  <28.530516, 29.384384, 43.727364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.411886, 29.231058, 43.585880>,  <28.214170, 28.975513, 43.350071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411886, 29.231058, 43.585880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099008, 0.632370, -0.768313,
		-0.863640, 0.438138, 0.249323,
		0.494291, 0.638861, 0.589519,
		28.560173, 29.422716, 43.762737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996365, 29.603239, 43.157818>,  <28.214170, 28.975513, 43.350071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996365, 29.603239, 43.157818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.353270, 29.672558, 43.324593>,  <28.567413, 29.714149, 43.424656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.353270, 29.672558, 43.324593>,  <27.996365, 29.603239, 43.157818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353270, 29.672558, 43.324593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226608, 0.626818, -0.745485,
		-0.390534, 0.759649, 0.520015,
		0.892262, 0.173298, 0.416936,
		28.620949, 29.724546, 43.449673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.315392, 24.803612, 47.150105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.499817, 25.096457, 47.350677>,  <32.610470, 25.272163, 47.471024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.499817, 25.096457, 47.350677>,  <32.315392, 24.803612, 47.150105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499817, 25.096457, 47.350677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210125, 0.458934, -0.863265,
		-0.862132, 0.503381, 0.057761,
		0.461060, 0.732111, 0.501435,
		32.638134, 25.316090, 47.501106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998596, 25.344221, 46.909340>,  <32.315392, 24.803612, 47.150105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998596, 25.344221, 46.909340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.357376, 25.458954, 47.043926>,  <32.572643, 25.527794, 47.124680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.357376, 25.458954, 47.043926>,  <31.998596, 25.344221, 46.909340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357376, 25.458954, 47.043926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152595, 0.513417, -0.844463,
		-0.414966, 0.808784, 0.416740,
		0.896949, 0.286831, 0.336467,
		32.626461, 25.545004, 47.144867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974314, 25.978725, 46.977516>,  <31.998596, 25.344221, 46.909340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974314, 25.978725, 46.977516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.364655, 25.898769, 46.942287>,  <32.598858, 25.850796, 46.921150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.364655, 25.898769, 46.942287>,  <31.974314, 25.978725, 46.977516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364655, 25.898769, 46.942287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052079, 0.604474, -0.794921,
		0.212132, 0.771139, 0.600288,
		0.975852, -0.199891, -0.088068,
		32.657410, 25.838802, 46.915867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279793, 26.558420, 46.677742>,  <31.974314, 25.978725, 46.977516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279793, 26.558420, 46.677742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.566185, 26.284971, 46.621128>,  <32.738018, 26.120901, 46.587158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.566185, 26.284971, 46.621128>,  <32.279793, 26.558420, 46.677742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566185, 26.284971, 46.621128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306415, 0.489895, -0.816157,
		0.627283, 0.540982, 0.560227,
		0.715979, -0.683624, -0.141538,
		32.780979, 26.079884, 46.578667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859539, 26.903671, 46.289932>,  <32.279793, 26.558420, 46.677742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859539, 26.903671, 46.289932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.925720, 26.510990, 46.252216>,  <32.965427, 26.275381, 46.229588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.925720, 26.510990, 46.252216>,  <32.859539, 26.903671, 46.289932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925720, 26.510990, 46.252216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338397, 0.146312, -0.929560,
		0.926345, 0.121888, 0.356411,
		0.165450, -0.981701, -0.094289,
		32.975353, 26.216480, 46.223930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487007, 26.892801, 45.982414>,  <32.859539, 26.903671, 46.289932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487007, 26.892801, 45.982414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.315704, 26.542389, 45.893719>,  <33.212925, 26.332142, 45.840504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.315704, 26.542389, 45.893719>,  <33.487007, 26.892801, 45.982414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315704, 26.542389, 45.893719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446194, 0.008387, -0.894897,
		0.785818, -0.482180, 0.387288,
		-0.428253, -0.876032, -0.221737,
		33.187229, 26.279579, 45.827198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968323, 26.497227, 45.644756>,  <33.487007, 26.892801, 45.982414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968323, 26.497227, 45.644756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.630333, 26.328173, 45.513668>,  <33.427540, 26.226740, 45.435017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.630333, 26.328173, 45.513668>,  <33.968323, 26.497227, 45.644756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630333, 26.328173, 45.513668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372753, -0.025983, -0.927567,
		0.383509, -0.905926, 0.179495,
		-0.844971, -0.422637, -0.327722,
		33.376842, 26.201382, 45.415352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144905, 26.011906, 45.086449>,  <33.968323, 26.497227, 45.644756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144905, 26.011906, 45.086449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751797, 26.061914, 45.031998>,  <33.515930, 26.091919, 44.999329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751797, 26.061914, 45.031998>,  <34.144905, 26.011906, 45.086449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751797, 26.061914, 45.031998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131975, -0.040926, -0.990408,
		-0.129394, -0.991310, 0.023721,
		-0.982772, 0.125022, -0.136123,
		33.456966, 26.099421, 44.991161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938332, 25.567389, 44.585762>,  <34.144905, 26.011906, 45.086449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938332, 25.567389, 44.585762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.648422, 25.842392, 44.567734>,  <33.474476, 26.007395, 44.556915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.648422, 25.842392, 44.567734>,  <33.938332, 25.567389, 44.585762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648422, 25.842392, 44.567734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079285, -0.148210, -0.985772,
		-0.684407, -0.710891, 0.161929,
		-0.724776, 0.687508, -0.045073,
		33.430988, 26.048645, 44.554211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476994, 25.265406, 44.136452>,  <33.938332, 25.567389, 44.585762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476994, 25.265406, 44.136452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.346943, 25.643642, 44.131634>,  <33.268913, 25.870584, 44.128742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.346943, 25.643642, 44.131634>,  <33.476994, 25.265406, 44.136452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346943, 25.643642, 44.131634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236759, -0.093721, -0.967038,
		-0.915553, -0.311559, 0.254349,
		-0.325127, 0.945593, -0.012042,
		33.249405, 25.927320, 44.128021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030655, 25.184517, 43.583260>,  <33.476994, 25.265406, 44.136452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030655, 25.184517, 43.583260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.056248, 25.582472, 43.614521>,  <33.071602, 25.821245, 43.633278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.056248, 25.582472, 43.614521>,  <33.030655, 25.184517, 43.583260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056248, 25.582472, 43.614521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147617, 0.086890, -0.985220,
		-0.986973, 0.051499, 0.152422,
		0.063982, 0.994886, 0.078156,
		33.075443, 25.880938, 43.637966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417141, 25.517187, 43.300659>,  <33.030655, 25.184517, 43.583260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417141, 25.517187, 43.300659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.694923, 25.804123, 43.278183>,  <32.861591, 25.976284, 43.264698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.694923, 25.804123, 43.278183>,  <32.417141, 25.517187, 43.300659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694923, 25.804123, 43.278183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081014, 0.000350, -0.996713,
		-0.714961, 0.696724, 0.058357,
		0.694455, 0.717339, -0.056194,
		32.903259, 26.019325, 43.261326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888327, 26.068298, 43.097820>,  <32.417141, 25.517187, 43.300659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888327, 26.068298, 43.097820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.839441, 26.462927, 43.141159>,  <31.810110, 26.699705, 43.167164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.839441, 26.462927, 43.141159>,  <31.888327, 26.068298, 43.097820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839441, 26.462927, 43.141159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699004, -0.163058, 0.696280,
		0.704597, 0.009362, 0.709546,
		-0.122216, 0.986572, 0.108346,
		31.802776, 26.758898, 43.173664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136856, 26.291477, 43.832863>,  <31.888327, 26.068298, 43.097820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136856, 26.291477, 43.832863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.843895, 26.486654, 43.642914>,  <31.668119, 26.603760, 43.528946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.843895, 26.486654, 43.642914>,  <32.136856, 26.291477, 43.832863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843895, 26.486654, 43.642914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662383, -0.349164, 0.662822,
		0.157611, 0.799998, 0.578932,
		-0.732398, 0.487943, -0.474873,
		31.624176, 26.633038, 43.500450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783180, 26.608536, 44.327892>,  <32.136856, 26.291477, 43.832863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783180, 26.608536, 44.327892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.531960, 26.539349, 44.024410>,  <31.381227, 26.497837, 43.842319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.531960, 26.539349, 44.024410>,  <31.783180, 26.608536, 44.327892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531960, 26.539349, 44.024410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698712, -0.303865, 0.647664,
		-0.342569, 0.936882, 0.069988,
		-0.628052, -0.172968, -0.758705,
		31.343544, 26.487457, 43.796799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130686, 26.841946, 44.543755>,  <31.783180, 26.608536, 44.327892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130686, 26.841946, 44.543755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.038139, 26.593225, 44.244465>,  <30.982611, 26.443993, 44.064892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.038139, 26.593225, 44.244465>,  <31.130686, 26.841946, 44.543755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038139, 26.593225, 44.244465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758463, -0.366361, 0.538993,
		-0.609264, 0.692203, -0.386849,
		-0.231366, -0.621800, -0.748221,
		30.968729, 26.406685, 44.020000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473991, 26.803740, 44.558151>,  <31.130686, 26.841946, 44.543755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473991, 26.803740, 44.558151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.575979, 26.477282, 44.350731>,  <30.637173, 26.281406, 44.226276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.575979, 26.477282, 44.350731>,  <30.473991, 26.803740, 44.558151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575979, 26.477282, 44.350731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767364, -0.497084, 0.405045,
		-0.588340, 0.294645, -0.753021,
		0.254970, -0.816145, -0.518554,
		30.652470, 26.232439, 44.195164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843332, 26.567974, 44.237637>,  <30.473991, 26.803740, 44.558151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843332, 26.567974, 44.237637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.073215, 26.240633, 44.238983>,  <30.211145, 26.044230, 44.239792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.073215, 26.240633, 44.238983>,  <29.843332, 26.567974, 44.237637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073215, 26.240633, 44.238983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768588, -0.538339, 0.345634,
		-0.281037, -0.201228, -0.938363,
		0.574709, -0.818351, 0.003368,
		30.245628, 25.995127, 44.239994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465721, 26.033173, 43.738293>,  <29.843332, 26.567974, 44.237637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465721, 26.033173, 43.738293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.698856, 25.892311, 44.031219>,  <29.838737, 25.807795, 44.206974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.698856, 25.892311, 44.031219>,  <29.465721, 26.033173, 43.738293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698856, 25.892311, 44.031219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781011, -0.491564, 0.385210,
		0.224327, -0.796462, -0.561539,
		0.582838, -0.352155, 0.732316,
		29.873707, 25.786665, 44.250916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177853, 25.339354, 43.809650>,  <29.465721, 26.033173, 43.738293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177853, 25.339354, 43.809650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.406670, 25.393417, 44.133255>,  <29.543959, 25.425856, 44.327419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.406670, 25.393417, 44.133255>,  <29.177853, 25.339354, 43.809650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406670, 25.393417, 44.133255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697789, -0.438228, 0.566609,
		0.431113, -0.888644, -0.156373,
		0.572041, 0.135158, 0.809012,
		29.578281, 25.433964, 44.375957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082413, 24.713219, 44.166580>,  <29.177853, 25.339354, 43.809650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082413, 24.713219, 44.166580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.218105, 24.994600, 44.416405>,  <29.299520, 25.163429, 44.566299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.218105, 24.994600, 44.416405>,  <29.082413, 24.713219, 44.166580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218105, 24.994600, 44.416405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652015, -0.302753, 0.695138,
		0.678085, -0.643034, 0.355961,
		0.339229, 0.703454, 0.624561,
		29.319874, 25.205637, 44.603771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263109, 24.348801, 44.801437>,  <29.082413, 24.713219, 44.166580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263109, 24.348801, 44.801437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.196781, 24.720936, 44.932266>,  <29.156984, 24.944216, 45.010765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.196781, 24.720936, 44.932266>,  <29.263109, 24.348801, 44.801437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196781, 24.720936, 44.932266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430473, -0.366685, 0.824764,
		0.887241, -0.004037, 0.461288,
		-0.165818, 0.930336, 0.327076,
		29.147036, 25.000036, 45.030388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484962, 24.343334, 45.465057>,  <29.263109, 24.348801, 44.801437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484962, 24.343334, 45.465057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.280224, 24.686930, 45.469967>,  <29.157381, 24.893087, 45.472912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.280224, 24.686930, 45.469967>,  <29.484962, 24.343334, 45.465057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280224, 24.686930, 45.469967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401854, -0.252036, 0.880336,
		0.759293, 0.445664, 0.474192,
		-0.511847, 0.858989, 0.012277,
		29.126669, 24.944626, 45.473652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598984, 24.691080, 46.140205>,  <29.484962, 24.343334, 45.465057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598984, 24.691080, 46.140205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.264980, 24.873444, 46.016979>,  <29.064577, 24.982862, 45.943043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.264980, 24.873444, 46.016979>,  <29.598984, 24.691080, 46.140205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264980, 24.873444, 46.016979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381717, -0.076735, 0.921089,
		0.396295, 0.886712, 0.238103,
		-0.835010, 0.455911, -0.308063,
		29.014477, 25.010218, 45.924561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552822, 25.255407, 46.474014>,  <29.598984, 24.691080, 46.140205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552822, 25.255407, 46.474014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.171341, 25.205120, 46.364727>,  <28.942453, 25.174948, 46.299152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.171341, 25.205120, 46.364727>,  <29.552822, 25.255407, 46.474014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171341, 25.205120, 46.364727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281067, 0.049268, 0.958423,
		-0.107028, 0.990842, -0.082322,
		-0.953701, -0.125716, -0.273220,
		28.885231, 25.167406, 46.282761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103926, 25.728136, 46.906231>,  <29.552822, 25.255407, 46.474014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103926, 25.728136, 46.906231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.888708, 25.418846, 46.771988>,  <28.759579, 25.233273, 46.691444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.888708, 25.418846, 46.771988>,  <29.103926, 25.728136, 46.906231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888708, 25.418846, 46.771988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382912, -0.130486, 0.914523,
		-0.750925, 0.620559, -0.225871,
		-0.538042, -0.773227, -0.335605,
		28.727295, 25.186878, 46.671307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554480, 25.984489, 47.212002>,  <29.103926, 25.728136, 46.906231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554480, 25.984489, 47.212002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.394558, 26.295048, 47.406883>,  <28.298605, 26.481382, 47.523811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.394558, 26.295048, 47.406883>,  <28.554480, 25.984489, 47.212002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394558, 26.295048, 47.406883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299658, 0.391611, -0.869969,
		-0.866235, -0.493810, 0.076086,
		-0.399803, 0.776397, 0.487201,
		28.274616, 26.527967, 47.553043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948172, 26.261095, 46.786495>,  <28.554480, 25.984489, 47.212002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948172, 26.261095, 46.786495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.062693, 26.545729, 47.043144>,  <28.131405, 26.716509, 47.197136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.062693, 26.545729, 47.043144>,  <27.948172, 26.261095, 46.786495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062693, 26.545729, 47.043144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161262, 0.695891, -0.699807,
		-0.944471, 0.096886, 0.313986,
		0.286301, 0.711582, 0.641625,
		28.148582, 26.759203, 47.235630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431309, 26.813217, 46.692867>,  <27.948172, 26.261095, 46.786495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431309, 26.813217, 46.692867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.779381, 26.955767, 46.828976>,  <27.988224, 27.041296, 46.910641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.779381, 26.955767, 46.828976>,  <27.431309, 26.813217, 46.692867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779381, 26.955767, 46.828976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006250, 0.698502, -0.715580,
		-0.492693, 0.620558, 0.610050,
		0.870180, 0.356375, 0.340269,
		28.040436, 27.062679, 46.931057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395866, 27.505783, 46.786934>,  <27.431309, 26.813217, 46.692867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395866, 27.505783, 46.786934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.788231, 27.438120, 46.748566>,  <28.023649, 27.397522, 46.725544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.788231, 27.438120, 46.748566>,  <27.395866, 27.505783, 46.786934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788231, 27.438120, 46.748566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064085, 0.746914, -0.661825,
		0.183597, 0.643043, 0.743496,
		0.980910, -0.169156, -0.095922,
		28.082504, 27.387373, 46.719788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567341, 28.189743, 46.725632>,  <27.395866, 27.505783, 46.786934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567341, 28.189743, 46.725632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.910997, 27.999031, 46.651276>,  <28.117191, 27.884604, 46.606663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.910997, 27.999031, 46.651276>,  <27.567341, 28.189743, 46.725632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910997, 27.999031, 46.651276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213203, 0.663712, -0.716959,
		0.465207, 0.576339, 0.671875,
		0.859143, -0.476780, -0.185886,
		28.168741, 27.855997, 46.595509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041821, 28.726583, 46.708328>,  <27.567341, 28.189743, 46.725632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041821, 28.726583, 46.708328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.255171, 28.436176, 46.534706>,  <28.383181, 28.261932, 46.430531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.255171, 28.436176, 46.534706>,  <28.041821, 28.726583, 46.708328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255171, 28.436176, 46.534706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248448, 0.624974, -0.740055,
		0.808569, 0.286886, 0.513724,
		0.533376, -0.726019, -0.434058,
		28.415184, 28.218370, 46.404488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689230, 28.927719, 46.644260>,  <28.041821, 28.726583, 46.708328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689230, 28.927719, 46.644260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.643213, 28.660334, 46.350342>,  <28.615604, 28.499903, 46.173992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.643213, 28.660334, 46.350342>,  <28.689230, 28.927719, 46.644260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643213, 28.660334, 46.350342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160089, 0.717561, -0.677848,
		0.980376, -0.195612, 0.024465,
		-0.115040, -0.668462, -0.734795,
		28.608702, 28.459795, 46.129902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451790, 29.062496, 46.823364>,  <28.689230, 28.927719, 46.644260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451790, 29.062496, 46.823364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.476341, 29.381271, 47.063740>,  <29.491072, 29.572536, 47.207966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.476341, 29.381271, 47.063740>,  <29.451790, 29.062496, 46.823364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476341, 29.381271, 47.063740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240520, -0.572521, 0.783817,
		0.968701, -0.192648, 0.156538,
		0.061380, 0.796935, 0.600938,
		29.494755, 29.620352, 47.244022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862585, 28.884832, 47.345238>,  <29.451790, 29.062496, 46.823364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862585, 28.884832, 47.345238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650908, 29.171211, 47.527393>,  <29.523901, 29.343039, 47.636684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650908, 29.171211, 47.527393>,  <29.862585, 28.884832, 47.345238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650908, 29.171211, 47.527393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055643, -0.506257, 0.860586,
		0.846675, 0.480755, 0.228071,
		-0.529193, 0.715946, 0.455385,
		29.492149, 29.385996, 47.664009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133650, 28.900339, 48.110497>,  <29.862585, 28.884832, 47.345238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133650, 28.900339, 48.110497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.792618, 29.108007, 48.134411>,  <29.587999, 29.232609, 48.148758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.792618, 29.108007, 48.134411>,  <30.133650, 28.900339, 48.110497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792618, 29.108007, 48.134411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076200, -0.236674, 0.968596,
		0.517015, 0.821248, 0.241344,
		-0.852578, 0.519169, 0.059785,
		29.536844, 29.263758, 48.152348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261021, 29.327259, 48.686939>,  <30.133650, 28.900339, 48.110497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261021, 29.327259, 48.686939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.862736, 29.314913, 48.652058>,  <29.623764, 29.307505, 48.631126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.862736, 29.314913, 48.652058>,  <30.261021, 29.327259, 48.686939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862736, 29.314913, 48.652058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079498, -0.196597, 0.977256,
		-0.047307, 0.979999, 0.193300,
		-0.995712, -0.030864, -0.087208,
		29.564022, 29.305655, 48.625896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021921, 29.639599, 49.301411>,  <30.261021, 29.327259, 48.686939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021921, 29.639599, 49.301411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.692680, 29.433104, 49.206757>,  <29.495136, 29.309206, 49.149963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.692680, 29.433104, 49.206757>,  <30.021921, 29.639599, 49.301411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692680, 29.433104, 49.206757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148891, -0.205945, 0.967170,
		-0.548024, 0.831315, 0.092651,
		-0.823104, -0.516238, -0.236638,
		29.445749, 29.278233, 49.135765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670301, 29.814690, 49.818890>,  <30.021921, 29.639599, 49.301411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670301, 29.814690, 49.818890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.477850, 29.494595, 49.675705>,  <29.362379, 29.302538, 49.589794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.477850, 29.494595, 49.675705>,  <29.670301, 29.814690, 49.818890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477850, 29.494595, 49.675705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009770, -0.403408, 0.914968,
		-0.876596, 0.443714, 0.186273,
		-0.481128, -0.800238, -0.357961,
		29.333511, 29.254524, 49.568317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206848, 29.658216, 50.351460>,  <29.670301, 29.814690, 49.818890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206848, 29.658216, 50.351460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.205791, 29.324032, 50.131645>,  <29.205158, 29.123520, 49.999756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.205791, 29.324032, 50.131645>,  <29.206848, 29.658216, 50.351460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205791, 29.324032, 50.131645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110319, -0.546431, 0.830207,
		-0.993893, -0.058432, 0.093610,
		-0.002641, -0.835463, -0.549540,
		29.205000, 29.073393, 49.966782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620962, 29.207037, 50.496555>,  <29.206848, 29.658216, 50.351460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620962, 29.207037, 50.496555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.929644, 28.981293, 50.379272>,  <29.114853, 28.845846, 50.308903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.929644, 28.981293, 50.379272>,  <28.620962, 29.207037, 50.496555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929644, 28.981293, 50.379272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093259, -0.556459, 0.825625,
		-0.629108, -0.609793, -0.482053,
		0.771703, -0.564363, -0.293204,
		29.161156, 28.811985, 50.291313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456074, 28.584602, 50.782597>,  <28.620962, 29.207037, 50.496555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456074, 28.584602, 50.782597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.852695, 28.583067, 50.730740>,  <29.090668, 28.582146, 50.699627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.852695, 28.583067, 50.730740>,  <28.456074, 28.584602, 50.782597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852695, 28.583067, 50.730740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116293, -0.416237, 0.901789,
		-0.057421, -0.909248, -0.412275,
		0.991554, -0.003837, -0.129640,
		29.150162, 28.581915, 50.691849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.246197, 35.415619, 36.364426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544930, 35.271927, 36.588280>,  <34.724171, 35.185711, 36.722591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544930, 35.271927, 36.588280>,  <34.246197, 35.415619, 36.364426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544930, 35.271927, 36.588280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664920, -0.389700, 0.637193,
		-0.010811, -0.847990, -0.529902,
		0.746836, -0.359231, 0.559633,
		34.768982, 35.164158, 36.756168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001137, 34.794632, 36.610741>,  <34.246197, 35.415619, 36.364426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001137, 34.794632, 36.610741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303436, 34.847633, 36.867268>,  <34.484814, 34.879433, 37.021183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303436, 34.847633, 36.867268>,  <34.001137, 34.794632, 36.610741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303436, 34.847633, 36.867268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592520, -0.278676, 0.755818,
		0.278869, -0.951200, -0.132097,
		0.755746, 0.132504, 0.641319,
		34.530159, 34.887386, 37.059662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916397, 34.321136, 37.146114>,  <34.001137, 34.794632, 36.610741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916397, 34.321136, 37.146114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190197, 34.559738, 37.313759>,  <34.354477, 34.702900, 37.414345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190197, 34.559738, 37.313759>,  <33.916397, 34.321136, 37.146114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190197, 34.559738, 37.313759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423954, -0.141979, 0.894486,
		0.593068, -0.789953, 0.155706,
		0.684495, 0.596503, 0.419107,
		34.395546, 34.738689, 37.439491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136139, 33.954689, 37.753639>,  <33.916397, 34.321136, 37.146114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136139, 33.954689, 37.753639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216984, 34.342281, 37.810539>,  <34.265491, 34.574837, 37.844681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216984, 34.342281, 37.810539>,  <34.136139, 33.954689, 37.753639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216984, 34.342281, 37.810539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347895, -0.064744, 0.935295,
		0.915489, -0.238524, 0.324016,
		0.202112, 0.968976, 0.142254,
		34.277618, 34.632973, 37.853214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551903, 34.063797, 38.420036>,  <34.136139, 33.954689, 37.753639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551903, 34.063797, 38.420036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355167, 34.402454, 38.338753>,  <34.237125, 34.605648, 38.289982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355167, 34.402454, 38.338753>,  <34.551903, 34.063797, 38.420036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355167, 34.402454, 38.338753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310746, 0.047328, 0.949314,
		0.813346, 0.530054, 0.239813,
		-0.491838, 0.846642, -0.203206,
		34.207615, 34.656448, 38.277790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712521, 34.391621, 39.013237>,  <34.551903, 34.063797, 38.420036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712521, 34.391621, 39.013237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418419, 34.609573, 38.851994>,  <34.241959, 34.740345, 38.755245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418419, 34.609573, 38.851994>,  <34.712521, 34.391621, 39.013237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418419, 34.609573, 38.851994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324958, 0.238547, 0.915149,
		0.594808, 0.803866, 0.001670,
		-0.735258, 0.544881, -0.403112,
		34.197842, 34.773037, 38.731060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643845, 34.936993, 39.448895>,  <34.712521, 34.391621, 39.013237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643845, 34.936993, 39.448895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301262, 34.960506, 39.243748>,  <34.095715, 34.974613, 39.120659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301262, 34.960506, 39.243748>,  <34.643845, 34.936993, 39.448895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301262, 34.960506, 39.243748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498910, 0.160891, 0.851588,
		0.132575, 0.985220, -0.108468,
		-0.856453, 0.058783, -0.512867,
		34.044327, 34.978142, 39.089890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247047, 35.545692, 39.756618>,  <34.643845, 34.936993, 39.448895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247047, 35.545692, 39.756618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007435, 35.273174, 39.588333>,  <33.863667, 35.109661, 39.487362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007435, 35.273174, 39.588333>,  <34.247047, 35.545692, 39.756618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007435, 35.273174, 39.588333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516719, -0.072466, 0.853083,
		-0.611692, 0.728409, -0.308632,
		-0.599028, -0.681300, -0.420709,
		33.827728, 35.068783, 39.462120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526302, 35.794537, 39.949371>,  <34.247047, 35.545692, 39.756618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526302, 35.794537, 39.949371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528557, 35.408318, 39.845310>,  <33.529911, 35.176586, 39.782871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528557, 35.408318, 39.845310>,  <33.526302, 35.794537, 39.949371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528557, 35.408318, 39.845310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640261, -0.203326, 0.740759,
		-0.768137, 0.162394, -0.619350,
		0.005635, -0.965551, -0.260156,
		33.530247, 35.118652, 39.767262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902550, 35.667614, 39.925892>,  <33.526302, 35.794537, 39.949371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902550, 35.667614, 39.925892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064404, 35.304867, 39.972988>,  <33.161514, 35.087219, 40.001247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064404, 35.304867, 39.972988>,  <32.902550, 35.667614, 39.925892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064404, 35.304867, 39.972988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712238, -0.231765, 0.662572,
		-0.573577, -0.351959, -0.739685,
		0.404631, -0.906868, 0.117744,
		33.185795, 35.032806, 40.008312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389885, 35.228523, 39.762459>,  <32.902550, 35.667614, 39.925892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389885, 35.228523, 39.762459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648468, 35.043694, 40.005302>,  <32.803616, 34.932796, 40.151009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648468, 35.043694, 40.005302>,  <32.389885, 35.228523, 39.762459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648468, 35.043694, 40.005302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745309, -0.212324, 0.632007,
		-0.163126, -0.861052, -0.481642,
		0.646455, -0.462069, 0.607115,
		32.842403, 34.905071, 40.187435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234070, 34.523563, 39.776897>,  <32.389885, 35.228523, 39.762459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234070, 34.523563, 39.776897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452862, 34.608097, 40.100910>,  <32.584137, 34.658817, 40.295319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452862, 34.608097, 40.100910>,  <32.234070, 34.523563, 39.776897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452862, 34.608097, 40.100910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723141, -0.368207, 0.584372,
		0.421758, -0.905406, -0.048577,
		0.546981, 0.211335, 0.810031,
		32.616955, 34.671497, 40.343918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873625, 33.795025, 39.731937>,  <32.234070, 34.523563, 39.776897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873625, 33.795025, 39.731937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474531, 33.771778, 39.718384>,  <31.235075, 33.757832, 39.710251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474531, 33.771778, 39.718384>,  <31.873625, 33.795025, 39.731937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474531, 33.771778, 39.718384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020147, 0.738685, -0.673750,
		0.064181, -0.671541, -0.738182,
		-0.997735, -0.058114, -0.033881,
		31.175211, 33.754345, 39.708221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706902, 33.722462, 39.004452>,  <31.873625, 33.795025, 39.731937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706902, 33.722462, 39.004452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383493, 33.869686, 39.188114>,  <31.189449, 33.958023, 39.298309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383493, 33.869686, 39.188114>,  <31.706902, 33.722462, 39.004452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383493, 33.869686, 39.188114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128487, 0.651013, -0.748113,
		-0.574269, -0.663860, -0.479067,
		-0.808521, 0.368064, 0.459154,
		31.140938, 33.980106, 39.325859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250412, 33.741451, 38.467125>,  <31.706902, 33.722462, 39.004452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250412, 33.741451, 38.467125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094704, 33.985706, 38.742977>,  <31.001278, 34.132259, 38.908489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094704, 33.985706, 38.742977>,  <31.250412, 33.741451, 38.467125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094704, 33.985706, 38.742977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246929, 0.652101, -0.716792,
		-0.887408, -0.449316, -0.103060,
		-0.389272, 0.610639, 0.689629,
		30.977922, 34.168900, 38.949867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584711, 33.818851, 38.245663>,  <31.250412, 33.741451, 38.467125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584711, 33.818851, 38.245663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720533, 34.128540, 38.459312>,  <30.802027, 34.314354, 38.587502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720533, 34.128540, 38.459312>,  <30.584711, 33.818851, 38.245663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720533, 34.128540, 38.459312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151277, 0.605424, -0.781394,
		-0.928341, 0.184525, 0.322696,
		0.339555, 0.774217, 0.534126,
		30.822399, 34.360806, 38.619549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196365, 34.390392, 38.000271>,  <30.584711, 33.818851, 38.245663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196365, 34.390392, 38.000271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514709, 34.539959, 38.190762>,  <30.705715, 34.629700, 38.305058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514709, 34.539959, 38.190762>,  <30.196365, 34.390392, 38.000271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514709, 34.539959, 38.190762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096449, 0.698191, -0.709385,
		-0.597750, 0.610503, 0.519598,
		0.795860, 0.373920, 0.476226,
		30.753468, 34.652134, 38.333630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123348, 35.113712, 37.874969>,  <30.196365, 34.390392, 38.000271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123348, 35.113712, 37.874969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500456, 35.083427, 38.004868>,  <30.726721, 35.065258, 38.082806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500456, 35.083427, 38.004868>,  <30.123348, 35.113712, 37.874969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500456, 35.083427, 38.004868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250762, 0.802901, -0.540804,
		-0.219790, 0.591286, 0.775934,
		0.942768, -0.075711, 0.324742,
		30.783287, 35.060715, 38.102291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286652, 35.744316, 38.318077>,  <30.123348, 35.113712, 37.874969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286652, 35.744316, 38.318077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601917, 35.566395, 38.147926>,  <30.791077, 35.459641, 38.045834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601917, 35.566395, 38.147926>,  <30.286652, 35.744316, 38.318077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601917, 35.566395, 38.147926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146350, 0.806775, -0.572447,
		0.597812, 0.388928, 0.700968,
		0.788164, -0.444802, -0.425381,
		30.838366, 35.432953, 38.020313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781769, 36.303448, 38.304707>,  <30.286652, 35.744316, 38.318077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781769, 36.303448, 38.304707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924957, 36.041092, 38.038876>,  <31.010870, 35.883678, 37.879375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924957, 36.041092, 38.038876>,  <30.781769, 36.303448, 38.304707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924957, 36.041092, 38.038876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375607, 0.752772, -0.540604,
		0.854853, -0.056100, 0.515828,
		0.357973, -0.655886, -0.664581,
		31.032349, 35.844326, 37.839500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363752, 36.602631, 37.939236>,  <30.781769, 36.303448, 38.304707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363752, 36.602631, 37.939236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288187, 36.290886, 37.700272>,  <31.242847, 36.103840, 37.556892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288187, 36.290886, 37.700272>,  <31.363752, 36.602631, 37.939236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288187, 36.290886, 37.700272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159793, 0.575861, -0.801779,
		0.968906, -0.246927, 0.015751,
		-0.188911, -0.779366, -0.597412,
		31.231514, 36.057076, 37.521049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949005, 36.620323, 37.404057>,  <31.363752, 36.602631, 37.939236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949005, 36.620323, 37.404057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645901, 36.401241, 37.262177>,  <31.464037, 36.269791, 37.177048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645901, 36.401241, 37.262177>,  <31.949005, 36.620323, 37.404057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645901, 36.401241, 37.262177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145112, 0.388515, -0.909944,
		0.636190, -0.740993, -0.214923,
		-0.757763, -0.547710, -0.354696,
		31.418571, 36.236927, 37.155769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157379, 36.131626, 36.847107>,  <31.949005, 36.620323, 37.404057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157379, 36.131626, 36.847107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769751, 36.214493, 36.793480>,  <31.537172, 36.264214, 36.761303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769751, 36.214493, 36.793480>,  <32.157379, 36.131626, 36.847107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769751, 36.214493, 36.793480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209848, 0.405999, -0.889454,
		-0.129833, -0.890083, -0.436917,
		-0.969076, 0.207166, -0.134070,
		31.479029, 36.276642, 36.753258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092674, 36.164276, 36.190937>,  <32.157379, 36.131626, 36.847107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092674, 36.164276, 36.190937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733379, 36.319328, 36.273808>,  <31.517803, 36.412361, 36.323528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733379, 36.319328, 36.273808>,  <32.092674, 36.164276, 36.190937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733379, 36.319328, 36.273808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070671, 0.337856, -0.938541,
		-0.433802, -0.857669, -0.276079,
		-0.898233, 0.387630, 0.207174,
		31.463909, 36.435616, 36.335960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683151, 35.920399, 35.678047>,  <32.092674, 36.164276, 36.190937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683151, 35.920399, 35.678047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457369, 36.218346, 35.820347>,  <31.321899, 36.397114, 35.905727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457369, 36.218346, 35.820347>,  <31.683151, 35.920399, 35.678047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457369, 36.218346, 35.820347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224217, 0.276416, -0.934516,
		-0.794427, -0.607260, 0.010987,
		-0.564457, 0.744869, 0.355750,
		31.288033, 36.441807, 35.927071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919273, 35.877079, 35.374283>,  <31.683151, 35.920399, 35.678047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919273, 35.877079, 35.374283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025766, 36.246582, 35.484409>,  <31.089663, 36.468285, 35.550484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025766, 36.246582, 35.484409>,  <30.919273, 35.877079, 35.374283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025766, 36.246582, 35.484409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267611, 0.345228, -0.899556,
		-0.926015, 0.165816, 0.339119,
		0.266234, 0.923754, 0.275312,
		31.105637, 36.523708, 35.567001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119989, 35.152828, 35.662823>,  <30.919273, 35.877079, 35.374283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119989, 35.152828, 35.662823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383724, 34.895626, 35.818680>,  <31.541965, 34.741306, 35.912193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383724, 34.895626, 35.818680>,  <31.119989, 35.152828, 35.662823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383724, 34.895626, 35.818680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601343, -0.762078, -0.240048,
		0.451288, -0.076034, -0.889133,
		0.659337, -0.643005, 0.389639,
		31.581526, 34.702724, 35.935570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146902, 34.610844, 35.192265>,  <31.119989, 35.152828, 35.662823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146902, 34.610844, 35.192265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234175, 34.509483, 35.569237>,  <31.286539, 34.448666, 35.795422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234175, 34.509483, 35.569237>,  <31.146902, 34.610844, 35.192265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234175, 34.509483, 35.569237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650650, -0.757522, -0.053054,
		0.727360, -0.601619, -0.330155,
		0.218181, -0.253405, 0.942434,
		31.299629, 34.433460, 35.851967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887875, 34.384705, 35.064716>,  <31.146902, 34.610844, 35.192265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887875, 34.384705, 35.064716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093693, 34.041756, 35.069752>,  <32.217182, 33.835987, 35.072773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093693, 34.041756, 35.069752>,  <31.887875, 34.384705, 35.064716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093693, 34.041756, 35.069752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297065, -0.164469, 0.940586,
		-0.804362, -0.487712, -0.339321,
		0.514543, -0.857372, 0.012590,
		32.248055, 33.784546, 35.073528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466282, 34.020264, 35.504055>,  <31.887875, 34.384705, 35.064716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466282, 34.020264, 35.504055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799820, 33.800186, 35.521908>,  <31.999943, 33.668140, 35.532619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799820, 33.800186, 35.521908>,  <31.466282, 34.020264, 35.504055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799820, 33.800186, 35.521908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217819, -0.253664, 0.942448,
		-0.507204, -0.795578, -0.331359,
		0.833845, -0.550190, 0.044633,
		32.049973, 33.635128, 35.535297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309130, 33.309467, 35.840656>,  <31.466282, 34.020264, 35.504055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309130, 33.309467, 35.840656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708258, 33.325855, 35.861347>,  <31.947735, 33.335690, 35.873764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708258, 33.325855, 35.861347>,  <31.309130, 33.309467, 35.840656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708258, 33.325855, 35.861347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025130, -0.488933, 0.871959,
		0.061020, -0.871358, -0.486838,
		0.997820, 0.040972, 0.051732,
		32.007603, 33.338146, 35.876865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522545, 32.552574, 35.984516>,  <31.309130, 33.309467, 35.840656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522545, 32.552574, 35.984516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820702, 32.795368, 36.094761>,  <31.999596, 32.941044, 36.160908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820702, 32.795368, 36.094761>,  <31.522545, 32.552574, 35.984516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820702, 32.795368, 36.094761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170852, -0.573575, 0.801137,
		0.644363, -0.550071, -0.531242,
		0.745390, 0.606987, 0.275610,
		32.044319, 32.977463, 36.177444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083298, 32.118855, 36.020290>,  <31.522545, 32.552574, 35.984516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083298, 32.118855, 36.020290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156078, 32.436573, 36.252148>,  <32.199745, 32.627205, 36.391262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156078, 32.436573, 36.252148>,  <32.083298, 32.118855, 36.020290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156078, 32.436573, 36.252148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113011, -0.602467, 0.790102,
		0.976792, -0.078250, -0.199382,
		0.181947, 0.794298, 0.579643,
		32.210663, 32.674862, 36.426041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661228, 31.943016, 36.357498>,  <32.083298, 32.118855, 36.020290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661228, 31.943016, 36.357498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526062, 32.242550, 36.585552>,  <32.444962, 32.422272, 36.722385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526062, 32.242550, 36.585552>,  <32.661228, 31.943016, 36.357498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526062, 32.242550, 36.585552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054167, -0.620243, 0.782538,
		0.939616, 0.233551, 0.250153,
		-0.337918, 0.748835, 0.570139,
		32.424686, 32.467201, 36.756596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007164, 31.838732, 37.064175>,  <32.661228, 31.943016, 36.357498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007164, 31.838732, 37.064175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678741, 32.060078, 37.120247>,  <32.481689, 32.192886, 37.153893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678741, 32.060078, 37.120247>,  <33.007164, 31.838732, 37.064175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678741, 32.060078, 37.120247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202373, -0.511787, 0.834937,
		0.533769, 0.657162, 0.532193,
		-0.821058, 0.553365, 0.140185,
		32.432423, 32.226086, 37.162304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055664, 32.115925, 37.762871>,  <33.007164, 31.838732, 37.064175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055664, 32.115925, 37.762871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664948, 32.123638, 37.677544>,  <32.430519, 32.128265, 37.626347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664948, 32.123638, 37.677544>,  <33.055664, 32.115925, 37.762871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664948, 32.123638, 37.677544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208428, -0.314983, 0.925928,
		-0.049339, 0.948901, 0.311692,
		-0.976792, 0.019281, -0.213319,
		32.371910, 32.129421, 37.613548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747810, 32.525932, 38.208023>,  <33.055664, 32.115925, 37.762871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747810, 32.525932, 38.208023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451302, 32.287079, 38.085423>,  <32.273396, 32.143764, 38.011860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451302, 32.287079, 38.085423>,  <32.747810, 32.525932, 38.208023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451302, 32.287079, 38.085423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126537, -0.324133, 0.937511,
		-0.659170, 0.733734, 0.164710,
		-0.741271, -0.597137, -0.306503,
		32.228920, 32.107937, 37.993473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237537, 32.539143, 38.736862>,  <32.747810, 32.525932, 38.208023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237537, 32.539143, 38.736862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118469, 32.214432, 38.535900>,  <32.047028, 32.019604, 38.415325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118469, 32.214432, 38.535900>,  <32.237537, 32.539143, 38.736862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118469, 32.214432, 38.535900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217074, -0.454919, 0.863671,
		-0.929661, 0.366149, -0.040799,
		-0.297672, -0.811778, -0.502402,
		32.029167, 31.970898, 38.385178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693594, 32.246166, 39.083687>,  <32.237537, 32.539143, 38.736862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693594, 32.246166, 39.083687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828150, 31.939508, 38.864925>,  <31.908884, 31.755514, 38.733669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828150, 31.939508, 38.864925>,  <31.693594, 32.246166, 39.083687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828150, 31.939508, 38.864925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324783, -0.639560, 0.696763,
		-0.883945, -0.056760, -0.464134,
		0.336389, -0.766643, -0.546901,
		31.929066, 31.709515, 38.700855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160160, 31.872047, 39.044594>,  <31.693594, 32.246166, 39.083687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160160, 31.872047, 39.044594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467207, 31.640873, 38.933773>,  <31.651436, 31.502169, 38.867283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467207, 31.640873, 38.933773>,  <31.160160, 31.872047, 39.044594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467207, 31.640873, 38.933773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321723, -0.721332, 0.613331,
		-0.554309, -0.381671, -0.739641,
		0.767617, -0.577935, -0.277049,
		31.697493, 31.467493, 38.850658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987247, 31.196915, 38.857769>,  <31.160160, 31.872047, 39.044594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987247, 31.196915, 38.857769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372072, 31.140366, 38.951107>,  <31.602966, 31.106436, 39.007111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372072, 31.140366, 38.951107>,  <30.987247, 31.196915, 38.857769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372072, 31.140366, 38.951107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243849, -0.829170, 0.503006,
		0.122370, -0.540824, -0.832187,
		0.962062, -0.141375, 0.233345,
		31.660690, 31.097954, 39.021111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051502, 30.479139, 38.854454>,  <30.987247, 31.196915, 38.857769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051502, 30.479139, 38.854454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349432, 30.624941, 39.078014>,  <31.528191, 30.712421, 39.212151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349432, 30.624941, 39.078014>,  <31.051502, 30.479139, 38.854454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349432, 30.624941, 39.078014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161711, -0.714028, 0.681186,
		0.647366, -0.597746, -0.472882,
		0.744827, 0.364506, 0.558899,
		31.572880, 30.734293, 39.245686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448109, 29.912214, 39.033268>,  <31.051502, 30.479139, 38.854454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448109, 29.912214, 39.033268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551826, 30.187737, 39.304062>,  <31.614058, 30.353050, 39.466537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551826, 30.187737, 39.304062>,  <31.448109, 29.912214, 39.033268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551826, 30.187737, 39.304062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125666, -0.719064, 0.683488,
		0.957588, -0.092150, -0.273009,
		0.259294, 0.688808, 0.676986,
		31.629614, 30.394379, 39.507156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994368, 29.594057, 39.330616>,  <31.448109, 29.912214, 39.033268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994368, 29.594057, 39.330616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857002, 29.853952, 39.601883>,  <31.774582, 30.009890, 39.764641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857002, 29.853952, 39.601883>,  <31.994368, 29.594057, 39.330616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857002, 29.853952, 39.601883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220757, -0.646005, 0.730714,
		0.912870, 0.400648, 0.078414,
		-0.343415, 0.649737, 0.678165,
		31.753977, 30.048874, 39.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490791, 29.508251, 39.834152>,  <31.994368, 29.594057, 39.330616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490791, 29.508251, 39.834152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188339, 29.712742, 39.997574>,  <32.006866, 29.835436, 40.095627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188339, 29.712742, 39.997574>,  <32.490791, 29.508251, 39.834152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188339, 29.712742, 39.997574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098238, -0.528553, 0.843197,
		0.647007, 0.677701, 0.349432,
		-0.756129, 0.511227, 0.408554,
		31.961500, 29.866110, 40.120140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716404, 29.436256, 40.444874>,  <32.490791, 29.508251, 39.834152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716404, 29.436256, 40.444874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331970, 29.544153, 40.468708>,  <32.101311, 29.608892, 40.483009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331970, 29.544153, 40.468708>,  <32.716404, 29.436256, 40.444874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331970, 29.544153, 40.468708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057643, -0.406781, 0.911706,
		0.270165, 0.872794, 0.406500,
		-0.961087, 0.269743, 0.059588,
		32.043644, 29.625076, 40.486584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658108, 29.524277, 41.208309>,  <32.716404, 29.436256, 40.444874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658108, 29.524277, 41.208309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288437, 29.463131, 41.068295>,  <32.066635, 29.426443, 40.984283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288437, 29.463131, 41.068295>,  <32.658108, 29.524277, 41.208309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288437, 29.463131, 41.068295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188385, -0.614798, 0.765856,
		-0.332275, 0.773729, 0.539385,
		-0.924178, -0.152863, -0.350041,
		32.011185, 29.417273, 40.963284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273445, 29.646782, 41.815449>,  <32.658108, 29.524277, 41.208309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273445, 29.646782, 41.815449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031334, 29.458544, 41.558643>,  <31.886068, 29.345600, 41.404560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031334, 29.458544, 41.558643>,  <32.273445, 29.646782, 41.815449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031334, 29.458544, 41.558643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214720, -0.680115, 0.700956,
		-0.766509, 0.562125, 0.310611,
		-0.605276, -0.470595, -0.642014,
		31.849751, 29.317366, 41.366039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686655, 29.376837, 42.196697>,  <32.273445, 29.646782, 41.815449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686655, 29.376837, 42.196697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704290, 29.144012, 41.871918>,  <31.714872, 29.004318, 41.677052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704290, 29.144012, 41.871918>,  <31.686655, 29.376837, 42.196697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704290, 29.144012, 41.871918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141452, -0.808189, 0.571684,
		-0.988963, 0.089646, -0.117966,
		0.044090, -0.582060, -0.811949,
		31.717518, 28.969395, 41.628334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116755, 28.837481, 42.296753>,  <31.686655, 29.376837, 42.196697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116755, 28.837481, 42.296753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384914, 28.704268, 42.031525>,  <31.545811, 28.624340, 41.872387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384914, 28.704268, 42.031525>,  <31.116755, 28.837481, 42.296753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384914, 28.704268, 42.031525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045728, -0.873376, 0.484895,
		-0.740591, -0.355393, -0.570281,
		0.670398, -0.333031, -0.663066,
		31.586033, 28.604359, 41.832603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829185, 28.323561, 42.047482>,  <31.116755, 28.837481, 42.296753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829185, 28.323561, 42.047482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220400, 28.258738, 41.995049>,  <31.455128, 28.219843, 41.963589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220400, 28.258738, 41.995049>,  <30.829185, 28.323561, 42.047482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220400, 28.258738, 41.995049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075308, -0.861142, 0.502755,
		-0.194353, -0.481841, -0.854433,
		0.978036, -0.162057, -0.131080,
		31.513811, 28.210121, 41.955723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863834, 27.697130, 41.797150>,  <30.829185, 28.323561, 42.047482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863834, 27.697130, 41.797150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240360, 27.757236, 41.918045>,  <31.466276, 27.793301, 41.990582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240360, 27.757236, 41.918045>,  <30.863834, 27.697130, 41.797150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240360, 27.757236, 41.918045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017969, -0.871855, 0.489435,
		0.337054, -0.466143, -0.817989,
		0.941314, 0.150267, 0.302239,
		31.522755, 27.802317, 42.008717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257511, 27.110010, 41.621601>,  <30.863834, 27.697130, 41.797150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257511, 27.110010, 41.621601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466763, 27.274157, 41.920380>,  <31.592314, 27.372644, 42.099648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466763, 27.274157, 41.920380>,  <31.257511, 27.110010, 41.621601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466763, 27.274157, 41.920380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065755, -0.854394, 0.515449,
		0.849712, -0.318763, -0.419975,
		0.523130, 0.410368, 0.746949,
		31.623701, 27.397266, 42.144463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872110, 26.665058, 41.820751>,  <31.257511, 27.110010, 41.621601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872110, 26.665058, 41.820751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743700, 26.880688, 42.132221>,  <31.666653, 27.010065, 42.319103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743700, 26.880688, 42.132221>,  <31.872110, 26.665058, 41.820751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743700, 26.880688, 42.132221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083449, -0.835100, 0.543731,
		0.943386, 0.109573, 0.313076,
		-0.321028, 0.539075, 0.778678,
		31.647392, 27.042410, 42.365826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332298, 26.655567, 42.456959>,  <31.872110, 26.665058, 41.820751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332298, 26.655567, 42.456959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939222, 26.698053, 42.517670>,  <31.703377, 26.723545, 42.554096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939222, 26.698053, 42.517670>,  <32.332298, 26.655567, 42.456959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939222, 26.698053, 42.517670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032531, -0.905506, 0.423084,
		0.182372, 0.410824, 0.893289,
		-0.982691, 0.106218, 0.151774,
		31.644415, 26.729919, 42.563202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609997, 27.361111, 42.747364>,  <32.332298, 26.655567, 42.456959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609997, 27.361111, 42.747364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848564, 27.042452, 42.708092>,  <32.991703, 26.851257, 42.684528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848564, 27.042452, 42.708092>,  <32.609997, 27.361111, 42.747364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848564, 27.042452, 42.708092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536593, 0.486683, -0.689353,
		0.596955, 0.358459, 0.717741,
		0.596417, -0.796647, -0.098181,
		33.027489, 26.803457, 42.678638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378632, 27.675335, 42.565792>,  <32.609997, 27.361111, 42.747364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378632, 27.675335, 42.565792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383926, 27.289164, 42.461658>,  <33.387104, 27.057461, 42.399178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383926, 27.289164, 42.461658>,  <33.378632, 27.675335, 42.565792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383926, 27.289164, 42.461658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543997, 0.225408, -0.808244,
		0.838983, -0.130924, 0.528173,
		0.013236, -0.965427, -0.260335,
		33.387897, 26.999535, 42.383556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037022, 27.583143, 42.279522>,  <33.378632, 27.675335, 42.565792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037022, 27.583143, 42.279522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838360, 27.272741, 42.124004>,  <33.719162, 27.086500, 42.030693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838360, 27.272741, 42.124004>,  <34.037022, 27.583143, 42.279522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838360, 27.272741, 42.124004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364403, 0.220123, -0.904852,
		0.787749, -0.591072, 0.173453,
		-0.496651, -0.776002, -0.388789,
		33.689365, 27.039940, 42.007366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480637, 27.303583, 41.884380>,  <34.037022, 27.583143, 42.279522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480637, 27.303583, 41.884380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149780, 27.143869, 41.726185>,  <33.951267, 27.048040, 41.631268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149780, 27.143869, 41.726185>,  <34.480637, 27.303583, 41.884380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149780, 27.143869, 41.726185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286259, 0.306258, -0.907889,
		0.483630, -0.864162, -0.139018,
		-0.827139, -0.399287, -0.395490,
		33.901638, 27.024084, 41.607536>
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
