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
	<24.609392, 35.204960, 35.390270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469490, 34.913166, 35.155148>,  <24.385548, 34.738091, 35.014072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469490, 34.913166, 35.155148>,  <24.609392, 35.204960, 35.390270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.469490, 34.913166, 35.155148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855945, -0.006224, 0.517029,
		-0.380826, 0.683964, -0.622225,
		-0.349756, -0.729489, -0.587806,
		24.364563, 34.694321, 34.978806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422779, 35.445503, 35.486946>,  <24.609392, 35.204960, 35.390270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422779, 35.445503, 35.486946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081728, 35.642395, 35.416813>,  <24.877098, 35.760529, 35.374733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081728, 35.642395, 35.416813>,  <25.422779, 35.445503, 35.486946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081728, 35.642395, 35.416813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511616, 0.854628, -0.088660,
		0.106199, -0.165295, -0.980510,
		-0.852626, 0.492229, -0.175328,
		24.825941, 35.790062, 35.364216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863611, 35.316128, 34.922688>,  <25.422779, 35.445503, 35.486946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863611, 35.316128, 34.922688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467646, 35.371124, 34.936325>,  <25.230066, 35.404121, 34.944508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467646, 35.371124, 34.936325>,  <25.863611, 35.316128, 34.922688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467646, 35.371124, 34.936325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141595, 0.953387, 0.266464,
		0.004134, 0.268605, -0.963242,
		-0.989916, 0.137492, 0.034091,
		25.170671, 35.412373, 34.946552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893831, 35.170151, 34.213814>,  <25.863611, 35.316128, 34.922688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893831, 35.170151, 34.213814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130209, 35.369644, 34.467442>,  <26.272036, 35.489342, 34.619617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130209, 35.369644, 34.467442>,  <25.893831, 35.170151, 34.213814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130209, 35.369644, 34.467442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427633, -0.860142, 0.278005,
		0.684044, 0.106865, -0.721571,
		0.590944, 0.498735, 0.634073,
		26.307491, 35.519264, 34.657665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625677, 35.198036, 34.062172>,  <25.893831, 35.170151, 34.213814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625677, 35.198036, 34.062172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571896, 35.222267, 34.457798>,  <26.539627, 35.236805, 34.695175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571896, 35.222267, 34.457798>,  <26.625677, 35.198036, 34.062172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571896, 35.222267, 34.457798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598094, -0.790854, 0.129745,
		0.790067, 0.608999, 0.070102,
		-0.134455, 0.060580, 0.989066,
		26.531559, 35.240440, 34.754517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278452, 35.223148, 34.560806>,  <26.625677, 35.198036, 34.062172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278452, 35.223148, 34.560806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953295, 35.032475, 34.694660>,  <26.758200, 34.918072, 34.774971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953295, 35.032475, 34.694660>,  <27.278452, 35.223148, 34.560806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953295, 35.032475, 34.694660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509281, -0.860525, 0.011346,
		0.282550, 0.179645, 0.942281,
		-0.812895, -0.476680, 0.334631,
		26.709427, 34.889469, 34.795048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608999, 34.868576, 35.121914>,  <27.278452, 35.223148, 34.560806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608999, 34.868576, 35.121914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972208, 34.820713, 35.282501>,  <28.190132, 34.791996, 35.378853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972208, 34.820713, 35.282501>,  <27.608999, 34.868576, 35.121914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972208, 34.820713, 35.282501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359293, 0.715252, -0.599436,
		-0.215424, 0.688546, 0.692457,
		0.908021, -0.119662, 0.401472,
		28.244614, 34.784813, 35.402943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917423, 35.473381, 34.967697>,  <27.608999, 34.868576, 35.121914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917423, 35.473381, 34.967697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232454, 35.258999, 35.089336>,  <28.421473, 35.130371, 35.162319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232454, 35.258999, 35.089336>,  <27.917423, 35.473381, 34.967697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232454, 35.258999, 35.089336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594385, 0.530536, -0.604349,
		0.162570, 0.656722, 0.736402,
		0.787577, -0.535955, 0.304096,
		28.468727, 35.098213, 35.180565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536850, 35.977985, 35.047821>,  <27.917423, 35.473381, 34.967697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536850, 35.977985, 35.047821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667925, 35.603531, 34.996788>,  <28.746569, 35.378860, 34.966167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667925, 35.603531, 34.996788>,  <28.536850, 35.977985, 35.047821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667925, 35.603531, 34.996788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669950, 0.325450, -0.667270,
		0.666175, 0.133182, 0.733808,
		0.327686, -0.936133, -0.127581,
		28.766232, 35.322693, 34.958515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196867, 35.960339, 35.223587>,  <28.536850, 35.977985, 35.047821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196867, 35.960339, 35.223587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113007, 35.685184, 34.945637>,  <29.062691, 35.520092, 34.778866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113007, 35.685184, 34.945637>,  <29.196867, 35.960339, 35.223587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113007, 35.685184, 34.945637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742787, 0.350109, -0.570694,
		0.635856, -0.635794, 0.437553,
		-0.209653, -0.687888, -0.694878,
		29.050110, 35.478817, 34.737175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794306, 35.676651, 35.015442>,  <29.196867, 35.960339, 35.223587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794306, 35.676651, 35.015442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556017, 35.701569, 34.695133>,  <29.413044, 35.716518, 34.502949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556017, 35.701569, 34.695133>,  <29.794306, 35.676651, 35.015442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556017, 35.701569, 34.695133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753048, 0.390068, -0.529873,
		0.279345, -0.918676, -0.279286,
		-0.595723, 0.062298, -0.800771,
		29.377300, 35.720257, 34.454903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078495, 35.304024, 34.533825>,  <29.794306, 35.676651, 35.015442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078495, 35.304024, 34.533825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847641, 35.581306, 34.361137>,  <29.709129, 35.747677, 34.257526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847641, 35.581306, 34.361137>,  <30.078495, 35.304024, 34.533825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847641, 35.581306, 34.361137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788138, 0.334329, -0.516781,
		-0.213901, -0.638504, -0.739296,
		-0.577135, 0.693207, -0.431716,
		29.674501, 35.789268, 34.231621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152651, 35.175415, 33.758553>,  <30.078495, 35.304024, 34.533825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152651, 35.175415, 33.758553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038342, 35.544201, 33.863094>,  <29.969755, 35.765472, 33.925819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038342, 35.544201, 33.863094>,  <30.152651, 35.175415, 33.758553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038342, 35.544201, 33.863094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578264, 0.383384, -0.720157,
		-0.764162, -0.054671, -0.642704,
		-0.285774, 0.921969, 0.261353,
		29.952610, 35.820793, 33.941502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578018, 35.534397, 33.364502>,  <30.152651, 35.175415, 33.758553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578018, 35.534397, 33.364502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371908, 35.820766, 33.552944>,  <30.248243, 35.992588, 33.666012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371908, 35.820766, 33.552944>,  <30.578018, 35.534397, 33.364502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371908, 35.820766, 33.552944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441170, 0.692852, -0.570373,
		-0.734753, -0.086059, -0.672853,
		-0.515273, 0.715926, 0.471109,
		30.217325, 36.035545, 33.694279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003271, 35.478241, 32.961662>,  <30.578018, 35.534397, 33.364502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003271, 35.478241, 32.961662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400047, 35.471684, 32.911407>,  <30.638113, 35.467747, 32.881256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400047, 35.471684, 32.911407>,  <30.003271, 35.478241, 32.961662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400047, 35.471684, 32.911407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052086, -0.956694, -0.286398,
		-0.115497, 0.290634, -0.949838,
		0.991941, -0.016396, -0.125633,
		30.697630, 35.466766, 32.873718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073971, 35.205193, 32.298973>,  <30.003271, 35.478241, 32.961662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073971, 35.205193, 32.298973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417517, 35.123676, 32.486938>,  <30.623644, 35.074768, 32.599720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417517, 35.123676, 32.486938>,  <30.073971, 35.205193, 32.298973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417517, 35.123676, 32.486938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010444, -0.924221, -0.381715,
		0.512096, 0.322934, -0.795909,
		0.858865, -0.203788, 0.469917,
		30.675177, 35.062538, 32.627914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502319, 34.890274, 31.783167>,  <30.073971, 35.205193, 32.298973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502319, 34.890274, 31.783167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589668, 34.782501, 32.158340>,  <30.642078, 34.717838, 32.383446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589668, 34.782501, 32.158340>,  <30.502319, 34.890274, 31.783167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589668, 34.782501, 32.158340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115722, -0.961499, -0.249256,
		0.968980, -0.054109, -0.241145,
		0.218373, -0.269430, 0.937934,
		30.655180, 34.701672, 32.439720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887953, 34.247604, 31.837122>,  <30.502319, 34.890274, 31.783167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887953, 34.247604, 31.837122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674623, 34.273666, 32.174480>,  <30.546625, 34.289303, 32.376896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674623, 34.273666, 32.174480>,  <30.887953, 34.247604, 31.837122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674623, 34.273666, 32.174480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349751, -0.924801, -0.149725,
		0.770221, -0.374831, 0.516005,
		-0.533324, 0.065153, 0.843399,
		30.514626, 34.293213, 32.427502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108437, 33.700539, 32.299538>,  <30.887953, 34.247604, 31.837122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108437, 33.700539, 32.299538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729254, 33.822571, 32.335983>,  <30.501743, 33.895790, 32.357849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729254, 33.822571, 32.335983>,  <31.108437, 33.700539, 32.299538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729254, 33.822571, 32.335983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318026, -0.921088, -0.224625,
		0.015394, -0.241912, 0.970176,
		-0.947957, 0.305083, 0.091113,
		30.444866, 33.914097, 32.363316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711327, 33.107410, 32.462326>,  <31.108437, 33.700539, 32.299538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711327, 33.107410, 32.462326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443228, 33.364632, 32.314133>,  <30.282368, 33.518963, 32.225216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443228, 33.364632, 32.314133>,  <30.711327, 33.107410, 32.462326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443228, 33.364632, 32.314133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439916, -0.746303, -0.499505,
		-0.597697, -0.171812, 0.783096,
		-0.670248, 0.643050, -0.370480,
		30.242153, 33.557545, 32.202988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453747, 33.655270, 32.804924>,  <30.711327, 33.107410, 32.462326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453747, 33.655270, 32.804924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849842, 33.709854, 32.816280>,  <31.087500, 33.742603, 32.823093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849842, 33.709854, 32.816280>,  <30.453747, 33.655270, 32.804924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849842, 33.709854, 32.816280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136333, 0.990643, -0.006268,
		-0.028978, 0.002336, 0.999577,
		0.990239, 0.136457, 0.028389,
		31.146914, 33.750790, 32.824799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585955, 34.119976, 33.331768>,  <30.453747, 33.655270, 32.804924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585955, 34.119976, 33.331768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894127, 34.156334, 33.079365>,  <31.079031, 34.178150, 32.927921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894127, 34.156334, 33.079365>,  <30.585955, 34.119976, 33.331768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894127, 34.156334, 33.079365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162035, 0.985199, -0.055924,
		0.616589, 0.145331, 0.773756,
		0.770431, 0.090894, -0.631011,
		31.125256, 34.183601, 32.890060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225939, 34.429974, 33.526417>,  <30.585955, 34.119976, 33.331768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225939, 34.429974, 33.526417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184437, 34.519917, 33.138878>,  <31.159536, 34.573883, 32.906353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184437, 34.519917, 33.138878>,  <31.225939, 34.429974, 33.526417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184437, 34.519917, 33.138878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154226, 0.965964, 0.207674,
		0.982573, -0.127875, -0.134903,
		-0.103755, 0.224860, -0.968851,
		31.153311, 34.587376, 32.848221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783152, 34.751373, 33.241619>,  <31.225939, 34.429974, 33.526417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783152, 34.751373, 33.241619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451824, 34.857082, 33.044018>,  <31.253027, 34.920509, 32.925457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451824, 34.857082, 33.044018>,  <31.783152, 34.751373, 33.241619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451824, 34.857082, 33.044018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157209, 0.955968, 0.247813,
		0.537745, 0.127606, -0.833395,
		-0.828321, 0.264277, -0.494006,
		31.203327, 34.936367, 32.895817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969992, 35.260777, 32.780540>,  <31.783152, 34.751373, 33.241619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969992, 35.260777, 32.780540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583014, 35.349941, 32.828480>,  <31.350826, 35.403439, 32.857243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583014, 35.349941, 32.828480>,  <31.969992, 35.260777, 32.780540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583014, 35.349941, 32.828480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239981, 0.958375, 0.154681,
		-0.080378, 0.178406, -0.980668,
		-0.967444, 0.222909, 0.119847,
		31.292780, 35.416813, 32.864433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883316, 35.193573, 31.946306>,  <31.969992, 35.260777, 32.780540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883316, 35.193573, 31.946306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099476, 35.100410, 31.622892>,  <32.229172, 35.044514, 31.428844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099476, 35.100410, 31.622892>,  <31.883316, 35.193573, 31.946306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099476, 35.100410, 31.622892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384012, -0.786744, 0.483289,
		-0.748667, -0.571656, -0.335719,
		0.540400, -0.232903, -0.808532,
		32.261597, 35.030540, 31.380333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674143, 34.546154, 31.718056>,  <31.883316, 35.193573, 31.946306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674143, 34.546154, 31.718056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053432, 34.630947, 31.623457>,  <32.281006, 34.681824, 31.566698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053432, 34.630947, 31.623457>,  <31.674143, 34.546154, 31.718056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053432, 34.630947, 31.623457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315746, -0.709462, 0.630054,
		-0.034228, -0.672107, -0.739662,
		0.948226, 0.211980, -0.236499,
		32.337902, 34.694542, 31.552507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953247, 33.932278, 31.771385>,  <31.674143, 34.546154, 31.718056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953247, 33.932278, 31.771385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277359, 34.164940, 31.800028>,  <32.471825, 34.304539, 31.817213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277359, 34.164940, 31.800028>,  <31.953247, 33.932278, 31.771385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277359, 34.164940, 31.800028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518023, -0.767999, 0.376604,
		0.274045, -0.268061, -0.923603,
		0.810279, 0.581654, 0.071605,
		32.520443, 34.339436, 31.821508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488350, 33.515720, 31.709200>,  <31.953247, 33.932278, 31.771385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488350, 33.515720, 31.709200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696011, 33.834648, 31.832329>,  <32.820606, 34.026005, 31.906206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696011, 33.834648, 31.832329>,  <32.488350, 33.515720, 31.709200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696011, 33.834648, 31.832329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721166, -0.601950, 0.342893,
		0.458690, 0.043976, -0.887508,
		0.519156, 0.797322, 0.307822,
		32.851757, 34.073845, 31.924675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122368, 33.561188, 31.444109>,  <32.488350, 33.515720, 31.709200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122368, 33.561188, 31.444109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087681, 33.717793, 31.810541>,  <33.066868, 33.811756, 32.030399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087681, 33.717793, 31.810541>,  <33.122368, 33.561188, 31.444109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087681, 33.717793, 31.810541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567448, -0.736386, 0.368428,
		0.818830, 0.551777, -0.158301,
		-0.086719, 0.391507, 0.916080,
		33.061665, 33.835243, 32.085365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688179, 33.411907, 31.704252>,  <33.122368, 33.561188, 31.444109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688179, 33.411907, 31.704252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445541, 33.484318, 32.013905>,  <33.299961, 33.527763, 32.199696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445541, 33.484318, 32.013905>,  <33.688179, 33.411907, 31.704252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445541, 33.484318, 32.013905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490707, -0.680864, 0.543719,
		0.625504, 0.709686, 0.324175,
		-0.606589, 0.181023, 0.774132,
		33.263565, 33.538624, 32.246143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098606, 33.249321, 32.421963>,  <33.688179, 33.411907, 31.704252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098606, 33.249321, 32.421963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714096, 33.300812, 32.519436>,  <33.483391, 33.331707, 32.577919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714096, 33.300812, 32.519436>,  <34.098606, 33.249321, 32.421963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714096, 33.300812, 32.519436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088959, -0.691942, 0.716451,
		0.260845, 0.710383, 0.653694,
		-0.961273, 0.128731, 0.243684,
		33.425713, 33.339432, 32.592541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124733, 33.389259, 33.117153>,  <34.098606, 33.249321, 32.421963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124733, 33.389259, 33.117153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772896, 33.210724, 33.051292>,  <33.561794, 33.103603, 33.011776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772896, 33.210724, 33.051292>,  <34.124733, 33.389259, 33.117153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772896, 33.210724, 33.051292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183097, -0.637043, 0.748767,
		-0.439090, 0.628460, 0.642058,
		-0.879588, -0.446335, -0.164650,
		33.509018, 33.076824, 33.001896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813679, 33.249733, 33.808609>,  <34.124733, 33.389259, 33.117153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813679, 33.249733, 33.808609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733265, 32.999107, 33.507412>,  <33.685017, 32.848732, 33.326694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733265, 32.999107, 33.507412>,  <33.813679, 33.249733, 33.808609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733265, 32.999107, 33.507412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426071, -0.748099, 0.508736,
		-0.882070, -0.218554, 0.417356,
		-0.201037, -0.626564, -0.752995,
		33.672955, 32.811138, 33.281513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649513, 32.566887, 34.054653>,  <33.813679, 33.249733, 33.808609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649513, 32.566887, 34.054653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802361, 32.454350, 33.702553>,  <33.894070, 32.386829, 33.491295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802361, 32.454350, 33.702553>,  <33.649513, 32.566887, 34.054653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802361, 32.454350, 33.702553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699523, -0.534376, 0.474457,
		-0.603867, -0.797051, -0.007389,
		0.382115, -0.281340, -0.880248,
		33.916996, 32.369949, 33.438480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650047, 31.851379, 33.940212>,  <33.649513, 32.566887, 34.054653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650047, 31.851379, 33.940212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952553, 31.974871, 33.709473>,  <34.134056, 32.048965, 33.571030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952553, 31.974871, 33.709473>,  <33.650047, 31.851379, 33.940212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952553, 31.974871, 33.709473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650441, -0.449994, 0.611908,
		-0.070663, -0.837968, -0.541125,
		0.756263, 0.308731, -0.576847,
		34.179432, 32.067490, 33.536419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145496, 31.360870, 33.881516>,  <33.650047, 31.851379, 33.940212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145496, 31.360870, 33.881516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378136, 31.676161, 33.801071>,  <34.517719, 31.865335, 33.752804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378136, 31.676161, 33.801071>,  <34.145496, 31.360870, 33.881516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378136, 31.676161, 33.801071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769179, -0.452385, 0.451344,
		0.264784, -0.417187, -0.869393,
		0.581596, 0.788228, -0.201107,
		34.552616, 31.912628, 33.740738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750980, 31.103146, 33.529793>,  <34.145496, 31.360870, 33.881516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750980, 31.103146, 33.529793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831676, 31.468302, 33.671738>,  <34.880093, 31.687395, 33.756905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831676, 31.468302, 33.671738>,  <34.750980, 31.103146, 33.529793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831676, 31.468302, 33.671738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940228, -0.281995, 0.190920,
		0.274360, 0.295140, -0.915215,
		0.201738, 0.912892, 0.354867,
		34.892197, 31.742168, 33.778198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236801, 31.398890, 33.087551>,  <34.750980, 31.103146, 33.529793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236801, 31.398890, 33.087551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245518, 31.488998, 33.477173>,  <35.250748, 31.543064, 33.710945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245518, 31.488998, 33.477173>,  <35.236801, 31.398890, 33.087551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245518, 31.488998, 33.477173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943194, -0.327709, 0.054693,
		0.331526, 0.917528, -0.219617,
		0.021789, 0.225274, 0.974052,
		35.252056, 31.556581, 33.769390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825420, 31.838263, 33.196995>,  <35.236801, 31.398890, 33.087551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825420, 31.838263, 33.196995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721378, 31.650599, 33.534569>,  <35.658951, 31.538000, 33.737114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721378, 31.650599, 33.534569>,  <35.825420, 31.838263, 33.196995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721378, 31.650599, 33.534569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964912, -0.158799, 0.209112,
		0.035909, 0.868718, 0.494004,
		-0.260107, -0.469161, 0.843939,
		35.643345, 31.509850, 33.787750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294155, 32.116047, 33.641647>,  <35.825420, 31.838263, 33.196995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294155, 32.116047, 33.641647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165779, 31.771019, 33.798092>,  <36.088753, 31.564003, 33.891960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165779, 31.771019, 33.798092>,  <36.294155, 32.116047, 33.641647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165779, 31.771019, 33.798092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928184, -0.204343, 0.310995,
		-0.188334, 0.462837, 0.866206,
		-0.320943, -0.862570, 0.391113,
		36.069496, 31.512249, 33.915424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583511, 31.997112, 34.274609>,  <36.294155, 32.116047, 33.641647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583511, 31.997112, 34.274609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507771, 31.625378, 34.147816>,  <36.462326, 31.402336, 34.071739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507771, 31.625378, 34.147816>,  <36.583511, 31.997112, 34.274609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507771, 31.625378, 34.147816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964540, -0.236492, 0.117194,
		-0.183877, -0.283550, 0.941164,
		-0.189348, -0.929339, -0.316981,
		36.450966, 31.346577, 34.052723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746078, 31.401676, 34.787189>,  <36.583511, 31.997112, 34.274609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746078, 31.401676, 34.787189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778095, 31.291962, 34.403866>,  <36.797306, 31.226133, 34.173870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778095, 31.291962, 34.403866>,  <36.746078, 31.401676, 34.787189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778095, 31.291962, 34.403866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969587, -0.201652, 0.138700,
		-0.231289, -0.940268, 0.249804,
		0.080041, -0.274287, -0.958311,
		36.802109, 31.209675, 34.116371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077095, 30.705654, 34.709888>,  <36.746078, 31.401676, 34.787189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077095, 30.705654, 34.709888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173725, 30.910608, 34.380257>,  <37.231705, 31.033581, 34.182480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173725, 30.910608, 34.380257>,  <37.077095, 30.705654, 34.709888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173725, 30.910608, 34.380257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942842, -0.324823, 0.074426,
		-0.229545, -0.794953, -0.561568,
		0.241575, 0.512385, -0.824077,
		37.246197, 31.064323, 34.133034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456364, 30.249496, 34.121460>,  <37.077095, 30.705654, 34.709888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456364, 30.249496, 34.121460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561188, 30.635326, 34.133602>,  <37.624084, 30.866823, 34.140888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561188, 30.635326, 34.133602>,  <37.456364, 30.249496, 34.121460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561188, 30.635326, 34.133602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940851, -0.262364, 0.214394,
		0.214763, -0.027624, -0.976275,
		0.262062, 0.964573, 0.030356,
		37.639805, 30.924698, 34.142708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095428, 30.188885, 33.920517>,  <37.456364, 30.249496, 34.121460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095428, 30.188885, 33.920517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098438, 30.565889, 34.054153>,  <38.100243, 30.792091, 34.134335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098438, 30.565889, 34.054153>,  <38.095428, 30.188885, 33.920517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098438, 30.565889, 34.054153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962631, -0.097275, 0.252743,
		0.270712, 0.319702, -0.908023,
		0.007526, 0.942512, 0.334088,
		38.100697, 30.848642, 34.154381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646786, 30.677301, 33.648941>,  <38.095428, 30.188885, 33.920517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646786, 30.677301, 33.648941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530136, 30.810953, 34.007454>,  <38.460148, 30.891144, 34.222561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530136, 30.810953, 34.007454>,  <38.646786, 30.677301, 33.648941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530136, 30.810953, 34.007454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956490, 0.092819, 0.276607,
		0.009230, 0.937947, -0.346657,
		-0.291619, 0.334127, 0.896280,
		38.442650, 30.911192, 34.276337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967541, 31.364408, 33.880001>,  <38.646786, 30.677301, 33.648941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967541, 31.364408, 33.880001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905720, 31.103355, 34.176701>,  <38.868626, 30.946724, 34.354721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905720, 31.103355, 34.176701>,  <38.967541, 31.364408, 33.880001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905720, 31.103355, 34.176701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883018, 0.245512, 0.400004,
		-0.443163, 0.716795, 0.538342,
		-0.154552, -0.652632, 0.741745,
		38.859356, 30.907566, 34.399223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732025, 31.658480, 33.230217>,  <38.967541, 31.364408, 33.880001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732025, 31.658480, 33.230217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734776, 31.757851, 32.842766>,  <38.736427, 31.817472, 32.610294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734776, 31.757851, 32.842766>,  <38.732025, 31.658480, 33.230217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734776, 31.757851, 32.842766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993984, -0.104188, -0.033779,
		-0.109311, 0.963031, 0.246214,
		0.006878, 0.248426, -0.968627,
		38.736839, 31.832378, 32.552177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009651, 31.778690, 33.115166>,  <38.732025, 31.658480, 33.230217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009651, 31.778690, 33.115166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155087, 31.796213, 32.742954>,  <38.242348, 31.806726, 32.519627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155087, 31.796213, 32.742954>,  <38.009651, 31.778690, 33.115166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155087, 31.796213, 32.742954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914143, -0.175479, -0.365445,
		-0.179298, 0.983508, -0.023756,
		0.363586, 0.043807, -0.930530,
		38.264164, 31.809355, 32.463795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634922, 32.236298, 32.743450>,  <38.009651, 31.778690, 33.115166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634922, 32.236298, 32.743450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784435, 31.951229, 32.506001>,  <37.874142, 31.780188, 32.363529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784435, 31.951229, 32.506001>,  <37.634922, 32.236298, 32.743450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784435, 31.951229, 32.506001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900124, -0.124326, -0.417515,
		0.223748, 0.690394, -0.687963,
		0.373782, -0.712670, -0.593623,
		37.896568, 31.737429, 32.327915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166805, 32.281406, 32.032520>,  <37.634922, 32.236298, 32.743450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166805, 32.281406, 32.032520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383595, 31.946838, 31.999868>,  <37.513668, 31.746098, 31.980276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383595, 31.946838, 31.999868>,  <37.166805, 32.281406, 32.032520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383595, 31.946838, 31.999868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693558, -0.390309, -0.605505,
		0.474595, 0.384784, -0.791644,
		0.541975, -0.836421, -0.081631,
		37.546188, 31.695911, 31.975380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324776, 32.086597, 31.243191>,  <37.166805, 32.281406, 32.032520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324776, 32.086597, 31.243191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310329, 31.773520, 31.491732>,  <37.301662, 31.585672, 31.640856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310329, 31.773520, 31.491732>,  <37.324776, 32.086597, 31.243191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310329, 31.773520, 31.491732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746751, -0.392056, -0.537266,
		0.664122, -0.483399, -0.570322,
		-0.036116, -0.782699, 0.621351,
		37.299496, 31.538710, 31.678137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396614, 31.505638, 30.829714>,  <37.324776, 32.086597, 31.243191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396614, 31.505638, 30.829714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192699, 31.414520, 31.161551>,  <37.070351, 31.359850, 31.360653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192699, 31.414520, 31.161551>,  <37.396614, 31.505638, 30.829714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192699, 31.414520, 31.161551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732253, -0.391276, -0.557413,
		0.451576, -0.891634, 0.032664,
		-0.509789, -0.227796, 0.829592,
		37.039764, 31.346182, 31.410429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367798, 30.749681, 30.965916>,  <37.396614, 31.505638, 30.829714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367798, 30.749681, 30.965916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057323, 30.986422, 31.052860>,  <36.871037, 31.128466, 31.105026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057323, 30.986422, 31.052860>,  <37.367798, 30.749681, 30.965916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057323, 30.986422, 31.052860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495491, -0.359403, -0.790771,
		-0.389905, -0.721481, 0.572223,
		-0.776185, 0.591857, 0.217355,
		36.824467, 31.163977, 31.118069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725643, 31.082174, 30.587244>,  <37.367798, 30.749681, 30.965916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725643, 31.082174, 30.587244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776867, 31.281639, 30.244329>,  <36.807602, 31.401318, 30.038582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776867, 31.281639, 30.244329>,  <36.725643, 31.082174, 30.587244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776867, 31.281639, 30.244329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769131, 0.595657, 0.231583,
		0.626129, 0.629707, 0.459816,
		0.128063, 0.498660, -0.857285,
		36.815285, 31.431236, 29.987144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533787, 30.306757, 30.510569>,  <36.725643, 31.082174, 30.587244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533787, 30.306757, 30.510569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158539, 30.295805, 30.648661>,  <35.933392, 30.289234, 30.731516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158539, 30.295805, 30.648661>,  <36.533787, 30.306757, 30.510569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158539, 30.295805, 30.648661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293857, -0.464551, -0.835368,
		0.183250, -0.885123, 0.427758,
		-0.938119, -0.027381, 0.345229,
		35.877102, 30.287590, 30.752230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277225, 29.584421, 30.483932>,  <36.533787, 30.306757, 30.510569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277225, 29.584421, 30.483932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978050, 29.849771, 30.493103>,  <35.798546, 30.008982, 30.498606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978050, 29.849771, 30.493103>,  <36.277225, 29.584421, 30.483932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978050, 29.849771, 30.493103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426729, -0.454097, -0.782111,
		-0.508425, -0.594750, 0.622717,
		-0.747935, 0.663376, 0.022923,
		35.753670, 30.048784, 30.499981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738415, 29.169615, 30.479877>,  <36.277225, 29.584421, 30.483932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738415, 29.169615, 30.479877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721539, 29.528469, 30.303984>,  <35.711414, 29.743782, 30.198448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721539, 29.528469, 30.303984>,  <35.738415, 29.169615, 30.479877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721539, 29.528469, 30.303984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282052, -0.432919, -0.856170,
		-0.958471, 0.087908, 0.271304,
		-0.042189, 0.897136, -0.439735,
		35.708881, 29.797609, 30.172064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059547, 29.190796, 30.201616>,  <35.738415, 29.169615, 30.479877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059547, 29.190796, 30.201616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254986, 29.471882, 29.994747>,  <35.372250, 29.640533, 29.870626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254986, 29.471882, 29.994747>,  <35.059547, 29.190796, 30.201616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254986, 29.471882, 29.994747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478705, -0.279658, -0.832246,
		-0.729461, 0.654206, 0.199751,
		0.488598, 0.702713, -0.517171,
		35.401566, 29.682695, 29.839596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582390, 29.464334, 29.700315>,  <35.059547, 29.190796, 30.201616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582390, 29.464334, 29.700315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930893, 29.575230, 29.538307>,  <35.139996, 29.641766, 29.441101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930893, 29.575230, 29.538307>,  <34.582390, 29.464334, 29.700315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930893, 29.575230, 29.538307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361634, -0.195329, -0.911629,
		-0.331849, 0.940737, -0.069925,
		0.871262, 0.277236, -0.405022,
		35.192272, 29.658400, 29.416801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504158, 30.007030, 29.203243>,  <34.582390, 29.464334, 29.700315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504158, 30.007030, 29.203243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809685, 29.763016, 29.118919>,  <34.993000, 29.616608, 29.068325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809685, 29.763016, 29.118919>,  <34.504158, 30.007030, 29.203243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809685, 29.763016, 29.118919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395664, -0.184503, -0.899672,
		0.509938, 0.770593, -0.382296,
		0.763815, -0.610037, -0.210811,
		35.038830, 29.580004, 29.055676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648849, 30.129284, 28.444162>,  <34.504158, 30.007030, 29.203243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648849, 30.129284, 28.444162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766102, 29.767340, 28.567644>,  <34.836452, 29.550173, 28.641733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766102, 29.767340, 28.567644>,  <34.648849, 30.129284, 28.444162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766102, 29.767340, 28.567644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161996, -0.365229, -0.916714,
		0.942248, 0.218709, -0.253644,
		0.293132, -0.904861, 0.308706,
		34.854042, 29.495882, 28.660255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183613, 29.895803, 28.017918>,  <34.648849, 30.129284, 28.444162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183613, 29.895803, 28.017918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998505, 29.578487, 28.176176>,  <34.887440, 29.388098, 28.271132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998505, 29.578487, 28.176176>,  <35.183613, 29.895803, 28.017918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998505, 29.578487, 28.176176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157589, -0.365587, -0.917339,
		0.872360, -0.486865, 0.044168,
		-0.462768, -0.793290, 0.395648,
		34.859673, 29.340500, 28.294870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407593, 29.252005, 27.697809>,  <35.183613, 29.895803, 28.017918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407593, 29.252005, 27.697809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039856, 29.192572, 27.843536>,  <34.819214, 29.156912, 27.930973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039856, 29.192572, 27.843536>,  <35.407593, 29.252005, 27.697809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039856, 29.192572, 27.843536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326755, -0.227461, -0.917329,
		0.219170, -0.962384, 0.160564,
		-0.919345, -0.148585, 0.364316,
		34.764053, 29.147997, 27.952831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151344, 28.619732, 27.451366>,  <35.407593, 29.252005, 27.697809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151344, 28.619732, 27.451366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804684, 28.808636, 27.515717>,  <34.596687, 28.921978, 27.554327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804684, 28.808636, 27.515717>,  <35.151344, 28.619732, 27.451366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804684, 28.808636, 27.515717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209400, -0.051642, -0.976465,
		-0.452839, -0.879944, 0.143647,
		-0.866653, 0.472262, 0.160875,
		34.544689, 28.950314, 27.563978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794167, 28.209253, 27.183302>,  <35.151344, 28.619732, 27.451366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794167, 28.209253, 27.183302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602493, 28.559958, 27.166943>,  <34.487488, 28.770380, 27.157127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602493, 28.559958, 27.166943>,  <34.794167, 28.209253, 27.183302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602493, 28.559958, 27.166943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078864, -0.003402, -0.996880,
		-0.874164, -0.480916, -0.067515,
		-0.479185, 0.876760, -0.040901,
		34.458736, 28.822985, 27.154673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175007, 28.142262, 26.861376>,  <34.794167, 28.209253, 27.183302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175007, 28.142262, 26.861376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373867, 28.482944, 26.795118>,  <34.493183, 28.687355, 26.755363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373867, 28.482944, 26.795118>,  <34.175007, 28.142262, 26.861376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373867, 28.482944, 26.795118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138901, -0.110321, -0.984142,
		-0.856476, 0.512271, 0.063458,
		0.497147, 0.851709, -0.165643,
		34.523010, 28.738457, 26.745426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718590, 28.667685, 26.519157>,  <34.175007, 28.142262, 26.861376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718590, 28.667685, 26.519157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109169, 28.703793, 26.440763>,  <34.343517, 28.725458, 26.393726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109169, 28.703793, 26.440763>,  <33.718590, 28.667685, 26.519157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109169, 28.703793, 26.440763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178503, -0.172342, -0.968729,
		-0.121224, 0.980892, -0.152169,
		0.976443, 0.090270, -0.195984,
		34.402103, 28.730873, 26.381968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769100, 29.053492, 25.899950>,  <33.718590, 28.667685, 26.519157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769100, 29.053492, 25.899950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119408, 28.861231, 25.917858>,  <34.329594, 28.745874, 25.928604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119408, 28.861231, 25.917858>,  <33.769100, 29.053492, 25.899950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119408, 28.861231, 25.917858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103504, -0.277557, -0.955117,
		0.471504, 0.831827, -0.292825,
		0.875768, -0.480651, 0.044772,
		34.382137, 28.717035, 25.931290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146923, 29.252012, 25.358627>,  <33.769100, 29.053492, 25.899950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146923, 29.252012, 25.358627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346272, 28.921013, 25.462067>,  <34.465881, 28.722414, 25.524130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346272, 28.921013, 25.462067>,  <34.146923, 29.252012, 25.358627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346272, 28.921013, 25.462067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002104, -0.299432, -0.954115,
		0.866959, 0.474964, -0.150971,
		0.498376, -0.827496, 0.258596,
		34.495785, 28.672764, 25.539646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751606, 29.262341, 24.960480>,  <34.146923, 29.252012, 25.358627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751606, 29.262341, 24.960480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664883, 28.888025, 25.071684>,  <34.612846, 28.663435, 25.138407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664883, 28.888025, 25.071684>,  <34.751606, 29.262341, 24.960480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664883, 28.888025, 25.071684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014384, -0.287815, -0.957578,
		0.976108, -0.203615, 0.075862,
		-0.216811, -0.935791, 0.278009,
		34.599838, 28.607288, 25.155087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222469, 28.834839, 24.634012>,  <34.751606, 29.262341, 24.960480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222469, 28.834839, 24.634012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925285, 28.583546, 24.726381>,  <34.746975, 28.432770, 24.781803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925285, 28.583546, 24.726381>,  <35.222469, 28.834839, 24.634012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925285, 28.583546, 24.726381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164131, -0.505471, -0.847090,
		0.648895, -0.591456, 0.478659,
		-0.742964, -0.628235, 0.230921,
		34.702396, 28.395075, 24.795658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441624, 28.231321, 24.563562>,  <35.222469, 28.834839, 24.634012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441624, 28.231321, 24.563562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044960, 28.191822, 24.530426>,  <34.806961, 28.168123, 24.510544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044960, 28.191822, 24.530426>,  <35.441624, 28.231321, 24.563562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044960, 28.191822, 24.530426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112436, -0.348469, -0.930552,
		0.063025, -0.932104, 0.356665,
		-0.991658, -0.098750, -0.082840,
		34.747463, 28.162197, 24.505573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354282, 27.594238, 24.212811>,  <35.441624, 28.231321, 24.563562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354282, 27.594238, 24.212811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992416, 27.761053, 24.177778>,  <34.775299, 27.861141, 24.156759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992416, 27.761053, 24.177778>,  <35.354282, 27.594238, 24.212811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992416, 27.761053, 24.177778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098071, -0.403763, -0.909592,
		-0.414712, -0.814275, 0.406166,
		-0.904652, 0.417051, -0.087589,
		34.721020, 27.886164, 24.151505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971420, 27.100657, 23.923010>,  <35.354282, 27.594238, 24.212811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971420, 27.100657, 23.923010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753426, 27.429396, 23.856606>,  <34.622627, 27.626638, 23.816763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753426, 27.429396, 23.856606>,  <34.971420, 27.100657, 23.923010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753426, 27.429396, 23.856606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251711, -0.349236, -0.902594,
		-0.799770, -0.450114, 0.397197,
		-0.544985, 0.821846, -0.166010,
		34.589931, 27.675949, 23.806803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341782, 26.922831, 23.617645>,  <34.971420, 27.100657, 23.923010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341782, 26.922831, 23.617645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394924, 27.300852, 23.498161>,  <34.426811, 27.527664, 23.426472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394924, 27.300852, 23.498161>,  <34.341782, 26.922831, 23.617645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394924, 27.300852, 23.498161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305680, -0.247618, -0.919372,
		-0.942819, 0.213455, 0.255985,
		0.132858, 0.945051, -0.298708,
		34.434780, 27.584368, 23.408548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782516, 27.021217, 23.094536>,  <34.341782, 26.922831, 23.617645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782516, 27.021217, 23.094536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038525, 27.326637, 23.060207>,  <34.192131, 27.509890, 23.039610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038525, 27.326637, 23.060207>,  <33.782516, 27.021217, 23.094536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038525, 27.326637, 23.060207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125454, -0.006350, -0.992079,
		-0.758047, 0.645718, 0.091727,
		0.640021, 0.763549, -0.085822,
		34.230530, 27.555702, 23.034460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407860, 27.402723, 22.581913>,  <33.782516, 27.021217, 23.094536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407860, 27.402723, 22.581913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769711, 27.572830, 22.593227>,  <33.986820, 27.674894, 22.600016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769711, 27.572830, 22.593227>,  <33.407860, 27.402723, 22.581913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769711, 27.572830, 22.593227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103521, 0.283623, -0.953332,
		-0.413443, 0.859481, 0.300596,
		0.904626, 0.425266, 0.028288,
		34.041100, 27.700411, 22.601713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214352, 28.002409, 22.325823>,  <33.407860, 27.402723, 22.581913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214352, 28.002409, 22.325823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604996, 27.944796, 22.261953>,  <33.839382, 27.910229, 22.223631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604996, 27.944796, 22.261953>,  <33.214352, 28.002409, 22.325823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604996, 27.944796, 22.261953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115465, 0.275175, -0.954435,
		0.181408, 0.950544, 0.252106,
		0.976606, -0.144033, -0.159673,
		33.897976, 27.901587, 22.214052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560860, 28.628916, 21.949867>,  <33.214352, 28.002409, 22.325823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560860, 28.628916, 21.949867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770729, 28.294607, 21.885124>,  <33.896652, 28.094021, 21.846279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770729, 28.294607, 21.885124>,  <33.560860, 28.628916, 21.949867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770729, 28.294607, 21.885124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008042, 0.194986, -0.980773,
		0.851263, 0.513288, 0.109026,
		0.524678, -0.835773, -0.161856,
		33.928131, 28.043875, 21.836567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037495, 28.877047, 21.606489>,  <33.560860, 28.628916, 21.949867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037495, 28.877047, 21.606489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036396, 28.487492, 21.515684>,  <34.035736, 28.253757, 21.461201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036396, 28.487492, 21.515684>,  <34.037495, 28.877047, 21.606489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036396, 28.487492, 21.515684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086346, 0.225933, -0.970309,
		0.996261, -0.022265, 0.083472,
		-0.002745, -0.973888, -0.227011,
		34.035572, 28.195326, 21.447580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466732, 28.887978, 21.079117>,  <34.037495, 28.877047, 21.606489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466732, 28.887978, 21.079117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290474, 28.531246, 21.038177>,  <34.184719, 28.317207, 21.013615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290474, 28.531246, 21.038177>,  <34.466732, 28.887978, 21.079117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290474, 28.531246, 21.038177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032039, 0.098315, -0.994640,
		0.897108, -0.441564, -0.014749,
		-0.440647, -0.891827, -0.102346,
		34.158279, 28.263699, 21.007473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851143, 28.481989, 20.576693>,  <34.466732, 28.887978, 21.079117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851143, 28.481989, 20.576693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473167, 28.351919, 20.591400>,  <34.246384, 28.273878, 20.600224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473167, 28.351919, 20.591400>,  <34.851143, 28.481989, 20.576693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473167, 28.351919, 20.591400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117097, 0.231069, -0.965865,
		0.305579, -0.916989, -0.256423,
		-0.944939, -0.325174, 0.036767,
		34.189686, 28.254368, 20.602430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776516, 28.118811, 19.898161>,  <34.851143, 28.481989, 20.576693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776516, 28.118811, 19.898161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399925, 28.165932, 20.024485>,  <34.173969, 28.194204, 20.100279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399925, 28.165932, 20.024485>,  <34.776516, 28.118811, 19.898161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399925, 28.165932, 20.024485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288874, 0.200770, -0.936079,
		-0.173679, -0.972530, -0.154990,
		-0.941482, 0.117805, 0.315808,
		34.117481, 28.201273, 20.119226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398674, 27.971645, 19.294945>,  <34.776516, 28.118811, 19.898161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398674, 27.971645, 19.294945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116791, 28.141764, 19.522102>,  <33.947659, 28.243835, 19.658396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116791, 28.141764, 19.522102>,  <34.398674, 27.971645, 19.294945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116791, 28.141764, 19.522102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538632, 0.200277, -0.818391,
		-0.461796, -0.882616, 0.087942,
		-0.704712, 0.425299, 0.567892,
		33.905376, 28.269354, 19.692471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749187, 27.577785, 19.284483>,  <34.398674, 27.971645, 19.294945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749187, 27.577785, 19.284483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652401, 27.950378, 19.393141>,  <33.594330, 28.173935, 19.458336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652401, 27.950378, 19.393141>,  <33.749187, 27.577785, 19.284483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652401, 27.950378, 19.393141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493869, 0.122748, -0.860829,
		-0.835192, -0.342449, 0.430329,
		-0.241968, 0.931484, 0.271643,
		33.579811, 28.229824, 19.474634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984238, 27.676613, 19.183781>,  <33.749187, 27.577785, 19.284483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984238, 27.676613, 19.183781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185818, 28.021626, 19.165583>,  <33.306767, 28.228634, 19.154663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185818, 28.021626, 19.165583>,  <32.984238, 27.676613, 19.183781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185818, 28.021626, 19.165583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488005, 0.240877, -0.838946,
		-0.712658, 0.444992, 0.542310,
		0.503955, 0.862531, -0.045495,
		33.337006, 28.280384, 19.151934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478470, 28.029766, 18.962427>,  <32.984238, 27.676613, 19.183781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478470, 28.029766, 18.962427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787170, 28.279026, 18.911688>,  <32.972389, 28.428581, 18.881245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787170, 28.279026, 18.911688>,  <32.478470, 28.029766, 18.962427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787170, 28.279026, 18.911688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336055, 0.230291, -0.913254,
		-0.539881, 0.747430, 0.387139,
		0.771748, 0.623148, -0.126847,
		33.018696, 28.465971, 18.873634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157207, 28.604469, 18.628168>,  <32.478470, 28.029766, 18.962427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157207, 28.604469, 18.628168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545109, 28.659540, 18.547544>,  <32.777847, 28.692583, 18.499170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545109, 28.659540, 18.547544>,  <32.157207, 28.604469, 18.628168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545109, 28.659540, 18.547544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222184, 0.155946, -0.962453,
		-0.101077, 0.978123, 0.181819,
		0.969751, 0.137679, -0.201561,
		32.836033, 28.700844, 18.487076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170639, 29.107210, 18.255089>,  <32.157207, 28.604469, 18.628168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170639, 29.107210, 18.255089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521370, 28.941744, 18.157064>,  <32.731808, 28.842464, 18.098249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521370, 28.941744, 18.157064>,  <32.170639, 29.107210, 18.255089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521370, 28.941744, 18.157064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168691, 0.212610, -0.962466,
		0.450240, 0.885256, 0.116641,
		0.876828, -0.413665, -0.245061,
		32.784420, 28.817644, 18.083546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571499, 29.662464, 17.784012>,  <32.170639, 29.107210, 18.255089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571499, 29.662464, 17.784012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751572, 29.312208, 17.714048>,  <32.859615, 29.102055, 17.672071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751572, 29.312208, 17.714048>,  <32.571499, 29.662464, 17.784012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751572, 29.312208, 17.714048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055032, 0.168299, -0.984198,
		0.891242, 0.452689, 0.027576,
		0.450177, -0.875641, -0.174908,
		32.886623, 29.049517, 17.661575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105198, 29.802771, 17.414227>,  <32.571499, 29.662464, 17.784012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105198, 29.802771, 17.414227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046398, 29.415888, 17.331375>,  <33.011120, 29.183758, 17.281664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046398, 29.415888, 17.331375>,  <33.105198, 29.802771, 17.414227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046398, 29.415888, 17.331375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128363, 0.188977, -0.973556,
		0.980773, -0.169695, 0.096375,
		-0.146995, -0.967208, -0.207126,
		33.002300, 29.125725, 17.269238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596088, 29.736032, 17.046583>,  <33.105198, 29.802771, 17.414227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596088, 29.736032, 17.046583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357819, 29.432318, 16.941776>,  <33.214855, 29.250090, 16.878891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357819, 29.432318, 16.941776>,  <33.596088, 29.736032, 17.046583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357819, 29.432318, 16.941776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185608, 0.187261, -0.964616,
		0.781484, -0.623233, 0.029382,
		-0.595679, -0.759285, -0.262018,
		33.179115, 29.204533, 16.863171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912796, 29.431219, 16.514893>,  <33.596088, 29.736032, 17.046583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912796, 29.431219, 16.514893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535412, 29.304546, 16.475700>,  <33.308983, 29.228542, 16.452185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535412, 29.304546, 16.475700>,  <33.912796, 29.431219, 16.514893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535412, 29.304546, 16.475700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050697, 0.154257, -0.986729,
		0.327596, -0.935904, -0.129480,
		-0.943457, -0.316684, -0.097982,
		33.252377, 29.209541, 16.446306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964344, 29.176805, 15.864154>,  <33.912796, 29.431219, 16.514893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964344, 29.176805, 15.864154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576828, 29.232069, 15.946483>,  <33.344318, 29.265226, 15.995880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576828, 29.232069, 15.946483>,  <33.964344, 29.176805, 15.864154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576828, 29.232069, 15.946483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129095, 0.427634, -0.894686,
		-0.211625, -0.893332, -0.396451,
		-0.968788, 0.138158, 0.205823,
		33.286190, 29.273516, 16.008230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542133, 28.890463, 15.393261>,  <33.964344, 29.176805, 15.864154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542133, 28.890463, 15.393261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300102, 29.179768, 15.526392>,  <33.154884, 29.353352, 15.606271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300102, 29.179768, 15.526392>,  <33.542133, 28.890463, 15.393261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300102, 29.179768, 15.526392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028399, 0.437377, -0.898830,
		-0.795661, -0.534409, -0.285186,
		-0.605076, 0.723263, 0.332827,
		33.118580, 29.396746, 15.626240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014511, 28.942175, 14.888268>,  <33.542133, 28.890463, 15.393261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014511, 28.942175, 14.888268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969120, 29.279249, 15.098794>,  <32.941887, 29.481493, 15.225109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969120, 29.279249, 15.098794>,  <33.014511, 28.942175, 14.888268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969120, 29.279249, 15.098794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112374, 0.537221, -0.835922,
		-0.987165, -0.035712, -0.155656,
		-0.113474, 0.842685, 0.526313,
		32.935078, 29.532055, 15.256688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508240, 29.252390, 14.491027>,  <33.014511, 28.942175, 14.888268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508240, 29.252390, 14.491027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695660, 29.545023, 14.689116>,  <32.808113, 29.720604, 14.807970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695660, 29.545023, 14.689116>,  <32.508240, 29.252390, 14.491027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695660, 29.545023, 14.689116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096391, 0.514882, -0.851825,
		-0.878163, 0.446857, 0.170729,
		0.468549, 0.731584, 0.495223,
		32.836224, 29.764498, 14.837684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350380, 29.759781, 13.996909>,  <32.508240, 29.252390, 14.491027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350380, 29.759781, 13.996909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623524, 29.909945, 14.247594>,  <32.787411, 30.000042, 14.398005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623524, 29.909945, 14.247594>,  <32.350380, 29.759781, 13.996909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623524, 29.909945, 14.247594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421911, 0.497679, -0.757830,
		-0.596398, 0.781910, 0.181457,
		0.682862, 0.375410, 0.626711,
		32.828381, 30.022568, 14.435607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247238, 30.511221, 13.996929>,  <32.350380, 29.759781, 13.996909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247238, 30.511221, 13.996929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626629, 30.423391, 14.088291>,  <32.854263, 30.370693, 14.143108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626629, 30.423391, 14.088291>,  <32.247238, 30.511221, 13.996929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626629, 30.423391, 14.088291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313593, 0.547785, -0.775623,
		0.045191, 0.807291, 0.588422,
		0.948482, -0.219576, 0.228406,
		32.911175, 30.357519, 14.156813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632603, 31.165218, 13.958351>,  <32.247238, 30.511221, 13.996929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632603, 31.165218, 13.958351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921112, 30.888767, 13.940006>,  <33.094219, 30.722897, 13.928999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921112, 30.888767, 13.940006>,  <32.632603, 31.165218, 13.958351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921112, 30.888767, 13.940006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429463, 0.498180, -0.753245,
		0.543437, 0.523600, 0.656139,
		0.721275, -0.691129, -0.045863,
		33.137493, 30.681429, 13.926248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261219, 31.579288, 13.922423>,  <32.632603, 31.165218, 13.958351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261219, 31.579288, 13.922423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346016, 31.219587, 13.769372>,  <33.396896, 31.003767, 13.677541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346016, 31.219587, 13.769372>,  <33.261219, 31.579288, 13.922423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346016, 31.219587, 13.769372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429159, 0.437420, -0.790244,
		0.877998, 0.003320, 0.478653,
		0.211996, -0.899251, -0.382629,
		33.409615, 30.949812, 13.654583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027763, 31.589382, 13.701089>,  <33.261219, 31.579288, 13.922423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027763, 31.589382, 13.701089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821636, 31.307327, 13.506266>,  <33.697960, 31.138094, 13.389372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821636, 31.307327, 13.506266>,  <34.027763, 31.589382, 13.701089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821636, 31.307327, 13.506266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404096, 0.301254, -0.863686,
		0.755745, -0.641894, 0.129700,
		-0.515322, -0.705137, -0.487057,
		33.667038, 31.095787, 13.360148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503201, 31.163837, 13.343103>,  <34.027763, 31.589382, 13.701089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503201, 31.163837, 13.343103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155876, 31.137682, 13.146427>,  <33.947483, 31.121988, 13.028421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155876, 31.137682, 13.146427>,  <34.503201, 31.163837, 13.343103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155876, 31.137682, 13.146427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457063, 0.279603, -0.844343,
		0.192688, -0.957887, -0.212896,
		-0.868312, -0.065388, -0.491691,
		33.895382, 31.118067, 12.998920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674191, 31.050806, 12.679566>,  <34.503201, 31.163837, 13.343103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674191, 31.050806, 12.679566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287552, 31.138369, 12.626249>,  <34.055569, 31.190907, 12.594259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287552, 31.138369, 12.626249>,  <34.674191, 31.050806, 12.679566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287552, 31.138369, 12.626249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176969, 0.193862, -0.964935,
		-0.185393, -0.956293, -0.226127,
		-0.966598, 0.218909, -0.133293,
		33.997574, 31.204041, 12.586262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419559, 30.699413, 11.988400>,  <34.674191, 31.050806, 12.679566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419559, 30.699413, 11.988400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182983, 31.008270, 12.081342>,  <34.041039, 31.193584, 12.137107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182983, 31.008270, 12.081342>,  <34.419559, 30.699413, 11.988400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182983, 31.008270, 12.081342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115923, 0.203744, -0.972137,
		-0.797971, -0.601898, -0.030994,
		-0.591442, 0.772144, 0.232356,
		34.005550, 31.239914, 12.151049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963390, 30.670708, 11.484846>,  <34.419559, 30.699413, 11.988400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963390, 30.670708, 11.484846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904362, 31.023581, 11.663724>,  <33.868946, 31.235304, 11.771050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904362, 31.023581, 11.663724>,  <33.963390, 30.670708, 11.484846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904362, 31.023581, 11.663724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105757, 0.435478, -0.893966,
		-0.983381, -0.179215, 0.029035,
		-0.147568, 0.882180, 0.447194,
		33.860092, 31.288235, 11.797882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478901, 30.890665, 11.093778>,  <33.963390, 30.670708, 11.484846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478901, 30.890665, 11.093778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649845, 31.210772, 11.262032>,  <33.752411, 31.402836, 11.362984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649845, 31.210772, 11.262032>,  <33.478901, 30.890665, 11.093778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649845, 31.210772, 11.262032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052005, 0.486253, -0.872269,
		-0.902584, 0.350899, 0.249423,
		0.427361, 0.800267, 0.420635,
		33.778053, 31.450851, 11.388222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097740, 31.523306, 10.826728>,  <33.478901, 30.890665, 11.093778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097740, 31.523306, 10.826728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442131, 31.645164, 10.989656>,  <33.648766, 31.718281, 11.087414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442131, 31.645164, 10.989656>,  <33.097740, 31.523306, 10.826728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442131, 31.645164, 10.989656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120483, 0.655858, -0.745207,
		-0.494171, 0.690681, 0.527973,
		0.860976, 0.304648, 0.407321,
		33.700424, 31.736559, 11.111853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103119, 32.325020, 10.986086>,  <33.097740, 31.523306, 10.826728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103119, 32.325020, 10.986086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433201, 32.141361, 10.854501>,  <33.631252, 32.031166, 10.775550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433201, 32.141361, 10.854501>,  <33.103119, 32.325020, 10.986086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433201, 32.141361, 10.854501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017797, 0.560988, -0.827633,
		0.564547, 0.688825, 0.454761,
		0.825209, -0.459144, -0.328963,
		33.680763, 32.003616, 10.755812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318462, 33.087173, 11.225087>,  <33.103119, 32.325020, 10.986086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318462, 33.087173, 11.225087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987778, 33.296562, 11.142597>,  <32.789368, 33.422195, 11.093103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987778, 33.296562, 11.142597>,  <33.318462, 33.087173, 11.225087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987778, 33.296562, 11.142597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347387, -0.186584, 0.918971,
		0.442581, 0.831360, 0.336099,
		-0.826707, 0.523475, -0.206225,
		32.739765, 33.453606, 11.080729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760735, 33.652100, 11.533042>,  <33.318462, 33.087173, 11.225087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760735, 33.652100, 11.533042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024944, 33.936626, 11.629153>,  <34.183472, 34.107342, 11.686820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024944, 33.936626, 11.629153>,  <33.760735, 33.652100, 11.533042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024944, 33.936626, 11.629153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062696, 0.266655, -0.961751,
		-0.748179, 0.650328, 0.131537,
		0.660528, 0.711315, 0.240279,
		34.223103, 34.150021, 11.701237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650059, 34.251846, 11.130617>,  <33.760735, 33.652100, 11.533042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650059, 34.251846, 11.130617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030613, 34.269054, 11.252613>,  <34.258945, 34.279377, 11.325810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030613, 34.269054, 11.252613>,  <33.650059, 34.251846, 11.130617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030613, 34.269054, 11.252613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294968, 0.157845, -0.942379,
		-0.088679, 0.986526, 0.137483,
		0.951383, 0.043017, 0.304991,
		34.316029, 34.281960, 11.344110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309872, 34.267155, 10.540227>,  <33.650059, 34.251846, 11.130617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309872, 34.267155, 10.540227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570446, 34.566025, 10.487524>,  <33.726791, 34.745346, 10.455902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570446, 34.566025, 10.487524>,  <33.309872, 34.267155, 10.540227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570446, 34.566025, 10.487524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461909, -0.252808, 0.850134,
		0.601893, -0.614665, -0.509815,
		0.651433, 0.747178, -0.131757,
		33.765877, 34.790176, 10.447997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077030, 34.011410, 10.555053>,  <33.309872, 34.267155, 10.540227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077030, 34.011410, 10.555053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025990, 34.396290, 10.651289>,  <33.995365, 34.627220, 10.709031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025990, 34.396290, 10.651289>,  <34.077030, 34.011410, 10.555053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025990, 34.396290, 10.651289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356880, -0.181785, 0.916292,
		0.925395, 0.202781, -0.320195,
		-0.127600, 0.962203, 0.240591,
		33.987709, 34.684952, 10.723466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772053, 34.315014, 10.761300>,  <34.077030, 34.011410, 10.555053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772053, 34.315014, 10.761300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465389, 34.528965, 10.903365>,  <34.281391, 34.657333, 10.988604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465389, 34.528965, 10.903365>,  <34.772053, 34.315014, 10.761300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465389, 34.528965, 10.903365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361029, -0.098296, 0.927360,
		0.530932, 0.839194, -0.117745,
		-0.766661, 0.534874, 0.355162,
		34.235390, 34.689426, 11.009913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076836, 34.766487, 11.275014>,  <34.772053, 34.315014, 10.761300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076836, 34.766487, 11.275014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690685, 34.720211, 11.368536>,  <34.458996, 34.692444, 11.424649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690685, 34.720211, 11.368536>,  <35.076836, 34.766487, 11.275014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690685, 34.720211, 11.368536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246242, -0.108309, 0.963138,
		-0.086101, 0.987363, 0.133046,
		-0.965376, -0.115689, 0.233805,
		34.401073, 34.685505, 11.438678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933727, 35.199245, 11.726517>,  <35.076836, 34.766487, 11.275014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933727, 35.199245, 11.726517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690697, 34.883812, 11.764444>,  <34.544876, 34.694553, 11.787201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690697, 34.883812, 11.764444>,  <34.933727, 35.199245, 11.726517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690697, 34.883812, 11.764444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243384, -0.071209, 0.967313,
		-0.756051, 0.610797, 0.235192,
		-0.607579, -0.788579, 0.094820,
		34.508423, 34.647240, 11.792891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498512, 35.323406, 12.246769>,  <34.933727, 35.199245, 11.726517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498512, 35.323406, 12.246769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466679, 34.924927, 12.232644>,  <34.447578, 34.685837, 12.224169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466679, 34.924927, 12.232644>,  <34.498512, 35.323406, 12.246769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466679, 34.924927, 12.232644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092759, -0.042672, 0.994774,
		-0.992503, 0.075894, 0.095803,
		-0.079585, -0.996203, -0.035312,
		34.442802, 34.626064, 12.222051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292778, 35.233906, 12.792051>,  <34.498512, 35.323406, 12.246769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292778, 35.233906, 12.792051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369347, 34.850590, 12.707154>,  <34.415287, 34.620602, 12.656217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369347, 34.850590, 12.707154>,  <34.292778, 35.233906, 12.792051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369347, 34.850590, 12.707154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199571, -0.249723, 0.947528,
		-0.961005, -0.139017, -0.239047,
		0.191418, -0.958286, -0.212241,
		34.426773, 34.563103, 12.643482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857147, 34.794319, 13.236333>,  <34.292778, 35.233906, 12.792051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857147, 34.794319, 13.236333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145817, 34.538597, 13.130145>,  <34.319019, 34.385166, 13.066432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145817, 34.538597, 13.130145>,  <33.857147, 34.794319, 13.236333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145817, 34.538597, 13.130145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054968, -0.329365, 0.942601,
		-0.690043, -0.694847, -0.202554,
		0.721678, -0.639301, -0.265470,
		34.362320, 34.346806, 13.050504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720627, 34.248169, 13.586323>,  <33.857147, 34.794319, 13.236333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720627, 34.248169, 13.586323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112724, 34.218452, 13.512994>,  <34.347980, 34.200623, 13.468996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112724, 34.218452, 13.512994>,  <33.720627, 34.248169, 13.586323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112724, 34.218452, 13.512994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160744, -0.240908, 0.957144,
		-0.115273, -0.967700, -0.224205,
		0.980242, -0.074293, -0.183323,
		34.406796, 34.196163, 13.457997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953259, 33.643383, 13.782775>,  <33.720627, 34.248169, 13.586323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953259, 33.643383, 13.782775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300159, 33.841328, 13.760930>,  <34.508301, 33.960094, 13.747823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300159, 33.841328, 13.760930>,  <33.953259, 33.643383, 13.782775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300159, 33.841328, 13.760930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242290, -0.323685, 0.914616,
		0.434928, -0.806439, -0.400617,
		0.867256, 0.494858, -0.054613,
		34.560337, 33.989784, 13.744546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453583, 33.163513, 13.951223>,  <33.953259, 33.643383, 13.782775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453583, 33.163513, 13.951223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712269, 33.467480, 13.977410>,  <34.867481, 33.649860, 13.993123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712269, 33.467480, 13.977410>,  <34.453583, 33.163513, 13.951223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712269, 33.467480, 13.977410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474831, -0.468294, 0.745142,
		0.596903, -0.450809, -0.663685,
		0.646717, 0.759916, 0.065468,
		34.906284, 33.695454, 13.997050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080498, 32.856895, 13.902002>,  <34.453583, 33.163513, 13.951223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080498, 32.856895, 13.902002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102375, 33.212971, 14.082919>,  <35.115501, 33.426617, 14.191469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102375, 33.212971, 14.082919>,  <35.080498, 32.856895, 13.902002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102375, 33.212971, 14.082919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485380, -0.419552, 0.767061,
		0.872591, 0.177583, -0.455027,
		0.054690, 0.890191, 0.452292,
		35.118782, 33.480026, 14.218607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758640, 32.845570, 14.163941>,  <35.080498, 32.856895, 13.902002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758640, 32.845570, 14.163941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577381, 33.124821, 14.385672>,  <35.468624, 33.292370, 14.518710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577381, 33.124821, 14.385672>,  <35.758640, 32.845570, 14.163941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577381, 33.124821, 14.385672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351295, -0.431663, 0.830818,
		0.819297, 0.571216, -0.049640,
		-0.453149, 0.698125, 0.554326,
		35.441437, 33.334259, 14.551970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227772, 33.118179, 14.796823>,  <35.758640, 32.845570, 14.163941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227772, 33.118179, 14.796823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850433, 33.201653, 14.900019>,  <35.624031, 33.251736, 14.961936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850433, 33.201653, 14.900019>,  <36.227772, 33.118179, 14.796823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850433, 33.201653, 14.900019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138072, -0.460133, 0.877048,
		0.301732, 0.862978, 0.405250,
		-0.943342, 0.208680, 0.257990,
		35.567432, 33.264256, 14.977416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266560, 33.411678, 15.456308>,  <36.227772, 33.118179, 14.796823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266560, 33.411678, 15.456308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876591, 33.324055, 15.440598>,  <35.642609, 33.271481, 15.431170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876591, 33.324055, 15.440598>,  <36.266560, 33.411678, 15.456308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876591, 33.324055, 15.440598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012371, -0.229562, 0.973215,
		-0.222204, 0.948323, 0.226515,
		-0.974922, -0.219055, -0.039278,
		35.584114, 33.258339, 15.428814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073761, 33.584137, 16.155411>,  <36.266560, 33.411678, 15.456308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073761, 33.584137, 16.155411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794441, 33.340004, 16.005814>,  <35.626850, 33.193523, 15.916055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794441, 33.340004, 16.005814>,  <36.073761, 33.584137, 16.155411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794441, 33.340004, 16.005814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012331, -0.532657, 0.846241,
		-0.715702, 0.586315, 0.379479,
		-0.698296, -0.610336, -0.373994,
		35.584953, 33.156902, 15.893616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542946, 33.636673, 16.688940>,  <36.073761, 33.584137, 16.155411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542946, 33.636673, 16.688940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528503, 33.302666, 16.469324>,  <35.519836, 33.102261, 16.337555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528503, 33.302666, 16.469324>,  <35.542946, 33.636673, 16.688940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528503, 33.302666, 16.469324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037398, -0.550143, 0.834233,
		-0.998648, 0.009589, 0.051092,
		-0.036107, -0.835015, -0.549040,
		35.517670, 33.052162, 16.304611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997780, 33.295082, 16.934141>,  <35.542946, 33.636673, 16.688940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997780, 33.295082, 16.934141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229424, 33.008331, 16.778852>,  <35.368412, 32.836281, 16.685678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229424, 33.008331, 16.778852>,  <34.997780, 33.295082, 16.934141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229424, 33.008331, 16.778852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084167, -0.421085, 0.903108,
		-0.810892, -0.555675, -0.183518,
		0.579111, -0.716877, -0.388224,
		35.403156, 32.793270, 16.662386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922150, 32.742599, 17.360424>,  <34.997780, 33.295082, 16.934141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922150, 32.742599, 17.360424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195816, 32.570499, 17.124865>,  <35.360016, 32.467239, 16.983530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195816, 32.570499, 17.124865>,  <34.922150, 32.742599, 17.360424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195816, 32.570499, 17.124865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114906, -0.733782, 0.669597,
		-0.720207, -0.525791, -0.452600,
		0.684177, -0.430241, -0.588891,
		35.401066, 32.441425, 16.948196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741051, 32.042480, 17.344528>,  <34.922150, 32.742599, 17.360424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741051, 32.042480, 17.344528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129856, 32.101707, 17.271568>,  <35.363140, 32.137245, 17.227793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129856, 32.101707, 17.271568>,  <34.741051, 32.042480, 17.344528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129856, 32.101707, 17.271568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233088, -0.510679, 0.827573,
		0.029390, -0.846925, -0.530898,
		0.972011, 0.148069, -0.182399,
		35.421459, 32.146130, 17.216848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001316, 31.414265, 17.387119>,  <34.741051, 32.042480, 17.344528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001316, 31.414265, 17.387119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329819, 31.636993, 17.436897>,  <35.526920, 31.770632, 17.466764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329819, 31.636993, 17.436897>,  <35.001316, 31.414265, 17.387119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329819, 31.636993, 17.436897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136922, -0.404075, 0.904420,
		0.553887, -0.725721, -0.408091,
		0.821256, 0.556823, 0.124445,
		35.576195, 31.804041, 17.474232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598660, 30.934269, 17.543442>,  <35.001316, 31.414265, 17.387119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598660, 30.934269, 17.543442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667706, 31.302294, 17.684120>,  <35.709133, 31.523109, 17.768526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667706, 31.302294, 17.684120>,  <35.598660, 30.934269, 17.543442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667706, 31.302294, 17.684120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155632, -0.378045, 0.912612,
		0.972616, -0.102795, -0.208448,
		0.172615, 0.920063, 0.351694,
		35.719490, 31.578312, 17.789629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063839, 30.785980, 18.011173>,  <35.598660, 30.934269, 17.543442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063839, 30.785980, 18.011173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918804, 31.145651, 18.109161>,  <35.831783, 31.361454, 18.167955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918804, 31.145651, 18.109161>,  <36.063839, 30.785980, 18.011173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918804, 31.145651, 18.109161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218824, -0.173368, 0.960239,
		0.905895, 0.401777, -0.133900,
		-0.362588, 0.899177, 0.244972,
		35.810028, 31.415403, 18.182653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397419, 30.957245, 18.599257>,  <36.063839, 30.785980, 18.011173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397419, 30.957245, 18.599257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115864, 31.240993, 18.613861>,  <35.946930, 31.411243, 18.622623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115864, 31.240993, 18.613861>,  <36.397419, 30.957245, 18.599257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115864, 31.240993, 18.613861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002973, -0.048461, 0.998821,
		0.710305, 0.703166, 0.032002,
		-0.703888, 0.709372, 0.036512,
		35.904697, 31.453806, 18.624815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648640, 31.497681, 19.120468>,  <36.397419, 30.957245, 18.599257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648640, 31.497681, 19.120468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254898, 31.491041, 19.050308>,  <36.018654, 31.487057, 19.008213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254898, 31.491041, 19.050308>,  <36.648640, 31.497681, 19.120468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254898, 31.491041, 19.050308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175276, -0.008698, 0.984481,
		-0.017866, 0.999824, 0.005653,
		-0.984357, -0.016598, -0.175400,
		35.959591, 31.486061, 18.997688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664410, 31.708086, 19.688965>,  <36.648640, 31.497681, 19.120468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664410, 31.708086, 19.688965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291988, 31.602823, 19.587856>,  <36.068535, 31.539665, 19.527191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291988, 31.602823, 19.587856>,  <36.664410, 31.708086, 19.688965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291988, 31.602823, 19.587856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238840, -0.084210, 0.967401,
		-0.275862, 0.961071, 0.015552,
		-0.931051, -0.263155, -0.252773,
		36.012672, 31.523876, 19.512024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124207, 32.184753, 20.022776>,  <36.664410, 31.708086, 19.688965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124207, 32.184753, 20.022776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951439, 31.832649, 19.944202>,  <35.847778, 31.621387, 19.897058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951439, 31.832649, 19.944202>,  <36.124207, 32.184753, 20.022776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951439, 31.832649, 19.944202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280050, -0.076138, 0.956962,
		-0.857331, 0.468343, -0.213631,
		-0.431921, -0.880260, -0.196435,
		35.821861, 31.568571, 19.885271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411133, 32.261490, 20.116610>,  <36.124207, 32.184753, 20.022776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411133, 32.261490, 20.116610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529133, 31.884066, 20.176834>,  <35.599934, 31.657612, 20.212969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529133, 31.884066, 20.176834>,  <35.411133, 32.261490, 20.116610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529133, 31.884066, 20.176834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345103, 0.041721, 0.937637,
		-0.890998, -0.328564, -0.313317,
		0.295002, -0.943560, 0.150561,
		35.617634, 31.600998, 20.222002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940933, 31.977184, 20.514130>,  <35.411133, 32.261490, 20.116610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940933, 31.977184, 20.514130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226608, 31.700033, 20.553841>,  <35.398014, 31.533743, 20.577667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226608, 31.700033, 20.553841>,  <34.940933, 31.977184, 20.514130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226608, 31.700033, 20.553841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215438, -0.082649, 0.973014,
		-0.665977, -0.716300, -0.208299,
		0.714186, -0.692880, 0.099276,
		35.440865, 31.492168, 20.583624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656071, 31.413559, 20.863216>,  <34.940933, 31.977184, 20.514130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656071, 31.413559, 20.863216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049244, 31.370451, 20.922842>,  <35.285149, 31.344587, 20.958618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049244, 31.370451, 20.922842>,  <34.656071, 31.413559, 20.863216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049244, 31.370451, 20.922842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148911, 0.009524, 0.988805,
		-0.107981, -0.994130, -0.006686,
		0.982937, -0.107768, 0.149065,
		35.344124, 31.338121, 20.967562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678444, 31.029881, 21.477642>,  <34.656071, 31.413559, 20.863216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678444, 31.029881, 21.477642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047695, 31.178791, 21.439175>,  <35.269245, 31.268137, 21.416094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047695, 31.178791, 21.439175>,  <34.678444, 31.029881, 21.477642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047695, 31.178791, 21.439175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075118, 0.070679, 0.994667,
		0.377089, -0.925427, 0.037281,
		0.923126, 0.372277, -0.096169,
		35.324635, 31.290474, 21.410324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988697, 30.512840, 21.775078>,  <34.678444, 31.029881, 21.477642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988697, 30.512840, 21.775078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246872, 30.818008, 21.760288>,  <35.401775, 31.001110, 21.751415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246872, 30.818008, 21.760288>,  <34.988697, 30.512840, 21.775078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246872, 30.818008, 21.760288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114845, -0.049075, 0.992171,
		0.755133, -0.644627, -0.119292,
		0.645434, 0.762921, -0.036974,
		35.440502, 31.046885, 21.749195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630371, 30.316784, 22.126581>,  <34.988697, 30.512840, 21.775078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630371, 30.316784, 22.126581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612576, 30.715797, 22.104870>,  <35.601898, 30.955206, 22.091843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612576, 30.715797, 22.104870>,  <35.630371, 30.316784, 22.126581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612576, 30.715797, 22.104870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260825, 0.064044, 0.963259,
		0.964360, 0.028693, -0.263031,
		-0.044485, 0.997534, -0.054278,
		35.599232, 31.015059, 22.088587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289471, 30.651690, 22.406639>,  <35.630371, 30.316784, 22.126581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289471, 30.651690, 22.406639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991764, 30.917906, 22.428980>,  <35.813141, 31.077635, 22.442385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991764, 30.917906, 22.428980>,  <36.289471, 30.651690, 22.406639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991764, 30.917906, 22.428980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177928, 0.116977, 0.977066,
		0.643743, 0.737138, -0.205481,
		-0.744269, 0.665540, 0.055854,
		35.768482, 31.117567, 22.445736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606869, 31.160198, 22.911678>,  <36.289471, 30.651690, 22.406639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606869, 31.160198, 22.911678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207909, 31.182398, 22.893269>,  <35.968533, 31.195717, 22.882223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207909, 31.182398, 22.893269>,  <36.606869, 31.160198, 22.911678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207909, 31.182398, 22.893269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045992, 0.001836, 0.998940,
		0.055523, 0.998457, 0.000721,
		-0.997398, 0.055497, -0.046023,
		35.908688, 31.199047, 22.879461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452988, 31.686918, 23.430971>,  <36.606869, 31.160198, 22.911678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452988, 31.686918, 23.430971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109238, 31.496550, 23.356159>,  <35.902988, 31.382328, 23.311272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109238, 31.496550, 23.356159>,  <36.452988, 31.686918, 23.430971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109238, 31.496550, 23.356159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205063, -0.014305, 0.978644,
		-0.468434, 0.879371, -0.085301,
		-0.859371, -0.475922, -0.187028,
		35.851425, 31.353773, 23.300051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149197, 31.872126, 23.993635>,  <36.452988, 31.686918, 23.430971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149197, 31.872126, 23.993635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920227, 31.571121, 23.863373>,  <35.782845, 31.390518, 23.785215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920227, 31.571121, 23.863373>,  <36.149197, 31.872126, 23.993635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920227, 31.571121, 23.863373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295922, -0.180799, 0.937946,
		-0.764694, 0.633275, -0.119190,
		-0.572428, -0.752512, -0.325656,
		35.748497, 31.345367, 23.765676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483097, 32.023640, 24.387604>,  <36.149197, 31.872126, 23.993635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483097, 32.023640, 24.387604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509270, 31.640341, 24.276262>,  <35.524975, 31.410362, 24.209457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509270, 31.640341, 24.276262>,  <35.483097, 32.023640, 24.387604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509270, 31.640341, 24.276262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286755, -0.285240, 0.914554,
		-0.955767, 0.019977, -0.293447,
		0.065433, -0.958248, -0.278351,
		35.528900, 31.352867, 24.192757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054386, 31.793371, 24.828007>,  <35.483097, 32.023640, 24.387604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054386, 31.793371, 24.828007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263714, 31.486868, 24.678885>,  <35.389313, 31.302965, 24.589413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263714, 31.486868, 24.678885>,  <35.054386, 31.793371, 24.828007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263714, 31.486868, 24.678885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119556, -0.499189, 0.858205,
		-0.843707, -0.404547, -0.352847,
		0.523322, -0.766259, -0.372803,
		35.420712, 31.256990, 24.567043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645386, 31.174938, 24.976509>,  <35.054386, 31.793371, 24.828007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645386, 31.174938, 24.976509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037067, 31.101055, 24.942951>,  <35.272076, 31.056726, 24.922817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037067, 31.101055, 24.942951>,  <34.645386, 31.174938, 24.976509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037067, 31.101055, 24.942951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011482, -0.362418, 0.931945,
		-0.202539, -0.913530, -0.352761,
		0.979207, -0.184705, -0.083893,
		35.330830, 31.045643, 24.917784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795300, 30.317110, 24.953743>,  <34.645386, 31.174938, 24.976509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795300, 30.317110, 24.953743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111275, 30.529007, 25.077271>,  <35.300861, 30.656145, 25.151388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111275, 30.529007, 25.077271>,  <34.795300, 30.317110, 24.953743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111275, 30.529007, 25.077271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007488, -0.495261, 0.868712,
		0.613140, -0.688541, -0.387259,
		0.789938, 0.529743, 0.308820,
		35.348255, 30.687929, 25.169916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181232, 29.755693, 25.386150>,  <34.795300, 30.317110, 24.953743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181232, 29.755693, 25.386150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358807, 30.106789, 25.458252>,  <35.465351, 30.317446, 25.501513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358807, 30.106789, 25.458252>,  <35.181232, 29.755693, 25.386150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358807, 30.106789, 25.458252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176423, -0.282844, 0.942801,
		0.878518, -0.386744, -0.280418,
		0.443937, 0.877740, 0.180254,
		35.491989, 30.370111, 25.512327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754734, 29.631344, 25.790916>,  <35.181232, 29.755693, 25.386150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754734, 29.631344, 25.790916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689342, 30.013762, 25.888283>,  <35.650108, 30.243212, 25.946703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689342, 30.013762, 25.888283>,  <35.754734, 29.631344, 25.790916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689342, 30.013762, 25.888283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187701, -0.212088, 0.959055,
		0.968527, 0.202472, -0.144780,
		-0.163475, 0.956046, 0.243417,
		35.640301, 30.300575, 25.961308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284847, 29.886929, 26.320293>,  <35.754734, 29.631344, 25.790916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284847, 29.886929, 26.320293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995754, 30.161644, 26.351210>,  <35.822296, 30.326473, 26.369759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995754, 30.161644, 26.351210>,  <36.284847, 29.886929, 26.320293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995754, 30.161644, 26.351210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001565, -0.113460, 0.993541,
		0.691121, 0.717948, 0.083077,
		-0.722737, 0.686788, 0.077291,
		35.778934, 30.367680, 26.374397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543964, 30.349730, 26.867733>,  <36.284847, 29.886929, 26.320293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543964, 30.349730, 26.867733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147388, 30.358448, 26.816240>,  <35.909443, 30.363678, 26.785345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147388, 30.358448, 26.816240>,  <36.543964, 30.349730, 26.867733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147388, 30.358448, 26.816240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130491, -0.198497, 0.971376,
		-0.004382, 0.979859, 0.199642,
		-0.991440, 0.021795, -0.128733,
		35.849957, 30.364986, 26.777620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700600, 30.581491, 26.071514>,  <36.543964, 30.349730, 26.867733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700600, 30.581491, 26.071514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078518, 30.463142, 26.127823>,  <37.305271, 30.392134, 26.161608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078518, 30.463142, 26.127823>,  <36.700600, 30.581491, 26.071514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078518, 30.463142, 26.127823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176174, 0.096479, -0.979620,
		0.276261, 0.950343, 0.143278,
		0.944798, -0.295872, 0.140772,
		37.361958, 30.374380, 26.170053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203358, 31.128891, 25.881041>,  <36.700600, 30.581491, 26.071514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203358, 31.128891, 25.881041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417339, 30.791470, 25.862080>,  <37.545727, 30.589016, 25.850702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417339, 30.791470, 25.862080>,  <37.203358, 31.128891, 25.881041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417339, 30.791470, 25.862080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204264, 0.183570, -0.961550,
		0.819820, 0.504699, 0.270509,
		0.534950, -0.843553, -0.047402,
		37.577824, 30.538404, 25.847858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712387, 31.324080, 25.463312>,  <37.203358, 31.128891, 25.881041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712387, 31.324080, 25.463312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732170, 30.924650, 25.455309>,  <37.744041, 30.684992, 25.450506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732170, 30.924650, 25.455309>,  <37.712387, 31.324080, 25.463312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732170, 30.924650, 25.455309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163041, 0.027838, -0.986226,
		0.985379, 0.045518, 0.164186,
		0.049461, -0.998576, -0.020010,
		37.747009, 30.625078, 25.449306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308155, 31.129076, 25.134436>,  <37.712387, 31.324080, 25.463312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308155, 31.129076, 25.134436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059750, 30.817389, 25.100592>,  <37.910706, 30.630377, 25.080286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059750, 30.817389, 25.100592>,  <38.308155, 31.129076, 25.134436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059750, 30.817389, 25.100592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319411, -0.153021, -0.935180,
		0.715761, -0.607788, 0.343919,
		-0.621018, -0.779216, -0.084608,
		37.873444, 30.583624, 25.075209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759502, 30.574764, 25.155731>,  <38.308155, 31.129076, 25.134436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759502, 30.574764, 25.155731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403702, 30.480055, 24.999414>,  <38.190220, 30.423229, 24.905624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403702, 30.480055, 24.999414>,  <38.759502, 30.574764, 25.155731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403702, 30.480055, 24.999414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366662, 0.140476, -0.919688,
		0.272654, -0.961356, -0.038138,
		-0.889505, -0.236772, -0.390794,
		38.136848, 30.409023, 24.882175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950493, 30.267794, 24.600435>,  <38.759502, 30.574764, 25.155731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950493, 30.267794, 24.600435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565273, 30.340492, 24.520929>,  <38.334141, 30.384111, 24.473225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565273, 30.340492, 24.520929>,  <38.950493, 30.267794, 24.600435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565273, 30.340492, 24.520929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229916, 0.170382, -0.958180,
		-0.140282, -0.968472, -0.205873,
		-0.963047, 0.181749, -0.198766,
		38.276360, 30.395018, 24.461300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771885, 29.880291, 23.912277>,  <38.950493, 30.267794, 24.600435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771885, 29.880291, 23.912277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475384, 30.145695, 23.952883>,  <38.297485, 30.304937, 23.977245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475384, 30.145695, 23.952883>,  <38.771885, 29.880291, 23.912277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475384, 30.145695, 23.952883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065675, 0.222202, -0.972786,
		-0.668008, -0.714411, -0.208283,
		-0.741250, 0.663508, 0.101514,
		38.253010, 30.344748, 23.983337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184380, 29.735250, 23.382452>,  <38.771885, 29.880291, 23.912277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184380, 29.735250, 23.382452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153851, 30.122149, 23.479292>,  <38.135532, 30.354288, 23.537395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153851, 30.122149, 23.479292>,  <38.184380, 29.735250, 23.382452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153851, 30.122149, 23.479292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075270, 0.247703, -0.965908,
		-0.994238, -0.055498, -0.091710,
		-0.076322, 0.967245, 0.242098,
		38.130955, 30.412323, 23.551922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678261, 30.028786, 22.900999>,  <38.184380, 29.735250, 23.382452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678261, 30.028786, 22.900999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880764, 30.337448, 23.055012>,  <38.002266, 30.522646, 23.147419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880764, 30.337448, 23.055012>,  <37.678261, 30.028786, 22.900999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880764, 30.337448, 23.055012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079457, 0.402837, -0.911816,
		-0.858711, 0.492212, 0.142627,
		0.506262, 0.771654, 0.385030,
		38.032642, 30.568945, 23.170521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330158, 30.536352, 22.603289>,  <37.678261, 30.028786, 22.900999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330158, 30.536352, 22.603289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675014, 30.700792, 22.721758>,  <37.881927, 30.799456, 22.792839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675014, 30.700792, 22.721758>,  <37.330158, 30.536352, 22.603289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675014, 30.700792, 22.721758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118081, 0.405429, -0.906468,
		-0.492725, 0.816472, 0.300992,
		0.862136, 0.411098, 0.296175,
		37.933655, 30.824121, 22.810610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349743, 31.198116, 22.343903>,  <37.330158, 30.536352, 22.603289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349743, 31.198116, 22.343903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735878, 31.152882, 22.437992>,  <37.967560, 31.125740, 22.494446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735878, 31.152882, 22.437992>,  <37.349743, 31.198116, 22.343903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735878, 31.152882, 22.437992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259641, 0.324425, -0.909579,
		0.026551, 0.939127, 0.342543,
		0.965340, -0.113089, 0.235222,
		38.025478, 31.118956, 22.508558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710133, 31.845346, 22.217808>,  <37.349743, 31.198116, 22.343903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710133, 31.845346, 22.217808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001789, 31.572126, 22.200867>,  <38.176785, 31.408195, 22.190702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001789, 31.572126, 22.200867>,  <37.710133, 31.845346, 22.217808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001789, 31.572126, 22.200867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313997, 0.388890, -0.866124,
		0.608075, 0.618231, 0.498032,
		0.729144, -0.683049, -0.042351,
		38.220531, 31.367212, 22.188162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246872, 32.185303, 22.113956>,  <37.710133, 31.845346, 22.217808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246872, 32.185303, 22.113956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333126, 31.813669, 21.993761>,  <38.384880, 31.590689, 21.921644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333126, 31.813669, 21.993761>,  <38.246872, 32.185303, 22.113956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333126, 31.813669, 21.993761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394225, 0.364371, -0.843694,
		0.893356, 0.063473, 0.444843,
		0.215640, -0.929088, -0.300490,
		38.397820, 31.534943, 21.903614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904366, 32.227158, 21.863216>,  <38.246872, 32.185303, 22.113956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904366, 32.227158, 21.863216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706173, 31.921942, 21.697197>,  <38.587257, 31.738811, 21.597586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706173, 31.921942, 21.697197>,  <38.904366, 32.227158, 21.863216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706173, 31.921942, 21.697197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314984, 0.287464, -0.904516,
		0.809493, -0.578907, 0.097912,
		-0.495485, -0.763040, -0.415047,
		38.557526, 31.693029, 21.572683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441792, 31.937180, 21.351610>,  <38.904366, 32.227158, 21.863216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441792, 31.937180, 21.351610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076790, 31.809061, 21.249825>,  <38.857788, 31.732191, 21.188753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076790, 31.809061, 21.249825>,  <39.441792, 31.937180, 21.351610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076790, 31.809061, 21.249825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226368, 0.122763, -0.966275,
		0.340732, -0.939329, -0.039517,
		-0.912502, -0.320296, -0.254463,
		38.803040, 31.712973, 21.173485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521854, 31.523487, 20.693987>,  <39.441792, 31.937180, 21.351610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521854, 31.523487, 20.693987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133335, 31.618570, 20.690483>,  <38.900223, 31.675621, 20.688381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133335, 31.618570, 20.690483>,  <39.521854, 31.523487, 20.693987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133335, 31.618570, 20.690483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013200, 0.017097, -0.999767,
		-0.237503, -0.971186, -0.019744,
		-0.971297, 0.237709, -0.008760,
		38.841946, 31.689882, 20.687855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240108, 31.123642, 20.193398>,  <39.521854, 31.523487, 20.693987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240108, 31.123642, 20.193398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937202, 31.383204, 20.222979>,  <38.755459, 31.538940, 20.240726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937202, 31.383204, 20.222979>,  <39.240108, 31.123642, 20.193398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937202, 31.383204, 20.222979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102742, -0.006539, -0.994687,
		-0.644973, -0.760842, 0.071621,
		-0.757267, 0.648904, 0.073953,
		38.710022, 31.577875, 20.245165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666237, 30.825300, 19.739660>,  <39.240108, 31.123642, 20.193398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666237, 30.825300, 19.739660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546844, 31.203236, 19.793613>,  <38.475208, 31.429996, 19.825985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546844, 31.203236, 19.793613>,  <38.666237, 30.825300, 19.739660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546844, 31.203236, 19.793613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171383, 0.085970, -0.981447,
		-0.938903, -0.316058, 0.136269,
		-0.298479, 0.944837, 0.134884,
		38.457302, 31.486687, 19.834078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894131, 30.896379, 19.323446>,  <38.666237, 30.825300, 19.739660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894131, 30.896379, 19.323446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044479, 31.256912, 19.409533>,  <38.134689, 31.473232, 19.461185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044479, 31.256912, 19.409533>,  <37.894131, 30.896379, 19.323446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044479, 31.256912, 19.409533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083650, 0.198297, -0.976566,
		-0.922887, 0.385070, -0.000861,
		0.375875, 0.901332, 0.215217,
		38.157242, 31.527311, 19.474098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489567, 31.414328, 19.005537>,  <37.894131, 30.896379, 19.323446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489567, 31.414328, 19.005537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863667, 31.551790, 19.039494>,  <38.088127, 31.634268, 19.059868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863667, 31.551790, 19.039494>,  <37.489567, 31.414328, 19.005537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863667, 31.551790, 19.039494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019712, 0.188880, -0.981802,
		-0.353436, 0.919905, 0.169876,
		0.935251, 0.343656, 0.084891,
		38.144241, 31.654886, 19.064960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426895, 32.055374, 18.701838>,  <37.489567, 31.414328, 19.005537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426895, 32.055374, 18.701838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818035, 31.971643, 18.702095>,  <38.052719, 31.921406, 18.702250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818035, 31.971643, 18.702095>,  <37.426895, 32.055374, 18.701838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818035, 31.971643, 18.702095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040024, 0.183960, -0.982119,
		0.205462, 0.960387, 0.188263,
		0.977846, -0.209324, 0.000642,
		38.111389, 31.908846, 18.702288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795902, 32.554962, 18.249432>,  <37.426895, 32.055374, 18.701838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795902, 32.554962, 18.249432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042850, 32.241177, 18.272966>,  <38.191021, 32.052906, 18.287088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042850, 32.241177, 18.272966>,  <37.795902, 32.554962, 18.249432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042850, 32.241177, 18.272966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086637, -0.006538, -0.996219,
		0.781884, 0.620137, 0.063927,
		0.617374, -0.784466, 0.058839,
		38.228062, 32.005836, 18.290619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368599, 32.758549, 17.835772>,  <37.795902, 32.554962, 18.249432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368599, 32.758549, 17.835772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373817, 32.358788, 17.848513>,  <38.376949, 32.118931, 17.856157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373817, 32.358788, 17.848513>,  <38.368599, 32.758549, 17.835772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373817, 32.358788, 17.848513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072972, -0.030818, -0.996858,
		0.997249, 0.015332, 0.072527,
		0.013049, -0.999408, 0.031852,
		38.377731, 32.058964, 17.858068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816139, 32.541080, 17.408075>,  <38.368599, 32.758549, 17.835772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816139, 32.541080, 17.408075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621876, 32.195076, 17.458500>,  <38.505318, 31.987474, 17.488754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621876, 32.195076, 17.458500>,  <38.816139, 32.541080, 17.408075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621876, 32.195076, 17.458500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016644, -0.135035, -0.990701,
		0.873989, -0.483243, 0.051184,
		-0.485661, -0.865009, 0.126062,
		38.476177, 31.935574, 17.496319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083439, 32.100155, 16.821930>,  <38.816139, 32.541080, 17.408075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083439, 32.100155, 16.821930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738194, 31.940781, 16.946053>,  <38.531048, 31.845156, 17.020527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738194, 31.940781, 16.946053>,  <39.083439, 32.100155, 16.821930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738194, 31.940781, 16.946053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187580, -0.317562, -0.929499,
		0.468886, -0.860468, 0.199353,
		-0.863111, -0.398434, 0.310307,
		38.479259, 31.821251, 17.039145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047073, 31.410257, 16.579300>,  <39.083439, 32.100155, 16.821930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047073, 31.410257, 16.579300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662701, 31.509844, 16.627672>,  <38.432076, 31.569595, 16.656696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662701, 31.509844, 16.627672>,  <39.047073, 31.410257, 16.579300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662701, 31.509844, 16.627672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213369, -0.388016, -0.896614,
		-0.176305, -0.887389, 0.425979,
		-0.960932, 0.248968, 0.120932,
		38.374420, 31.584534, 16.663952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711826, 30.841434, 16.323084>,  <39.047073, 31.410257, 16.579300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711826, 30.841434, 16.323084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445030, 31.139141, 16.309296>,  <38.284954, 31.317766, 16.301023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445030, 31.139141, 16.309296>,  <38.711826, 30.841434, 16.323084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445030, 31.139141, 16.309296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219312, -0.240335, -0.945591,
		-0.712057, -0.623141, 0.323528,
		-0.666991, 0.744267, -0.034470,
		38.244934, 31.362421, 16.298954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126621, 30.594515, 16.052372>,  <38.711826, 30.841434, 16.323084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126621, 30.594515, 16.052372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083187, 30.988325, 15.997357>,  <38.057125, 31.224611, 15.964349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083187, 30.988325, 15.997357>,  <38.126621, 30.594515, 16.052372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083187, 30.988325, 15.997357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117219, -0.150071, -0.981702,
		-0.987152, -0.090475, 0.131701,
		-0.108584, 0.984527, -0.137538,
		38.050613, 31.283684, 15.956096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614906, 30.597645, 15.474767>,  <38.126621, 30.594515, 16.052372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614906, 30.597645, 15.474767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739643, 30.976479, 15.505185>,  <37.814487, 31.203779, 15.523436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739643, 30.976479, 15.505185>,  <37.614906, 30.597645, 15.474767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739643, 30.976479, 15.505185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245381, 0.157601, -0.956530,
		-0.917900, 0.279631, 0.281544,
		0.311847, 0.947084, 0.076045,
		37.833199, 31.260605, 15.527999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029339, 31.201143, 15.357472>,  <37.614906, 30.597645, 15.474767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029339, 31.201143, 15.357472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395565, 31.337627, 15.272317>,  <37.615299, 31.419518, 15.221224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395565, 31.337627, 15.272317>,  <37.029339, 31.201143, 15.357472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395565, 31.337627, 15.272317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208936, -0.048759, -0.976713,
		-0.343645, 0.938722, 0.026650,
		0.915562, 0.341210, -0.212888,
		37.670235, 31.439991, 15.208450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918015, 31.483160, 14.741852>,  <37.029339, 31.201143, 15.357472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918015, 31.483160, 14.741852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316803, 31.467745, 14.768851>,  <37.556076, 31.458496, 14.785050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316803, 31.467745, 14.768851>,  <36.918015, 31.483160, 14.741852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316803, 31.467745, 14.768851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067971, 0.011093, -0.997626,
		0.037697, 0.999196, 0.013679,
		0.996975, -0.038537, 0.067498,
		37.615894, 31.456184, 14.789101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072693, 31.866461, 14.175345>,  <36.918015, 31.483160, 14.741852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072693, 31.866461, 14.175345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427475, 31.695345, 14.244983>,  <37.640343, 31.592676, 14.286765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427475, 31.695345, 14.244983>,  <37.072693, 31.866461, 14.175345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427475, 31.695345, 14.244983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170105, -0.047869, -0.984263,
		0.429391, 0.902610, 0.030312,
		0.886954, -0.427790, 0.174093,
		37.693562, 31.567007, 14.297211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622417, 32.328915, 13.906150>,  <37.072693, 31.866461, 14.175345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622417, 32.328915, 13.906150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780888, 31.962297, 13.928032>,  <37.875969, 31.742327, 13.941161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780888, 31.962297, 13.928032>,  <37.622417, 32.328915, 13.906150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780888, 31.962297, 13.928032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346167, 0.093914, -0.933460,
		0.850422, 0.388747, 0.354484,
		0.396171, -0.916546, 0.054705,
		37.899738, 31.687334, 13.944444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342178, 32.348976, 13.741024>,  <37.622417, 32.328915, 13.906150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342178, 32.348976, 13.741024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185699, 31.990852, 13.655815>,  <38.091812, 31.775976, 13.604690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185699, 31.990852, 13.655815>,  <38.342178, 32.348976, 13.741024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185699, 31.990852, 13.655815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335905, 0.076595, -0.938777,
		0.856816, -0.438801, 0.270777,
		-0.391196, -0.895314, -0.213023,
		38.068340, 31.722258, 13.591908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708317, 32.146744, 13.225291>,  <38.342178, 32.348976, 13.741024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708317, 32.146744, 13.225291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438656, 31.851309, 13.226021>,  <38.276859, 31.674047, 13.226459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438656, 31.851309, 13.226021>,  <38.708317, 32.146744, 13.225291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438656, 31.851309, 13.226021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257696, -0.237526, -0.936576,
		0.692181, -0.630922, 0.350461,
		-0.674150, -0.738592, 0.001825,
		38.236412, 31.629732, 13.226568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073524, 31.517365, 13.069601>,  <38.708317, 32.146744, 13.225291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073524, 31.517365, 13.069601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686596, 31.497454, 12.970155>,  <38.454437, 31.485508, 12.910487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686596, 31.497454, 12.970155>,  <39.073524, 31.517365, 13.069601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686596, 31.497454, 12.970155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253356, -0.228069, -0.940104,
		-0.009905, -0.972372, 0.233228,
		-0.967322, -0.049778, -0.248615,
		38.396400, 31.482521, 12.895570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995148, 30.904881, 12.608118>,  <39.073524, 31.517365, 13.069601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995148, 30.904881, 12.608118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682598, 31.143877, 12.536045>,  <38.495068, 31.287275, 12.492802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682598, 31.143877, 12.536045>,  <38.995148, 30.904881, 12.608118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682598, 31.143877, 12.536045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215903, -0.012082, -0.976340,
		-0.585531, -0.801785, -0.119560,
		-0.781370, 0.597491, -0.180182,
		38.448189, 31.323124, 12.481991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674488, 30.698160, 12.048432>,  <38.995148, 30.904881, 12.608118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674488, 30.698160, 12.048432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579342, 31.086657, 12.052686>,  <38.522255, 31.319754, 12.055238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579342, 31.086657, 12.052686>,  <38.674488, 30.698160, 12.048432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579342, 31.086657, 12.052686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319487, 0.088574, -0.943442,
		-0.917250, -0.221017, -0.331367,
		-0.237868, 0.971240, 0.010633,
		38.507980, 31.378029, 12.055876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257351, 30.042603, 12.402974>,  <38.674488, 30.698160, 12.048432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257351, 30.042603, 12.402974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326359, 29.723890, 12.171326>,  <38.367764, 29.532663, 12.032336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326359, 29.723890, 12.171326>,  <38.257351, 30.042603, 12.402974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326359, 29.723890, 12.171326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053685, -0.594668, 0.802177,
		-0.983542, -0.107299, -0.145366,
		0.172518, -0.796779, -0.579121,
		38.378113, 29.484858, 11.997589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826775, 29.488611, 12.659186>,  <38.257351, 30.042603, 12.402974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826775, 29.488611, 12.659186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118984, 29.306850, 12.455284>,  <38.294312, 29.197794, 12.332943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118984, 29.306850, 12.455284>,  <37.826775, 29.488611, 12.659186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118984, 29.306850, 12.455284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161492, -0.610344, 0.775500,
		-0.663518, -0.648842, -0.372487,
		0.730523, -0.454404, -0.509757,
		38.338142, 29.170530, 12.302357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737488, 28.778936, 12.656271>,  <37.826775, 29.488611, 12.659186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737488, 28.778936, 12.656271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125465, 28.870361, 12.622899>,  <38.358253, 28.925217, 12.602876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125465, 28.870361, 12.622899>,  <37.737488, 28.778936, 12.656271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125465, 28.870361, 12.622899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200802, -0.558320, 0.804958,
		0.137401, -0.797520, -0.587437,
		0.969948, 0.228561, -0.083430,
		38.416451, 28.938931, 12.597870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074879, 28.154123, 12.807066>,  <37.737488, 28.778936, 12.656271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074879, 28.154123, 12.807066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368172, 28.424826, 12.833516>,  <38.544147, 28.587248, 12.849386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368172, 28.424826, 12.833516>,  <38.074879, 28.154123, 12.807066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368172, 28.424826, 12.833516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389469, -0.497693, 0.774994,
		0.557394, -0.542495, -0.628499,
		0.733230, 0.676758, 0.066126,
		38.588142, 28.627853, 12.853354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550816, 27.787018, 13.059676>,  <38.074879, 28.154123, 12.807066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550816, 27.787018, 13.059676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693604, 28.148836, 13.152945>,  <38.779274, 28.365927, 13.208906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693604, 28.148836, 13.152945>,  <38.550816, 27.787018, 13.059676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693604, 28.148836, 13.152945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436915, -0.382308, 0.814215,
		0.825639, -0.188771, -0.531681,
		0.356967, 0.904547, 0.233172,
		38.800694, 28.420200, 13.222896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264336, 27.777220, 13.260835>,  <38.550816, 27.787018, 13.059676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264336, 27.777220, 13.260835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124542, 28.113537, 13.426208>,  <39.040665, 28.315327, 13.525431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124542, 28.113537, 13.426208>,  <39.264336, 27.777220, 13.260835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124542, 28.113537, 13.426208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274930, -0.329804, 0.903129,
		0.895696, 0.429298, -0.115897,
		-0.349488, 0.840793, 0.413431,
		39.019695, 28.365774, 13.550237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758789, 27.936073, 13.672650>,  <39.264336, 27.777220, 13.260835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758789, 27.936073, 13.672650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439190, 28.126984, 13.818967>,  <39.247429, 28.241529, 13.906757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439190, 28.126984, 13.818967>,  <39.758789, 27.936073, 13.672650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439190, 28.126984, 13.818967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225542, -0.326037, 0.918058,
		0.557428, 0.816032, 0.152859,
		-0.799003, 0.477275, 0.365792,
		39.199490, 28.270166, 13.928704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965504, 28.223293, 14.382280>,  <39.758789, 27.936073, 13.672650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965504, 28.223293, 14.382280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570366, 28.279242, 14.409425>,  <39.333282, 28.312811, 14.425712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570366, 28.279242, 14.409425>,  <39.965504, 28.223293, 14.382280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570366, 28.279242, 14.409425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022981, -0.300333, 0.953558,
		0.153756, 0.943523, 0.293467,
		-0.987842, 0.139871, 0.067861,
		39.274014, 28.321203, 14.429783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879623, 28.556799, 15.058056>,  <39.965504, 28.223293, 14.382280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879623, 28.556799, 15.058056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517456, 28.415539, 14.963823>,  <39.300156, 28.330782, 14.907284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517456, 28.415539, 14.963823>,  <39.879623, 28.556799, 15.058056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517456, 28.415539, 14.963823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157635, -0.235575, 0.958987,
		-0.394165, 0.905422, 0.157626,
		-0.905420, -0.353152, -0.235581,
		39.245831, 28.309593, 14.893149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330154, 28.854914, 15.471251>,  <39.879623, 28.556799, 15.058056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330154, 28.854914, 15.471251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129448, 28.536076, 15.336864>,  <39.009026, 28.344772, 15.256231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129448, 28.536076, 15.336864>,  <39.330154, 28.854914, 15.471251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129448, 28.536076, 15.336864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431702, -0.105813, 0.895788,
		-0.749578, 0.594511, -0.291015,
		-0.501763, -0.797095, -0.335967,
		38.978920, 28.296947, 15.236073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578300, 28.954882, 15.556814>,  <39.330154, 28.854914, 15.471251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578300, 28.954882, 15.556814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649948, 28.561369, 15.553073>,  <38.692936, 28.325260, 15.550828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649948, 28.561369, 15.553073>,  <38.578300, 28.954882, 15.556814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649948, 28.561369, 15.553073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514851, -0.101830, 0.851210,
		-0.838359, -0.147649, -0.524741,
		0.179115, -0.983784, -0.009353,
		38.703682, 28.266233, 15.550267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954674, 28.644434, 15.783112>,  <38.578300, 28.954882, 15.556814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954674, 28.644434, 15.783112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250763, 28.379786, 15.830981>,  <38.428417, 28.220997, 15.859703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250763, 28.379786, 15.830981>,  <37.954674, 28.644434, 15.783112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250763, 28.379786, 15.830981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294362, -0.158873, 0.942396,
		-0.604496, -0.732815, -0.312358,
		0.740227, -0.661621, 0.119675,
		38.472832, 28.181299, 15.866884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623840, 27.971340, 15.972286>,  <37.954674, 28.644434, 15.783112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623840, 27.971340, 15.972286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000515, 28.001162, 16.103542>,  <38.226521, 28.019054, 16.182297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000515, 28.001162, 16.103542>,  <37.623840, 27.971340, 15.972286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000515, 28.001162, 16.103542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314425, -0.152461, 0.936959,
		0.119883, -0.985493, -0.120128,
		0.941682, 0.074554, 0.328141,
		38.283020, 28.023527, 16.201984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694725, 27.497025, 16.640791>,  <37.623840, 27.971340, 15.972286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694725, 27.497025, 16.640791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021011, 27.728401, 16.641687>,  <38.216785, 27.867228, 16.642225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021011, 27.728401, 16.641687>,  <37.694725, 27.497025, 16.640791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021011, 27.728401, 16.641687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025524, -0.039865, 0.998879,
		0.577883, -0.814749, -0.047283,
		0.815720, 0.578442, 0.002242,
		38.265728, 27.901934, 16.642361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082817, 27.174807, 17.224352>,  <37.694725, 27.497025, 16.640791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082817, 27.174807, 17.224352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252625, 27.532995, 17.170813>,  <38.354507, 27.747908, 17.138689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252625, 27.532995, 17.170813>,  <38.082817, 27.174807, 17.224352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252625, 27.532995, 17.170813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155441, 0.073556, 0.985103,
		0.891976, -0.439000, -0.107967,
		0.424518, 0.895471, -0.133849,
		38.379982, 27.801636, 17.130657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625168, 27.177328, 17.649092>,  <38.082817, 27.174807, 17.224352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625168, 27.177328, 17.649092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548977, 27.565313, 17.588570>,  <38.503262, 27.798103, 17.552258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548977, 27.565313, 17.588570>,  <38.625168, 27.177328, 17.649092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548977, 27.565313, 17.588570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265678, 0.199307, 0.943235,
		0.945057, 0.139469, -0.295661,
		-0.190479, 0.969961, -0.151303,
		38.491833, 27.856302, 17.543179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177624, 27.640408, 17.990049>,  <38.625168, 27.177328, 17.649092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177624, 27.640408, 17.990049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893486, 27.911327, 17.913445>,  <38.723003, 28.073879, 17.867481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893486, 27.911327, 17.913445>,  <39.177624, 27.640408, 17.990049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893486, 27.911327, 17.913445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101698, 0.367997, 0.924249,
		0.696469, 0.637059, -0.330284,
		-0.710344, 0.677300, -0.191511,
		38.680382, 28.114517, 17.855991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463940, 28.259439, 18.165218>,  <39.177624, 27.640408, 17.990049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463940, 28.259439, 18.165218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069111, 28.321650, 18.180670>,  <38.832214, 28.358976, 18.189941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069111, 28.321650, 18.180670>,  <39.463940, 28.259439, 18.165218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069111, 28.321650, 18.180670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105643, 0.450259, 0.886626,
		0.120500, 0.879249, -0.460871,
		-0.987076, 0.155526, 0.038630,
		38.772987, 28.368307, 18.192259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399570, 28.961969, 18.296080>,  <39.463940, 28.259439, 18.165218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399570, 28.961969, 18.296080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052570, 28.795830, 18.405575>,  <38.844372, 28.696146, 18.471272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052570, 28.795830, 18.405575>,  <39.399570, 28.961969, 18.296080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052570, 28.795830, 18.405575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019047, 0.522152, 0.852640,
		-0.497075, 0.744878, -0.445055,
		-0.867499, -0.415349, 0.273737,
		38.792320, 28.671225, 18.487696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999241, 29.548697, 18.566076>,  <39.399570, 28.961969, 18.296080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999241, 29.548697, 18.566076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858688, 29.205347, 18.715595>,  <38.774357, 28.999336, 18.805307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858688, 29.205347, 18.715595>,  <38.999241, 29.548697, 18.566076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858688, 29.205347, 18.715595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111533, 0.358035, 0.927023,
		-0.929565, 0.367429, -0.030069,
		-0.351381, -0.858375, 0.373797,
		38.753273, 28.947834, 18.827734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474426, 29.664629, 19.059942>,  <38.999241, 29.548697, 18.566076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474426, 29.664629, 19.059942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585117, 29.295778, 19.168093>,  <38.651531, 29.074469, 19.232983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585117, 29.295778, 19.168093>,  <38.474426, 29.664629, 19.059942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585117, 29.295778, 19.168093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030747, 0.289717, 0.956618,
		-0.960455, -0.256413, 0.108526,
		0.276731, -0.922126, 0.270376,
		38.668137, 29.019140, 19.249207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059299, 29.554392, 19.578959>,  <38.474426, 29.664629, 19.059942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059299, 29.554392, 19.578959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373882, 29.311460, 19.623915>,  <38.562634, 29.165701, 19.650888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373882, 29.311460, 19.623915>,  <38.059299, 29.554392, 19.578959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373882, 29.311460, 19.623915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152102, 0.366803, 0.917780,
		-0.598619, -0.704704, 0.380852,
		0.786461, -0.607329, 0.112388,
		38.609821, 29.129261, 19.657631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915150, 29.192055, 20.238674>,  <38.059299, 29.554392, 19.578959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915150, 29.192055, 20.238674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304478, 29.119001, 20.183123>,  <38.538074, 29.075169, 20.149792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304478, 29.119001, 20.183123>,  <37.915150, 29.192055, 20.238674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304478, 29.119001, 20.183123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145068, 0.020915, 0.989201,
		-0.177757, -0.982959, 0.046851,
		0.973323, -0.182633, -0.138878,
		38.596474, 29.064211, 20.141459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194019, 28.640093, 20.831282>,  <37.915150, 29.192055, 20.238674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194019, 28.640093, 20.831282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519348, 28.821732, 20.685785>,  <38.714546, 28.930716, 20.598488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519348, 28.821732, 20.685785>,  <38.194019, 28.640093, 20.831282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519348, 28.821732, 20.685785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416733, -0.018396, 0.908843,
		0.406012, -0.890762, -0.204200,
		0.813319, 0.454098, -0.363741,
		38.763344, 28.957960, 20.576662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808945, 28.251680, 21.076139>,  <38.194019, 28.640093, 20.831282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808945, 28.251680, 21.076139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960121, 28.612518, 20.992817>,  <39.050827, 28.829021, 20.942823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960121, 28.612518, 20.992817>,  <38.808945, 28.251680, 21.076139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960121, 28.612518, 20.992817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531138, -0.026972, 0.846856,
		0.758325, -0.430697, -0.489330,
		0.377936, 0.902094, -0.208306,
		39.073502, 28.883146, 20.930325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506748, 28.166241, 21.244453>,  <38.808945, 28.251680, 21.076139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506748, 28.166241, 21.244453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457291, 28.563065, 21.235239>,  <39.427616, 28.801159, 21.229712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457291, 28.563065, 21.235239>,  <39.506748, 28.166241, 21.244453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457291, 28.563065, 21.235239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581628, 0.091258, 0.808320,
		0.804004, 0.086544, -0.588292,
		-0.123642, 0.992060, -0.023035,
		39.420197, 28.860682, 21.228329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221973, 28.479122, 21.183643>,  <39.506748, 28.166241, 21.244453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221973, 28.479122, 21.183643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963642, 28.727562, 21.361244>,  <39.808643, 28.876625, 21.467804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963642, 28.727562, 21.361244>,  <40.221973, 28.479122, 21.183643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963642, 28.727562, 21.361244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552820, -0.020676, 0.833044,
		0.526583, 0.783459, -0.330003,
		-0.645833, 0.621099, 0.444000,
		39.769894, 28.913891, 21.494444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662823, 28.931440, 21.558689>,  <40.221973, 28.479122, 21.183643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662823, 28.931440, 21.558689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300983, 28.978474, 21.722576>,  <40.083878, 29.006693, 21.820908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300983, 28.978474, 21.722576>,  <40.662823, 28.931440, 21.558689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300983, 28.978474, 21.722576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403921, -0.070596, 0.912066,
		0.136169, 0.990550, 0.016367,
		-0.904603, 0.117584, 0.409717,
		40.029602, 29.013748, 21.845491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770649, 29.305494, 22.127096>,  <40.662823, 28.931440, 21.558689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770649, 29.305494, 22.127096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413105, 29.156805, 22.227365>,  <40.198578, 29.067591, 22.287527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413105, 29.156805, 22.227365>,  <40.770649, 29.305494, 22.127096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413105, 29.156805, 22.227365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234506, 0.088900, 0.968041,
		-0.382130, 0.924076, 0.007708,
		-0.893859, -0.371725, 0.250673,
		40.144947, 29.045288, 22.302567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646278, 29.511459, 22.813965>,  <40.770649, 29.305494, 22.127096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646278, 29.511459, 22.813965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371513, 29.225330, 22.762642>,  <40.206654, 29.053652, 22.731848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371513, 29.225330, 22.762642>,  <40.646278, 29.511459, 22.813965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371513, 29.225330, 22.762642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083142, -0.098040, 0.991703,
		-0.721968, 0.691882, 0.007871,
		-0.686913, -0.715324, -0.128306,
		40.165440, 29.010733, 22.724150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142036, 29.576523, 23.348213>,  <40.646278, 29.511459, 22.813965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142036, 29.576523, 23.348213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113640, 29.201891, 23.210939>,  <40.096603, 28.977112, 23.128574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113640, 29.201891, 23.210939>,  <40.142036, 29.576523, 23.348213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113640, 29.201891, 23.210939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113877, -0.334194, 0.935600,
		-0.990955, 0.105498, -0.082931,
		-0.070989, -0.936581, -0.343185,
		40.092342, 28.920916, 23.107985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617943, 29.330008, 23.787447>,  <40.142036, 29.576523, 23.348213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617943, 29.330008, 23.787447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822205, 29.032604, 23.614735>,  <39.944759, 28.854162, 23.511108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822205, 29.032604, 23.614735>,  <39.617943, 29.330008, 23.787447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822205, 29.032604, 23.614735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021319, -0.491089, 0.870848,
		-0.859525, -0.453903, -0.234924,
		0.510650, -0.743507, -0.431780,
		39.975399, 28.809551, 23.485201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266968, 28.665586, 23.960155>,  <39.617943, 29.330008, 23.787447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266968, 28.665586, 23.960155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638523, 28.545187, 23.873838>,  <39.861458, 28.472946, 23.822048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638523, 28.545187, 23.873838>,  <39.266968, 28.665586, 23.960155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638523, 28.545187, 23.873838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005952, -0.570450, 0.821311,
		-0.370314, -0.764190, -0.528092,
		0.928887, -0.301000, -0.215794,
		39.917191, 28.454887, 23.809099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473656, 28.151365, 24.474821>,  <39.266968, 28.665586, 23.960155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473656, 28.151365, 24.474821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810833, 28.131721, 24.260517>,  <40.013138, 28.119936, 24.131935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810833, 28.131721, 24.260517>,  <39.473656, 28.151365, 24.474821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810833, 28.131721, 24.260517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354497, -0.698385, 0.621764,
		-0.404701, -0.714036, -0.571288,
		0.842941, -0.049109, -0.535760,
		40.063717, 28.116989, 24.099789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608364, 27.422379, 24.226812>,  <39.473656, 28.151365, 24.474821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608364, 27.422379, 24.226812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960354, 27.607073, 24.271446>,  <40.171547, 27.717890, 24.298227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960354, 27.607073, 24.271446>,  <39.608364, 27.422379, 24.226812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960354, 27.607073, 24.271446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339390, -0.775471, 0.532408,
		0.332363, -0.430633, -0.839101,
		0.879971, 0.461736, 0.111585,
		40.224346, 27.745594, 24.304922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123829, 26.972174, 24.124680>,  <39.608364, 27.422379, 24.226812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123829, 26.972174, 24.124680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326195, 27.254240, 24.323391>,  <40.447617, 27.423481, 24.442617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326195, 27.254240, 24.323391>,  <40.123829, 26.972174, 24.124680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326195, 27.254240, 24.323391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468680, -0.708212, 0.527992,
		0.724146, -0.034290, -0.688794,
		0.505917, 0.705167, 0.496777,
		40.477970, 27.465790, 24.472424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678947, 26.577431, 24.361191>,  <40.123829, 26.972174, 24.124680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678947, 26.577431, 24.361191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700508, 26.906431, 24.587671>,  <40.713444, 27.103832, 24.723560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700508, 26.906431, 24.587671>,  <40.678947, 26.577431, 24.361191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700508, 26.906431, 24.587671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520218, -0.507130, 0.687163,
		0.852331, 0.257507, -0.455217,
		0.053905, 0.822502, 0.566202,
		40.716679, 27.153181, 24.757532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375225, 26.676355, 24.564907>,  <40.678947, 26.577431, 24.361191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375225, 26.676355, 24.564907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165562, 26.878193, 24.839321>,  <41.039764, 26.999294, 25.003969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165562, 26.878193, 24.839321>,  <41.375225, 26.676355, 24.564907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165562, 26.878193, 24.839321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491100, -0.479039, 0.727559,
		0.695759, 0.718267, 0.003285,
		-0.524156, 0.504592, 0.686037,
		41.008316, 27.029572, 25.045132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854218, 26.979914, 25.016779>,  <41.375225, 26.676355, 24.564907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854218, 26.979914, 25.016779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515060, 26.944418, 25.225857>,  <41.311565, 26.923120, 25.351303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515060, 26.944418, 25.225857>,  <41.854218, 26.979914, 25.016779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515060, 26.944418, 25.225857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523897, -0.291502, 0.800349,
		0.081344, 0.952445, 0.293652,
		-0.847888, -0.088740, 0.522695,
		41.260693, 26.917795, 25.382666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012222, 27.189394, 25.634811>,  <41.854218, 26.979914, 25.016779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012222, 27.189394, 25.634811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665787, 27.000130, 25.699318>,  <41.457924, 26.886572, 25.738022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665787, 27.000130, 25.699318>,  <42.012222, 27.189394, 25.634811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665787, 27.000130, 25.699318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313163, -0.262112, 0.912812,
		-0.389636, 0.841081, 0.375189,
		-0.866090, -0.473160, 0.161267,
		41.405960, 26.858181, 25.747698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649757, 27.420197, 26.179167>,  <42.012222, 27.189394, 25.634811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649757, 27.420197, 26.179167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534588, 27.039373, 26.137821>,  <41.465488, 26.810879, 26.113014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534588, 27.039373, 26.137821>,  <41.649757, 27.420197, 26.179167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534588, 27.039373, 26.137821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398660, -0.217297, 0.890984,
		-0.870730, 0.215327, 0.442113,
		-0.287922, -0.952059, -0.103365,
		41.448212, 26.753756, 26.106812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200417, 27.291197, 26.753571>,  <41.649757, 27.420197, 26.179167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200417, 27.291197, 26.753571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413059, 26.994789, 26.589478>,  <41.540646, 26.816944, 26.491022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413059, 26.994789, 26.589478>,  <41.200417, 27.291197, 26.753571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413059, 26.994789, 26.589478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367649, -0.234454, 0.899926,
		-0.763041, -0.629225, 0.147798,
		0.531604, -0.741018, -0.410232,
		41.572540, 26.772484, 26.466408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907856, 26.784714, 27.159607>,  <41.200417, 27.291197, 26.753571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907856, 26.784714, 27.159607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275482, 26.698957, 27.027336>,  <41.496059, 26.647505, 26.947973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275482, 26.698957, 27.027336>,  <40.907856, 26.784714, 27.159607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275482, 26.698957, 27.027336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342904, 0.021478, 0.939125,
		-0.194237, -0.976512, 0.093255,
		0.919070, -0.214390, -0.330678,
		41.551205, 26.634642, 26.928133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534138, 27.144049, 27.765114>,  <40.907856, 26.784714, 27.159607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534138, 27.144049, 27.765114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883041, 27.145536, 27.960728>,  <41.092384, 27.146429, 28.078096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883041, 27.145536, 27.960728>,  <40.534138, 27.144049, 27.765114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883041, 27.145536, 27.960728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424134, 0.503584, 0.752671,
		-0.243471, -0.863939, 0.440831,
		0.872257, 0.003718, 0.489034,
		41.144718, 27.146652, 28.107437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413799, 27.857265, 27.666573>,  <40.534138, 27.144049, 27.765114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413799, 27.857265, 27.666573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776054, 27.865030, 27.497129>,  <40.993408, 27.869690, 27.395464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776054, 27.865030, 27.497129>,  <40.413799, 27.857265, 27.666573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776054, 27.865030, 27.497129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333398, 0.584699, 0.739576,
		0.262038, -0.811018, 0.523054,
		0.905639, 0.019412, -0.423605,
		41.047745, 27.870853, 27.370049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826599, 28.078598, 28.228580>,  <40.413799, 27.857265, 27.666573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826599, 28.078598, 28.228580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093483, 28.089659, 27.930836>,  <41.253613, 28.096296, 27.752190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093483, 28.089659, 27.930836>,  <40.826599, 28.078598, 28.228580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093483, 28.089659, 27.930836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590889, 0.588796, 0.551515,
		0.453527, -0.807808, 0.376509,
		0.667206, 0.027652, -0.744360,
		41.293644, 28.097954, 27.707527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598263, 28.422544, 28.877630>,  <40.826599, 28.078598, 28.228580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598263, 28.422544, 28.877630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217091, 28.409462, 28.757067>,  <39.988388, 28.401611, 28.684729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217091, 28.409462, 28.757067>,  <40.598263, 28.422544, 28.877630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217091, 28.409462, 28.757067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198673, 0.818328, 0.539322,
		0.229011, 0.573820, -0.786311,
		-0.952934, -0.032708, -0.301409,
		39.931210, 28.399649, 28.666643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398087, 29.033051, 28.441517>,  <40.598263, 28.422544, 28.877630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398087, 29.033051, 28.441517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058472, 28.886015, 28.593317>,  <39.854702, 28.797794, 28.684397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058472, 28.886015, 28.593317>,  <40.398087, 29.033051, 28.441517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058472, 28.886015, 28.593317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151498, 0.857509, 0.491657,
		-0.506153, 0.359939, -0.783743,
		-0.849033, -0.367589, 0.379501,
		39.803761, 28.775738, 28.707167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081047, 29.605114, 28.438566>,  <40.398087, 29.033051, 28.441517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081047, 29.605114, 28.438566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859711, 29.364601, 28.669140>,  <39.726910, 29.220293, 28.807484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859711, 29.364601, 28.669140>,  <40.081047, 29.605114, 28.438566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859711, 29.364601, 28.669140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367607, 0.797275, 0.478768,
		-0.747451, 0.053020, -0.662198,
		-0.553338, -0.601284, 0.576433,
		39.693710, 29.184216, 28.842070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278595, 29.854485, 28.439728>,  <40.081047, 29.605114, 28.438566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278595, 29.854485, 28.439728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391907, 29.667940, 28.774931>,  <39.459892, 29.556013, 28.976053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391907, 29.667940, 28.774931>,  <39.278595, 29.854485, 28.439728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391907, 29.667940, 28.774931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432378, 0.717851, 0.545655,
		-0.856038, -0.516910, 0.001709,
		0.283281, -0.466363, 0.838008,
		39.476891, 29.528030, 29.026333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682594, 29.754875, 28.972343>,  <39.278595, 29.854485, 28.439728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682594, 29.754875, 28.972343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043705, 29.784718, 29.141781>,  <39.260372, 29.802624, 29.243444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043705, 29.784718, 29.141781>,  <38.682594, 29.754875, 28.972343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043705, 29.784718, 29.141781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394122, 0.537870, 0.745227,
		-0.172240, -0.839720, 0.514980,
		0.902774, 0.074606, 0.423595,
		39.314537, 29.807100, 29.268860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720577, 29.414660, 29.545372>,  <38.682594, 29.754875, 28.972343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720577, 29.414660, 29.545372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938187, 29.750248, 29.540163>,  <39.068752, 29.951601, 29.537037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938187, 29.750248, 29.540163>,  <38.720577, 29.414660, 29.545372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938187, 29.750248, 29.540163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679715, 0.449748, 0.579408,
		0.491966, -0.306355, 0.814934,
		0.544020, 0.838972, -0.013027,
		39.101395, 30.001940, 29.536255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249882, 29.219862, 29.993183>,  <38.720577, 29.414660, 29.545372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249882, 29.219862, 29.993183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228233, 29.278872, 29.598152>,  <39.215244, 29.314278, 29.361134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228233, 29.278872, 29.598152>,  <39.249882, 29.219862, 29.993183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228233, 29.278872, 29.598152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081256, -0.985096, -0.151604,
		-0.995223, -0.088452, 0.041330,
		-0.054123, 0.147522, -0.987577,
		39.211998, 29.323128, 29.301880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833080, 28.658911, 29.669195>,  <39.249882, 29.219862, 29.993183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833080, 28.658911, 29.669195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040031, 28.803236, 29.358807>,  <39.164204, 28.889832, 29.172573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040031, 28.803236, 29.358807>,  <38.833080, 28.658911, 29.669195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040031, 28.803236, 29.358807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212013, -0.932543, -0.292257,
		-0.829077, -0.013308, -0.558977,
		0.517380, 0.360814, -0.775971,
		39.195244, 28.911480, 29.126015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673916, 28.284323, 29.183418>,  <38.833080, 28.658911, 29.669195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673916, 28.284323, 29.183418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024307, 28.421589, 29.047832>,  <39.234543, 28.503948, 28.966480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024307, 28.421589, 29.047832>,  <38.673916, 28.284323, 29.183418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024307, 28.421589, 29.047832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171788, -0.878616, -0.445558,
		-0.450721, 0.332070, -0.828601,
		0.875979, 0.343166, -0.338965,
		39.287102, 28.524538, 28.946142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484005, 28.955261, 28.765100>,  <38.673916, 28.284323, 29.183418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484005, 28.955261, 28.765100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254539, 28.678795, 28.940916>,  <38.116859, 28.512915, 29.046406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254539, 28.678795, 28.940916>,  <38.484005, 28.955261, 28.765100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254539, 28.678795, 28.940916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658490, 0.708303, 0.254357,
		-0.487130, -0.143516, -0.861456,
		-0.573668, -0.691165, 0.439540,
		38.082439, 28.471445, 29.072779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914143, 28.988430, 28.371428>,  <38.484005, 28.955261, 28.765100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914143, 28.988430, 28.371428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825020, 28.831282, 28.728304>,  <37.771545, 28.736992, 28.942430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825020, 28.831282, 28.728304>,  <37.914143, 28.988430, 28.371428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825020, 28.831282, 28.728304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642306, 0.747627, 0.168809,
		-0.733348, -0.535449, -0.418923,
		-0.222809, -0.392872, 0.892192,
		37.758179, 28.713421, 28.995962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184238, 29.096329, 28.421953>,  <37.914143, 28.988430, 28.371428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184238, 29.096329, 28.421953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361382, 29.053896, 28.778070>,  <37.467667, 29.028437, 28.991741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361382, 29.053896, 28.778070>,  <37.184238, 29.096329, 28.421953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361382, 29.053896, 28.778070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359998, 0.888379, 0.284930,
		-0.821142, -0.446688, 0.355240,
		0.442862, -0.106082, 0.890292,
		37.494240, 29.022072, 29.045158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647434, 29.043640, 29.062256>,  <37.184238, 29.096329, 28.421953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647434, 29.043640, 29.062256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005707, 29.202738, 29.141815>,  <37.220669, 29.298197, 29.189550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005707, 29.202738, 29.141815>,  <36.647434, 29.043640, 29.062256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005707, 29.202738, 29.141815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444399, 0.784023, 0.433380,
		0.016434, -0.476559, 0.878989,
		0.895678, 0.397744, 0.198898,
		37.274410, 29.322062, 29.201485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103470, 29.362497, 28.669407>,  <36.647434, 29.043640, 29.062256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103470, 29.362497, 28.669407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757992, 29.543423, 28.758356>,  <35.550705, 29.651978, 28.811726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757992, 29.543423, 28.758356>,  <36.103470, 29.362497, 28.669407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757992, 29.543423, 28.758356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377202, 0.287427, 0.880400,
		0.334300, 0.844274, -0.418861,
		-0.863691, 0.452313, 0.222375,
		35.498886, 29.679117, 28.825069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249725, 30.060053, 28.844648>,  <36.103470, 29.362497, 28.669407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249725, 30.060053, 28.844648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920612, 29.934767, 29.034351>,  <35.723145, 29.859594, 29.148172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920612, 29.934767, 29.034351>,  <36.249725, 30.060053, 28.844648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920612, 29.934767, 29.034351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319829, 0.434623, 0.841910,
		-0.469824, 0.844392, -0.257425,
		-0.822785, -0.313218, 0.474257,
		35.673779, 29.840801, 29.176628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007771, 30.671085, 29.181854>,  <36.249725, 30.060053, 28.844648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007771, 30.671085, 29.181854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823135, 30.373859, 29.375673>,  <35.712353, 30.195524, 29.491964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823135, 30.373859, 29.375673>,  <36.007771, 30.671085, 29.181854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823135, 30.373859, 29.375673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206975, 0.440932, 0.873350,
		-0.862609, 0.503421, -0.049735,
		-0.461592, -0.743066, 0.484548,
		35.684658, 30.150940, 29.521038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568886, 30.981102, 29.667269>,  <36.007771, 30.671085, 29.181854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568886, 30.981102, 29.667269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653404, 30.615265, 29.805180>,  <35.704117, 30.395761, 29.887926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653404, 30.615265, 29.805180>,  <35.568886, 30.981102, 29.667269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653404, 30.615265, 29.805180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203931, 0.386231, 0.899576,
		-0.955911, -0.119766, 0.268123,
		0.211296, -0.914594, 0.344779,
		35.716793, 30.340887, 29.908613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080688, 30.861912, 30.150286>,  <35.568886, 30.981102, 29.667269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080688, 30.861912, 30.150286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420898, 30.662704, 30.217915>,  <35.625023, 30.543180, 30.258492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420898, 30.662704, 30.217915>,  <35.080688, 30.861912, 30.150286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420898, 30.662704, 30.217915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156291, 0.546283, 0.822890,
		-0.502175, -0.673464, 0.542463,
		0.850525, -0.498017, 0.169073,
		35.676056, 30.513300, 30.268637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047939, 30.688467, 30.883322>,  <35.080688, 30.861912, 30.150286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047939, 30.688467, 30.883322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425541, 30.668915, 30.752806>,  <35.652103, 30.657183, 30.674496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425541, 30.668915, 30.752806>,  <35.047939, 30.688467, 30.883322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425541, 30.668915, 30.752806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321592, 0.357266, 0.876892,
		0.073709, -0.932723, 0.352980,
		0.944005, -0.048881, -0.326290,
		35.708744, 30.654251, 30.654919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298313, 30.053476, 31.268753>,  <35.047939, 30.688467, 30.883322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298313, 30.053476, 31.268753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438156, 30.411030, 31.156506>,  <35.522060, 30.625563, 31.089157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438156, 30.411030, 31.156506>,  <35.298313, 30.053476, 31.268753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438156, 30.411030, 31.156506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218459, 0.369040, 0.903374,
		0.911072, -0.254520, 0.324295,
		0.349605, 0.893884, -0.280620,
		35.543037, 30.679195, 31.072319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827648, 30.547306, 31.474794>,  <35.298313, 30.053476, 31.268753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827648, 30.547306, 31.474794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184155, 30.439064, 31.329235>,  <36.398056, 30.374119, 31.241899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184155, 30.439064, 31.329235>,  <35.827648, 30.547306, 31.474794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184155, 30.439064, 31.329235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449171, 0.637212, 0.626264,
		0.062412, -0.721619, 0.689471,
		0.891263, -0.270603, -0.363900,
		36.451534, 30.357883, 31.220064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330448, 30.761721, 31.976738>,  <35.827648, 30.547306, 31.474794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330448, 30.761721, 31.976738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592678, 30.670479, 31.688797>,  <36.750015, 30.615734, 31.516033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592678, 30.670479, 31.688797>,  <36.330448, 30.761721, 31.976738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592678, 30.670479, 31.688797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708917, 0.514273, 0.482658,
		0.260104, -0.826735, 0.498854,
		0.655578, -0.228105, -0.719852,
		36.789352, 30.602047, 31.472841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958115, 30.455364, 32.283115>,  <36.330448, 30.761721, 31.976738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958115, 30.455364, 32.283115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020191, 30.641201, 31.934385>,  <37.057438, 30.752703, 31.725149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020191, 30.641201, 31.934385>,  <36.958115, 30.455364, 32.283115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020191, 30.641201, 31.934385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755560, 0.512726, 0.407728,
		0.636431, -0.721989, -0.271453,
		0.155194, 0.464590, -0.871820,
		37.066750, 30.780579, 31.672838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613476, 30.504023, 32.303955>,  <36.958115, 30.455364, 32.283115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613476, 30.504023, 32.303955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521069, 30.785635, 32.035336>,  <37.465626, 30.954601, 31.874165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521069, 30.785635, 32.035336>,  <37.613476, 30.504023, 32.303955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521069, 30.785635, 32.035336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812434, 0.519355, 0.264994,
		0.535335, -0.484369, -0.691957,
		-0.231017, 0.704029, -0.671546,
		37.451763, 30.996843, 31.833872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173679, 30.584209, 31.858656>,  <37.613476, 30.504023, 32.303955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173679, 30.584209, 31.858656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975517, 30.931522, 31.868927>,  <37.856621, 31.139910, 31.875090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975517, 30.931522, 31.868927>,  <38.173679, 30.584209, 31.858656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975517, 30.931522, 31.868927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853580, 0.481106, 0.199846,
		0.161168, 0.120924, -0.979491,
		-0.495405, 0.868282, 0.025680,
		37.826897, 31.192007, 31.876631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544727, 31.022520, 31.501675>,  <38.173679, 30.584209, 31.858656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544727, 31.022520, 31.501675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328884, 31.262934, 31.737497>,  <38.199379, 31.407183, 31.878990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328884, 31.262934, 31.737497>,  <38.544727, 31.022520, 31.501675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328884, 31.262934, 31.737497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806533, 0.569904, 0.157205,
		-0.241505, 0.560327, -0.792281,
		-0.539610, 0.601035, 0.589557,
		38.167000, 31.443245, 31.914364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649326, 31.638800, 31.208231>,  <38.544727, 31.022520, 31.501675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649326, 31.638800, 31.208231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550106, 31.703308, 31.590322>,  <38.490574, 31.742014, 31.819578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550106, 31.703308, 31.590322>,  <38.649326, 31.638800, 31.208231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550106, 31.703308, 31.590322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791573, 0.602179, 0.103888,
		-0.558464, 0.781902, -0.277032,
		-0.248053, 0.161273, 0.955228,
		38.475689, 31.751690, 31.876890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842850, 32.295990, 31.337986>,  <38.649326, 31.638800, 31.208231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842850, 32.295990, 31.337986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812191, 32.141048, 31.705481>,  <38.793797, 32.048084, 31.925978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812191, 32.141048, 31.705481>,  <38.842850, 32.295990, 31.337986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812191, 32.141048, 31.705481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798581, 0.527866, 0.289183,
		-0.596987, 0.755852, 0.268874,
		-0.076650, -0.387356, 0.918738,
		38.789196, 32.024841, 31.981102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674786, 32.839729, 31.816559>,  <38.842850, 32.295990, 31.337986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674786, 32.839729, 31.816559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899044, 32.529812, 31.933435>,  <39.033600, 32.343861, 32.003563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899044, 32.529812, 31.933435>,  <38.674786, 32.839729, 31.816559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899044, 32.529812, 31.933435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776819, 0.614318, 0.138441,
		-0.286762, 0.149365, 0.946286,
		0.560643, -0.774792, 0.292193,
		39.067238, 32.297375, 32.021091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929317, 32.906036, 32.466072>,  <38.674786, 32.839729, 31.816559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929317, 32.906036, 32.466072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184650, 32.665371, 32.274014>,  <39.337849, 32.520973, 32.158779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184650, 32.665371, 32.274014>,  <38.929317, 32.906036, 32.466072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184650, 32.665371, 32.274014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766328, 0.555571, 0.322618,
		0.072646, -0.573883, 0.815709,
		0.638329, -0.601664, -0.480143,
		39.376148, 32.484871, 32.129971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392860, 32.590748, 32.960766>,  <38.929317, 32.906036, 32.466072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392860, 32.590748, 32.960766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558758, 32.605148, 32.597076>,  <39.658295, 32.613789, 32.378860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558758, 32.605148, 32.597076>,  <39.392860, 32.590748, 32.960766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558758, 32.605148, 32.597076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791214, 0.479239, 0.379881,
		0.449411, -0.876946, 0.170278,
		0.414740, 0.035996, -0.909228,
		39.683178, 32.615948, 32.324306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951412, 32.974197, 32.983356>,  <39.392860, 32.590748, 32.960766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951412, 32.974197, 32.983356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000271, 32.916702, 32.590538>,  <40.029587, 32.882206, 32.354847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000271, 32.916702, 32.590538>,  <39.951412, 32.974197, 32.983356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000271, 32.916702, 32.590538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849102, 0.527465, 0.028409,
		0.513912, -0.837329, 0.186477,
		0.122148, -0.143738, -0.982049,
		40.036915, 32.873581, 32.295925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655499, 33.221958, 32.898319>,  <39.951412, 32.974197, 32.983356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655499, 33.221958, 32.898319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479244, 33.206211, 32.539589>,  <40.373493, 33.196762, 32.324352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479244, 33.206211, 32.539589>,  <40.655499, 33.221958, 32.898319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479244, 33.206211, 32.539589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689825, 0.624445, -0.366346,
		0.574440, -0.780076, -0.247994,
		-0.440636, -0.039371, -0.896822,
		40.347054, 33.194401, 32.270542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166866, 33.097198, 32.240639>,  <40.655499, 33.221958, 32.898319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166866, 33.097198, 32.240639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907352, 33.318211, 32.031338>,  <40.751644, 33.450817, 31.905756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907352, 33.318211, 32.031338>,  <41.166866, 33.097198, 32.240639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907352, 33.318211, 32.031338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751462, 0.573562, -0.326084,
		0.119948, -0.604763, -0.787321,
		-0.648781, 0.552529, -0.523254,
		40.712719, 33.483971, 31.874361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085510, 32.984062, 31.500143>,  <41.166866, 33.097198, 32.240639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085510, 32.984062, 31.500143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114918, 33.366863, 31.612392>,  <41.132561, 33.596542, 31.679741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114918, 33.366863, 31.612392>,  <41.085510, 32.984062, 31.500143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114918, 33.366863, 31.612392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881156, 0.069451, -0.467697,
		-0.467075, 0.281655, -0.838160,
		0.073518, 0.956999, 0.280621,
		41.136974, 33.653961, 31.696579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339027, 33.304707, 30.946064>,  <41.085510, 32.984062, 31.500143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339027, 33.304707, 30.946064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440807, 33.528702, 31.261448>,  <41.501873, 33.663101, 31.450678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440807, 33.528702, 31.261448>,  <41.339027, 33.304707, 30.946064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440807, 33.528702, 31.261448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913441, 0.128603, -0.386117,
		-0.317621, 0.818456, -0.478797,
		0.254445, 0.559992, 0.788459,
		41.517139, 33.696701, 31.497986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783634, 33.768185, 30.635469>,  <41.339027, 33.304707, 30.946064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783634, 33.768185, 30.635469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859985, 33.725925, 31.025835>,  <41.905796, 33.700569, 31.260054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859985, 33.725925, 31.025835>,  <41.783634, 33.768185, 30.635469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859985, 33.725925, 31.025835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975207, 0.133815, -0.176251,
		-0.111971, 0.985359, 0.128572,
		0.190876, -0.105649, 0.975912,
		41.917248, 33.694229, 31.318609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226944, 34.381882, 30.932343>,  <41.783634, 33.768185, 30.635469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226944, 34.381882, 30.932343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282307, 34.075741, 31.183762>,  <42.315525, 33.892056, 31.334614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282307, 34.075741, 31.183762>,  <42.226944, 34.381882, 30.932343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282307, 34.075741, 31.183762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990355, 0.111099, -0.082793,
		-0.006465, 0.633946, 0.773350,
		0.138405, -0.765356, 0.628550,
		42.323830, 33.846134, 31.372326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762024, 33.766888, 31.024515>,  <42.226944, 34.381882, 30.932343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762024, 33.766888, 31.024515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105686, 33.609364, 31.155216>,  <43.311882, 33.514847, 31.233637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105686, 33.609364, 31.155216>,  <42.762024, 33.766888, 31.024515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105686, 33.609364, 31.155216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503071, -0.533124, 0.680219,
		-0.093680, -0.748793, -0.656151,
		0.859152, -0.393813, 0.326753,
		43.363434, 33.491219, 31.253242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930603, 32.969196, 30.859196>,  <42.762024, 33.766888, 31.024515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930603, 32.969196, 30.859196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017948, 33.168842, 31.194624>,  <43.070354, 33.288631, 31.395882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017948, 33.168842, 31.194624>,  <42.930603, 32.969196, 30.859196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017948, 33.168842, 31.194624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776954, -0.431031, 0.458863,
		0.590476, -0.751729, 0.293669,
		0.218360, 0.499115, 0.838572,
		43.083458, 33.318577, 31.446196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663929, 32.598419, 31.530842>,  <42.930603, 32.969196, 30.859196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663929, 32.598419, 31.530842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698544, 32.995861, 31.559845>,  <42.719311, 33.234325, 31.577248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698544, 32.995861, 31.559845>,  <42.663929, 32.598419, 31.530842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698544, 32.995861, 31.559845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963937, 0.065118, 0.258041,
		0.251669, -0.092223, 0.963409,
		0.086533, 0.993607, 0.072509,
		42.724503, 33.293941, 31.581598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374954, 32.862316, 32.261333>,  <42.663929, 32.598419, 31.530842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374954, 32.862316, 32.261333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365566, 33.133312, 31.967270>,  <42.359932, 33.295910, 31.790833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365566, 33.133312, 31.967270>,  <42.374954, 32.862316, 32.261333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365566, 33.133312, 31.967270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946703, 0.221238, 0.234110,
		0.321252, 0.701469, 0.636190,
		-0.023472, 0.677492, -0.735156,
		42.358524, 33.336559, 31.746723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112240, 33.398613, 32.603615>,  <42.374954, 32.862316, 32.261333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112240, 33.398613, 32.603615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049683, 33.467266, 32.214546>,  <42.012150, 33.508457, 31.981106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049683, 33.467266, 32.214546>,  <42.112240, 33.398613, 32.603615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049683, 33.467266, 32.214546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929173, 0.308377, 0.203817,
		0.334931, 0.935652, 0.111252,
		-0.156394, 0.171637, -0.972667,
		42.002766, 33.518757, 31.922747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764336, 33.582771, 33.014469>,  <42.112240, 33.398613, 32.603615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764336, 33.582771, 33.014469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512821, 33.603046, 33.324841>,  <42.361912, 33.615211, 33.511063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512821, 33.603046, 33.324841>,  <42.764336, 33.582771, 33.014469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512821, 33.603046, 33.324841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334322, -0.918554, -0.210922,
		0.702037, -0.392034, 0.594520,
		-0.628787, 0.050686, 0.775924,
		42.324184, 33.618252, 33.557617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907757, 32.986446, 33.622101>,  <42.764336, 33.582771, 33.014469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907757, 32.986446, 33.622101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529896, 33.109833, 33.577396>,  <42.303181, 33.183865, 33.550575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529896, 33.109833, 33.577396>,  <42.907757, 32.986446, 33.622101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529896, 33.109833, 33.577396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283114, -0.938549, -0.197414,
		-0.165785, -0.154847, 0.973929,
		-0.944649, 0.308461, -0.111758,
		42.246502, 33.202370, 33.543869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341198, 33.616264, 33.559246>,  <42.907757, 32.986446, 33.622101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341198, 33.616264, 33.559246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429062, 33.439049, 33.906914>,  <43.481781, 33.332718, 34.115517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429062, 33.439049, 33.906914>,  <43.341198, 33.616264, 33.559246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429062, 33.439049, 33.906914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639803, 0.738003, 0.214484,
		-0.736478, 0.508985, 0.445572,
		0.219664, -0.443041, 0.869173,
		43.494961, 33.306137, 34.167667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362911, 34.111618, 34.203373>,  <43.341198, 33.616264, 33.559246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362911, 34.111618, 34.203373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632580, 33.822250, 34.262917>,  <43.794380, 33.648628, 34.298641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632580, 33.822250, 34.262917>,  <43.362911, 34.111618, 34.203373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632580, 33.822250, 34.262917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697746, 0.689915, 0.192789,
		-0.242167, -0.026107, 0.969883,
		0.674170, -0.723420, 0.148858,
		43.834831, 33.605225, 34.307575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719341, 34.223438, 34.899166>,  <43.362911, 34.111618, 34.203373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719341, 34.223438, 34.899166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953564, 33.997524, 34.666569>,  <44.094097, 33.861977, 34.527008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953564, 33.997524, 34.666569>,  <43.719341, 34.223438, 34.899166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953564, 33.997524, 34.666569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783852, 0.577349, 0.228569,
		0.206634, -0.589648, 0.780780,
		0.585558, -0.564786, -0.581497,
		44.129230, 33.828087, 34.492119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110760, 33.815308, 35.006477>,  <43.719341, 34.223438, 34.899166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110760, 33.815308, 35.006477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346653, 33.497250, 35.062996>,  <43.488190, 33.306416, 35.096905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346653, 33.497250, 35.062996>,  <43.110760, 33.815308, 35.006477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346653, 33.497250, 35.062996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641302, 0.567415, 0.516499,
		-0.490862, -0.213985, 0.844550,
		0.589734, -0.795141, 0.141294,
		43.523575, 33.258709, 35.105385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441147, 33.856777, 35.689568>,  <43.110760, 33.815308, 35.006477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441147, 33.856777, 35.689568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679787, 33.645889, 35.447540>,  <43.822971, 33.519356, 35.302322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679787, 33.645889, 35.447540>,  <43.441147, 33.856777, 35.689568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679787, 33.645889, 35.447540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764410, 0.602941, 0.228340,
		0.244435, -0.598749, 0.762726,
		0.596597, -0.527222, -0.605070,
		43.858765, 33.487724, 35.266018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048309, 33.532284, 36.040997>,  <43.441147, 33.856777, 35.689568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048309, 33.532284, 36.040997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124580, 33.626511, 35.659809>,  <44.170341, 33.683048, 35.431095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124580, 33.626511, 35.659809>,  <44.048309, 33.532284, 36.040997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124580, 33.626511, 35.659809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796658, 0.530079, 0.290433,
		0.573566, -0.814569, -0.086597,
		0.190675, 0.235571, -0.952969,
		44.181782, 33.697182, 35.373917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783890, 33.332867, 35.846027>,  <44.048309, 33.532284, 36.040997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783890, 33.332867, 35.846027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.598461, 33.644608, 35.677406>,  <44.487206, 33.831654, 35.576233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.598461, 33.644608, 35.677406>,  <44.783890, 33.332867, 35.846027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598461, 33.644608, 35.677406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616224, 0.625437, 0.478641,
		0.636686, -0.037887, -0.770192,
		-0.463572, 0.779354, -0.421554,
		44.459389, 33.878414, 35.550941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285301, 33.797363, 35.358166>,  <44.783890, 33.332867, 35.846027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285301, 33.797363, 35.358166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000046, 34.041523, 35.496063>,  <44.828892, 34.188019, 35.578800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000046, 34.041523, 35.496063>,  <45.285301, 33.797363, 35.358166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000046, 34.041523, 35.496063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693635, 0.685615, 0.220914,
		-0.101516, 0.396669, -0.912331,
		-0.713138, 0.610398, 0.344744,
		44.786106, 34.224644, 35.599487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215141, 34.342087, 34.985954>,  <45.285301, 33.797363, 35.358166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215141, 34.342087, 34.985954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130665, 34.473534, 35.354172>,  <45.079979, 34.552402, 35.575104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130665, 34.473534, 35.354172>,  <45.215141, 34.342087, 34.985954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130665, 34.473534, 35.354172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745959, 0.662768, -0.065456,
		-0.631619, 0.672867, -0.385108,
		-0.211194, 0.328617, 0.920548,
		45.067307, 34.572121, 35.630337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894680, 35.047985, 35.077438>,  <45.215141, 34.342087, 34.985954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894680, 35.047985, 35.077438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159111, 34.918823, 35.348351>,  <45.317768, 34.841324, 35.510899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159111, 34.918823, 35.348351>,  <44.894680, 35.047985, 35.077438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159111, 34.918823, 35.348351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654409, 0.689709, -0.309920,
		-0.367051, 0.648099, 0.667264,
		0.661077, -0.322907, 0.677280,
		45.357433, 34.821953, 35.551533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152912, 35.719395, 35.583595>,  <44.894680, 35.047985, 35.077438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152912, 35.719395, 35.583595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419960, 35.422997, 35.554741>,  <45.580189, 35.245155, 35.537430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419960, 35.422997, 35.554741>,  <45.152912, 35.719395, 35.583595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419960, 35.422997, 35.554741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673108, 0.642159, -0.366822,
		0.318135, 0.196345, 0.927491,
		0.667620, -0.741000, -0.072132,
		45.620247, 35.200695, 35.533100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.810925, 36.017391, 35.864944>,  <45.152912, 35.719395, 35.583595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.810925, 36.017391, 35.864944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865036, 35.718391, 35.604809>,  <45.897503, 35.538990, 35.448727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865036, 35.718391, 35.604809>,  <45.810925, 36.017391, 35.864944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865036, 35.718391, 35.604809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476450, 0.624580, -0.618785,
		0.868732, -0.226147, 0.440639,
		0.135278, -0.747501, -0.650340,
		45.905621, 35.494141, 35.409706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482368, 36.016293, 35.743629>,  <45.810925, 36.017391, 35.864944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.482368, 36.016293, 35.743629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241772, 35.893475, 35.448624>,  <46.097412, 35.819786, 35.271618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241772, 35.893475, 35.448624>,  <46.482368, 36.016293, 35.743629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241772, 35.893475, 35.448624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408267, 0.675386, -0.614143,
		0.686674, -0.670508, -0.280888,
		-0.601496, -0.307039, -0.737516,
		46.061325, 35.801361, 35.227367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.864899, 35.960243, 35.151726>,  <46.482368, 36.016293, 35.743629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.864899, 35.960243, 35.151726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490284, 36.001064, 35.017574>,  <46.265514, 36.025558, 34.937084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490284, 36.001064, 35.017574>,  <46.864899, 35.960243, 35.151726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.490284, 36.001064, 35.017574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326437, 0.602623, -0.728206,
		0.127788, -0.791474, -0.597696,
		-0.936541, 0.102054, -0.335374,
		46.209320, 36.031681, 34.916962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992626, 35.406464, 34.719391>,  <46.864899, 35.960243, 35.151726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992626, 35.406464, 34.719391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262436, 35.113873, 34.759312>,  <47.424320, 34.938316, 34.783264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262436, 35.113873, 34.759312>,  <46.992626, 35.406464, 34.719391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.262436, 35.113873, 34.759312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472939, 0.531948, 0.702396,
		-0.566876, -0.426581, 0.704755,
		0.674522, -0.731477, 0.099802,
		47.464794, 34.894428, 34.789253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.097221, 35.150391, 35.398277>,  <46.992626, 35.406464, 34.719391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.097221, 35.150391, 35.398277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446125, 35.108723, 35.207146>,  <47.655468, 35.083721, 35.092468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446125, 35.108723, 35.207146>,  <47.097221, 35.150391, 35.398277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446125, 35.108723, 35.207146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476403, 0.401765, 0.782065,
		0.110505, -0.909799, 0.400069,
		0.872255, -0.104172, -0.477828,
		47.707802, 35.077473, 35.063797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.486931, 26.246592, 17.148243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119480, 26.387011, 17.220789>,  <34.899010, 26.471262, 17.264317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119480, 26.387011, 17.220789>,  <35.486931, 26.246592, 17.148243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119480, 26.387011, 17.220789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186368, -0.019791, 0.982281,
		0.348416, 0.936149, -0.047243,
		-0.918626, 0.351047, 0.181364,
		34.843891, 26.492325, 17.275198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600071, 26.620392, 17.677258>,  <35.486931, 26.246592, 17.148243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600071, 26.620392, 17.677258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201485, 26.586905, 17.674461>,  <34.962334, 26.566813, 17.672783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201485, 26.586905, 17.674461>,  <35.600071, 26.620392, 17.677258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201485, 26.586905, 17.674461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003954, -0.129878, 0.991522,
		-0.083917, 0.987989, 0.129750,
		-0.996465, -0.083719, -0.006993,
		34.902546, 26.561789, 17.672363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386429, 27.024191, 18.187994>,  <35.600071, 26.620392, 17.677258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386429, 27.024191, 18.187994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.064625, 26.789698, 18.149845>,  <34.871544, 26.649002, 18.126955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.064625, 26.789698, 18.149845>,  <35.386429, 27.024191, 18.187994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064625, 26.789698, 18.149845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060957, -0.241225, 0.968553,
		-0.590803, 0.773397, 0.229803,
		-0.804510, -0.586232, -0.095372,
		34.823273, 26.613829, 18.121233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898922, 27.198362, 18.777187>,  <35.386429, 27.024191, 18.187994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898922, 27.198362, 18.777187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.785843, 26.834658, 18.654993>,  <34.717995, 26.616434, 18.581676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.785843, 26.834658, 18.654993>,  <34.898922, 27.198362, 18.777187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785843, 26.834658, 18.654993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026772, -0.310874, 0.950074,
		-0.958835, 0.276764, 0.063541,
		-0.282699, -0.909263, -0.305486,
		34.701035, 26.561878, 18.563347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215897, 26.987017, 19.014017>,  <34.898922, 27.198362, 18.777187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215897, 26.987017, 19.014017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421917, 26.652735, 18.937794>,  <34.545528, 26.452166, 18.892059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421917, 26.652735, 18.937794>,  <34.215897, 26.987017, 19.014017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421917, 26.652735, 18.937794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113893, -0.287066, 0.951116,
		-0.849557, -0.468174, -0.243036,
		0.515055, -0.835707, -0.190557,
		34.576435, 26.402023, 18.880627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929394, 26.479769, 19.437258>,  <34.215897, 26.987017, 19.014017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929394, 26.479769, 19.437258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.285801, 26.320305, 19.350393>,  <34.499645, 26.224627, 19.298275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.285801, 26.320305, 19.350393>,  <33.929394, 26.479769, 19.437258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285801, 26.320305, 19.350393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168662, -0.153412, 0.973662,
		-0.421476, -0.904176, -0.069453,
		0.891017, -0.398661, -0.217160,
		34.553104, 26.200706, 19.285246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005306, 25.888998, 19.837835>,  <33.929394, 26.479769, 19.437258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005306, 25.888998, 19.837835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.388504, 25.944351, 19.737360>,  <34.618423, 25.977564, 19.677074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.388504, 25.944351, 19.737360>,  <34.005306, 25.888998, 19.837835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388504, 25.944351, 19.737360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286641, -0.434217, 0.853987,
		0.009108, -0.890116, -0.455644,
		0.957995, 0.138384, -0.251189,
		34.675903, 25.985867, 19.662003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430958, 25.327963, 20.229301>,  <34.005306, 25.888998, 19.837835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430958, 25.327963, 20.229301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704418, 25.600368, 20.124350>,  <34.868492, 25.763813, 20.061378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704418, 25.600368, 20.124350>,  <34.430958, 25.327963, 20.229301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704418, 25.600368, 20.124350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479362, -0.147930, 0.865060,
		0.550305, -0.717172, -0.427585,
		0.683649, 0.681015, -0.262378,
		34.909512, 25.804672, 20.045637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107525, 25.033247, 20.377344>,  <34.430958, 25.327963, 20.229301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107525, 25.033247, 20.377344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119343, 25.432999, 20.385057>,  <35.126434, 25.672850, 20.389685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119343, 25.432999, 20.385057>,  <35.107525, 25.033247, 20.377344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119343, 25.432999, 20.385057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474188, -0.030995, 0.879878,
		0.879927, -0.016853, -0.474809,
		0.029546, 0.999377, 0.019282,
		35.128208, 25.732811, 20.390842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664379, 25.076429, 20.752884>,  <35.107525, 25.033247, 20.377344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664379, 25.076429, 20.752884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.527122, 25.451868, 20.767269>,  <35.444767, 25.677132, 20.775900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.527122, 25.451868, 20.767269>,  <35.664379, 25.076429, 20.752884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527122, 25.451868, 20.767269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363890, 0.097542, 0.926320,
		0.865932, 0.330944, -0.375017,
		-0.343140, 0.938595, 0.035962,
		35.424179, 25.733446, 20.778057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343830, 25.470436, 21.007738>,  <35.664379, 25.076429, 20.752884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343830, 25.470436, 21.007738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002464, 25.664150, 21.084831>,  <35.797646, 25.780378, 21.131088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002464, 25.664150, 21.084831>,  <36.343830, 25.470436, 21.007738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002464, 25.664150, 21.084831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242868, 0.042294, 0.969137,
		0.461186, 0.873888, -0.153712,
		-0.853418, 0.484284, 0.192734,
		35.746437, 25.809435, 21.142653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542400, 26.005857, 21.521214>,  <36.343830, 25.470436, 21.007738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542400, 26.005857, 21.521214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146660, 25.986765, 21.576210>,  <35.909214, 25.975309, 21.609209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146660, 25.986765, 21.576210>,  <36.542400, 26.005857, 21.521214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146660, 25.986765, 21.576210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129276, 0.145772, 0.980835,
		-0.066858, 0.988166, -0.138050,
		-0.989352, -0.047730, 0.137492,
		35.849854, 25.972446, 21.617458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269844, 26.667618, 21.847784>,  <36.542400, 26.005857, 21.521214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269844, 26.667618, 21.847784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.022915, 26.365011, 21.934134>,  <35.874760, 26.183447, 21.985943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.022915, 26.365011, 21.934134>,  <36.269844, 26.667618, 21.847784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022915, 26.365011, 21.934134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020645, 0.289883, 0.956839,
		-0.786443, 0.586218, -0.194568,
		-0.617318, -0.756516, 0.215874,
		35.837719, 26.138056, 21.998896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889523, 26.928186, 22.372252>,  <36.269844, 26.667618, 21.847784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889523, 26.928186, 22.372252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800377, 26.538677, 22.390581>,  <35.746891, 26.304972, 22.401579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800377, 26.538677, 22.390581>,  <35.889523, 26.928186, 22.372252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800377, 26.538677, 22.390581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043733, 0.056945, 0.997419,
		-0.973868, 0.220286, -0.055277,
		-0.222865, -0.973772, 0.045823,
		35.733517, 26.246546, 22.404327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265129, 26.843010, 22.778015>,  <35.889523, 26.928186, 22.372252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265129, 26.843010, 22.778015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484070, 26.509811, 22.810322>,  <35.615433, 26.309893, 22.829706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484070, 26.509811, 22.810322>,  <35.265129, 26.843010, 22.778015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484070, 26.509811, 22.810322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015593, 0.106638, 0.994176,
		-0.836757, -0.542905, 0.071357,
		0.547352, -0.832996, 0.080765,
		35.648277, 26.259912, 22.834551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922131, 26.462906, 23.334089>,  <35.265129, 26.843010, 22.778015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922131, 26.462906, 23.334089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286449, 26.300652, 23.303350>,  <35.505043, 26.203299, 23.284908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286449, 26.300652, 23.303350>,  <34.922131, 26.462906, 23.334089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286449, 26.300652, 23.303350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089193, 0.011594, 0.995947,
		-0.403099, -0.913962, 0.046739,
		0.910800, -0.405634, -0.076845,
		35.559689, 26.178961, 23.280296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880154, 25.897327, 23.787069>,  <34.922131, 26.462906, 23.334089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880154, 25.897327, 23.787069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.268677, 25.984247, 23.748394>,  <35.501789, 26.036400, 23.725189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.268677, 25.984247, 23.748394>,  <34.880154, 25.897327, 23.787069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268677, 25.984247, 23.748394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129182, -0.140663, 0.981594,
		0.199701, -0.965916, -0.164698,
		0.971304, 0.217301, -0.096688,
		35.560066, 26.049437, 23.719387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208599, 25.460472, 24.223761>,  <34.880154, 25.897327, 23.787069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208599, 25.460472, 24.223761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512829, 25.712891, 24.162691>,  <35.695366, 25.864342, 24.126049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512829, 25.712891, 24.162691>,  <35.208599, 25.460472, 24.223761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512829, 25.712891, 24.162691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261504, -0.082519, 0.961668,
		0.594259, -0.771344, -0.227783,
		0.760574, 0.631046, -0.152672,
		35.741001, 25.902205, 24.116890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880047, 25.146824, 24.607904>,  <35.208599, 25.460472, 24.223761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880047, 25.146824, 24.607904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.922272, 25.541599, 24.559233>,  <35.947609, 25.778465, 24.530029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.922272, 25.541599, 24.559233>,  <35.880047, 25.146824, 24.607904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922272, 25.541599, 24.559233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154395, 0.104613, 0.982455,
		0.982353, -0.122501, -0.141335,
		0.105567, 0.986940, -0.121681,
		35.953941, 25.837681, 24.522728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538063, 25.355242, 24.954109>,  <35.880047, 25.146824, 24.607904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538063, 25.355242, 24.954109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327888, 25.694874, 24.932266>,  <36.201782, 25.898653, 24.919161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327888, 25.694874, 24.932266>,  <36.538063, 25.355242, 24.954109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327888, 25.694874, 24.932266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267636, 0.225864, 0.936673,
		0.807644, 0.477546, -0.345921,
		-0.525435, 0.849079, -0.054609,
		36.170258, 25.949598, 24.915884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984180, 25.838688, 25.230013>,  <36.538063, 25.355242, 24.954109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984180, 25.838688, 25.230013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.626926, 26.018579, 25.232929>,  <36.412575, 26.126514, 25.234678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.626926, 26.018579, 25.232929>,  <36.984180, 25.838688, 25.230013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626926, 26.018579, 25.232929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174343, 0.331203, 0.927313,
		0.414627, 0.829486, -0.374216,
		-0.893134, 0.449731, 0.007290,
		36.358986, 26.153500, 25.235117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787426, 25.951841, 25.192169>,  <36.984180, 25.838688, 25.230013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787426, 25.951841, 25.192169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170483, 25.951632, 25.307354>,  <38.400318, 25.951506, 25.376465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170483, 25.951632, 25.307354>,  <37.787426, 25.951841, 25.192169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170483, 25.951632, 25.307354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279059, -0.245064, -0.928477,
		0.071057, 0.969507, -0.234537,
		0.957641, -0.000525, 0.287964,
		38.457775, 25.951473, 25.393744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064129, 26.490700, 24.867352>,  <37.787426, 25.951841, 25.192169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064129, 26.490700, 24.867352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.302769, 26.176472, 24.933016>,  <38.445953, 25.987936, 24.972414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.302769, 26.176472, 24.933016>,  <38.064129, 26.490700, 24.867352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302769, 26.176472, 24.933016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115265, -0.118557, -0.986234,
		0.794217, 0.607311, 0.019818,
		0.596601, -0.785569, 0.164162,
		38.481750, 25.940802, 24.982264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602272, 26.623585, 24.481899>,  <38.064129, 26.490700, 24.867352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602272, 26.623585, 24.481899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615322, 26.226446, 24.527842>,  <38.623154, 25.988163, 24.555407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615322, 26.226446, 24.527842>,  <38.602272, 26.623585, 24.481899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615322, 26.226446, 24.527842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006574, -0.114703, -0.993378,
		0.999446, 0.033163, 0.002785,
		0.032624, -0.992846, 0.114857,
		38.625111, 25.928593, 24.562298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091496, 26.356766, 24.007116>,  <38.602272, 26.623585, 24.481899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091496, 26.356766, 24.007116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874966, 26.030190, 24.087511>,  <38.745049, 25.834244, 24.135748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874966, 26.030190, 24.087511>,  <39.091496, 26.356766, 24.007116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874966, 26.030190, 24.087511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189662, -0.114312, -0.975172,
		0.819146, -0.566000, -0.092969,
		-0.541320, -0.816441, 0.200987,
		38.712570, 25.785257, 24.147808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418312, 25.744867, 23.545019>,  <39.091496, 26.356766, 24.007116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418312, 25.744867, 23.545019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.050705, 25.608164, 23.623610>,  <38.830139, 25.526142, 23.670763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.050705, 25.608164, 23.623610>,  <39.418312, 25.744867, 23.545019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050705, 25.608164, 23.623610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123713, -0.223183, -0.966894,
		0.374297, -0.912901, 0.162829,
		-0.919020, -0.341761, 0.196474,
		38.774998, 25.505636, 23.682552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389919, 25.161184, 23.122873>,  <39.418312, 25.744867, 23.545019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389919, 25.161184, 23.122873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.006897, 25.233534, 23.212650>,  <38.777084, 25.276943, 23.266516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.006897, 25.233534, 23.212650>,  <39.389919, 25.161184, 23.122873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006897, 25.233534, 23.212650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258307, -0.192850, -0.946618,
		-0.127929, -0.964415, 0.231384,
		-0.957555, 0.180868, 0.224444,
		38.719631, 25.287796, 23.279984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083385, 24.630125, 22.759802>,  <39.389919, 25.161184, 23.122873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083385, 24.630125, 22.759802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806168, 24.909704, 22.830416>,  <38.639839, 25.077452, 22.872784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806168, 24.909704, 22.830416>,  <39.083385, 24.630125, 22.759802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806168, 24.909704, 22.830416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296716, -0.053392, -0.953472,
		-0.657002, -0.713177, 0.244392,
		-0.693042, 0.698948, 0.176533,
		38.598255, 25.119389, 22.883375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360046, 24.304682, 22.687464>,  <39.083385, 24.630125, 22.759802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360046, 24.304682, 22.687464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341354, 24.698446, 22.619640>,  <38.330139, 24.934706, 22.578945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341354, 24.698446, 22.619640>,  <38.360046, 24.304682, 22.687464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341354, 24.698446, 22.619640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493326, -0.170346, -0.853001,
		-0.868588, 0.043784, 0.493597,
		-0.046735, 0.984411, -0.169561,
		38.327335, 24.993769, 22.568771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805454, 24.353407, 22.381424>,  <38.360046, 24.304682, 22.687464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805454, 24.353407, 22.381424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962227, 24.713118, 22.303766>,  <38.056290, 24.928944, 22.257172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962227, 24.713118, 22.303766>,  <37.805454, 24.353407, 22.381424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962227, 24.713118, 22.303766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371490, -0.038365, -0.927644,
		-0.841657, 0.435694, 0.319036,
		0.391929, 0.899277, -0.194146,
		38.079807, 24.982901, 22.245522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345127, 24.738203, 21.997297>,  <37.805454, 24.353407, 22.381424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345127, 24.738203, 21.997297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693905, 24.924522, 21.936968>,  <37.903172, 25.036314, 21.900770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693905, 24.924522, 21.936968>,  <37.345127, 24.738203, 21.997297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693905, 24.924522, 21.936968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213973, 0.085461, -0.973094,
		-0.440376, 0.880754, 0.174185,
		0.871943, 0.465798, -0.150823,
		37.955486, 25.064262, 21.891722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161530, 25.091042, 21.425619>,  <37.345127, 24.738203, 21.997297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161530, 25.091042, 21.425619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.559799, 25.127712, 21.431696>,  <37.798759, 25.149714, 21.435343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.559799, 25.127712, 21.431696>,  <37.161530, 25.091042, 21.425619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559799, 25.127712, 21.431696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009821, 0.266388, -0.963816,
		-0.092405, 0.959496, 0.266135,
		0.995673, 0.091675, 0.015192,
		37.858501, 25.155214, 21.436253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431217, 25.782585, 21.302721>,  <37.161530, 25.091042, 21.425619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431217, 25.782585, 21.302721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721603, 25.525473, 21.204893>,  <37.895836, 25.371206, 21.146196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721603, 25.525473, 21.204893>,  <37.431217, 25.782585, 21.302721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721603, 25.525473, 21.204893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122229, 0.229366, -0.965635,
		0.676787, 0.730907, 0.087944,
		0.725961, -0.642780, -0.244570,
		37.939392, 25.332638, 21.131521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722870, 26.087584, 20.776676>,  <37.431217, 25.782585, 21.302721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722870, 26.087584, 20.776676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.865459, 25.714632, 20.752697>,  <37.951012, 25.490860, 20.738310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.865459, 25.714632, 20.752697>,  <37.722870, 26.087584, 20.776676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865459, 25.714632, 20.752697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105947, 0.023408, -0.994096,
		0.928279, 0.360720, -0.090439,
		0.356473, -0.932380, -0.059946,
		37.972401, 25.434917, 20.734713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453415, 26.075312, 20.425913>,  <37.722870, 26.087584, 20.776676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453415, 26.075312, 20.425913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242508, 25.739397, 20.374147>,  <38.115963, 25.537848, 20.343088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242508, 25.739397, 20.374147>,  <38.453415, 26.075312, 20.425913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242508, 25.739397, 20.374147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048371, 0.181722, -0.982160,
		0.848322, -0.511600, -0.136437,
		-0.527266, -0.839787, -0.129413,
		38.084328, 25.487461, 20.335323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563427, 25.965107, 19.755512>,  <38.453415, 26.075312, 20.425913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563427, 25.965107, 19.755512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267082, 25.705257, 19.823761>,  <38.089275, 25.549347, 19.864710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267082, 25.705257, 19.823761>,  <38.563427, 25.965107, 19.755512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267082, 25.705257, 19.823761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309648, 0.104922, -0.945045,
		0.596022, -0.752980, -0.278888,
		-0.740861, -0.649625, 0.170623,
		38.044823, 25.510370, 19.874949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571712, 25.550474, 19.179764>,  <38.563427, 25.965107, 19.755512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571712, 25.550474, 19.179764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204002, 25.485220, 19.323046>,  <37.983376, 25.446068, 19.409016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204002, 25.485220, 19.323046>,  <38.571712, 25.550474, 19.179764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204002, 25.485220, 19.323046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335746, -0.149970, -0.929937,
		0.205426, -0.975139, 0.083092,
		-0.919279, -0.163136, 0.358207,
		37.928219, 25.436279, 19.430508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329273, 24.998674, 18.771690>,  <38.571712, 25.550474, 19.179764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329273, 24.998674, 18.771690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998428, 25.151051, 18.936991>,  <37.799923, 25.242476, 19.036171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998428, 25.151051, 18.936991>,  <38.329273, 24.998674, 18.771690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998428, 25.151051, 18.936991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514502, -0.217229, -0.829517,
		-0.226227, -0.898719, 0.375667,
		-0.827109, 0.380940, 0.413250,
		37.750294, 25.265333, 19.060966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864349, 24.474012, 18.648401>,  <38.329273, 24.998674, 18.771690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864349, 24.474012, 18.648401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685696, 24.829317, 18.691298>,  <37.578503, 25.042500, 18.717035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685696, 24.829317, 18.691298>,  <37.864349, 24.474012, 18.648401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685696, 24.829317, 18.691298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384568, -0.082367, -0.919415,
		-0.807850, -0.451887, 0.378386,
		-0.446639, 0.888264, 0.107241,
		37.551704, 25.095797, 18.723471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154484, 24.402138, 18.433834>,  <37.864349, 24.474012, 18.648401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154484, 24.402138, 18.433834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213772, 24.797661, 18.427025>,  <37.249344, 25.034975, 18.422939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213772, 24.797661, 18.427025>,  <37.154484, 24.402138, 18.433834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213772, 24.797661, 18.427025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376148, 0.040448, -0.925676,
		-0.914628, 0.143602, 0.377933,
		0.148216, 0.988809, -0.017021,
		37.258236, 25.094303, 18.421919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.538677, 24.753450, 17.874002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.837036, 25.009430, 17.947868>,  <37.016052, 25.163017, 17.992188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.837036, 25.009430, 17.947868>,  <36.538677, 24.753450, 17.874002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837036, 25.009430, 17.947868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121504, 0.403334, -0.906950,
		-0.654884, 0.654054, 0.378602,
		0.745898, 0.639949, 0.184667,
		37.060806, 25.201414, 18.003269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248276, 25.262066, 17.578447>,  <36.538677, 24.753450, 17.874002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248276, 25.262066, 17.578447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629669, 25.376852, 17.615370>,  <36.858505, 25.445723, 17.637524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629669, 25.376852, 17.615370>,  <36.248276, 25.262066, 17.578447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629669, 25.376852, 17.615370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062848, 0.488722, -0.870173,
		-0.294819, 0.823895, 0.484024,
		0.953484, 0.286964, 0.092305,
		36.915714, 25.462942, 17.643061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329052, 26.040365, 17.450300>,  <36.248276, 25.262066, 17.578447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329052, 26.040365, 17.450300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679790, 25.861410, 17.379885>,  <36.890232, 25.754036, 17.337635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679790, 25.861410, 17.379885>,  <36.329052, 26.040365, 17.450300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679790, 25.861410, 17.379885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056360, 0.459282, -0.886501,
		0.477464, 0.767400, 0.427933,
		0.876842, -0.447390, -0.176040,
		36.942844, 25.727194, 17.327072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631298, 26.504107, 16.980612>,  <36.329052, 26.040365, 17.450300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631298, 26.504107, 16.980612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878708, 26.193420, 16.933048>,  <37.027153, 26.007010, 16.904510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878708, 26.193420, 16.933048>,  <36.631298, 26.504107, 16.980612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878708, 26.193420, 16.933048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010932, 0.142806, -0.989690,
		0.785687, 0.613451, 0.079839,
		0.618528, -0.776714, -0.118907,
		37.064266, 25.960405, 16.897377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215191, 26.667786, 16.361439>,  <36.631298, 26.504107, 16.980612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215191, 26.667786, 16.361439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.204216, 26.269672, 16.398666>,  <37.197632, 26.030806, 16.421003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.204216, 26.269672, 16.398666>,  <37.215191, 26.667786, 16.361439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204216, 26.269672, 16.398666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028493, -0.093844, -0.995179,
		0.999217, -0.024652, 0.030933,
		-0.027436, -0.995282, 0.093069,
		37.195984, 25.971088, 16.426586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747177, 26.455862, 15.966678>,  <37.215191, 26.667786, 16.361439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747177, 26.455862, 15.966678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.495640, 26.146610, 15.999722>,  <37.344715, 25.961060, 16.019550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.495640, 26.146610, 15.999722>,  <37.747177, 26.455862, 15.966678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495640, 26.146610, 15.999722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195492, 0.054378, -0.979196,
		0.752552, -0.631914, -0.185336,
		-0.628846, -0.773128, 0.082612,
		37.306988, 25.914671, 16.024506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018234, 25.892260, 15.486912>,  <37.747177, 26.455862, 15.966678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018234, 25.892260, 15.486912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.628609, 25.841194, 15.561648>,  <37.394833, 25.810555, 15.606490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.628609, 25.841194, 15.561648>,  <38.018234, 25.892260, 15.486912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628609, 25.841194, 15.561648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189255, 0.006938, -0.981903,
		0.124058, -0.991793, -0.030919,
		-0.974060, -0.127664, 0.186841,
		37.336391, 25.802895, 15.617701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769985, 25.367197, 15.106789>,  <38.018234, 25.892260, 15.486912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769985, 25.367197, 15.106789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.431858, 25.566422, 15.184124>,  <37.228981, 25.685955, 15.230525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.431858, 25.566422, 15.184124>,  <37.769985, 25.367197, 15.106789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431858, 25.566422, 15.184124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224027, -0.001905, -0.974581,
		-0.485032, -0.867140, 0.113190,
		-0.845314, 0.498061, 0.193339,
		37.178265, 25.715839, 15.242126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305241, 24.961870, 14.684534>,  <37.769985, 25.367197, 15.106789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305241, 24.961870, 14.684534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.141537, 25.313263, 14.783147>,  <37.043312, 25.524097, 14.842315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.141537, 25.313263, 14.783147>,  <37.305241, 24.961870, 14.684534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141537, 25.313263, 14.783147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394297, 0.073381, -0.916049,
		-0.822821, -0.472111, 0.316350,
		-0.409262, 0.878480, 0.246532,
		37.018757, 25.576807, 14.857106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710876, 24.992611, 14.369616>,  <37.305241, 24.961870, 14.684534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710876, 24.992611, 14.369616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746284, 25.383614, 14.446187>,  <36.767529, 25.618216, 14.492130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746284, 25.383614, 14.446187>,  <36.710876, 24.992611, 14.369616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746284, 25.383614, 14.446187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395011, 0.210876, -0.894146,
		-0.914401, 0.003535, 0.404793,
		0.088522, 0.977506, 0.191429,
		36.772842, 25.676865, 14.503615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147602, 25.285608, 14.063626>,  <36.710876, 24.992611, 14.369616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147602, 25.285608, 14.063626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406254, 25.587601, 14.107217>,  <36.561447, 25.768795, 14.133371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406254, 25.587601, 14.107217>,  <36.147602, 25.285608, 14.063626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406254, 25.587601, 14.107217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213267, 0.316098, -0.924445,
		-0.732383, 0.574534, 0.365411,
		0.646631, 0.754979, 0.108975,
		36.600243, 25.814095, 14.139910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775700, 25.946995, 13.817194>,  <36.147602, 25.285608, 14.063626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775700, 25.946995, 13.817194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.170525, 26.008657, 13.799541>,  <36.407417, 26.045656, 13.788948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.170525, 26.008657, 13.799541>,  <35.775700, 25.946995, 13.817194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170525, 26.008657, 13.799541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120711, 0.533166, -0.837355,
		-0.105554, 0.831847, 0.544875,
		0.987060, 0.154158, -0.044135,
		36.466644, 26.054905, 13.786300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813450, 26.603085, 13.645130>,  <35.775700, 25.946995, 13.817194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813450, 26.603085, 13.645130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179749, 26.477129, 13.545325>,  <36.399529, 26.401556, 13.485442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179749, 26.477129, 13.545325>,  <35.813450, 26.603085, 13.645130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179749, 26.477129, 13.545325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014790, 0.647045, -0.762308,
		0.401490, 0.694389, 0.597185,
		0.915744, -0.314891, -0.249512,
		36.454472, 26.382662, 13.470471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087421, 27.273499, 13.366049>,  <35.813450, 26.603085, 13.645130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087421, 27.273499, 13.366049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.338070, 26.988997, 13.238641>,  <36.488461, 26.818295, 13.162196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.338070, 26.988997, 13.238641>,  <36.087421, 27.273499, 13.366049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338070, 26.988997, 13.238641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254209, 0.572908, -0.779201,
		0.736695, 0.407296, 0.539806,
		0.626625, -0.711257, -0.318520,
		36.526058, 26.775620, 13.143085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738857, 27.614613, 13.165790>,  <36.087421, 27.273499, 13.366049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738857, 27.614613, 13.165790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.713474, 27.261848, 12.978940>,  <36.698246, 27.050190, 12.866831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.713474, 27.261848, 12.978940>,  <36.738857, 27.614613, 13.165790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713474, 27.261848, 12.978940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420321, 0.400912, -0.814003,
		0.905154, -0.247992, 0.345247,
		-0.063453, -0.881913, -0.467123,
		36.694439, 26.997274, 12.838803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357220, 27.533957, 12.775530>,  <36.738857, 27.614613, 13.165790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357220, 27.533957, 12.775530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092003, 27.291569, 12.599725>,  <36.932873, 27.146135, 12.494242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092003, 27.291569, 12.599725>,  <37.357220, 27.533957, 12.775530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092003, 27.291569, 12.599725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395210, 0.215269, -0.893011,
		0.635752, -0.765805, 0.096752,
		-0.663045, -0.605971, -0.439512,
		36.893089, 27.109777, 12.467872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811298, 27.081537, 12.192849>,  <37.357220, 27.533957, 12.775530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811298, 27.081537, 12.192849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422501, 27.090830, 12.099311>,  <37.189220, 27.096405, 12.043188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422501, 27.090830, 12.099311>,  <37.811298, 27.081537, 12.192849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422501, 27.090830, 12.099311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233714, 0.199453, -0.951628,
		0.024531, -0.979632, -0.199298,
		-0.971996, 0.023234, -0.233847,
		37.130901, 27.097799, 12.029157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832932, 26.969154, 11.499995>,  <37.811298, 27.081537, 12.192849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832932, 26.969154, 11.499995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437408, 27.020025, 11.531207>,  <37.200096, 27.050547, 11.549934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437408, 27.020025, 11.531207>,  <37.832932, 26.969154, 11.499995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437408, 27.020025, 11.531207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043428, 0.255020, -0.965960,
		-0.142747, -0.958536, -0.246643,
		-0.988806, 0.127177, 0.078030,
		37.140766, 27.058178, 11.554616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494232, 26.519615, 10.977225>,  <37.832932, 26.969154, 11.499995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494232, 26.519615, 10.977225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.238796, 26.822416, 11.032572>,  <37.085533, 27.004097, 11.065780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.238796, 26.822416, 11.032572>,  <37.494232, 26.519615, 10.977225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238796, 26.822416, 11.032572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069357, 0.235689, -0.969351,
		-0.766414, -0.609423, -0.203012,
		-0.638592, 0.757004, 0.138367,
		37.047218, 27.049517, 11.074082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050934, 26.614035, 10.401596>,  <37.494232, 26.519615, 10.977225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050934, 26.614035, 10.401596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980736, 26.967985, 10.574199>,  <36.938618, 27.180355, 10.677760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980736, 26.967985, 10.574199>,  <37.050934, 26.614035, 10.401596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980736, 26.967985, 10.574199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210986, 0.394321, -0.894425,
		-0.961607, -0.248006, 0.117497,
		-0.175491, 0.884875, 0.431507,
		36.928089, 27.233448, 10.703651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385544, 26.831957, 10.186069>,  <37.050934, 26.614035, 10.401596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385544, 26.831957, 10.186069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.578686, 27.164911, 10.294868>,  <36.694569, 27.364685, 10.360148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.578686, 27.164911, 10.294868>,  <36.385544, 26.831957, 10.186069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578686, 27.164911, 10.294868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204398, 0.409157, -0.889276,
		-0.851513, 0.373793, 0.367701,
		0.482853, 0.832388, 0.272000,
		36.723541, 27.414627, 10.376469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957127, 27.436592, 10.076886>,  <36.385544, 26.831957, 10.186069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957127, 27.436592, 10.076886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329819, 27.581764, 10.071833>,  <36.553432, 27.668867, 10.068801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329819, 27.581764, 10.071833>,  <35.957127, 27.436592, 10.076886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329819, 27.581764, 10.071833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159929, 0.378846, -0.911537,
		-0.326037, 0.851327, 0.411025,
		0.931731, 0.362930, -0.012634,
		36.609337, 27.690643, 10.068043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946964, 28.142899, 9.769068>,  <35.957127, 27.436592, 10.076886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946964, 28.142899, 9.769068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296986, 27.956367, 9.717189>,  <36.507000, 27.844450, 9.686062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296986, 27.956367, 9.717189>,  <35.946964, 28.142899, 9.769068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296986, 27.956367, 9.717189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048229, 0.182618, -0.982000,
		0.481617, 0.865558, 0.137310,
		0.875054, -0.466326, -0.129697,
		36.559502, 27.816469, 9.678280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149845, 28.076488, 9.610575>,  <35.946964, 28.142899, 9.769068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149845, 28.076488, 9.610575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814564, 28.274744, 9.519573>,  <34.613396, 28.393698, 9.464972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814564, 28.274744, 9.519573>,  <35.149845, 28.076488, 9.610575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814564, 28.274744, 9.519573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128310, 0.226225, 0.965587,
		0.530052, 0.838548, -0.126026,
		-0.838201, 0.495641, -0.227505,
		34.563103, 28.423437, 9.451322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188168, 28.602039, 10.025639>,  <35.149845, 28.076488, 9.610575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188168, 28.602039, 10.025639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803478, 28.568481, 9.921300>,  <34.572662, 28.548347, 9.858697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803478, 28.568481, 9.921300>,  <35.188168, 28.602039, 10.025639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803478, 28.568481, 9.921300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273846, 0.261709, 0.925482,
		-0.009375, 0.961494, -0.274666,
		-0.961728, -0.083893, -0.260848,
		34.514961, 28.543314, 9.843045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917358, 29.151506, 10.466187>,  <35.188168, 28.602039, 10.025639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917358, 29.151506, 10.466187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604927, 28.927900, 10.354888>,  <34.417469, 28.793737, 10.288108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604927, 28.927900, 10.354888>,  <34.917358, 29.151506, 10.466187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604927, 28.927900, 10.354888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422691, 0.145342, 0.894543,
		-0.459620, 0.816321, -0.349813,
		-0.781077, -0.559013, -0.278250,
		34.370605, 28.760197, 10.271413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370922, 29.627905, 10.576730>,  <34.917358, 29.151506, 10.466187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370922, 29.627905, 10.576730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239876, 29.250345, 10.593338>,  <34.161247, 29.023809, 10.603303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239876, 29.250345, 10.593338>,  <34.370922, 29.627905, 10.576730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239876, 29.250345, 10.593338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281421, 0.139440, 0.949399,
		-0.901927, 0.299351, -0.311315,
		-0.327613, -0.943899, 0.041521,
		34.141590, 28.967175, 10.605794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952484, 29.704847, 11.098007>,  <34.370922, 29.627905, 10.576730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952484, 29.704847, 11.098007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983795, 29.309420, 11.046466>,  <34.002583, 29.072163, 11.015541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983795, 29.309420, 11.046466>,  <33.952484, 29.704847, 11.098007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983795, 29.309420, 11.046466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184570, -0.141386, 0.972596,
		-0.979697, -0.052352, -0.193528,
		0.078280, -0.988569, -0.128853,
		34.007278, 29.012848, 11.007810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480503, 29.477575, 11.575468>,  <33.952484, 29.704847, 11.098007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480503, 29.477575, 11.575468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726353, 29.172503, 11.494917>,  <33.873863, 28.989460, 11.446587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726353, 29.172503, 11.494917>,  <33.480503, 29.477575, 11.575468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726353, 29.172503, 11.494917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004217, -0.252109, 0.967690,
		-0.788807, -0.595617, -0.151737,
		0.614626, -0.762681, -0.201377,
		33.910740, 28.943699, 11.434504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259998, 28.941996, 11.910828>,  <33.480503, 29.477575, 11.575468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259998, 28.941996, 11.910828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.645050, 28.847784, 11.857347>,  <33.876080, 28.791258, 11.825259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.645050, 28.847784, 11.857347>,  <33.259998, 28.941996, 11.910828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645050, 28.847784, 11.857347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099054, -0.153281, 0.983206,
		-0.252068, -0.959703, -0.124222,
		0.962627, -0.235530, -0.133699,
		33.933838, 28.777124, 11.817238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288849, 28.331322, 12.184064>,  <33.259998, 28.941996, 11.910828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288849, 28.331322, 12.184064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670780, 28.449806, 12.174566>,  <33.899940, 28.520897, 12.168867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670780, 28.449806, 12.174566>,  <33.288849, 28.331322, 12.184064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670780, 28.449806, 12.174566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097826, -0.237875, 0.966357,
		0.280596, -0.925027, -0.256107,
		0.954827, 0.296210, -0.023745,
		33.957230, 28.538670, 12.167442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725681, 27.744080, 12.413939>,  <33.288849, 28.331322, 12.184064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725681, 27.744080, 12.413939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966454, 28.062279, 12.441813>,  <34.110916, 28.253199, 12.458536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966454, 28.062279, 12.441813>,  <33.725681, 27.744080, 12.413939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966454, 28.062279, 12.441813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295860, -0.303216, 0.905830,
		0.741716, -0.524633, -0.417872,
		0.601934, 0.795500, 0.069682,
		34.147034, 28.300928, 12.462717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390545, 27.447245, 12.608068>,  <33.725681, 27.744080, 12.413939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390545, 27.447245, 12.608068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360966, 27.829504, 12.722097>,  <34.343220, 28.058861, 12.790515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360966, 27.829504, 12.722097>,  <34.390545, 27.447245, 12.608068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360966, 27.829504, 12.722097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480909, -0.216249, 0.849684,
		0.873647, 0.199925, -0.443589,
		-0.073947, 0.955649, 0.285071,
		34.338783, 28.116199, 12.807619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010284, 27.619452, 12.834182>,  <34.390545, 27.447245, 12.608068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010284, 27.619452, 12.834182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776871, 27.893293, 13.008908>,  <34.636822, 28.057598, 13.113745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776871, 27.893293, 13.008908>,  <35.010284, 27.619452, 12.834182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776871, 27.893293, 13.008908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371640, -0.253140, 0.893199,
		0.722062, 0.683549, -0.106711,
		-0.583532, 0.684603, 0.436817,
		34.601810, 28.098675, 13.139954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453606, 27.829456, 13.369812>,  <35.010284, 27.619452, 12.834182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453606, 27.829456, 13.369812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077385, 27.936186, 13.453873>,  <34.851650, 28.000223, 13.504309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077385, 27.936186, 13.453873>,  <35.453606, 27.829456, 13.369812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077385, 27.936186, 13.453873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102761, -0.366185, 0.924851,
		0.323726, 0.891467, 0.316998,
		-0.940554, 0.266823, 0.210152,
		34.795219, 28.016233, 13.516918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527317, 28.116457, 13.993293>,  <35.453606, 27.829456, 13.369812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527317, 28.116457, 13.993293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.141399, 28.015448, 13.963892>,  <34.909847, 27.954842, 13.946252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.141399, 28.015448, 13.963892>,  <35.527317, 28.116457, 13.993293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141399, 28.015448, 13.963892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025486, -0.367920, 0.929508,
		-0.261766, 0.894912, 0.361403,
		-0.964795, -0.252525, -0.073501,
		34.851959, 27.939690, 13.941842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176502, 28.428638, 14.636570>,  <35.527317, 28.116457, 13.993293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176502, 28.428638, 14.636570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952515, 28.135099, 14.482737>,  <34.818123, 27.958977, 14.390437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952515, 28.135099, 14.482737>,  <35.176502, 28.428638, 14.636570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952515, 28.135099, 14.482737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034259, -0.443277, 0.895730,
		-0.827807, 0.514754, 0.223079,
		-0.559967, -0.733848, -0.384583,
		34.784523, 27.914946, 14.367362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764088, 28.265030, 15.145755>,  <35.176502, 28.428638, 14.636570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764088, 28.265030, 15.145755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699303, 27.935001, 14.929229>,  <34.660431, 27.736984, 14.799314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699303, 27.935001, 14.929229>,  <34.764088, 28.265030, 15.145755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699303, 27.935001, 14.929229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049115, -0.541138, 0.839499,
		-0.985574, 0.162555, 0.047121,
		-0.161964, -0.825073, -0.541315,
		34.650715, 27.687479, 14.766834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167114, 27.994116, 15.450589>,  <34.764088, 28.265030, 15.145755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167114, 27.994116, 15.450589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349064, 27.691793, 15.262188>,  <34.458233, 27.510401, 15.149147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349064, 27.691793, 15.262188>,  <34.167114, 27.994116, 15.450589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349064, 27.691793, 15.262188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136378, -0.581768, 0.801840,
		-0.880051, -0.300503, -0.367708,
		0.454876, -0.755807, -0.471003,
		34.485527, 27.465052, 15.120887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760193, 27.319914, 15.677339>,  <34.167114, 27.994116, 15.450589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760193, 27.319914, 15.677339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103409, 27.183367, 15.523851>,  <34.309338, 27.101439, 15.431759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103409, 27.183367, 15.523851>,  <33.760193, 27.319914, 15.677339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103409, 27.183367, 15.523851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088774, -0.637308, 0.765479,
		-0.505855, -0.690874, -0.516530,
		0.858038, -0.341367, -0.383717,
		34.360821, 27.080957, 15.408736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655083, 26.610031, 15.737796>,  <33.760193, 27.319914, 15.677339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655083, 26.610031, 15.737796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048565, 26.680471, 15.723298>,  <34.284653, 26.722736, 15.714600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048565, 26.680471, 15.723298>,  <33.655083, 26.610031, 15.737796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048565, 26.680471, 15.723298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114577, -0.458659, 0.881195,
		0.138557, -0.870988, -0.471362,
		0.983704, 0.176103, -0.036244,
		34.343678, 26.733301, 15.712424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956707, 25.974083, 15.933628>,  <33.655083, 26.610031, 15.737796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956707, 25.974083, 15.933628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229527, 26.259409, 15.998121>,  <34.393219, 26.430605, 16.036818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229527, 26.259409, 15.998121>,  <33.956707, 25.974083, 15.933628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229527, 26.259409, 15.998121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074038, -0.286690, 0.955158,
		0.727550, -0.639526, -0.248349,
		0.682047, 0.713313, 0.161232,
		34.434139, 26.473402, 16.046492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409122, 25.591021, 16.447182>,  <33.956707, 25.974083, 15.933628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409122, 25.591021, 16.447182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475254, 25.985470, 16.453251>,  <34.514931, 26.222139, 16.456892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475254, 25.985470, 16.453251>,  <34.409122, 25.591021, 16.447182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475254, 25.985470, 16.453251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095088, -0.031251, 0.994978,
		0.981644, -0.163053, -0.098935,
		0.165326, 0.986122, 0.015173,
		34.524853, 26.281307, 16.457802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100025, 25.732054, 16.826635>,  <34.409122, 25.591021, 16.447182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100025, 25.732054, 16.826635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.874840, 26.061924, 16.848478>,  <34.739727, 26.259846, 16.861584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.874840, 26.061924, 16.848478>,  <35.100025, 25.732054, 16.826635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874840, 26.061924, 16.848478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111620, 0.010397, 0.993697,
		0.818907, 0.565514, -0.097903,
		-0.562967, 0.824673, 0.054608,
		34.705948, 26.309326, 16.864861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.320988, 24.197769, 20.697491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.226994, 24.586367, 20.710020>,  <38.170597, 24.819525, 20.717539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.226994, 24.586367, 20.710020>,  <38.320988, 24.197769, 20.697491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226994, 24.586367, 20.710020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375710, 0.061061, 0.924723,
		0.896449, 0.229070, -0.379349,
		-0.234990, 0.971493, 0.031326,
		38.156498, 24.877815, 20.719418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941208, 24.538013, 20.901253>,  <38.320988, 24.197769, 20.697491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941208, 24.538013, 20.901253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619144, 24.766474, 20.965136>,  <38.425907, 24.903549, 21.003466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619144, 24.766474, 20.965136>,  <38.941208, 24.538013, 20.901253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619144, 24.766474, 20.965136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234081, 0.058623, 0.970448,
		0.544909, 0.818749, -0.180896,
		-0.805159, 0.571150, 0.159709,
		38.377598, 24.937819, 21.013048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160358, 24.911005, 21.454103>,  <38.941208, 24.538013, 20.901253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160358, 24.911005, 21.454103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769608, 24.995556, 21.441273>,  <38.535156, 25.046288, 21.433575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769608, 24.995556, 21.441273>,  <39.160358, 24.911005, 21.454103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769608, 24.995556, 21.441273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008445, 0.188064, 0.982120,
		0.213631, 0.959141, -0.185501,
		-0.976878, 0.211378, -0.032076,
		38.476543, 25.058969, 21.431650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110821, 25.626434, 21.615713>,  <39.160358, 24.911005, 21.454103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110821, 25.626434, 21.615713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.751022, 25.471954, 21.697445>,  <38.535141, 25.379267, 21.746485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.751022, 25.471954, 21.697445>,  <39.110821, 25.626434, 21.615713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751022, 25.471954, 21.697445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136766, 0.195278, 0.971165,
		-0.414963, 0.901509, -0.122834,
		-0.899500, -0.386198, 0.204329,
		38.481171, 25.356094, 21.758743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596428, 26.135981, 21.954870>,  <39.110821, 25.626434, 21.615713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596428, 26.135981, 21.954870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.461830, 25.774843, 22.061934>,  <38.381073, 25.558161, 22.126171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.461830, 25.774843, 22.061934>,  <38.596428, 26.135981, 21.954870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461830, 25.774843, 22.061934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026025, 0.275209, 0.961032,
		-0.941326, 0.330348, -0.069110,
		-0.336495, -0.902846, 0.267658,
		38.360882, 25.503990, 22.142231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243580, 26.304510, 22.535999>,  <38.596428, 26.135981, 21.954870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243580, 26.304510, 22.535999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.263905, 25.905031, 22.537794>,  <38.276100, 25.665344, 22.538872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.263905, 25.905031, 22.537794>,  <38.243580, 26.304510, 22.535999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263905, 25.905031, 22.537794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065305, 0.001160, 0.997865,
		-0.996571, -0.051001, -0.065161,
		0.050816, -0.998698, 0.004486,
		38.279148, 25.605421, 22.539141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662346, 26.067005, 22.960138>,  <38.243580, 26.304510, 22.535999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662346, 26.067005, 22.960138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.948208, 25.787725, 22.943262>,  <38.119724, 25.620157, 22.933136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.948208, 25.787725, 22.943262>,  <37.662346, 26.067005, 22.960138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948208, 25.787725, 22.943262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013810, -0.046220, 0.998836,
		-0.699338, -0.714409, -0.023390,
		0.714658, -0.698200, -0.042189,
		38.162605, 25.578266, 22.930605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415726, 25.591049, 23.473869>,  <37.662346, 26.067005, 22.960138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415726, 25.591049, 23.473869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805847, 25.514114, 23.430426>,  <38.039921, 25.467955, 23.404360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805847, 25.514114, 23.430426>,  <37.415726, 25.591049, 23.473869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805847, 25.514114, 23.430426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089908, -0.103452, 0.990563,
		-0.201758, -0.975861, -0.083604,
		0.975300, -0.192337, -0.108610,
		38.098438, 25.456413, 23.397842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642288, 24.980175, 23.962805>,  <37.415726, 25.591049, 23.473869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642288, 24.980175, 23.962805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.983154, 25.171829, 23.878662>,  <38.187672, 25.286821, 23.828176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.983154, 25.171829, 23.878662>,  <37.642288, 24.980175, 23.962805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983154, 25.171829, 23.878662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255826, -0.030784, 0.966233,
		0.456479, -0.877202, -0.148808,
		0.852162, 0.479134, -0.210359,
		38.238804, 25.315569, 23.815554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160397, 24.620605, 24.330750>,  <37.642288, 24.980175, 23.962805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160397, 24.620605, 24.330750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.315784, 24.984818, 24.274145>,  <38.409019, 25.203344, 24.240183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.315784, 24.984818, 24.274145>,  <38.160397, 24.620605, 24.330750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315784, 24.984818, 24.274145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380906, -0.018842, 0.924422,
		0.839047, -0.413016, -0.354146,
		0.388474, 0.910529, -0.141510,
		38.432327, 25.257977, 24.231691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752068, 24.593201, 24.707966>,  <38.160397, 24.620605, 24.330750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752068, 24.593201, 24.707966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.703354, 24.989130, 24.678532>,  <38.674126, 25.226688, 24.660872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.703354, 24.989130, 24.678532>,  <38.752068, 24.593201, 24.707966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703354, 24.989130, 24.678532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414710, 0.118102, 0.902257,
		0.901767, 0.079366, -0.424874,
		-0.121787, 0.989825, -0.073586,
		38.666817, 25.286077, 24.656456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287292, 24.917612, 25.101654>,  <38.752068, 24.593201, 24.707966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287292, 24.917612, 25.101654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011208, 25.205431, 25.071056>,  <38.845554, 25.378122, 25.052698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011208, 25.205431, 25.071056>,  <39.287292, 24.917612, 25.101654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011208, 25.205431, 25.071056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242562, 0.329671, 0.912404,
		0.681738, 0.611201, -0.402079,
		-0.690216, 0.719549, -0.076495,
		38.804142, 25.421295, 25.048107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548901, 25.546810, 25.291286>,  <39.287292, 24.917612, 25.101654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548901, 25.546810, 25.291286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.159012, 25.531704, 25.379374>,  <38.925079, 25.522640, 25.432226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.159012, 25.531704, 25.379374>,  <39.548901, 25.546810, 25.291286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159012, 25.531704, 25.379374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202188, 0.270394, 0.941280,
		-0.095095, 0.962009, -0.255922,
		-0.974719, -0.037767, 0.220219,
		38.866596, 25.520374, 25.445440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208916, 25.480162, 25.470066>,  <39.548901, 25.546810, 25.291286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208916, 25.480162, 25.470066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955551, 25.433714, 25.776087>,  <39.803532, 25.405846, 25.959700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955551, 25.433714, 25.776087>,  <40.208916, 25.480162, 25.470066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955551, 25.433714, 25.776087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773528, 0.068159, -0.630086,
		0.021019, -0.990894, -0.132994,
		-0.633414, -0.116119, 0.765052,
		39.765526, 25.398878, 26.005602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316257, 26.083942, 25.924627>,  <40.208916, 25.480162, 25.470066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316257, 26.083942, 25.924627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629147, 26.330969, 25.891788>,  <40.816879, 26.479185, 25.872086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629147, 26.330969, 25.891788>,  <40.316257, 26.083942, 25.924627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629147, 26.330969, 25.891788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475718, 0.507008, -0.718774,
		-0.402266, 0.601296, 0.690380,
		0.782224, 0.617565, -0.082095,
		40.863815, 26.516239, 25.867161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112747, 26.750376, 25.908815>,  <40.316257, 26.083942, 25.924627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112747, 26.750376, 25.908815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.478561, 26.796669, 25.753780>,  <40.698051, 26.824446, 25.660759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.478561, 26.796669, 25.753780>,  <40.112747, 26.750376, 25.908815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478561, 26.796669, 25.753780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362456, 0.659835, -0.658212,
		0.179567, 0.742444, 0.645393,
		0.914539, 0.115734, -0.387588,
		40.752922, 26.831388, 25.637505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159836, 27.499992, 25.868891>,  <40.112747, 26.750376, 25.908815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159836, 27.499992, 25.868891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.422459, 27.353483, 25.605139>,  <40.580032, 27.265577, 25.446888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.422459, 27.353483, 25.605139>,  <40.159836, 27.499992, 25.868891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422459, 27.353483, 25.605139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322074, 0.654350, -0.684174,
		0.682060, 0.661566, 0.311649,
		0.656554, -0.366274, -0.659379,
		40.619423, 27.243601, 25.407326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492805, 28.133402, 25.607338>,  <40.159836, 27.499992, 25.868891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492805, 28.133402, 25.607338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.582767, 27.846649, 25.343369>,  <40.636745, 27.674599, 25.184986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.582767, 27.846649, 25.343369>,  <40.492805, 28.133402, 25.607338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582767, 27.846649, 25.343369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270439, 0.604742, -0.749099,
		0.936099, 0.346943, -0.057865,
		0.224902, -0.716880, -0.659926,
		40.650238, 27.631584, 25.145391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006237, 28.387337, 25.237799>,  <40.492805, 28.133402, 25.607338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006237, 28.387337, 25.237799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.824997, 28.104090, 25.021183>,  <40.716251, 27.934141, 24.891212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.824997, 28.104090, 25.021183>,  <41.006237, 28.387337, 25.237799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824997, 28.104090, 25.021183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239422, 0.681822, -0.691228,
		0.858706, -0.183540, -0.478473,
		-0.453102, -0.708118, -0.541542,
		40.689068, 27.891655, 24.858721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324932, 28.475634, 24.553759>,  <41.006237, 28.387337, 25.237799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324932, 28.475634, 24.553759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.994640, 28.261192, 24.483599>,  <40.796467, 28.132528, 24.441504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.994640, 28.261192, 24.483599>,  <41.324932, 28.475634, 24.553759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994640, 28.261192, 24.483599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231001, 0.605079, -0.761917,
		0.514592, -0.588623, -0.623473,
		-0.825732, -0.536100, -0.175397,
		40.746922, 28.100363, 24.430979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257729, 28.532303, 23.904037>,  <41.324932, 28.475634, 24.553759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257729, 28.532303, 23.904037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.891521, 28.383745, 23.965866>,  <40.671799, 28.294611, 24.002962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.891521, 28.383745, 23.965866>,  <41.257729, 28.532303, 23.904037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891521, 28.383745, 23.965866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339296, 0.506485, -0.792686,
		0.216113, -0.778164, -0.589709,
		-0.915518, -0.371396, 0.154570,
		40.616867, 28.272327, 24.012238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086559, 27.885420, 23.440945>,  <41.257729, 28.532303, 23.904037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086559, 27.885420, 23.440945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749828, 28.073921, 23.546204>,  <40.547791, 28.187021, 23.609360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749828, 28.073921, 23.546204>,  <41.086559, 27.885420, 23.440945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749828, 28.073921, 23.546204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277470, 0.040344, -0.959887,
		-0.462967, -0.881074, 0.096796,
		-0.841827, 0.471254, 0.263149,
		40.497280, 28.215298, 23.625149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619976, 27.697712, 23.016710>,  <41.086559, 27.885420, 23.440945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619976, 27.697712, 23.016710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466324, 28.038023, 23.160164>,  <40.374134, 28.242210, 23.246237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466324, 28.038023, 23.160164>,  <40.619976, 27.697712, 23.016710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466324, 28.038023, 23.160164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215383, 0.295146, -0.930859,
		-0.897806, -0.434815, 0.069869,
		-0.384130, 0.850779, 0.358636,
		40.351086, 28.293257, 23.267756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094730, 27.738001, 22.611975>,  <40.619976, 27.697712, 23.016710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094730, 27.738001, 22.611975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087688, 28.104382, 22.772337>,  <40.083466, 28.324209, 22.868555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087688, 28.104382, 22.772337>,  <40.094730, 27.738001, 22.611975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087688, 28.104382, 22.772337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437731, 0.353441, -0.826723,
		-0.898934, -0.190039, 0.394719,
		-0.017600, 0.915950, 0.400906,
		40.082409, 28.379168, 22.892609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396358, 27.980679, 22.605673>,  <40.094730, 27.738001, 22.611975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396358, 27.980679, 22.605673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.626308, 28.307163, 22.628727>,  <39.764278, 28.503054, 22.642559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.626308, 28.307163, 22.628727>,  <39.396358, 27.980679, 22.605673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626308, 28.307163, 22.628727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516463, 0.416585, -0.748146,
		-0.634656, 0.400320, 0.661026,
		0.574871, 0.816211, 0.057637,
		39.798771, 28.552027, 22.646019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009647, 28.515051, 22.466295>,  <39.396358, 27.980679, 22.605673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009647, 28.515051, 22.466295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.364014, 28.695904, 22.424868>,  <39.576633, 28.804415, 22.400011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.364014, 28.695904, 22.424868>,  <39.009647, 28.515051, 22.466295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364014, 28.695904, 22.424868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299153, 0.386304, -0.872512,
		-0.354480, 0.803957, 0.477490,
		0.885919, 0.452130, -0.103569,
		39.629787, 28.831543, 22.393797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835865, 29.273630, 22.380442>,  <39.009647, 28.515051, 22.466295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835865, 29.273630, 22.380442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202774, 29.194904, 22.241949>,  <39.422920, 29.147669, 22.158854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202774, 29.194904, 22.241949>,  <38.835865, 29.273630, 22.380442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202774, 29.194904, 22.241949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266130, 0.343852, -0.900522,
		0.296286, 0.918167, 0.263028,
		0.917273, -0.196812, -0.346231,
		39.477955, 29.135860, 22.138081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026722, 29.814978, 22.041735>,  <38.835865, 29.273630, 22.380442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026722, 29.814978, 22.041735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238487, 29.530878, 21.856146>,  <39.365547, 29.360418, 21.744793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238487, 29.530878, 21.856146>,  <39.026722, 29.814978, 22.041735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238487, 29.530878, 21.856146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321136, 0.338429, -0.884499,
		0.785233, 0.617265, -0.048917,
		0.529415, -0.710247, -0.463972,
		39.397312, 29.317804, 21.716955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232231, 30.555641, 22.120768>,  <39.026722, 29.814978, 22.041735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232231, 30.555641, 22.120768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915169, 30.795757, 22.163383>,  <38.724930, 30.939827, 22.188953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915169, 30.795757, 22.163383>,  <39.232231, 30.555641, 22.120768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915169, 30.795757, 22.163383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150614, -0.362137, 0.919876,
		0.590772, 0.713099, 0.377463,
		-0.792656, 0.600288, 0.106538,
		38.677372, 30.975843, 22.195345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358818, 30.985216, 22.669304>,  <39.232231, 30.555641, 22.120768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358818, 30.985216, 22.669304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960472, 31.008083, 22.641087>,  <38.721462, 31.021803, 22.624157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960472, 31.008083, 22.641087>,  <39.358818, 30.985216, 22.669304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960472, 31.008083, 22.641087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081454, -0.219204, 0.972273,
		0.040120, 0.974003, 0.222955,
		-0.995869, 0.057168, -0.070542,
		38.661713, 31.025234, 22.619925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093426, 31.357435, 23.206676>,  <39.358818, 30.985216, 22.669304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093426, 31.357435, 23.206676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753876, 31.188198, 23.079929>,  <38.550148, 31.086655, 23.003881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753876, 31.188198, 23.079929>,  <39.093426, 31.357435, 23.206676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753876, 31.188198, 23.079929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276560, -0.155379, 0.948352,
		-0.450478, 0.892664, 0.014886,
		-0.848872, -0.423095, -0.316870,
		38.499214, 31.061270, 22.984869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567997, 31.663464, 23.646187>,  <39.093426, 31.357435, 23.206676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567997, 31.663464, 23.646187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399231, 31.329430, 23.504982>,  <38.297970, 31.129009, 23.420259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399231, 31.329430, 23.504982>,  <38.567997, 31.663464, 23.646187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399231, 31.329430, 23.504982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331777, -0.220144, 0.917312,
		-0.843748, 0.504151, -0.184179,
		-0.421918, -0.835086, -0.353012,
		38.272655, 31.078903, 23.399078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787086, 31.624960, 23.896830>,  <38.567997, 31.663464, 23.646187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787086, 31.624960, 23.896830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891842, 31.255230, 23.785805>,  <37.954693, 31.033392, 23.719191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891842, 31.255230, 23.785805>,  <37.787086, 31.624960, 23.896830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891842, 31.255230, 23.785805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363299, -0.360862, 0.858948,
		-0.894108, -0.124109, -0.430311,
		0.261886, -0.924324, -0.277561,
		37.970409, 30.977932, 23.702536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298065, 31.275499, 24.065002>,  <37.787086, 31.624960, 23.896830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298065, 31.275499, 24.065002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.591316, 31.004347, 24.043112>,  <37.767269, 30.841656, 24.029978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.591316, 31.004347, 24.043112>,  <37.298065, 31.275499, 24.065002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591316, 31.004347, 24.043112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288572, -0.382935, 0.877546,
		-0.615831, -0.627563, -0.476359,
		0.733129, -0.677883, -0.054726,
		37.811256, 30.800982, 24.026693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034302, 30.694162, 24.117704>,  <37.298065, 31.275499, 24.065002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034302, 30.694162, 24.117704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.408951, 30.622625, 24.238203>,  <37.633739, 30.579704, 24.310501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.408951, 30.622625, 24.238203>,  <37.034302, 30.694162, 24.117704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408951, 30.622625, 24.238203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350309, -0.488075, 0.799416,
		0.004062, -0.854283, -0.519793,
		0.936625, -0.178841, 0.301246,
		37.689938, 30.568974, 24.328577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042118, 29.933271, 24.312954>,  <37.034302, 30.694162, 24.117704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042118, 29.933271, 24.312954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.358490, 30.108288, 24.484060>,  <37.548313, 30.213299, 24.586725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.358490, 30.108288, 24.484060>,  <37.042118, 29.933271, 24.312954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358490, 30.108288, 24.484060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240340, -0.420760, 0.874756,
		0.562731, -0.794681, -0.227633,
		0.790931, 0.437543, 0.427768,
		37.595768, 30.239550, 24.612391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221394, 29.481447, 24.858967>,  <37.042118, 29.933271, 24.312954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221394, 29.481447, 24.858967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.441746, 29.809296, 24.921894>,  <37.573956, 30.006004, 24.959650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.441746, 29.809296, 24.921894>,  <37.221394, 29.481447, 24.858967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441746, 29.809296, 24.921894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098257, -0.123495, 0.987469,
		0.828780, -0.559435, 0.012502,
		0.550880, 0.819623, 0.157319,
		37.607010, 30.055183, 24.969090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663345, 29.330149, 25.403414>,  <37.221394, 29.481447, 24.858967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663345, 29.330149, 25.403414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.707970, 29.727634, 25.407137>,  <37.734745, 29.966125, 25.409370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.707970, 29.727634, 25.407137>,  <37.663345, 29.330149, 25.403414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707970, 29.727634, 25.407137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089561, -0.019380, 0.995793,
		0.989713, -0.110260, -0.091160,
		0.111563, 0.993714, 0.009306,
		37.741440, 30.025749, 25.409929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195827, 29.433971, 25.871088>,  <37.663345, 29.330149, 25.403414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195827, 29.433971, 25.871088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.984234, 29.773037, 25.854887>,  <37.857277, 29.976477, 25.845165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.984234, 29.773037, 25.854887>,  <38.195827, 29.433971, 25.871088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984234, 29.773037, 25.854887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097502, -0.013294, 0.995147,
		0.843012, 0.530366, 0.089681,
		-0.528984, 0.847665, -0.040505,
		37.825539, 30.027336, 25.842735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514141, 29.749434, 26.318876>,  <38.195827, 29.433971, 25.871088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514141, 29.749434, 26.318876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.167313, 29.942539, 26.269674>,  <37.959217, 30.058403, 26.240152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.167313, 29.942539, 26.269674>,  <38.514141, 29.749434, 26.318876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167313, 29.942539, 26.269674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087116, 0.096179, 0.991544,
		0.490514, 0.870452, -0.041338,
		-0.867068, 0.482766, -0.123007,
		37.907192, 30.087368, 26.232773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.434155, 31.745453, 18.716511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037251, 31.792799, 18.701513>,  <38.799107, 31.821207, 18.692514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037251, 31.792799, 18.701513>,  <39.434155, 31.745453, 18.716511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037251, 31.792799, 18.701513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013476, 0.197535, 0.980203,
		0.123431, 0.973123, -0.194412,
		-0.992262, 0.118367, -0.037496,
		38.739571, 31.828310, 18.690264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307816, 32.221073, 19.200405>,  <39.434155, 31.745453, 18.716511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307816, 32.221073, 19.200405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948036, 32.050369, 19.162724>,  <38.732170, 31.947948, 19.140114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948036, 32.050369, 19.162724>,  <39.307816, 32.221073, 19.200405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948036, 32.050369, 19.162724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157232, 0.114867, 0.980859,
		-0.407767, 0.897042, -0.170416,
		-0.899447, -0.426757, -0.094205,
		38.678204, 31.922342, 19.134462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730576, 32.705677, 19.398859>,  <39.307816, 32.221073, 19.200405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730576, 32.705677, 19.398859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589924, 32.333740, 19.442217>,  <38.505531, 32.110577, 19.468231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589924, 32.333740, 19.442217>,  <38.730576, 32.705677, 19.398859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589924, 32.333740, 19.442217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294409, 0.219756, 0.930070,
		-0.888640, 0.295126, -0.351026,
		-0.351629, -0.929843, 0.108396,
		38.484436, 32.054787, 19.474735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154930, 32.752033, 19.890951>,  <38.730576, 32.705677, 19.398859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154930, 32.752033, 19.890951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253674, 32.364475, 19.883890>,  <38.312920, 32.131943, 19.879654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253674, 32.364475, 19.883890>,  <38.154930, 32.752033, 19.890951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253674, 32.364475, 19.883890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228529, -0.075907, 0.970573,
		-0.941720, -0.235556, -0.240158,
		0.246854, -0.968892, -0.017651,
		38.327728, 32.073807, 19.878595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931702, 32.526505, 20.608412>,  <38.154930, 32.752033, 19.890951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931702, 32.526505, 20.608412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108150, 32.193600, 20.474096>,  <38.214020, 31.993856, 20.393507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108150, 32.193600, 20.474096>,  <37.931702, 32.526505, 20.608412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108150, 32.193600, 20.474096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050489, -0.396579, 0.916611,
		-0.896026, -0.387384, -0.216960,
		0.441122, -0.832261, -0.335787,
		38.240486, 31.943922, 20.373360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609982, 31.930502, 20.964050>,  <37.931702, 32.526505, 20.608412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609982, 31.930502, 20.964050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984970, 31.847908, 20.851965>,  <38.209961, 31.798351, 20.784714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984970, 31.847908, 20.851965>,  <37.609982, 31.930502, 20.964050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984970, 31.847908, 20.851965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156745, -0.468353, 0.869526,
		-0.310782, -0.859075, -0.406701,
		0.937468, -0.206484, -0.280212,
		38.266209, 31.785963, 20.767900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606930, 31.269104, 20.893909>,  <37.609982, 31.930502, 20.964050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606930, 31.269104, 20.893909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971394, 31.408030, 20.982595>,  <38.190071, 31.491385, 21.035807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971394, 31.408030, 20.982595>,  <37.606930, 31.269104, 20.893909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971394, 31.408030, 20.982595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048965, -0.442999, 0.895184,
		0.409128, -0.826514, -0.386638,
		0.911162, 0.347313, 0.221714,
		38.244743, 31.512224, 21.049110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020580, 30.623257, 21.069582>,  <37.606930, 31.269104, 20.893909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020580, 30.623257, 21.069582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178032, 30.960142, 21.216949>,  <38.272503, 31.162273, 21.305370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178032, 30.960142, 21.216949>,  <38.020580, 30.623257, 21.069582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178032, 30.960142, 21.216949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019422, -0.408306, 0.912639,
		0.919064, -0.352085, -0.177079,
		0.393629, 0.842213, 0.368421,
		38.296120, 31.212807, 21.327477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763531, 30.470119, 21.389645>,  <38.020580, 30.623257, 21.069582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763531, 30.470119, 21.389645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600922, 30.795031, 21.556950>,  <38.503357, 30.989977, 21.657333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600922, 30.795031, 21.556950>,  <38.763531, 30.470119, 21.389645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600922, 30.795031, 21.556950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240226, -0.346661, 0.906707,
		0.881493, 0.469075, -0.054205,
		-0.406523, 0.812278, 0.418263,
		38.478966, 31.038713, 21.682428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307659, 30.120869, 21.284969>,  <38.763531, 30.470119, 21.389645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307659, 30.120869, 21.284969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340797, 29.722748, 21.264940>,  <39.360680, 29.483875, 21.252924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340797, 29.722748, 21.264940>,  <39.307659, 30.120869, 21.284969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340797, 29.722748, 21.264940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294671, 0.023532, -0.955309,
		0.952001, 0.093895, -0.291338,
		0.082843, -0.995304, -0.050071,
		39.365650, 29.424156, 21.249920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651405, 29.971151, 20.707645>,  <39.307659, 30.120869, 21.284969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651405, 29.971151, 20.707645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436291, 29.643616, 20.787933>,  <39.307220, 29.447094, 20.836105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436291, 29.643616, 20.787933>,  <39.651405, 29.971151, 20.707645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436291, 29.643616, 20.787933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170580, -0.127472, -0.977064,
		0.825643, -0.559693, -0.071124,
		-0.537789, -0.818838, 0.200719,
		39.274956, 29.397964, 20.848148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806892, 29.616283, 20.182266>,  <39.651405, 29.971151, 20.707645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806892, 29.616283, 20.182266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483402, 29.409185, 20.293907>,  <39.289307, 29.284925, 20.360891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483402, 29.409185, 20.293907>,  <39.806892, 29.616283, 20.182266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483402, 29.409185, 20.293907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068876, -0.387888, -0.919130,
		0.584135, -0.762550, 0.278036,
		-0.808729, -0.517746, 0.279100,
		39.240784, 29.253862, 20.377638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939671, 28.921160, 19.903006>,  <39.806892, 29.616283, 20.182266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939671, 28.921160, 19.903006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548645, 28.969559, 19.971981>,  <39.314030, 28.998598, 20.013367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548645, 28.969559, 19.971981>,  <39.939671, 28.921160, 19.903006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548645, 28.969559, 19.971981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207189, -0.404403, -0.890804,
		-0.038047, -0.906542, 0.420397,
		-0.977561, 0.120994, 0.172439,
		39.255375, 29.005857, 20.023712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599209, 28.276834, 19.788145>,  <39.939671, 28.921160, 19.903006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599209, 28.276834, 19.788145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306938, 28.547369, 19.750866>,  <39.131577, 28.709690, 19.728498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306938, 28.547369, 19.750866>,  <39.599209, 28.276834, 19.788145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306938, 28.547369, 19.750866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224114, -0.366551, -0.903003,
		-0.644895, -0.638913, 0.419405,
		-0.730673, 0.676336, -0.093197,
		39.087734, 28.750269, 19.722906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014923, 27.813585, 19.530289>,  <39.599209, 28.276834, 19.788145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014923, 27.813585, 19.530289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918591, 28.193920, 19.452410>,  <38.860790, 28.422121, 19.405682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918591, 28.193920, 19.452410>,  <39.014923, 27.813585, 19.530289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918591, 28.193920, 19.452410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501438, -0.293650, -0.813836,
		-0.831000, -0.098366, 0.547506,
		-0.240829, 0.950839, -0.194699,
		38.846340, 28.479172, 19.394001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313187, 27.838133, 19.321321>,  <39.014923, 27.813585, 19.530289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313187, 27.838133, 19.321321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456604, 28.179056, 19.168997>,  <38.542656, 28.383610, 19.077602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456604, 28.179056, 19.168997>,  <38.313187, 27.838133, 19.321321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456604, 28.179056, 19.168997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383682, -0.237340, -0.892445,
		-0.851018, 0.466094, 0.241917,
		0.358547, 0.852306, -0.380813,
		38.564167, 28.434748, 19.054752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674225, 28.123718, 18.869839>,  <38.313187, 27.838133, 19.321321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674225, 28.123718, 18.869839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011864, 28.306904, 18.758287>,  <38.214447, 28.416815, 18.691357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011864, 28.306904, 18.758287>,  <37.674225, 28.123718, 18.869839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011864, 28.306904, 18.758287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302954, -0.021799, -0.952756,
		-0.442408, 0.888703, 0.120342,
		0.844093, 0.457965, -0.278880,
		38.265091, 28.444294, 18.674623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464447, 28.588337, 18.351402>,  <37.674225, 28.123718, 18.869839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464447, 28.588337, 18.351402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858501, 28.547077, 18.296459>,  <38.094933, 28.522322, 18.263493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858501, 28.547077, 18.296459>,  <37.464447, 28.588337, 18.351402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858501, 28.547077, 18.296459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158208, -0.233336, -0.959440,
		0.066914, 0.966910, -0.246186,
		0.985136, -0.103148, -0.137359,
		38.154041, 28.516132, 18.255251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675774, 28.876812, 17.718307>,  <37.464447, 28.588337, 18.351402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675774, 28.876812, 17.718307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976452, 28.623817, 17.793047>,  <38.156860, 28.472021, 17.837891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976452, 28.623817, 17.793047>,  <37.675774, 28.876812, 17.718307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976452, 28.623817, 17.793047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000296, -0.282987, -0.959124,
		0.659510, 0.721025, -0.212533,
		0.751696, -0.632489, 0.186846,
		38.201962, 28.434071, 17.849100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227547, 29.074192, 17.244728>,  <37.675774, 28.876812, 17.718307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227547, 29.074192, 17.244728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306072, 28.692875, 17.336550>,  <38.353188, 28.464085, 17.391642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306072, 28.692875, 17.336550>,  <38.227547, 29.074192, 17.244728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306072, 28.692875, 17.336550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129927, -0.206755, -0.969728,
		0.971895, 0.220195, 0.083270,
		0.196312, -0.953293, 0.229553,
		38.364967, 28.406887, 17.405416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926613, 28.976427, 17.037178>,  <38.227547, 29.074192, 17.244728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926613, 28.976427, 17.037178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750404, 28.618692, 17.068430>,  <38.644680, 28.404051, 17.087181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750404, 28.618692, 17.068430>,  <38.926613, 28.976427, 17.037178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750404, 28.618692, 17.068430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144805, -0.156676, -0.976977,
		0.885988, -0.419063, 0.198523,
		-0.440519, -0.894337, 0.078130,
		38.618248, 28.350391, 17.091869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367596, 28.514021, 16.878843>,  <38.926613, 28.976427, 17.037178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367596, 28.514021, 16.878843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018581, 28.338690, 16.792538>,  <38.809174, 28.233492, 16.740753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018581, 28.338690, 16.792538>,  <39.367596, 28.514021, 16.878843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018581, 28.338690, 16.792538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314594, -0.166190, -0.934565,
		0.373788, -0.883317, 0.282902,
		-0.872533, -0.438329, -0.215766,
		38.756821, 28.207191, 16.727808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543736, 27.931784, 16.492197>,  <39.367596, 28.514021, 16.878843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543736, 27.931784, 16.492197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150387, 27.981146, 16.438902>,  <38.914379, 28.010763, 16.406925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150387, 27.981146, 16.438902>,  <39.543736, 27.931784, 16.492197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150387, 27.981146, 16.438902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113572, -0.154613, -0.981426,
		-0.141708, -0.980238, 0.138027,
		-0.983372, 0.123400, -0.133237,
		38.855377, 28.018167, 16.398930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.080360, 28.820812, 16.218140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.459091, 28.931765, 16.283342>,  <32.686329, 28.998335, 16.322464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.459091, 28.931765, 16.283342>,  <32.080360, 28.820812, 16.218140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459091, 28.931765, 16.283342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051290, -0.370045, 0.927597,
		0.317617, -0.886638, -0.336144,
		0.946831, 0.277380, 0.163008,
		32.743141, 29.014978, 16.332245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449932, 28.195826, 16.384912>,  <32.080360, 28.820812, 16.218140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449932, 28.195826, 16.384912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.642044, 28.500502, 16.558886>,  <32.757309, 28.683308, 16.663269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.642044, 28.500502, 16.558886>,  <32.449932, 28.195826, 16.384912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642044, 28.500502, 16.558886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149903, -0.559848, 0.814923,
		0.864213, -0.326190, -0.383061,
		0.480276, 0.761689, 0.434931,
		32.786125, 28.729008, 16.689365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923725, 27.882702, 16.961895>,  <32.449932, 28.195826, 16.384912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923725, 27.882702, 16.961895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.943222, 28.269592, 17.061577>,  <32.954918, 28.501726, 17.121386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.943222, 28.269592, 17.061577>,  <32.923725, 27.882702, 16.961895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943222, 28.269592, 17.061577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154312, -0.253795, 0.954869,
		0.986819, -0.008083, -0.161624,
		0.048738, 0.967224, 0.249203,
		32.957844, 28.559759, 17.136337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336994, 27.775906, 17.499895>,  <32.923725, 27.882702, 16.961895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336994, 27.775906, 17.499895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.201317, 28.149628, 17.543751>,  <33.119911, 28.373861, 17.570065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.201317, 28.149628, 17.543751>,  <33.336994, 27.775906, 17.499895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201317, 28.149628, 17.543751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333912, 0.010616, 0.942544,
		0.879462, 0.356311, -0.315578,
		-0.339189, 0.934307, 0.109640,
		33.099560, 28.429920, 17.576643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911144, 28.258854, 17.737061>,  <33.336994, 27.775906, 17.499895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911144, 28.258854, 17.737061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.553219, 28.397682, 17.849388>,  <33.338463, 28.480978, 17.916784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.553219, 28.397682, 17.849388>,  <33.911144, 28.258854, 17.737061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553219, 28.397682, 17.849388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347381, 0.146164, 0.926263,
		0.280432, 0.926379, -0.251354,
		-0.894810, 0.347069, 0.280818,
		33.284775, 28.501802, 17.933634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102711, 28.706665, 18.213717>,  <33.911144, 28.258854, 17.737061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102711, 28.706665, 18.213717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.708878, 28.695942, 18.282864>,  <33.472580, 28.689508, 18.324352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.708878, 28.695942, 18.282864>,  <34.102711, 28.706665, 18.213717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708878, 28.695942, 18.282864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157464, 0.294660, 0.942539,
		-0.076205, 0.955226, -0.285895,
		-0.984580, -0.026807, 0.172869,
		33.413502, 28.687901, 18.334724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962959, 29.292948, 18.617138>,  <34.102711, 28.706665, 18.213717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962959, 29.292948, 18.617138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.684158, 29.023832, 18.716372>,  <33.516880, 28.862362, 18.775911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.684158, 29.023832, 18.716372>,  <33.962959, 29.292948, 18.617138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684158, 29.023832, 18.716372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265089, 0.079703, 0.960924,
		-0.666273, 0.735528, 0.122796,
		-0.696999, -0.672790, 0.248084,
		33.475060, 28.821995, 18.790796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702881, 29.525808, 19.259140>,  <33.962959, 29.292948, 18.617138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702881, 29.525808, 19.259140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.564728, 29.150909, 19.240025>,  <33.481838, 28.925970, 19.228556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.564728, 29.150909, 19.240025>,  <33.702881, 29.525808, 19.259140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564728, 29.150909, 19.240025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198060, -0.122574, 0.972496,
		-0.917324, 0.326416, 0.227966,
		-0.345381, -0.937245, -0.047790,
		33.461113, 28.869736, 19.225687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307907, 29.429363, 19.837198>,  <33.702881, 29.525808, 19.259140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307907, 29.429363, 19.837198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.417599, 29.065565, 19.712221>,  <33.483414, 28.847286, 19.637236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.417599, 29.065565, 19.712221>,  <33.307907, 29.429363, 19.837198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417599, 29.065565, 19.712221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157998, -0.277870, 0.947536,
		-0.948598, -0.309203, 0.067500,
		0.274224, -0.909495, -0.312441,
		33.499866, 28.792717, 19.618488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046368, 29.044006, 20.325325>,  <33.307907, 29.429363, 19.837198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046368, 29.044006, 20.325325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.315769, 28.802353, 20.154951>,  <33.477409, 28.657362, 20.052727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.315769, 28.802353, 20.154951>,  <33.046368, 29.044006, 20.325325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315769, 28.802353, 20.154951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121753, -0.477686, 0.870053,
		-0.729091, -0.637840, -0.248167,
		0.673500, -0.604132, -0.425936,
		33.517818, 28.621113, 20.027170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830734, 28.349588, 20.498989>,  <33.046368, 29.044006, 20.325325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830734, 28.349588, 20.498989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.219406, 28.319292, 20.409458>,  <33.452610, 28.301113, 20.355740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.219406, 28.319292, 20.409458>,  <32.830734, 28.349588, 20.498989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219406, 28.319292, 20.409458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159007, -0.491101, 0.856468,
		-0.174794, -0.867804, -0.465149,
		0.971681, -0.075743, -0.223828,
		33.510910, 28.296570, 20.342310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092690, 27.600174, 20.706865>,  <32.830734, 28.349588, 20.498989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092690, 27.600174, 20.706865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.415333, 27.834028, 20.672037>,  <33.608921, 27.974340, 20.651140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.415333, 27.834028, 20.672037>,  <33.092690, 27.600174, 20.706865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415333, 27.834028, 20.672037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394268, -0.422415, 0.816161,
		0.440378, -0.692652, -0.571228,
		0.806610, 0.584636, -0.087068,
		33.657314, 28.009418, 20.645916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627071, 27.132364, 20.781624>,  <33.092690, 27.600174, 20.706865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627071, 27.132364, 20.781624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790894, 27.484243, 20.878284>,  <33.889187, 27.695372, 20.936281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790894, 27.484243, 20.878284>,  <33.627071, 27.132364, 20.781624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790894, 27.484243, 20.878284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175447, -0.335891, 0.925416,
		0.895256, -0.336611, -0.291907,
		0.409554, 0.879699, 0.241651,
		33.913761, 27.748154, 20.950779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195824, 26.986589, 21.001429>,  <33.627071, 27.132364, 20.781624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195824, 26.986589, 21.001429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.127766, 27.352402, 21.148228>,  <34.086933, 27.571888, 21.236307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.127766, 27.352402, 21.148228>,  <34.195824, 26.986589, 21.001429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127766, 27.352402, 21.148228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358149, -0.289572, 0.887625,
		0.918031, 0.282463, -0.278269,
		-0.170142, 0.914529, 0.366999,
		34.076721, 27.626760, 21.258327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823555, 26.871103, 20.834560>,  <34.195824, 26.986589, 21.001429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823555, 26.871103, 20.834560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.021500, 26.523542, 20.838978>,  <35.140266, 26.315006, 20.841627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.021500, 26.523542, 20.838978>,  <34.823555, 26.871103, 20.834560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021500, 26.523542, 20.838978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214336, 0.109736, -0.970576,
		0.842122, 0.482670, 0.240541,
		0.494864, -0.868900, 0.011042,
		35.169960, 26.262873, 20.842291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316238, 26.985533, 20.333025>,  <34.823555, 26.871103, 20.834560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316238, 26.985533, 20.333025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.223545, 26.597574, 20.362961>,  <35.167931, 26.364799, 20.380922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.223545, 26.597574, 20.362961>,  <35.316238, 26.985533, 20.333025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223545, 26.597574, 20.362961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237703, -0.018147, -0.971169,
		0.943291, -0.242840, -0.226342,
		-0.231731, -0.969896, 0.074842,
		35.154026, 26.306604, 20.385414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744209, 26.679768, 19.679907>,  <35.316238, 26.985533, 20.333025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744209, 26.679768, 19.679907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.492020, 26.386507, 19.781879>,  <35.340706, 26.210550, 19.843063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.492020, 26.386507, 19.781879>,  <35.744209, 26.679768, 19.679907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492020, 26.386507, 19.781879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156976, -0.201216, -0.966887,
		0.760172, -0.649615, 0.011774,
		-0.630474, -0.733152, 0.254933,
		35.302876, 26.166561, 19.858358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854591, 26.138346, 19.220858>,  <35.744209, 26.679768, 19.679907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854591, 26.138346, 19.220858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483528, 26.088280, 19.361591>,  <35.260891, 26.058241, 19.446032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483528, 26.088280, 19.361591>,  <35.854591, 26.138346, 19.220858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483528, 26.088280, 19.361591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343109, -0.086240, -0.935328,
		0.147412, -0.988381, 0.037055,
		-0.927656, -0.125165, 0.351835,
		35.205231, 26.050730, 19.467142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588501, 25.475372, 18.973837>,  <35.854591, 26.138346, 19.220858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588501, 25.475372, 18.973837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.272678, 25.696701, 19.079998>,  <35.083187, 25.829498, 19.143694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.272678, 25.696701, 19.079998>,  <35.588501, 25.475372, 18.973837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272678, 25.696701, 19.079998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351781, -0.053713, -0.934540,
		-0.502847, -0.831233, 0.237057,
		-0.789554, 0.553323, 0.265402,
		35.035812, 25.862698, 19.159618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027260, 25.298065, 18.449688>,  <35.588501, 25.475372, 18.973837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027260, 25.298065, 18.449688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.878044, 25.638401, 18.597696>,  <34.788513, 25.842602, 18.686501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.878044, 25.638401, 18.597696>,  <35.027260, 25.298065, 18.449688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878044, 25.638401, 18.597696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213033, 0.309606, -0.926694,
		-0.903027, -0.424521, 0.065762,
		-0.373040, 0.850839, 0.370019,
		34.766132, 25.893652, 18.708702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303902, 25.367350, 18.158421>,  <35.027260, 25.298065, 18.449688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303902, 25.367350, 18.158421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.430496, 25.728107, 18.276012>,  <34.506454, 25.944561, 18.346567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.430496, 25.728107, 18.276012>,  <34.303902, 25.367350, 18.158421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430496, 25.728107, 18.276012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257174, 0.379883, -0.888566,
		-0.913070, 0.205616, 0.352172,
		0.316488, 0.901893, 0.293981,
		34.525444, 25.998676, 18.364206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768883, 25.846748, 17.957142>,  <34.303902, 25.367350, 18.158421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768883, 25.846748, 17.957142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.098804, 26.068272, 18.002737>,  <34.296757, 26.201185, 18.030094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.098804, 26.068272, 18.002737>,  <33.768883, 25.846748, 17.957142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098804, 26.068272, 18.002737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199326, 0.473458, -0.857966,
		-0.529116, 0.684935, 0.500899,
		0.824806, 0.553806, 0.113989,
		34.346245, 26.234413, 18.036934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622192, 26.527809, 17.779255>,  <33.768883, 25.846748, 17.957142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622192, 26.527809, 17.779255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.017918, 26.500414, 17.727772>,  <34.255352, 26.483976, 17.696882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.017918, 26.500414, 17.727772>,  <33.622192, 26.527809, 17.779255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017918, 26.500414, 17.727772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109811, 0.230684, -0.966812,
		0.095907, 0.970615, 0.220698,
		0.989315, -0.068488, -0.128709,
		34.314713, 26.479868, 17.689159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612106, 26.888399, 17.149281>,  <33.622192, 26.527809, 17.779255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612106, 26.888399, 17.149281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.992085, 26.788336, 17.224134>,  <34.220074, 26.728298, 17.269047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.992085, 26.788336, 17.224134>,  <33.612106, 26.888399, 17.149281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992085, 26.788336, 17.224134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218993, 0.106005, -0.969951,
		0.222806, 0.962384, 0.155483,
		0.949947, -0.250160, 0.187137,
		34.277069, 26.713287, 17.280275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060303, 27.400677, 16.872423>,  <33.612106, 26.888399, 17.149281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060303, 27.400677, 16.872423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.277088, 27.064516, 16.872671>,  <34.407162, 26.862820, 16.872820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.277088, 27.064516, 16.872671>,  <34.060303, 27.400677, 16.872423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277088, 27.064516, 16.872671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346074, 0.222508, -0.911440,
		0.765836, 0.494185, 0.411432,
		0.541966, -0.840400, 0.000620,
		34.439678, 26.812397, 16.872858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780304, 27.575207, 16.637020>,  <34.060303, 27.400677, 16.872423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780304, 27.575207, 16.637020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714565, 27.186152, 16.571337>,  <34.675121, 26.952719, 16.531927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714565, 27.186152, 16.571337>,  <34.780304, 27.575207, 16.637020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714565, 27.186152, 16.571337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193529, 0.131441, -0.972250,
		0.967232, -0.191562, 0.166633,
		-0.164344, -0.972639, -0.164207,
		34.665260, 26.894360, 16.522074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372898, 27.328619, 16.221748>,  <34.780304, 27.575207, 16.637020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372898, 27.328619, 16.221748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.072929, 27.069057, 16.170301>,  <34.892948, 26.913321, 16.139433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.072929, 27.069057, 16.170301>,  <35.372898, 27.328619, 16.221748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072929, 27.069057, 16.170301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058428, 0.128697, -0.989961,
		0.658943, -0.749907, -0.058599,
		-0.749920, -0.648904, -0.128619,
		34.847954, 26.874386, 16.131716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641285, 26.868116, 15.713660>,  <35.372898, 27.328619, 16.221748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641285, 26.868116, 15.713660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.241837, 26.856339, 15.696269>,  <35.002167, 26.849272, 15.685834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.241837, 26.856339, 15.696269>,  <35.641285, 26.868116, 15.713660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241837, 26.856339, 15.696269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038974, 0.139256, -0.989489,
		0.035188, -0.989819, -0.137917,
		-0.998620, -0.029443, -0.043478,
		34.942249, 26.847506, 15.683226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008278, 26.169416, 15.656608>,  <35.641285, 26.868116, 15.713660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008278, 26.169416, 15.656608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.358128, 26.045866, 15.507142>,  <36.568039, 25.971735, 15.417462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.358128, 26.045866, 15.507142>,  <36.008278, 26.169416, 15.656608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358128, 26.045866, 15.507142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232621, -0.408854, 0.882455,
		-0.425360, -0.858734, -0.285736,
		0.874618, -0.308893, -0.373670,
		36.620514, 25.953203, 15.395042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115261, 25.505360, 15.859900>,  <36.008278, 26.169416, 15.656608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115261, 25.505360, 15.859900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.491119, 25.622892, 15.789782>,  <36.716633, 25.693413, 15.747710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.491119, 25.622892, 15.789782>,  <36.115261, 25.505360, 15.859900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491119, 25.622892, 15.789782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279906, -0.365506, 0.887726,
		0.196770, -0.883215, -0.425691,
		0.939646, 0.293831, -0.175296,
		36.773014, 25.711042, 15.737193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457169, 24.977259, 16.170998>,  <36.115261, 25.505360, 15.859900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457169, 24.977259, 16.170998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714317, 25.280033, 16.124075>,  <36.868607, 25.461699, 16.095922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714317, 25.280033, 16.124075>,  <36.457169, 24.977259, 16.170998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714317, 25.280033, 16.124075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316785, -0.123302, 0.940449,
		0.697397, -0.641750, -0.319054,
		0.642873, 0.756937, -0.117306,
		36.907181, 25.507114, 16.088882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989403, 24.694197, 16.519745>,  <36.457169, 24.977259, 16.170998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989403, 24.694197, 16.519745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.076927, 25.084101, 16.502022>,  <37.129440, 25.318043, 16.491388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.076927, 25.084101, 16.502022>,  <36.989403, 24.694197, 16.519745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076927, 25.084101, 16.502022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262749, -0.015126, 0.964746,
		0.939726, -0.222737, -0.259427,
		0.218809, 0.974761, -0.044310,
		37.142570, 25.376530, 16.488729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638676, 24.769253, 16.749014>,  <36.989403, 24.694197, 16.519745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638676, 24.769253, 16.749014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.474678, 25.129883, 16.804255>,  <37.376282, 25.346260, 16.837399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.474678, 25.129883, 16.804255>,  <37.638676, 24.769253, 16.749014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474678, 25.129883, 16.804255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358086, 0.019851, 0.933478,
		0.838857, 0.432171, -0.330979,
		-0.409992, 0.901573, 0.138102,
		37.351681, 25.400354, 16.845686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105587, 25.155531, 17.077417>,  <37.638676, 24.769253, 16.749014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105587, 25.155531, 17.077417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744854, 25.312782, 17.149143>,  <37.528416, 25.407133, 17.192179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744854, 25.312782, 17.149143>,  <38.105587, 25.155531, 17.077417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744854, 25.312782, 17.149143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207023, 0.028862, 0.977910,
		0.379268, 0.919031, -0.107415,
		-0.901830, 0.393127, 0.179314,
		37.474304, 25.430721, 17.202938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183929, 25.605331, 17.695404>,  <38.105587, 25.155531, 17.077417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183929, 25.605331, 17.695404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.784866, 25.581444, 17.682119>,  <37.545425, 25.567110, 17.674149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.784866, 25.581444, 17.682119>,  <38.183929, 25.605331, 17.695404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784866, 25.581444, 17.682119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031432, -0.030506, 0.999040,
		-0.060676, 0.997749, 0.028558,
		-0.997663, -0.059720, -0.033212,
		37.485569, 25.563528, 17.672155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939896, 26.128733, 18.193207>,  <38.183929, 25.605331, 17.695404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939896, 26.128733, 18.193207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.655300, 25.856016, 18.125164>,  <37.484543, 25.692387, 18.084337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.655300, 25.856016, 18.125164>,  <37.939896, 26.128733, 18.193207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655300, 25.856016, 18.125164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121994, -0.118557, 0.985425,
		-0.692022, 0.721875, 0.001178,
		-0.711493, -0.681792, -0.170109,
		37.441853, 25.651478, 18.074131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373886, 26.361095, 18.609745>,  <37.939896, 26.128733, 18.193207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373886, 26.361095, 18.609745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325481, 25.971930, 18.530966>,  <37.296436, 25.738430, 18.483698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325481, 25.971930, 18.530966>,  <37.373886, 26.361095, 18.609745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325481, 25.971930, 18.530966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073603, -0.189063, 0.979203,
		-0.989918, 0.132996, -0.048730,
		-0.121016, -0.972917, -0.196946,
		37.289177, 25.680054, 18.471882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790989, 26.140697, 18.945782>,  <37.373886, 26.361095, 18.609745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790989, 26.140697, 18.945782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.032749, 25.828440, 18.882164>,  <37.177807, 25.641085, 18.843994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.032749, 25.828440, 18.882164>,  <36.790989, 26.140697, 18.945782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032749, 25.828440, 18.882164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131502, -0.099140, 0.986346,
		-0.785752, -0.617063, 0.042735,
		0.604401, -0.780643, -0.159044,
		37.214069, 25.594246, 18.834452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714298, 25.810320, 19.688459>,  <36.790989, 26.140697, 18.945782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714298, 25.810320, 19.688459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.994473, 25.609612, 19.485434>,  <37.162575, 25.489185, 19.363619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.994473, 25.609612, 19.485434>,  <36.714298, 25.810320, 19.688459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994473, 25.609612, 19.485434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431838, -0.268263, 0.861134,
		-0.568253, -0.822350, 0.028784,
		0.700432, -0.501772, -0.507563,
		37.204601, 25.459080, 19.333164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778042, 25.127026, 20.001785>,  <36.714298, 25.810320, 19.688459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778042, 25.127026, 20.001785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119923, 25.220495, 19.816360>,  <37.325050, 25.276577, 19.705107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119923, 25.220495, 19.816360>,  <36.778042, 25.127026, 20.001785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119923, 25.220495, 19.816360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509013, -0.201835, 0.836760,
		0.101965, -0.951136, -0.291451,
		0.854698, 0.233672, -0.463561,
		37.376331, 25.290598, 19.677292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176556, 24.622375, 20.198212>,  <36.778042, 25.127026, 20.001785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176556, 24.622375, 20.198212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.422161, 24.913687, 20.076494>,  <37.569527, 25.088474, 20.003464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.422161, 24.913687, 20.076494>,  <37.176556, 24.622375, 20.198212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422161, 24.913687, 20.076494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593732, -0.172156, 0.786031,
		0.520063, -0.663306, -0.538109,
		0.614017, 0.728278, -0.304294,
		37.606365, 25.132170, 19.985207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844479, 24.263252, 20.150892>,  <37.176556, 24.622375, 20.198212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844479, 24.263252, 20.150892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913105, 24.652084, 20.214928>,  <37.954281, 24.885384, 20.253349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913105, 24.652084, 20.214928>,  <37.844479, 24.263252, 20.150892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913105, 24.652084, 20.214928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453166, -0.222154, 0.863301,
		0.874761, -0.075563, -0.478627,
		0.171563, 0.972079, 0.160088,
		37.964573, 24.943708, 20.262955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.356583, 27.275700, 16.062733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071251, 27.546347, 15.989679>,  <38.900055, 27.708735, 15.945847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071251, 27.546347, 15.989679>,  <39.356583, 27.275700, 16.062733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071251, 27.546347, 15.989679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198873, -0.054460, -0.978511,
		-0.672025, -0.734317, -0.095714,
		-0.713325, 0.676619, -0.182635,
		38.857254, 27.749332, 15.934889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109612, 26.977835, 15.486164>,  <39.356583, 27.275700, 16.062733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109612, 26.977835, 15.486164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981606, 27.355606, 15.516211>,  <38.904800, 27.582270, 15.534239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981606, 27.355606, 15.516211>,  <39.109612, 26.977835, 15.486164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981606, 27.355606, 15.516211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234648, 0.155826, -0.959509,
		-0.917894, -0.289434, -0.271475,
		-0.320018, 0.944429, 0.075117,
		38.885601, 27.638935, 15.538746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553528, 27.145725, 14.928301>,  <39.109612, 26.977835, 15.486164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553528, 27.145725, 14.928301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.672043, 27.516485, 15.020447>,  <38.743153, 27.738941, 15.075734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.672043, 27.516485, 15.020447>,  <38.553528, 27.145725, 14.928301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672043, 27.516485, 15.020447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021956, 0.234521, -0.971863,
		-0.954847, 0.293008, 0.049134,
		0.296286, 0.926902, 0.230364,
		38.760929, 27.794556, 15.089556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122314, 27.650860, 14.594505>,  <38.553528, 27.145725, 14.928301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122314, 27.650860, 14.594505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461903, 27.848263, 14.670090>,  <38.665653, 27.966705, 14.715440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461903, 27.848263, 14.670090>,  <38.122314, 27.650860, 14.594505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461903, 27.848263, 14.670090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074114, 0.465236, -0.882079,
		-0.523224, 0.734851, 0.431545,
		0.848966, 0.493508, 0.188960,
		38.716591, 27.996315, 14.726778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017178, 28.347130, 14.381077>,  <38.122314, 27.650860, 14.594505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017178, 28.347130, 14.381077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.415375, 28.343027, 14.418784>,  <38.654293, 28.340565, 14.441408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.415375, 28.343027, 14.418784>,  <38.017178, 28.347130, 14.381077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415375, 28.343027, 14.418784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078798, 0.642507, -0.762217,
		-0.052751, 0.766211, 0.640420,
		0.995494, -0.010256, 0.094268,
		38.714024, 28.339951, 14.447064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258148, 29.007460, 14.396045>,  <38.017178, 28.347130, 14.381077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258148, 29.007460, 14.396045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.531178, 28.761793, 14.237605>,  <38.694996, 28.614393, 14.142542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.531178, 28.761793, 14.237605>,  <38.258148, 29.007460, 14.396045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531178, 28.761793, 14.237605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065196, 0.591004, -0.804029,
		0.727905, 0.522984, 0.443444,
		0.682572, -0.614168, -0.396098,
		38.735950, 28.577543, 14.118775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618469, 29.483240, 13.997763>,  <38.258148, 29.007460, 14.396045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618469, 29.483240, 13.997763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752972, 29.129637, 13.867865>,  <38.833675, 28.917475, 13.789926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752972, 29.129637, 13.867865>,  <38.618469, 29.483240, 13.997763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752972, 29.129637, 13.867865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055901, 0.362951, -0.930130,
		0.940109, 0.294612, 0.171463,
		0.336260, -0.884008, -0.324745,
		38.853851, 28.864435, 13.770441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240280, 29.602507, 13.642906>,  <38.618469, 29.483240, 13.997763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240280, 29.602507, 13.642906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.082851, 29.260231, 13.508506>,  <38.988396, 29.054865, 13.427866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.082851, 29.260231, 13.508506>,  <39.240280, 29.602507, 13.642906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082851, 29.260231, 13.508506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064642, 0.390353, -0.918393,
		0.917019, -0.339733, -0.208945,
		-0.393570, -0.855690, -0.336001,
		38.964779, 29.003525, 13.407705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635056, 29.448399, 12.959763>,  <39.240280, 29.602507, 13.642906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635056, 29.448399, 12.959763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.318260, 29.205256, 12.936906>,  <39.128181, 29.059370, 12.923192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.318260, 29.205256, 12.936906>,  <39.635056, 29.448399, 12.959763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318260, 29.205256, 12.936906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137134, 0.268310, -0.953522,
		0.594936, -0.747342, -0.295856,
		-0.791988, -0.607857, -0.057141,
		39.080666, 29.022898, 12.919764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642223, 29.150486, 12.331831>,  <39.635056, 29.448399, 12.959763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642223, 29.150486, 12.331831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.264477, 29.051432, 12.418402>,  <39.037827, 28.991999, 12.470345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.264477, 29.051432, 12.418402>,  <39.642223, 29.150486, 12.331831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264477, 29.051432, 12.418402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290945, 0.322214, -0.900849,
		0.153344, -0.913705, -0.376337,
		-0.944371, -0.247633, 0.216428,
		38.981167, 28.977142, 12.483330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391064, 28.604965, 11.828417>,  <39.642223, 29.150486, 12.331831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391064, 28.604965, 11.828417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069530, 28.801264, 11.962893>,  <38.876610, 28.919043, 12.043579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069530, 28.801264, 11.962893>,  <39.391064, 28.604965, 11.828417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069530, 28.801264, 11.962893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184702, 0.331323, -0.925263,
		-0.565458, -0.805848, -0.175685,
		-0.803830, 0.490748, 0.336191,
		38.828381, 28.948488, 12.063750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821335, 28.479498, 11.330335>,  <39.391064, 28.604965, 11.828417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821335, 28.479498, 11.330335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.684105, 28.792208, 11.538612>,  <38.601765, 28.979834, 11.663579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.684105, 28.792208, 11.538612>,  <38.821335, 28.479498, 11.330335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684105, 28.792208, 11.538612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282164, 0.442961, -0.850981,
		-0.895925, -0.438874, 0.068619,
		-0.343078, 0.781777, 0.520695,
		38.581181, 29.026741, 11.694820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211716, 28.661312, 11.017319>,  <38.821335, 28.479498, 11.330335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211716, 28.661312, 11.017319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.331448, 28.998802, 11.195545>,  <38.403286, 29.201296, 11.302481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.331448, 28.998802, 11.195545>,  <38.211716, 28.661312, 11.017319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331448, 28.998802, 11.195545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109834, 0.494341, -0.862301,
		-0.947806, 0.209175, 0.240642,
		0.299331, 0.843725, 0.445565,
		38.421246, 29.251921, 11.329215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395679, 28.071581, 10.623241>,  <38.211716, 28.661312, 11.017319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395679, 28.071581, 10.623241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313370, 27.695436, 10.514888>,  <38.263985, 27.469749, 10.449876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313370, 27.695436, 10.514888>,  <38.395679, 28.071581, 10.623241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313370, 27.695436, 10.514888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037329, 0.284148, -0.958053,
		0.977887, -0.187031, -0.093573,
		-0.205775, -0.940361, -0.270884,
		38.251637, 27.413328, 10.433622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792355, 28.186947, 10.238869>,  <38.395679, 28.071581, 10.623241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792355, 28.186947, 10.238869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424419, 28.045374, 10.171193>,  <37.203659, 27.960430, 10.130588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424419, 28.045374, 10.171193>,  <37.792355, 28.186947, 10.238869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424419, 28.045374, 10.171193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074989, -0.264687, 0.961414,
		-0.385060, 0.897035, 0.216929,
		-0.919840, -0.353934, -0.169188,
		37.148468, 27.939194, 10.120437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412495, 28.443748, 10.819357>,  <37.792355, 28.186947, 10.238869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412495, 28.443748, 10.819357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211628, 28.140793, 10.652411>,  <37.091106, 27.959021, 10.552244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211628, 28.140793, 10.652411>,  <37.412495, 28.443748, 10.819357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211628, 28.140793, 10.652411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194428, -0.371390, 0.907892,
		-0.842630, 0.537061, 0.039243,
		-0.502167, -0.757387, -0.417364,
		37.060978, 27.913576, 10.527203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740921, 28.430721, 11.143911>,  <37.412495, 28.443748, 10.819357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740921, 28.430721, 11.143911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823582, 28.059853, 11.018915>,  <36.873177, 27.837332, 10.943917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823582, 28.059853, 11.018915>,  <36.740921, 28.430721, 11.143911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823582, 28.059853, 11.018915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247085, -0.358486, 0.900242,
		-0.946701, -0.108826, -0.303172,
		0.206653, -0.927170, -0.312490,
		36.885578, 27.781702, 10.925168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187454, 28.039333, 11.290521>,  <36.740921, 28.430721, 11.143911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187454, 28.039333, 11.290521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.455925, 27.744722, 11.256936>,  <36.617008, 27.567955, 11.236785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.455925, 27.744722, 11.256936>,  <36.187454, 28.039333, 11.290521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455925, 27.744722, 11.256936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325954, -0.394947, 0.858936,
		-0.665793, -0.549128, -0.505152,
		0.671174, -0.736530, -0.083962,
		36.657276, 27.523764, 11.231748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907570, 27.552813, 11.673093>,  <36.187454, 28.039333, 11.290521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907570, 27.552813, 11.673093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275677, 27.403673, 11.625607>,  <36.496540, 27.314190, 11.597115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275677, 27.403673, 11.625607>,  <35.907570, 27.552813, 11.673093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275677, 27.403673, 11.625607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062782, -0.440161, 0.895721,
		-0.386220, -0.816850, -0.428474,
		0.920268, -0.372846, -0.118715,
		36.551758, 27.291819, 11.589992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841724, 26.901920, 11.758299>,  <35.907570, 27.552813, 11.673093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841724, 26.901920, 11.758299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226345, 26.983500, 11.831872>,  <36.457115, 27.032448, 11.876016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226345, 26.983500, 11.831872>,  <35.841724, 26.901920, 11.758299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226345, 26.983500, 11.831872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062405, -0.489954, 0.869512,
		0.267455, -0.847555, -0.458387,
		0.961547, 0.203950, 0.183933,
		36.514809, 27.044683, 11.887052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196983, 26.194323, 11.950972>,  <35.841724, 26.901920, 11.758299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196983, 26.194323, 11.950972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.403015, 26.499428, 12.107376>,  <36.526634, 26.682491, 12.201219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.403015, 26.499428, 12.107376>,  <36.196983, 26.194323, 11.950972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403015, 26.499428, 12.107376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087640, -0.500655, 0.861199,
		0.852651, -0.409317, -0.324724,
		0.515078, 0.762761, 0.391012,
		36.557537, 26.728256, 12.224680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614452, 25.806408, 12.266389>,  <36.196983, 26.194323, 11.950972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614452, 25.806408, 12.266389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630684, 26.164156, 12.444582>,  <36.640423, 26.378805, 12.551498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630684, 26.164156, 12.444582>,  <36.614452, 25.806408, 12.266389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630684, 26.164156, 12.444582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108257, -0.447162, 0.887877,
		0.993294, 0.012194, -0.114969,
		0.040583, 0.894370, 0.445483,
		36.642860, 26.432467, 12.578227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185318, 25.726818, 12.667743>,  <36.614452, 25.806408, 12.266389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185318, 25.726818, 12.667743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.966415, 26.032593, 12.804065>,  <36.835075, 26.216059, 12.885858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.966415, 26.032593, 12.804065>,  <37.185318, 25.726818, 12.667743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966415, 26.032593, 12.804065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105251, -0.341103, 0.934115,
		0.830323, 0.547067, 0.106212,
		-0.547253, 0.764438, 0.340805,
		36.802238, 26.261925, 12.906306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647587, 26.083063, 13.114027>,  <37.185318, 25.726818, 12.667743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647587, 26.083063, 13.114027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.270073, 26.155649, 13.224545>,  <37.043564, 26.199200, 13.290856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.270073, 26.155649, 13.224545>,  <37.647587, 26.083063, 13.114027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270073, 26.155649, 13.224545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221624, -0.272795, 0.936197,
		0.245258, 0.944804, 0.217243,
		-0.943786, 0.181463, 0.276297,
		36.986938, 26.210089, 13.307434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775051, 26.211096, 13.779101>,  <37.647587, 26.083063, 13.114027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775051, 26.211096, 13.779101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.375114, 26.204910, 13.782682>,  <37.135151, 26.201199, 13.784831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.375114, 26.204910, 13.782682>,  <37.775051, 26.211096, 13.779101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375114, 26.204910, 13.782682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010646, -0.113072, 0.993530,
		-0.014349, 0.993467, 0.113219,
		-0.999840, -0.015461, 0.008954,
		37.075161, 26.200272, 13.785369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436417, 26.818216, 14.212920>,  <37.775051, 26.211096, 13.779101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436417, 26.818216, 14.212920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.196072, 26.498755, 14.199532>,  <37.051865, 26.307077, 14.191499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.196072, 26.498755, 14.199532>,  <37.436417, 26.818216, 14.212920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196072, 26.498755, 14.199532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052174, -0.002600, 0.998635,
		-0.797651, 0.601785, -0.040107,
		-0.600859, -0.798654, -0.033472,
		37.015816, 26.259159, 14.189490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830215, 26.967508, 14.716105>,  <37.436417, 26.818216, 14.212920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830215, 26.967508, 14.716105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826756, 26.570948, 14.663874>,  <36.824680, 26.333012, 14.632535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826756, 26.570948, 14.663874>,  <36.830215, 26.967508, 14.716105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826756, 26.570948, 14.663874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108696, -0.128879, 0.985685,
		-0.994037, 0.022720, -0.106646,
		-0.008650, -0.991400, -0.130580,
		36.824162, 26.273527, 14.624700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271343, 26.643627, 15.183643>,  <36.830215, 26.967508, 14.716105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271343, 26.643627, 15.183643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500164, 26.331030, 15.084023>,  <36.637455, 26.143471, 15.024252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500164, 26.331030, 15.084023>,  <36.271343, 26.643627, 15.183643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500164, 26.331030, 15.084023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067267, -0.257916, 0.963823,
		-0.817454, -0.568109, -0.094973,
		0.572052, -0.781493, -0.249050,
		36.671780, 26.096582, 15.009309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442596, 26.640718, 14.965163>,  <36.271343, 26.643627, 15.183643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442596, 26.640718, 14.965163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.089642, 26.779150, 15.092674>,  <34.877869, 26.862209, 15.169181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.089642, 26.779150, 15.092674>,  <35.442596, 26.640718, 14.965163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089642, 26.779150, 15.092674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222437, 0.290191, -0.930758,
		-0.414623, -0.892198, -0.179080,
		-0.882388, 0.346080, 0.318778,
		34.824924, 26.882975, 15.188308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025753, 26.516569, 14.404501>,  <35.442596, 26.640718, 14.965163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025753, 26.516569, 14.404501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851467, 26.798986, 14.627805>,  <34.746895, 26.968437, 14.761786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851467, 26.798986, 14.627805>,  <35.025753, 26.516569, 14.404501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851467, 26.798986, 14.627805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205561, 0.525781, -0.825408,
		-0.876297, -0.474400, -0.083956,
		-0.435716, 0.706045, 0.558259,
		34.720753, 27.010799, 14.795282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438580, 26.642860, 14.087065>,  <35.025753, 26.516569, 14.404501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438580, 26.642860, 14.087065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.515400, 26.975071, 14.296194>,  <34.561493, 27.174397, 14.421672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.515400, 26.975071, 14.296194>,  <34.438580, 26.642860, 14.087065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515400, 26.975071, 14.296194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217611, 0.555517, -0.802525,
		-0.956955, 0.040353, 0.287418,
		0.192050, 0.830526, 0.522823,
		34.573013, 27.224228, 14.453041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959755, 27.008060, 13.873119>,  <34.438580, 26.642860, 14.087065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959755, 27.008060, 13.873119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.212215, 27.269875, 14.039602>,  <34.363693, 27.426964, 14.139492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.212215, 27.269875, 14.039602>,  <33.959755, 27.008060, 13.873119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212215, 27.269875, 14.039602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229110, 0.669958, -0.706162,
		-0.741051, 0.350338, 0.572806,
		0.631152, 0.654537, 0.416207,
		34.401562, 27.466236, 14.164464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592957, 27.618591, 13.910154>,  <33.959755, 27.008060, 13.873119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592957, 27.618591, 13.910154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978279, 27.721170, 13.941842>,  <34.209473, 27.782719, 13.960855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978279, 27.721170, 13.941842>,  <33.592957, 27.618591, 13.910154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978279, 27.721170, 13.941842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147680, 0.752864, -0.641394,
		-0.224126, 0.606160, 0.763111,
		0.963306, 0.256449, 0.079219,
		34.267269, 27.798105, 13.965608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558853, 28.284286, 13.856735>,  <33.592957, 27.618591, 13.910154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558853, 28.284286, 13.856735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.930176, 28.189634, 13.742023>,  <34.152969, 28.132843, 13.673195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.930176, 28.189634, 13.742023>,  <33.558853, 28.284286, 13.856735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930176, 28.189634, 13.742023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038206, 0.706530, -0.706651,
		0.369836, 0.666948, 0.646839,
		0.928311, -0.236632, -0.286782,
		34.208668, 28.118645, 13.655988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909851, 28.986912, 13.714113>,  <33.558853, 28.284286, 13.856735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909851, 28.986912, 13.714113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121323, 28.695889, 13.539227>,  <34.248207, 28.521275, 13.434296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121323, 28.695889, 13.539227>,  <33.909851, 28.986912, 13.714113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121323, 28.695889, 13.539227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009808, 0.509815, -0.860228,
		0.848763, 0.459076, 0.262394,
		0.528682, -0.727556, -0.437214,
		34.279926, 28.477621, 13.408063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957733, 29.683966, 13.827082>,  <33.909851, 28.986912, 13.714113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957733, 29.683966, 13.827082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.720444, 30.003851, 13.864045>,  <33.578068, 30.195782, 13.886223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.720444, 30.003851, 13.864045>,  <33.957733, 29.683966, 13.827082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720444, 30.003851, 13.864045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185368, -0.247397, 0.951017,
		0.783403, 0.547040, 0.295004,
		-0.593227, 0.799714, 0.092408,
		33.542477, 30.243765, 13.891768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096066, 30.030251, 14.447231>,  <33.957733, 29.683966, 13.827082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096066, 30.030251, 14.447231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724083, 30.149931, 14.361765>,  <33.500893, 30.221739, 14.310485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724083, 30.149931, 14.361765>,  <34.096066, 30.030251, 14.447231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724083, 30.149931, 14.361765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277211, -0.188865, 0.942064,
		0.241512, 0.935312, 0.258578,
		-0.929960, 0.299200, -0.213666,
		33.445095, 30.239691, 14.297665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912243, 30.407167, 14.967630>,  <34.096066, 30.030251, 14.447231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912243, 30.407167, 14.967630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550159, 30.305851, 14.831141>,  <33.332909, 30.245062, 14.749247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550159, 30.305851, 14.831141>,  <33.912243, 30.407167, 14.967630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550159, 30.305851, 14.831141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324245, -0.107359, 0.939861,
		-0.274692, 0.961415, 0.015054,
		-0.905213, -0.253291, -0.341224,
		33.278595, 30.229864, 14.728773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427166, 30.759056, 15.469830>,  <33.912243, 30.407167, 14.967630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427166, 30.759056, 15.469830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.249657, 30.452484, 15.284078>,  <33.143150, 30.268541, 15.172626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.249657, 30.452484, 15.284078>,  <33.427166, 30.759056, 15.469830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249657, 30.452484, 15.284078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186898, -0.427649, 0.884413,
		-0.876432, 0.479271, 0.046536,
		-0.443774, -0.766430, -0.464380,
		33.116524, 30.222555, 15.144764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774033, 30.571873, 15.931837>,  <33.427166, 30.759056, 15.469830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774033, 30.571873, 15.931837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826729, 30.245964, 15.705990>,  <32.858345, 30.050419, 15.570481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826729, 30.245964, 15.705990>,  <32.774033, 30.571873, 15.931837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826729, 30.245964, 15.705990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226973, -0.579244, 0.782918,
		-0.964950, 0.025011, -0.261240,
		0.131740, -0.814771, -0.564618,
		32.866249, 30.001534, 15.536605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182148, 30.170944, 15.933012>,  <32.774033, 30.571873, 15.931837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182148, 30.170944, 15.933012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505882, 29.943918, 15.872546>,  <32.700123, 29.807703, 15.836267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505882, 29.943918, 15.872546>,  <32.182148, 30.170944, 15.933012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505882, 29.943918, 15.872546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204200, -0.513206, 0.833620,
		-0.550717, -0.643805, -0.531250,
		0.809329, -0.567570, -0.151166,
		32.748680, 29.773647, 15.827197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978544, 29.527168, 16.179119>,  <32.182148, 30.170944, 15.933012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978544, 29.527168, 16.179119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368927, 29.451050, 16.136614>,  <32.603157, 29.405378, 16.111111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368927, 29.451050, 16.136614>,  <31.978544, 29.527168, 16.179119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368927, 29.451050, 16.136614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029722, -0.599187, 0.800057,
		-0.215917, -0.777665, -0.590438,
		0.975959, -0.190296, -0.106261,
		32.661716, 29.393961, 16.104736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.951363, 32.511814, 12.201774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.071667, 32.137062, 12.130434>,  <38.143848, 31.912212, 12.087630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.071667, 32.137062, 12.130434>,  <37.951363, 32.511814, 12.201774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071667, 32.137062, 12.130434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108599, -0.219434, 0.969564,
		-0.947498, -0.272234, -0.167740,
		0.300756, -0.936876, -0.178349,
		38.161892, 31.855999, 12.076929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386448, 31.956974, 12.190331>,  <37.951363, 32.511814, 12.201774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386448, 31.956974, 12.190331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.725994, 31.772676, 12.293978>,  <37.929722, 31.662098, 12.356166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.725994, 31.772676, 12.293978>,  <37.386448, 31.956974, 12.190331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725994, 31.772676, 12.293978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386908, -0.207546, 0.898458,
		-0.360182, -0.862924, -0.354445,
		0.848865, -0.460746, 0.259118,
		37.980652, 31.634453, 12.371714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144245, 31.388998, 12.526652>,  <37.386448, 31.956974, 12.190331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144245, 31.388998, 12.526652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527885, 31.427649, 12.633074>,  <37.758072, 31.450838, 12.696927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527885, 31.427649, 12.633074>,  <37.144245, 31.388998, 12.526652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527885, 31.427649, 12.633074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234983, -0.252230, 0.938703,
		0.157809, -0.962831, -0.219210,
		0.959103, 0.096626, 0.266054,
		37.815617, 31.456636, 12.712890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393753, 30.737795, 12.838322>,  <37.144245, 31.388998, 12.526652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393753, 30.737795, 12.838322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.644169, 31.014118, 12.983022>,  <37.794418, 31.179913, 13.069841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.644169, 31.014118, 12.983022>,  <37.393753, 30.737795, 12.838322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644169, 31.014118, 12.983022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240883, -0.269897, 0.932272,
		0.741656, -0.670775, -0.002562,
		0.626037, 0.690808, 0.361749,
		37.831982, 31.221361, 13.091547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662605, 30.486324, 13.547316>,  <37.393753, 30.737795, 12.838322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662605, 30.486324, 13.547316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.812145, 30.857254, 13.554319>,  <37.901871, 31.079811, 13.558522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.812145, 30.857254, 13.554319>,  <37.662605, 30.486324, 13.547316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812145, 30.857254, 13.554319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079160, -0.050713, 0.995571,
		0.924103, -0.370812, -0.092366,
		0.373853, 0.927322, 0.017510,
		37.924301, 31.135450, 13.559572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330429, 30.485516, 13.958326>,  <37.662605, 30.486324, 13.547316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330429, 30.485516, 13.958326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.179699, 30.855890, 13.968485>,  <38.089260, 31.078115, 13.974580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.179699, 30.855890, 13.968485>,  <38.330429, 30.485516, 13.958326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179699, 30.855890, 13.968485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132926, 0.026922, 0.990760,
		0.916696, 0.376723, -0.133226,
		-0.376829, 0.925935, 0.025396,
		38.066650, 31.133671, 13.976104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747353, 30.836014, 14.482681>,  <38.330429, 30.485516, 13.958326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747353, 30.836014, 14.482681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.432945, 31.077335, 14.428709>,  <38.244301, 31.222128, 14.396326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.432945, 31.077335, 14.428709>,  <38.747353, 30.836014, 14.482681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432945, 31.077335, 14.428709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118830, 0.361634, 0.924716,
		0.606679, 0.710808, -0.355940,
		-0.786016, 0.603302, -0.134931,
		38.197140, 31.258326, 14.388229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953259, 31.391693, 14.719117>,  <38.747353, 30.836014, 14.482681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953259, 31.391693, 14.719117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555843, 31.432070, 14.739896>,  <38.317394, 31.456295, 14.752363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555843, 31.432070, 14.739896>,  <38.953259, 31.391693, 14.719117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555843, 31.432070, 14.739896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099730, 0.557474, 0.824183,
		0.054235, 0.824035, -0.563937,
		-0.993535, 0.100941, 0.051947,
		38.257782, 31.462353, 14.755480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773094, 32.110050, 15.018411>,  <38.953259, 31.391693, 14.719117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773094, 32.110050, 15.018411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.455494, 31.869247, 15.052216>,  <38.264935, 31.724766, 15.072498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.455494, 31.869247, 15.052216>,  <38.773094, 32.110050, 15.018411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455494, 31.869247, 15.052216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122822, 0.295016, 0.947565,
		-0.595377, 0.741990, -0.308184,
		-0.794003, -0.602010, 0.084513,
		38.217293, 31.688644, 15.077570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415180, 32.420227, 15.519527>,  <38.773094, 32.110050, 15.018411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415180, 32.420227, 15.519527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.192802, 32.087818, 15.526795>,  <38.059376, 31.888372, 15.531157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.192802, 32.087818, 15.526795>,  <38.415180, 32.420227, 15.519527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192802, 32.087818, 15.526795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172926, 0.137012, 0.975359,
		-0.813033, 0.539104, -0.219876,
		-0.555945, -0.831020, 0.018171,
		38.026020, 31.838512, 15.532247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682247, 32.535198, 15.825682>,  <38.415180, 32.420227, 15.519527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682247, 32.535198, 15.825682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.804188, 32.156666, 15.868630>,  <37.877354, 31.929546, 15.894400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.804188, 32.156666, 15.868630>,  <37.682247, 32.535198, 15.825682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804188, 32.156666, 15.868630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120082, 0.073646, 0.990028,
		-0.944799, -0.314704, -0.091186,
		0.304851, -0.946328, 0.107371,
		37.895641, 31.872766, 15.900842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270039, 32.248714, 16.307701>,  <37.682247, 32.535198, 15.825682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270039, 32.248714, 16.307701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.576168, 31.991632, 16.293798>,  <37.759846, 31.837383, 16.285456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.576168, 31.991632, 16.293798>,  <37.270039, 32.248714, 16.307701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576168, 31.991632, 16.293798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005106, -0.060062, 0.998182,
		-0.643625, -0.763755, -0.049248,
		0.765324, -0.642706, -0.034758,
		37.805767, 31.798820, 16.283371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488194, 31.950459, 16.352762>,  <37.270039, 32.248714, 16.307701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488194, 31.950459, 16.352762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.152168, 32.094673, 16.514898>,  <35.950554, 32.181202, 16.612181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.152168, 32.094673, 16.514898>,  <36.488194, 31.950459, 16.352762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152168, 32.094673, 16.514898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253593, 0.399536, -0.880943,
		-0.479563, -0.842842, -0.244206,
		-0.840065, 0.360539, 0.405342,
		35.900150, 32.202835, 16.636501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894127, 31.775434, 15.994140>,  <36.488194, 31.950459, 16.352762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894127, 31.775434, 15.994140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.768986, 32.107868, 16.178062>,  <35.693901, 32.307327, 16.288416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.768986, 32.107868, 16.178062>,  <35.894127, 31.775434, 15.994140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768986, 32.107868, 16.178062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309932, 0.368280, -0.876534,
		-0.897810, -0.416737, 0.142361,
		-0.312856, 0.831083, 0.459806,
		35.675129, 32.357193, 16.316004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429024, 31.926361, 15.560167>,  <35.894127, 31.775434, 15.994140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429024, 31.926361, 15.560167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.441422, 32.238834, 15.809580>,  <35.448860, 32.426319, 15.959227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.441422, 32.238834, 15.809580>,  <35.429024, 31.926361, 15.560167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441422, 32.238834, 15.809580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242185, 0.611110, -0.753585,
		-0.969735, -0.127652, 0.208133,
		0.030995, 0.781185, 0.623530,
		35.450722, 32.473190, 15.996639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752960, 32.272263, 15.549887>,  <35.429024, 31.926361, 15.560167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752960, 32.272263, 15.549887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.010712, 32.561619, 15.649070>,  <35.165363, 32.735233, 15.708579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.010712, 32.561619, 15.649070>,  <34.752960, 32.272263, 15.549887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010712, 32.561619, 15.649070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263361, 0.514349, -0.816141,
		-0.717921, 0.460605, 0.521950,
		0.644383, 0.723386, 0.247957,
		35.204025, 32.778633, 15.723456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375355, 32.883327, 15.367487>,  <34.752960, 32.272263, 15.549887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375355, 32.883327, 15.367487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.756168, 33.001247, 15.400284>,  <34.984657, 33.071999, 15.419962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.756168, 33.001247, 15.400284>,  <34.375355, 32.883327, 15.367487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756168, 33.001247, 15.400284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157022, 0.700663, -0.696000,
		-0.262632, 0.649741, 0.713345,
		0.952034, 0.294803, 0.081993,
		35.041779, 33.089687, 15.424882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347107, 33.572155, 15.299009>,  <34.375355, 32.883327, 15.367487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347107, 33.572155, 15.299009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.734100, 33.509029, 15.219946>,  <34.966297, 33.471153, 15.172508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.734100, 33.509029, 15.219946>,  <34.347107, 33.572155, 15.299009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734100, 33.509029, 15.219946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044506, 0.663063, -0.747239,
		0.248983, 0.731739, 0.634480,
		0.967485, -0.157812, -0.197658,
		35.024345, 33.461685, 15.160648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766018, 34.157902, 15.350512>,  <34.347107, 33.572155, 15.299009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766018, 34.157902, 15.350512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.953854, 33.913063, 15.096011>,  <35.066555, 33.766159, 14.943311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.953854, 33.913063, 15.096011>,  <34.766018, 34.157902, 15.350512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953854, 33.913063, 15.096011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079505, 0.688406, -0.720955,
		0.879297, 0.389139, 0.274604,
		0.469591, -0.612101, -0.636252,
		35.094730, 33.729431, 14.905135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114021, 34.579010, 14.884010>,  <34.766018, 34.157902, 15.350512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114021, 34.579010, 14.884010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.080368, 34.231445, 14.688908>,  <35.060177, 34.022907, 14.571846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.080368, 34.231445, 14.688908>,  <35.114021, 34.579010, 14.884010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080368, 34.231445, 14.688908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034626, 0.491747, -0.870050,
		0.995853, -0.056310, -0.071458,
		-0.084132, -0.868915, -0.487757,
		35.055130, 33.970772, 14.542581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468651, 34.768829, 14.305522>,  <35.114021, 34.579010, 14.884010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468651, 34.768829, 14.305522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.300274, 34.420040, 14.205543>,  <35.199249, 34.210766, 14.145555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.300274, 34.420040, 14.205543>,  <35.468651, 34.768829, 14.305522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300274, 34.420040, 14.205543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064438, 0.303599, -0.950618,
		0.904796, -0.384048, -0.183986,
		-0.420941, -0.871972, -0.249948,
		35.173992, 34.158447, 14.130558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733940, 34.597813, 13.631622>,  <35.468651, 34.768829, 14.305522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733940, 34.597813, 13.631622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.392086, 34.393063, 13.666458>,  <35.186974, 34.270214, 13.687360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.392086, 34.393063, 13.666458>,  <35.733940, 34.597813, 13.631622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392086, 34.393063, 13.666458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214217, 0.194813, -0.957162,
		0.472979, -0.836681, -0.276146,
		-0.854635, -0.511873, 0.087088,
		35.135696, 34.239502, 13.692585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621166, 34.230560, 13.035279>,  <35.733940, 34.597813, 13.631622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621166, 34.230560, 13.035279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.247669, 34.222809, 13.178249>,  <35.023571, 34.218159, 13.264031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.247669, 34.222809, 13.178249>,  <35.621166, 34.230560, 13.035279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247669, 34.222809, 13.178249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356824, 0.129526, -0.925148,
		-0.028371, -0.991387, -0.127857,
		-0.933741, -0.019375, 0.357426,
		34.967548, 34.216995, 13.285477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360653, 33.559212, 12.799549>,  <35.621166, 34.230560, 13.035279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360653, 33.559212, 12.799549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.062485, 33.814941, 12.875042>,  <34.883583, 33.968380, 12.920338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.062485, 33.814941, 12.875042>,  <35.360653, 33.559212, 12.799549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062485, 33.814941, 12.875042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314554, -0.087733, -0.945176,
		-0.587712, -0.763919, 0.266499,
		-0.745420, 0.639320, 0.188732,
		34.838860, 34.006737, 12.931662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852585, 33.276253, 12.371341>,  <35.360653, 33.559212, 12.799549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852585, 33.276253, 12.371341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.725254, 33.650299, 12.433601>,  <34.648857, 33.874725, 12.470958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.725254, 33.650299, 12.433601>,  <34.852585, 33.276253, 12.371341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725254, 33.650299, 12.433601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311438, 0.051919, -0.948847,
		-0.895363, -0.350519, 0.274703,
		-0.318327, 0.935116, 0.155651,
		34.629757, 33.930832, 12.480296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126659, 33.340534, 12.110929>,  <34.852585, 33.276253, 12.371341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126659, 33.340534, 12.110929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.262299, 33.715611, 12.141245>,  <34.343681, 33.940659, 12.159434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.262299, 33.715611, 12.141245>,  <34.126659, 33.340534, 12.110929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262299, 33.715611, 12.141245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282092, 0.178206, -0.942691,
		-0.897461, 0.298287, 0.324945,
		0.339099, 0.937693, 0.075788,
		34.364029, 33.996918, 12.163981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179142, 32.514275, 11.977174>,  <34.126659, 33.340534, 12.110929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179142, 32.514275, 11.977174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.057278, 32.174168, 11.805488>,  <33.984158, 31.970104, 11.702476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.057278, 32.174168, 11.805488>,  <34.179142, 32.514275, 11.977174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057278, 32.174168, 11.805488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232321, -0.370689, 0.899231,
		-0.923691, 0.373680, -0.084599,
		-0.304665, -0.850266, -0.429216,
		33.965878, 31.919088, 11.676723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515160, 32.449104, 12.215099>,  <34.179142, 32.514275, 11.977174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515160, 32.449104, 12.215099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.632374, 32.083454, 12.103028>,  <33.702702, 31.864063, 12.035786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.632374, 32.083454, 12.103028>,  <33.515160, 32.449104, 12.215099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632374, 32.083454, 12.103028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270614, -0.360360, 0.892697,
		-0.917004, -0.185776, -0.352976,
		0.293040, -0.914127, -0.280178,
		33.720287, 31.809216, 12.018974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022118, 32.064663, 12.481068>,  <33.515160, 32.449104, 12.215099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022118, 32.064663, 12.481068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.301750, 31.802723, 12.366199>,  <33.469528, 31.645559, 12.297277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.301750, 31.802723, 12.366199>,  <33.022118, 32.064663, 12.481068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301750, 31.802723, 12.366199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172435, -0.544151, 0.821076,
		-0.693944, -0.524477, -0.493322,
		0.699077, -0.654846, -0.287172,
		33.511475, 31.606270, 12.280047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720230, 31.455214, 12.447783>,  <33.022118, 32.064663, 12.481068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720230, 31.455214, 12.447783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.111671, 31.391462, 12.499836>,  <33.346535, 31.353212, 12.531068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.111671, 31.391462, 12.499836>,  <32.720230, 31.455214, 12.447783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111671, 31.391462, 12.499836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199981, -0.587939, 0.783795,
		-0.048406, -0.793049, -0.607232,
		0.978603, -0.159375, 0.130135,
		33.405251, 31.343649, 12.538877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714573, 30.754801, 12.443562>,  <32.720230, 31.455214, 12.447783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714573, 30.754801, 12.443562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.064476, 30.864386, 12.603435>,  <33.274418, 30.930138, 12.699358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.064476, 30.864386, 12.603435>,  <32.714573, 30.754801, 12.443562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064476, 30.864386, 12.603435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165259, -0.606704, 0.777560,
		0.455512, -0.746227, -0.485442,
		0.874756, 0.273965, 0.399682,
		33.326904, 30.946575, 12.723339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077137, 30.103909, 12.793341>,  <32.714573, 30.754801, 12.443562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077137, 30.103909, 12.793341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.277718, 30.413755, 12.947493>,  <33.398064, 30.599663, 13.039984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.277718, 30.413755, 12.947493>,  <33.077137, 30.103909, 12.793341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277718, 30.413755, 12.947493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071516, -0.406795, 0.910716,
		0.862227, -0.484237, -0.148589,
		0.501447, 0.774618, 0.385380,
		33.428150, 30.646141, 13.063107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640682, 29.775406, 13.160555>,  <33.077137, 30.103909, 12.793341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640682, 29.775406, 13.160555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.570869, 30.139971, 13.309611>,  <33.528980, 30.358709, 13.399045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.570869, 30.139971, 13.309611>,  <33.640682, 29.775406, 13.160555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570869, 30.139971, 13.309611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007419, -0.377223, 0.926093,
		0.984623, 0.164398, 0.059076,
		-0.174533, 0.911414, 0.372642,
		33.518509, 30.413395, 13.421404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275085, 29.332876, 13.169017>,  <33.640682, 29.775406, 13.160555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275085, 29.332876, 13.169017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.329182, 28.950296, 13.065546>,  <34.361641, 28.720749, 13.003464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.329182, 28.950296, 13.065546>,  <34.275085, 29.332876, 13.169017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329182, 28.950296, 13.065546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108948, 0.273849, -0.955582,
		0.984804, 0.101056, 0.141240,
		0.135245, -0.956449, -0.258678,
		34.369755, 28.663363, 12.987943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836109, 29.347393, 12.718005>,  <34.275085, 29.332876, 13.169017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836109, 29.347393, 12.718005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.641895, 29.007492, 12.635862>,  <34.525368, 28.803551, 12.586576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.641895, 29.007492, 12.635862>,  <34.836109, 29.347393, 12.718005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641895, 29.007492, 12.635862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023189, 0.247341, -0.968651,
		0.873909, -0.465553, -0.139799,
		-0.485537, -0.849754, -0.205358,
		34.496235, 28.752565, 12.574255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136074, 29.114361, 12.123741>,  <34.836109, 29.347393, 12.718005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136074, 29.114361, 12.123741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.781166, 28.930183, 12.134626>,  <34.568222, 28.819677, 12.141157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.781166, 28.930183, 12.134626>,  <35.136074, 29.114361, 12.123741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781166, 28.930183, 12.134626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126495, 0.186172, -0.974340,
		0.443562, -0.867947, -0.223429,
		-0.887272, -0.460442, 0.027212,
		34.514984, 28.792051, 12.142790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178616, 28.594698, 11.550596>,  <35.136074, 29.114361, 12.123741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178616, 28.594698, 11.550596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.792580, 28.643061, 11.643532>,  <34.560959, 28.672079, 11.699293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.792580, 28.643061, 11.643532>,  <35.178616, 28.594698, 11.550596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792580, 28.643061, 11.643532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229739, 0.035222, -0.972615,
		-0.125781, -0.992039, -0.006215,
		-0.965090, 0.120909, 0.232340,
		34.503052, 28.679333, 11.713234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829117, 28.042294, 11.237109>,  <35.178616, 28.594698, 11.550596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829117, 28.042294, 11.237109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527637, 28.296974, 11.302286>,  <34.346748, 28.449783, 11.341393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527637, 28.296974, 11.302286>,  <34.829117, 28.042294, 11.237109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527637, 28.296974, 11.302286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274524, -0.079731, -0.958269,
		-0.597140, -0.766977, 0.234883,
		-0.753698, 0.636701, 0.162943,
		34.301529, 28.487984, 11.351169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202667, 27.728037, 11.030392>,  <34.829117, 28.042294, 11.237109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202667, 27.728037, 11.030392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.163570, 28.124775, 10.997673>,  <34.140110, 28.362818, 10.978042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.163570, 28.124775, 10.997673>,  <34.202667, 27.728037, 11.030392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163570, 28.124775, 10.997673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275261, -0.105926, -0.955516,
		-0.956388, -0.070881, 0.283369,
		-0.097744, 0.991845, -0.081796,
		34.134247, 28.422329, 10.973134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684406, 27.768723, 10.603861>,  <34.202667, 27.728037, 11.030392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684406, 27.768723, 10.603861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.838631, 28.137754, 10.598251>,  <33.931164, 28.359173, 10.594886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.838631, 28.137754, 10.598251>,  <33.684406, 27.768723, 10.603861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838631, 28.137754, 10.598251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223621, 0.078687, -0.971495,
		-0.895176, 0.377702, 0.236646,
		0.385557, 0.922578, -0.014023,
		33.954296, 28.414528, 10.594045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375160, 27.969538, 10.043919>,  <33.684406, 27.768723, 10.603861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375160, 27.969538, 10.043919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.679802, 28.224499, 10.090694>,  <33.862587, 28.377476, 10.118760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.679802, 28.224499, 10.090694>,  <33.375160, 27.969538, 10.043919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679802, 28.224499, 10.090694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025830, 0.150451, -0.988280,
		-0.647527, 0.755700, 0.098120,
		0.761605, 0.637403, 0.116941,
		33.908283, 28.415720, 10.125776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226974, 28.584480, 9.663984>,  <33.375160, 27.969538, 10.043919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226974, 28.584480, 9.663984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.622768, 28.575815, 9.721188>,  <33.860245, 28.570616, 9.755509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.622768, 28.575815, 9.721188>,  <33.226974, 28.584480, 9.663984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622768, 28.575815, 9.721188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143419, 0.018754, -0.989484,
		0.018754, 0.999590, 0.021664,
		0.989484, -0.021664, 0.143008,
		33.919613, 28.569317, 9.764090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.188377, 26.069687, 25.608511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540977, 26.257772, 25.625757>,  <35.752537, 26.370625, 25.636105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540977, 26.257772, 25.625757>,  <35.188377, 26.069687, 25.608511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540977, 26.257772, 25.625757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074474, -0.048283, -0.996053,
		-0.466279, 0.881230, -0.077580,
		0.881498, 0.470216, 0.043115,
		35.805428, 26.398838, 25.638691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228310, 26.744314, 25.288879>,  <35.188377, 26.069687, 25.608511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228310, 26.744314, 25.288879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582520, 26.559977, 25.265316>,  <35.795044, 26.449375, 25.251179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582520, 26.559977, 25.265316>,  <35.228310, 26.744314, 25.288879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582520, 26.559977, 25.265316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126919, -0.117988, -0.984871,
		0.446919, 0.879604, -0.162971,
		0.885525, -0.460842, -0.058907,
		35.848179, 26.421724, 25.247644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510880, 27.049850, 24.772167>,  <35.228310, 26.744314, 25.288879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510880, 27.049850, 24.772167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715130, 26.710022, 24.825064>,  <35.837681, 26.506124, 24.856802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715130, 26.710022, 24.825064>,  <35.510880, 27.049850, 24.772167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715130, 26.710022, 24.825064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071745, -0.111166, -0.991209,
		0.856804, 0.515625, 0.004188,
		0.510627, -0.849572, 0.132241,
		35.868317, 26.455151, 24.864737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127625, 27.102577, 24.331770>,  <35.510880, 27.049850, 24.772167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127625, 27.102577, 24.331770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.053158, 26.714132, 24.391485>,  <36.008476, 26.481066, 24.427315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.053158, 26.714132, 24.391485>,  <36.127625, 27.102577, 24.331770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053158, 26.714132, 24.391485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014857, -0.154711, -0.987848,
		0.982406, -0.181685, 0.043229,
		-0.186165, -0.971110, 0.149289,
		35.997307, 26.422800, 24.436272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700264, 26.727627, 23.940454>,  <36.127625, 27.102577, 24.331770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700264, 26.727627, 23.940454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393669, 26.473783, 23.979988>,  <36.209713, 26.321478, 24.003708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393669, 26.473783, 23.979988>,  <36.700264, 26.727627, 23.940454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393669, 26.473783, 23.979988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038045, -0.198475, -0.979367,
		0.641133, -0.746912, 0.176272,
		-0.766487, -0.634610, 0.098833,
		36.163723, 26.283400, 24.009638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859894, 26.253738, 23.513258>,  <36.700264, 26.727627, 23.940454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859894, 26.253738, 23.513258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468140, 26.190102, 23.563034>,  <36.233086, 26.151920, 23.592899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468140, 26.190102, 23.563034>,  <36.859894, 26.253738, 23.513258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468140, 26.190102, 23.563034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060276, -0.357820, -0.931843,
		0.192777, -0.920138, 0.340856,
		-0.979389, -0.159092, 0.124442,
		36.174324, 26.142374, 23.600367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688148, 25.521954, 23.147211>,  <36.859894, 26.253738, 23.513258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688148, 25.521954, 23.147211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.343380, 25.721863, 23.181429>,  <36.136520, 25.841808, 23.201960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.343380, 25.721863, 23.181429>,  <36.688148, 25.521954, 23.147211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343380, 25.721863, 23.181429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263703, -0.297748, -0.917500,
		-0.433073, -0.813371, 0.388427,
		-0.861922, 0.499774, 0.085542,
		36.084805, 25.871796, 23.207092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102844, 25.064302, 22.976667>,  <36.688148, 25.521954, 23.147211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102844, 25.064302, 22.976667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983124, 25.438507, 22.901579>,  <35.911293, 25.663029, 22.856525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983124, 25.438507, 22.901579>,  <36.102844, 25.064302, 22.976667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983124, 25.438507, 22.901579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378620, -0.297033, -0.876595,
		-0.875823, -0.191289, 0.443105,
		-0.299300, 0.935511, -0.187723,
		35.893333, 25.719160, 22.845263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315559, 25.046480, 22.606659>,  <36.102844, 25.064302, 22.976667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315559, 25.046480, 22.606659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449028, 25.418398, 22.544500>,  <35.529110, 25.641548, 22.507204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449028, 25.418398, 22.544500>,  <35.315559, 25.046480, 22.606659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449028, 25.418398, 22.544500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310286, -0.047334, -0.949464,
		-0.890161, 0.365026, 0.272708,
		0.333671, 0.929793, -0.155398,
		35.549129, 25.697336, 22.497881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858551, 25.351086, 22.191959>,  <35.315559, 25.046480, 22.606659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858551, 25.351086, 22.191959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156693, 25.607637, 22.119200>,  <35.335575, 25.761568, 22.075544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156693, 25.607637, 22.119200>,  <34.858551, 25.351086, 22.191959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156693, 25.607637, 22.119200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216552, -0.025129, -0.975947,
		-0.630522, 0.766813, 0.120162,
		0.745350, 0.641378, -0.181900,
		35.380299, 25.800051, 22.064631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609726, 25.743771, 21.730745>,  <34.858551, 25.351086, 22.191959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609726, 25.743771, 21.730745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989899, 25.862663, 21.694220>,  <35.218002, 25.933998, 21.672304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989899, 25.862663, 21.694220>,  <34.609726, 25.743771, 21.730745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989899, 25.862663, 21.694220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123483, 0.091280, -0.988140,
		-0.285371, 0.950432, 0.123458,
		0.950429, 0.297231, -0.091313,
		35.275028, 25.951832, 21.666826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624519, 26.443642, 21.431841>,  <34.609726, 25.743771, 21.730745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624519, 26.443642, 21.431841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963806, 26.249271, 21.347557>,  <35.167377, 26.132648, 21.296988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963806, 26.249271, 21.347557>,  <34.624519, 26.443642, 21.431841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963806, 26.249271, 21.347557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239519, 0.002901, -0.970887,
		0.472390, 0.873995, -0.113928,
		0.848221, -0.485926, -0.210709,
		35.218273, 26.103493, 21.284344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828495, 27.206392, 21.589443>,  <34.624519, 26.443642, 21.431841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828495, 27.206392, 21.589443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.557182, 27.488743, 21.671099>,  <34.394394, 27.658154, 21.720093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.557182, 27.488743, 21.671099>,  <34.828495, 27.206392, 21.589443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557182, 27.488743, 21.671099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417040, 0.141072, 0.897873,
		0.604987, 0.694147, -0.390065,
		-0.678283, 0.705874, 0.204140,
		34.353699, 27.700504, 21.732342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178715, 27.707767, 21.938576>,  <34.828495, 27.206392, 21.589443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178715, 27.707767, 21.938576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792847, 27.749741, 22.035248>,  <34.561325, 27.774923, 22.093250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792847, 27.749741, 22.035248>,  <35.178715, 27.707767, 21.938576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792847, 27.749741, 22.035248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257225, 0.176455, 0.950105,
		0.057050, 0.978700, -0.197211,
		-0.964666, 0.104931, 0.241679,
		34.503448, 27.781219, 22.107752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145771, 28.288773, 22.331257>,  <35.178715, 27.707767, 21.938576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145771, 28.288773, 22.331257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838970, 28.058521, 22.444645>,  <34.654888, 27.920370, 22.512678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838970, 28.058521, 22.444645>,  <35.145771, 28.288773, 22.331257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838970, 28.058521, 22.444645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159471, 0.256914, 0.953187,
		-0.621510, 0.776303, -0.105258,
		-0.767004, -0.575629, 0.283472,
		34.608868, 27.885832, 22.529686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058392, 28.544004, 22.999617>,  <35.145771, 28.288773, 22.331257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058392, 28.544004, 22.999617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784237, 28.255264, 22.961285>,  <34.619743, 28.082020, 22.938286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784237, 28.255264, 22.961285>,  <35.058392, 28.544004, 22.999617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784237, 28.255264, 22.961285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240345, 0.100025, 0.965520,
		-0.687375, 0.684783, -0.242048,
		-0.685383, -0.721850, -0.095830,
		34.578621, 28.038710, 22.932535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507298, 28.851725, 23.272053>,  <35.058392, 28.544004, 22.999617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507298, 28.851725, 23.272053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496513, 28.451952, 23.280115>,  <34.490044, 28.212088, 23.284952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496513, 28.451952, 23.280115>,  <34.507298, 28.851725, 23.272053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496513, 28.451952, 23.280115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086285, 0.022416, 0.996018,
		-0.995906, 0.025112, -0.086841,
		-0.026959, -0.999433, 0.020157,
		34.488426, 28.152122, 23.286161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813324, 28.643961, 23.390036>,  <34.507298, 28.851725, 23.272053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813324, 28.643961, 23.390036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070759, 28.377726, 23.541185>,  <34.225220, 28.217985, 23.631874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070759, 28.377726, 23.541185>,  <33.813324, 28.643961, 23.390036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070759, 28.377726, 23.541185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262633, 0.271685, 0.925857,
		-0.718900, -0.695113, 0.000048,
		0.643589, -0.665586, 0.377874,
		34.263836, 28.178049, 23.654547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525860, 28.387606, 23.907707>,  <33.813324, 28.643961, 23.390036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525860, 28.387606, 23.907707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.888176, 28.233360, 23.977949>,  <34.105568, 28.140814, 24.020094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.888176, 28.233360, 23.977949>,  <33.525860, 28.387606, 23.907707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888176, 28.233360, 23.977949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125279, 0.152186, 0.980380,
		-0.404773, -0.910023, 0.089540,
		0.905794, -0.385614, 0.175607,
		34.159916, 28.117676, 24.030632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459583, 28.061045, 24.519037>,  <33.525860, 28.387606, 23.907707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459583, 28.061045, 24.519037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.859016, 28.078939, 24.507528>,  <34.098679, 28.089676, 24.500624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.859016, 28.078939, 24.507528>,  <33.459583, 28.061045, 24.519037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859016, 28.078939, 24.507528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025259, 0.077172, 0.996698,
		0.046804, -0.996014, 0.075933,
		0.998585, 0.044732, -0.028770,
		34.158592, 28.092360, 24.498898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700420, 27.646797, 25.068110>,  <33.459583, 28.061045, 24.519037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700420, 27.646797, 25.068110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010082, 27.888239, 24.991848>,  <34.195881, 28.033104, 24.946091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010082, 27.888239, 24.991848>,  <33.700420, 27.646797, 25.068110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010082, 27.888239, 24.991848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047693, 0.244718, 0.968421,
		0.631199, -0.758799, 0.160662,
		0.774153, 0.603604, -0.190655,
		34.242329, 28.069321, 24.934652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268856, 27.393566, 25.510725>,  <33.700420, 27.646797, 25.068110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268856, 27.393566, 25.510725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367588, 27.769699, 25.417048>,  <34.426826, 27.995378, 25.360842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367588, 27.769699, 25.417048>,  <34.268856, 27.393566, 25.510725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367588, 27.769699, 25.417048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293273, 0.157850, 0.942908,
		0.923616, -0.301421, -0.236812,
		0.246831, 0.940335, -0.234191,
		34.441639, 28.051800, 25.346790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005074, 27.504923, 25.810976>,  <34.268856, 27.393566, 25.510725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005074, 27.504923, 25.810976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833221, 27.859735, 25.743330>,  <34.730110, 28.072622, 25.702742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833221, 27.859735, 25.743330>,  <35.005074, 27.504923, 25.810976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833221, 27.859735, 25.743330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250013, 0.296803, 0.921630,
		0.867706, 0.353676, -0.349283,
		-0.429627, 0.887029, -0.169115,
		34.704334, 28.125845, 25.692596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482441, 28.053011, 26.110703>,  <35.005074, 27.504923, 25.810976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482441, 28.053011, 26.110703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131344, 28.239437, 26.066236>,  <34.920685, 28.351292, 26.039557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131344, 28.239437, 26.066236>,  <35.482441, 28.053011, 26.110703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131344, 28.239437, 26.066236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176071, 0.529527, 0.829819,
		0.445615, 0.708792, -0.546847,
		-0.877739, 0.466064, -0.111167,
		34.868023, 28.379257, 26.032887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703598, 28.767101, 26.282230>,  <35.482441, 28.053011, 26.110703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703598, 28.767101, 26.282230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304504, 28.783978, 26.303158>,  <35.065048, 28.794104, 26.315714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304504, 28.783978, 26.303158>,  <35.703598, 28.767101, 26.282230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304504, 28.783978, 26.303158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066179, 0.480860, 0.874297,
		0.011728, 0.875782, -0.482564,
		-0.997739, 0.042189, 0.052319,
		35.005184, 28.796635, 26.318853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586735, 29.441198, 26.481388>,  <35.703598, 28.767101, 26.282230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586735, 29.441198, 26.481388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254234, 29.234634, 26.563692>,  <35.054733, 29.110697, 26.613073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254234, 29.234634, 26.563692>,  <35.586735, 29.441198, 26.481388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254234, 29.234634, 26.563692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035984, 0.419353, 0.907110,
		-0.554726, 0.746636, -0.367171,
		-0.831255, -0.516409, 0.205759,
		35.004856, 29.079712, 26.625420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058830, 29.928074, 26.547344>,  <35.586735, 29.441198, 26.481388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058830, 29.928074, 26.547344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.009674, 29.597525, 26.767164>,  <34.980179, 29.399195, 26.899055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.009674, 29.597525, 26.767164>,  <35.058830, 29.928074, 26.547344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009674, 29.597525, 26.767164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041561, 0.548976, 0.834804,
		-0.991549, 0.125431, -0.033120,
		-0.122892, -0.826373, 0.549550,
		34.972805, 29.349613, 26.932030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504414, 30.171436, 26.887297>,  <35.058830, 29.928074, 26.547344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504414, 30.171436, 26.887297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851398, 30.344818, 26.984964>,  <35.059589, 30.448847, 27.043566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851398, 30.344818, 26.984964>,  <34.504414, 30.171436, 26.887297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851398, 30.344818, 26.984964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252417, 0.039463, -0.966814,
		-0.428705, 0.900311, -0.075178,
		0.867466, 0.433455, 0.244171,
		35.111637, 30.474855, 27.058216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519409, 30.778601, 26.554667>,  <34.504414, 30.171436, 26.887297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519409, 30.778601, 26.554667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897900, 30.681561, 26.640265>,  <35.124996, 30.623337, 26.691624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897900, 30.681561, 26.640265>,  <34.519409, 30.778601, 26.554667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897900, 30.681561, 26.640265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272086, 0.239027, -0.932113,
		0.174979, 0.940219, 0.292182,
		0.946230, -0.242599, 0.213996,
		35.181770, 30.608780, 26.704464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901814, 31.336636, 26.374348>,  <34.519409, 30.778601, 26.554667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901814, 31.336636, 26.374348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156261, 31.028059, 26.368233>,  <35.308929, 30.842913, 26.364563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156261, 31.028059, 26.368233>,  <34.901814, 31.336636, 26.374348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156261, 31.028059, 26.368233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182817, 0.169938, -0.968349,
		0.749620, 0.613191, 0.249133,
		0.636119, -0.771439, -0.015287,
		35.347095, 30.796627, 26.363647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434132, 31.553308, 26.074488>,  <34.901814, 31.336636, 26.374348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434132, 31.553308, 26.074488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525505, 31.165169, 26.042892>,  <35.580330, 30.932285, 26.023935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525505, 31.165169, 26.042892>,  <35.434132, 31.553308, 26.074488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525505, 31.165169, 26.042892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301445, 0.147644, -0.941983,
		0.925714, 0.191374, 0.326235,
		0.228438, -0.970349, -0.078988,
		35.594036, 30.874063, 26.019196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948689, 31.577469, 25.653263>,  <35.434132, 31.553308, 26.074488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948689, 31.577469, 25.653263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813404, 31.202978, 25.615116>,  <35.732235, 30.978285, 25.592228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813404, 31.202978, 25.615116>,  <35.948689, 31.577469, 25.653263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813404, 31.202978, 25.615116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302094, -0.012036, -0.953202,
		0.891264, -0.351194, 0.286898,
		-0.338212, -0.936225, -0.095366,
		35.711941, 30.922112, 25.586506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511627, 31.219231, 25.297411>,  <35.948689, 31.577469, 25.653263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511627, 31.219231, 25.297411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170300, 31.013050, 25.266043>,  <35.965504, 30.889341, 25.247221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170300, 31.013050, 25.266043>,  <36.511627, 31.219231, 25.297411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170300, 31.013050, 25.266043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135253, -0.073583, -0.988075,
		0.503535, -0.853753, 0.132507,
		-0.853323, -0.515453, -0.078421,
		35.914303, 30.858414, 25.242516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527447, 30.660826, 24.847853>,  <36.511627, 31.219231, 25.297411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527447, 30.660826, 24.847853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153782, 30.803001, 24.860476>,  <35.929581, 30.888308, 24.868050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153782, 30.803001, 24.860476>,  <36.527447, 30.660826, 24.847853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153782, 30.803001, 24.860476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020501, 0.141744, -0.989691,
		-0.356250, -0.923889, -0.139699,
		-0.934166, 0.355441, 0.031556,
		35.873531, 30.909634, 24.869942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201603, 30.262856, 24.325592>,  <36.527447, 30.660826, 24.847853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201603, 30.262856, 24.325592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974388, 30.586382, 24.386454>,  <35.838058, 30.780497, 24.422970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974388, 30.586382, 24.386454>,  <36.201603, 30.262856, 24.325592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974388, 30.586382, 24.386454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090315, 0.122499, -0.988351,
		-0.818030, -0.575165, 0.003464,
		-0.568040, 0.808814, 0.152154,
		35.803974, 30.829025, 24.432100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716755, 30.092163, 23.844107>,  <36.201603, 30.262856, 24.325592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716755, 30.092163, 23.844107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653721, 30.476030, 23.937237>,  <35.615898, 30.706350, 23.993114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653721, 30.476030, 23.937237>,  <35.716755, 30.092163, 23.844107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653721, 30.476030, 23.937237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088596, 0.221080, -0.971223,
		-0.983523, -0.173679, 0.050184,
		-0.157587, 0.959666, 0.232825,
		35.606445, 30.763929, 24.007084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025333, 30.330038, 23.489946>,  <35.716755, 30.092163, 23.844107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025333, 30.330038, 23.489946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240990, 30.657957, 23.567158>,  <35.370384, 30.854710, 23.613483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240990, 30.657957, 23.567158>,  <35.025333, 30.330038, 23.489946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240990, 30.657957, 23.567158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113273, 0.297688, -0.947919,
		-0.834565, 0.489196, 0.253356,
		0.539139, 0.819798, 0.193027,
		35.402733, 30.903896, 23.625067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712234, 30.826515, 23.123745>,  <35.025333, 30.330038, 23.489946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712234, 30.826515, 23.123745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.066917, 31.004267, 23.174763>,  <35.279728, 31.110918, 23.205374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.066917, 31.004267, 23.174763>,  <34.712234, 30.826515, 23.123745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066917, 31.004267, 23.174763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053357, 0.175670, -0.983002,
		-0.459233, 0.878445, 0.132057,
		0.886712, 0.444381, 0.127545,
		35.332932, 31.137581, 23.213026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617664, 31.540417, 22.845985>,  <34.712234, 30.826515, 23.123745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617664, 31.540417, 22.845985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.009968, 31.468039, 22.875307>,  <35.245350, 31.424612, 22.892900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.009968, 31.468039, 22.875307>,  <34.617664, 31.540417, 22.845985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009968, 31.468039, 22.875307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109965, 0.201742, -0.973246,
		0.161315, 0.962579, 0.217757,
		0.980757, -0.180945, 0.073306,
		35.304195, 31.413755, 22.897299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900909, 32.053749, 22.415483>,  <34.617664, 31.540417, 22.845985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900909, 32.053749, 22.415483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185776, 31.774101, 22.440975>,  <35.356693, 31.606314, 22.456270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185776, 31.774101, 22.440975>,  <34.900909, 32.053749, 22.415483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185776, 31.774101, 22.440975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176534, 0.090481, -0.980127,
		0.679457, 0.709259, 0.187855,
		0.712161, -0.699117, 0.063730,
		35.399426, 31.564365, 22.460094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493645, 32.287781, 22.017824>,  <34.900909, 32.053749, 22.415483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493645, 32.287781, 22.017824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566711, 31.896168, 22.053890>,  <35.610550, 31.661200, 22.075529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566711, 31.896168, 22.053890>,  <35.493645, 32.287781, 22.017824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566711, 31.896168, 22.053890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154082, -0.062068, -0.986107,
		0.971026, 0.194023, 0.139513,
		0.182668, -0.979031, 0.090165,
		35.621513, 31.602459, 22.080940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177944, 32.098019, 21.734451>,  <35.493645, 32.287781, 22.017824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177944, 32.098019, 21.734451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932804, 31.781948, 21.732101>,  <35.785721, 31.592304, 21.730692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932804, 31.781948, 21.732101>,  <36.177944, 32.098019, 21.734451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932804, 31.781948, 21.732101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043614, 0.041248, -0.998197,
		0.788997, -0.611486, -0.059742,
		-0.612847, -0.790180, -0.005875,
		35.748951, 31.544895, 21.730339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501686, 31.860250, 21.210226>,  <36.177944, 32.098019, 21.734451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501686, 31.860250, 21.210226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177567, 31.645597, 21.304405>,  <35.983093, 31.516806, 21.360912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177567, 31.645597, 21.304405>,  <36.501686, 31.860250, 21.210226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177567, 31.645597, 21.304405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033903, -0.444038, -0.895366,
		0.585030, -0.717535, 0.377999,
		-0.810302, -0.536631, 0.235449,
		35.934475, 31.484608, 21.375040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621319, 31.066803, 21.041782>,  <36.501686, 31.860250, 21.210226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621319, 31.066803, 21.041782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228500, 31.139416, 21.021275>,  <35.992809, 31.182983, 21.008970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228500, 31.139416, 21.021275>,  <36.621319, 31.066803, 21.041782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228500, 31.139416, 21.021275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022896, -0.384499, -0.922842,
		-0.187235, -0.905101, 0.381753,
		-0.982048, 0.181529, -0.051268,
		35.933887, 31.193874, 21.005894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357639, 30.510920, 20.603500>,  <36.621319, 31.066803, 21.041782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357639, 30.510920, 20.603500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089535, 30.807766, 20.601835>,  <35.928673, 30.985874, 20.600836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089535, 30.807766, 20.601835>,  <36.357639, 30.510920, 20.603500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089535, 30.807766, 20.601835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179118, -0.167214, -0.969513,
		-0.720190, -0.649077, 0.245003,
		-0.670257, 0.742118, -0.004164,
		35.888458, 31.030401, 20.600586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822456, 30.280409, 20.260828>,  <36.357639, 30.510920, 20.603500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822456, 30.280409, 20.260828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790020, 30.678831, 20.246429>,  <35.770557, 30.917885, 20.237791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790020, 30.678831, 20.246429>,  <35.822456, 30.280409, 20.260828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790020, 30.678831, 20.246429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200340, -0.051666, -0.978363,
		-0.976365, -0.072127, 0.203740,
		-0.081093, 0.996056, -0.035995,
		35.765694, 30.977648, 20.235630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245049, 30.446072, 19.852566>,  <35.822456, 30.280409, 20.260828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245049, 30.446072, 19.852566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459366, 30.783596, 19.840500>,  <35.587955, 30.986111, 19.833260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459366, 30.783596, 19.840500>,  <35.245049, 30.446072, 19.852566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459366, 30.783596, 19.840500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122958, 0.042628, -0.991496,
		-0.835351, 0.534941, 0.126593,
		0.535789, 0.843813, -0.030165,
		35.620102, 31.036739, 19.831450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844727, 31.013203, 19.506121>,  <35.245049, 30.446072, 19.852566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844727, 31.013203, 19.506121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215485, 31.160971, 19.479597>,  <35.437939, 31.249632, 19.463682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215485, 31.160971, 19.479597>,  <34.844727, 31.013203, 19.506121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215485, 31.160971, 19.479597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160318, 0.229949, -0.959907,
		-0.339360, 0.900363, 0.272363,
		0.926894, 0.369419, -0.066308,
		35.493553, 31.271797, 19.459705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722095, 31.477671, 18.953205>,  <34.844727, 31.013203, 19.506121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722095, 31.477671, 18.953205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118767, 31.504208, 18.997341>,  <35.356770, 31.520130, 19.023823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118767, 31.504208, 18.997341>,  <34.722095, 31.477671, 18.953205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118767, 31.504208, 18.997341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069227, 0.447826, -0.891437,
		-0.108551, 0.891656, 0.439506,
		0.991678, 0.066341, 0.110338,
		35.416271, 31.524111, 19.030443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794098, 32.064774, 18.686378>,  <34.722095, 31.477671, 18.953205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794098, 32.064774, 18.686378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138371, 31.861948, 18.668016>,  <35.344936, 31.740252, 18.657000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138371, 31.861948, 18.668016>,  <34.794098, 32.064774, 18.686378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138371, 31.861948, 18.668016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067998, 0.203835, -0.976641,
		0.504578, 0.837458, 0.209917,
		0.860684, -0.507066, -0.045905,
		35.396576, 31.709827, 18.654245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253517, 32.567215, 18.430637>,  <34.794098, 32.064774, 18.686378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253517, 32.567215, 18.430637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418575, 32.210377, 18.357010>,  <35.517609, 31.996273, 18.312834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418575, 32.210377, 18.357010>,  <35.253517, 32.567215, 18.430637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418575, 32.210377, 18.357010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198919, 0.285452, -0.937522,
		0.888906, 0.350251, 0.295247,
		0.412647, -0.892099, -0.184069,
		35.542370, 31.942747, 18.301790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837032, 32.819752, 18.162346>,  <35.253517, 32.567215, 18.430637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837032, 32.819752, 18.162346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799149, 32.434731, 18.060747>,  <35.776417, 32.203716, 17.999788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799149, 32.434731, 18.060747>,  <35.837032, 32.819752, 18.162346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799149, 32.434731, 18.060747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271049, 0.220569, -0.936954,
		0.957895, -0.157584, 0.240010,
		-0.094710, -0.962557, -0.253995,
		35.770737, 32.145962, 17.984549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534340, 32.586746, 17.766949>,  <35.837032, 32.819752, 18.162346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534340, 32.586746, 17.766949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220921, 32.355728, 17.675304>,  <36.032867, 32.217117, 17.620317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220921, 32.355728, 17.675304>,  <36.534340, 32.586746, 17.766949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220921, 32.355728, 17.675304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044890, 0.315155, -0.947978,
		0.619707, -0.753072, -0.221013,
		-0.783548, -0.577548, -0.229109,
		35.985855, 32.182465, 17.606571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693523, 32.390038, 17.103764>,  <36.534340, 32.586746, 17.766949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693523, 32.390038, 17.103764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306984, 32.294376, 17.141642>,  <36.075058, 32.236980, 17.164368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306984, 32.294376, 17.141642>,  <36.693523, 32.390038, 17.103764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306984, 32.294376, 17.141642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138924, 0.175440, -0.974639,
		0.216484, -0.954999, -0.202762,
		-0.966351, -0.239162, 0.094692,
		36.017078, 32.222630, 17.170050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135578, 31.799723, 16.858925>,  <36.693523, 32.390038, 17.103764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135578, 31.799723, 16.858925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527981, 31.771648, 16.786585>,  <37.763420, 31.754805, 16.743181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527981, 31.771648, 16.786585>,  <37.135578, 31.799723, 16.858925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527981, 31.771648, 16.786585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181817, 0.007578, 0.983303,
		-0.067641, -0.997505, 0.020194,
		0.981003, -0.070184, -0.180851,
		37.822281, 31.750593, 16.732330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335228, 31.284941, 17.340815>,  <37.135578, 31.799723, 16.858925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335228, 31.284941, 17.340815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698643, 31.430063, 17.257933>,  <37.916691, 31.517136, 17.208204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698643, 31.430063, 17.257933>,  <37.335228, 31.284941, 17.340815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698643, 31.430063, 17.257933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262058, -0.108593, 0.958923,
		0.325401, -0.925516, -0.193737,
		0.908537, 0.362805, -0.207203,
		37.971203, 31.538904, 17.195772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857819, 30.819447, 17.459972>,  <37.335228, 31.284941, 17.340815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857819, 30.819447, 17.459972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038563, 31.175198, 17.487761>,  <38.147011, 31.388649, 17.504433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038563, 31.175198, 17.487761>,  <37.857819, 30.819447, 17.459972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038563, 31.175198, 17.487761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226149, -0.189533, 0.955476,
		0.862946, -0.416034, -0.286775,
		0.451864, 0.889378, 0.069471,
		38.174122, 31.442011, 17.508602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417358, 30.762457, 17.916834>,  <37.857819, 30.819447, 17.459972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417358, 30.762457, 17.916834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407841, 31.162079, 17.902288>,  <38.402130, 31.401852, 17.893560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407841, 31.162079, 17.902288>,  <38.417358, 30.762457, 17.916834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407841, 31.162079, 17.902288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337456, 0.042266, 0.940392,
		0.941040, 0.010106, -0.338143,
		-0.023796, 0.999055, -0.036363,
		38.400703, 31.461796, 17.891380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025299, 30.969177, 18.452826>,  <38.417358, 30.762457, 17.916834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025299, 30.969177, 18.452826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.780529, 31.278563, 18.386728>,  <38.633667, 31.464193, 18.347069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.780529, 31.278563, 18.386728>,  <39.025299, 30.969177, 18.452826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780529, 31.278563, 18.386728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175016, 0.336167, 0.925398,
		0.771311, 0.537351, -0.341076,
		-0.611922, 0.773463, -0.165244,
		38.596951, 31.510601, 18.337154>
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
