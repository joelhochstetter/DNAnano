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
	<24.661549, 35.456684, 34.714840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312410, 35.278645, 34.794865>,  <24.102928, 35.171822, 34.842880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312410, 35.278645, 34.794865>,  <24.661549, 35.456684, 34.714840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312410, 35.278645, 34.794865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200608, 0.046442, 0.978570,
		-0.444854, 0.894275, 0.048754,
		-0.872846, -0.445102, 0.200059,
		24.050556, 35.145115, 34.854881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907894, 36.150513, 34.257381>,  <24.661549, 35.456684, 34.714840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907894, 36.150513, 34.257381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193085, 36.405922, 34.141483>,  <25.364199, 36.559166, 34.071945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193085, 36.405922, 34.141483>,  <24.907894, 36.150513, 34.257381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193085, 36.405922, 34.141483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657290, -0.752523, -0.040977,
		-0.244207, -0.161233, -0.956225,
		0.712975, 0.638524, -0.289748,
		25.406977, 36.597481, 34.054558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270315, 35.827160, 33.654716>,  <24.907894, 36.150513, 34.257381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270315, 35.827160, 33.654716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506594, 36.075882, 33.860409>,  <25.648361, 36.225117, 33.983822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506594, 36.075882, 33.860409>,  <25.270315, 35.827160, 33.654716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506594, 36.075882, 33.860409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697554, -0.713852, 0.061911,
		0.405579, 0.322130, -0.855417,
		0.590698, 0.621809, 0.514227,
		25.683804, 36.262424, 34.014675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957279, 35.776115, 33.460602>,  <25.270315, 35.827160, 33.654716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957279, 35.776115, 33.460602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976198, 35.888245, 33.844097>,  <25.987551, 35.955521, 34.074196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976198, 35.888245, 33.844097>,  <25.957279, 35.776115, 33.460602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976198, 35.888245, 33.844097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715011, -0.679734, 0.163469,
		0.697512, 0.677778, -0.232582,
		0.047298, 0.280320, 0.958740,
		25.990387, 35.972340, 34.131718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003075, 36.262836, 32.970177>,  <25.957279, 35.776115, 33.460602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003075, 36.262836, 32.970177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351587, 36.304268, 33.162071>,  <26.560694, 36.329124, 33.277206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351587, 36.304268, 33.162071>,  <26.003075, 36.262836, 32.970177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351587, 36.304268, 33.162071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450965, 0.216739, -0.865826,
		-0.193655, 0.970720, 0.142131,
		0.871280, 0.103575, 0.479734,
		26.612970, 36.335339, 33.305992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267883, 36.918335, 32.797134>,  <26.003075, 36.262836, 32.970177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267883, 36.918335, 32.797134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579893, 36.678501, 32.868755>,  <26.767099, 36.534599, 32.911728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579893, 36.678501, 32.868755>,  <26.267883, 36.918335, 32.797134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579893, 36.678501, 32.868755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452461, 0.342764, -0.823281,
		0.432254, 0.723193, 0.538654,
		0.780022, -0.599586, 0.179056,
		26.813900, 36.498627, 32.922474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925085, 37.314342, 32.630737>,  <26.267883, 36.918335, 32.797134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925085, 37.314342, 32.630737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026772, 36.927780, 32.645874>,  <27.087784, 36.695843, 32.654957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026772, 36.927780, 32.645874>,  <26.925085, 37.314342, 32.630737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026772, 36.927780, 32.645874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581853, 0.121572, -0.804156,
		0.772543, 0.226444, 0.593212,
		0.254214, -0.966407, 0.037837,
		27.103035, 36.637859, 32.657227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662083, 37.388454, 32.523438>,  <26.925085, 37.314342, 32.630737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662083, 37.388454, 32.523438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528162, 37.030163, 32.406418>,  <27.447809, 36.815189, 32.336208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528162, 37.030163, 32.406418>,  <27.662083, 37.388454, 32.523438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528162, 37.030163, 32.406418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338944, 0.175205, -0.924348,
		0.879219, -0.408629, 0.244942,
		-0.334801, -0.895726, -0.292546,
		27.427721, 36.761444, 32.318653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259892, 37.074390, 32.234253>,  <27.662083, 37.388454, 32.523438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259892, 37.074390, 32.234253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947779, 36.870087, 32.089874>,  <27.760511, 36.747505, 32.003246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947779, 36.870087, 32.089874>,  <28.259892, 37.074390, 32.234253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947779, 36.870087, 32.089874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374233, 0.081117, -0.923780,
		0.501106, -0.855890, 0.127847,
		-0.780284, -0.510756, -0.360950,
		27.713694, 36.716858, 31.981588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579140, 36.660156, 31.750689>,  <28.259892, 37.074390, 32.234253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579140, 36.660156, 31.750689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191336, 36.663868, 31.652740>,  <27.958652, 36.666096, 31.593971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191336, 36.663868, 31.652740>,  <28.579140, 36.660156, 31.750689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191336, 36.663868, 31.652740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244910, 0.070080, -0.967010,
		0.008186, -0.997498, -0.070216,
		-0.969511, 0.009280, -0.244871,
		27.900482, 36.666653, 31.579279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502542, 36.103134, 31.206886>,  <28.579140, 36.660156, 31.750689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502542, 36.103134, 31.206886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170874, 36.325485, 31.183310>,  <27.971872, 36.458897, 31.169163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170874, 36.325485, 31.183310>,  <28.502542, 36.103134, 31.206886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170874, 36.325485, 31.183310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032059, -0.057981, -0.997803,
		-0.558074, -0.829239, 0.030255,
		-0.829171, 0.555878, -0.058943,
		27.922123, 36.492249, 31.165627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067713, 35.730190, 30.736298>,  <28.502542, 36.103134, 31.206886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067713, 35.730190, 30.736298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938557, 36.108761, 30.737564>,  <27.861063, 36.335903, 30.738325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938557, 36.108761, 30.737564>,  <28.067713, 35.730190, 30.736298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938557, 36.108761, 30.737564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131529, -0.041558, -0.990441,
		-0.937252, -0.320220, 0.137902,
		-0.322890, 0.946431, 0.003168,
		27.841690, 36.392689, 30.738514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859468, 35.785995, 30.080404>,  <28.067713, 35.730190, 30.736298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859468, 35.785995, 30.080404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842392, 36.161510, 30.217142>,  <27.832146, 36.386818, 30.299185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842392, 36.161510, 30.217142>,  <27.859468, 35.785995, 30.080404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842392, 36.161510, 30.217142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020869, 0.341243, -0.939744,
		-0.998870, -0.047254, 0.005023,
		-0.042693, 0.938787, 0.341843,
		27.829584, 36.443146, 30.319695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205761, 36.152439, 29.893770>,  <27.859468, 35.785995, 30.080404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205761, 36.152439, 29.893770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450548, 36.465797, 29.937193>,  <27.597422, 36.653812, 29.963247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450548, 36.465797, 29.937193>,  <27.205761, 36.152439, 29.893770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450548, 36.465797, 29.937193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129355, 0.234556, -0.963458,
		-0.780231, 0.575565, 0.244877,
		0.611970, 0.783395, 0.108556,
		27.634140, 36.700817, 29.969759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876572, 36.678619, 29.477303>,  <27.205761, 36.152439, 29.893770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876572, 36.678619, 29.477303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249174, 36.804665, 29.549963>,  <27.472736, 36.880291, 29.593559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249174, 36.804665, 29.549963>,  <26.876572, 36.678619, 29.477303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249174, 36.804665, 29.549963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026556, 0.439168, -0.898012,
		-0.362755, 0.841328, 0.400720,
		0.931506, 0.315117, 0.181653,
		27.528625, 36.899200, 29.604458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876799, 37.395447, 29.337498>,  <26.876572, 36.678619, 29.477303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876799, 37.395447, 29.337498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240004, 37.238880, 29.277754>,  <27.457926, 37.144939, 29.241907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240004, 37.238880, 29.277754>,  <26.876799, 37.395447, 29.337498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240004, 37.238880, 29.277754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036680, 0.280873, -0.959044,
		0.417337, 0.876301, 0.240679,
		0.908011, -0.391417, -0.149362,
		27.512407, 37.121456, 29.232944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176291, 37.813507, 28.860086>,  <26.876799, 37.395447, 29.337498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176291, 37.813507, 28.860086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440256, 37.514309, 28.831766>,  <27.598635, 37.334789, 28.814774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440256, 37.514309, 28.831766>,  <27.176291, 37.813507, 28.860086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440256, 37.514309, 28.831766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014942, 0.081150, -0.996590,
		0.751193, 0.658720, 0.042375,
		0.659913, -0.747998, -0.070802,
		27.638229, 37.289909, 28.810526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711493, 38.060593, 28.548868>,  <27.176291, 37.813507, 28.860086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711493, 38.060593, 28.548868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713867, 37.664852, 28.490702>,  <27.715292, 37.427406, 28.455801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713867, 37.664852, 28.490702>,  <27.711493, 38.060593, 28.548868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713867, 37.664852, 28.490702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157170, 0.142691, -0.977209,
		0.987554, 0.028655, -0.154650,
		0.005935, -0.989352, -0.145418,
		27.715647, 37.368046, 28.447077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938408, 37.993080, 27.928320>,  <27.711493, 38.060593, 28.548868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938408, 37.993080, 27.928320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790464, 37.625355, 27.982077>,  <27.701698, 37.404720, 28.014330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790464, 37.625355, 27.982077>,  <27.938408, 37.993080, 27.928320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790464, 37.625355, 27.982077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138164, -0.088617, -0.986437,
		0.918758, -0.383408, -0.094241,
		-0.369857, -0.919318, 0.134391,
		27.679508, 37.349560, 28.022394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185074, 37.666985, 27.353075>,  <27.938408, 37.993080, 27.928320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185074, 37.666985, 27.353075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900354, 37.417889, 27.483023>,  <27.729523, 37.268433, 27.560991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900354, 37.417889, 27.483023>,  <28.185074, 37.666985, 27.353075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900354, 37.417889, 27.483023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313703, -0.131967, -0.940306,
		0.628435, -0.771222, -0.101420,
		-0.711800, -0.622737, 0.324868,
		27.686813, 37.231068, 27.580482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337488, 36.948170, 27.118624>,  <28.185074, 37.666985, 27.353075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337488, 36.948170, 27.118624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943624, 36.980267, 27.180603>,  <27.707306, 36.999523, 27.217791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943624, 36.980267, 27.180603>,  <28.337488, 36.948170, 27.118624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943624, 36.980267, 27.180603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166534, -0.167009, -0.971789,
		-0.052094, -0.982685, 0.177808,
		-0.984658, 0.080235, 0.154951,
		27.648228, 37.004337, 27.227089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111282, 36.309250, 26.824659>,  <28.337488, 36.948170, 27.118624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111282, 36.309250, 26.824659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749432, 36.467587, 26.887859>,  <27.532322, 36.562588, 26.925779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749432, 36.467587, 26.887859>,  <28.111282, 36.309250, 26.824659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749432, 36.467587, 26.887859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323058, -0.395023, -0.859994,
		-0.278004, -0.829016, 0.485227,
		-0.904625, 0.395839, 0.158002,
		27.478045, 36.586338, 26.935259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602715, 35.702301, 26.824013>,  <28.111282, 36.309250, 26.824659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602715, 35.702301, 26.824013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442032, 36.056145, 26.729277>,  <27.345623, 36.268452, 26.672436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442032, 36.056145, 26.729277>,  <27.602715, 35.702301, 26.824013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442032, 36.056145, 26.729277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344873, -0.385716, -0.855737,
		-0.848349, -0.262075, 0.460023,
		-0.401705, 0.884613, -0.236839,
		27.321520, 36.321529, 26.658224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973848, 35.563980, 26.605415>,  <27.602715, 35.702301, 26.824013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973848, 35.563980, 26.605415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974154, 35.931519, 26.447573>,  <26.974337, 36.152042, 26.352867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974154, 35.931519, 26.447573>,  <26.973848, 35.563980, 26.605415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974154, 35.931519, 26.447573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376834, -0.365251, -0.851228,
		-0.926281, 0.149349, 0.345976,
		0.000762, 0.918851, -0.394604,
		26.974382, 36.207172, 26.329191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227966, 35.697227, 26.376522>,  <26.973848, 35.563980, 26.605415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227966, 35.697227, 26.376522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495668, 35.917873, 26.177397>,  <26.656290, 36.050262, 26.057922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495668, 35.917873, 26.177397>,  <26.227966, 35.697227, 26.376522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495668, 35.917873, 26.177397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308965, -0.402712, -0.861605,
		-0.675751, 0.730440, -0.099087,
		0.669255, 0.551616, -0.497813,
		26.696445, 36.083359, 26.028053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876642, 36.029572, 25.831469>,  <26.227966, 35.697227, 26.376522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876642, 36.029572, 25.831469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267910, 36.032951, 25.748411>,  <26.502670, 36.034977, 25.698576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267910, 36.032951, 25.748411>,  <25.876642, 36.029572, 25.831469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267910, 36.032951, 25.748411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180945, -0.456800, -0.870973,
		-0.102210, 0.889530, -0.445298,
		0.978168, 0.008448, -0.207645,
		26.561359, 36.035484, 25.686117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991882, 36.354145, 25.185757>,  <25.876642, 36.029572, 25.831469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991882, 36.354145, 25.185757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226440, 36.049744, 25.296766>,  <26.367174, 35.867104, 25.363371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226440, 36.049744, 25.296766>,  <25.991882, 36.354145, 25.185757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226440, 36.049744, 25.296766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362310, -0.552836, -0.750402,
		0.724482, 0.339482, -0.599899,
		0.586393, -0.761002, 0.277522,
		26.402359, 35.821442, 25.380022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546099, 36.287308, 24.707502>,  <25.991882, 36.354145, 25.185757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546099, 36.287308, 24.707502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488192, 35.929039, 24.875698>,  <26.453447, 35.714077, 24.976616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488192, 35.929039, 24.875698>,  <26.546099, 36.287308, 24.707502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488192, 35.929039, 24.875698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234184, -0.381875, -0.894052,
		0.961353, -0.227900, -0.154470,
		-0.144766, -0.895674, 0.420487,
		26.444761, 35.660336, 25.001844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402985, 35.549416, 24.481550>,  <26.546099, 36.287308, 24.707502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402985, 35.549416, 24.481550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059624, 35.613937, 24.286768>,  <25.853607, 35.652653, 24.169899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059624, 35.613937, 24.286768>,  <26.402985, 35.549416, 24.481550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059624, 35.613937, 24.286768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155736, -0.986417, -0.052224,
		-0.488763, 0.031008, 0.871865,
		-0.858403, 0.161306, -0.486954,
		25.802103, 35.662331, 24.140682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282589, 34.906597, 24.662449>,  <26.402985, 35.549416, 24.481550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282589, 34.906597, 24.662449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008116, 35.050568, 24.409592>,  <25.843431, 35.136951, 24.257877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008116, 35.050568, 24.409592>,  <26.282589, 34.906597, 24.662449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008116, 35.050568, 24.409592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391856, -0.915042, -0.095643,
		-0.612861, 0.182080, 0.768927,
		-0.686185, 0.359925, -0.632142,
		25.802259, 35.158546, 24.219950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145044, 34.401684, 24.284872>,  <26.282589, 34.906597, 24.662449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145044, 34.401684, 24.284872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497751, 34.217228, 24.245207>,  <26.709375, 34.106552, 24.221407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497751, 34.217228, 24.245207>,  <26.145044, 34.401684, 24.284872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497751, 34.217228, 24.245207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322348, 0.435648, 0.840418,
		-0.344352, -0.773019, 0.532789,
		0.881767, -0.461143, -0.099165,
		26.762281, 34.078884, 24.215458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256453, 34.225174, 24.909948>,  <26.145044, 34.401684, 24.284872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256453, 34.225174, 24.909948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627722, 34.185944, 24.766354>,  <26.850483, 34.162407, 24.680197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627722, 34.185944, 24.766354>,  <26.256453, 34.225174, 24.909948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627722, 34.185944, 24.766354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372138, 0.239508, 0.896744,
		-0.001971, -0.965928, 0.258803,
		0.928176, -0.098078, -0.358987,
		26.906174, 34.156521, 24.658657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662243, 33.911598, 25.359112>,  <26.256453, 34.225174, 24.909948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662243, 33.911598, 25.359112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956547, 34.073856, 25.142185>,  <27.133129, 34.171211, 25.012030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956547, 34.073856, 25.142185>,  <26.662243, 33.911598, 25.359112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956547, 34.073856, 25.142185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534563, 0.143806, 0.832804,
		0.415814, -0.902645, -0.111039,
		0.735759, 0.405649, -0.542317,
		27.177275, 34.195553, 24.979490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258307, 33.657383, 25.565294>,  <26.662243, 33.911598, 25.359112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258307, 33.657383, 25.565294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360178, 34.017757, 25.424749>,  <27.421301, 34.233982, 25.340424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360178, 34.017757, 25.424749>,  <27.258307, 33.657383, 25.565294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360178, 34.017757, 25.424749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532245, 0.172762, 0.828776,
		0.807375, -0.398082, -0.435519,
		0.254680, 0.900935, -0.351360,
		27.436583, 34.288036, 25.319342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035143, 33.734234, 25.538076>,  <27.258307, 33.657383, 25.565294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035143, 33.734234, 25.538076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843018, 34.083466, 25.571606>,  <27.727743, 34.293007, 25.591724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843018, 34.083466, 25.571606>,  <28.035143, 33.734234, 25.538076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843018, 34.083466, 25.571606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553206, 0.227394, 0.801408,
		0.680634, 0.431299, -0.592215,
		-0.480313, 0.873083, 0.083824,
		27.698923, 34.345390, 25.596752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560759, 34.227608, 25.923363>,  <28.035143, 33.734234, 25.538076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560759, 34.227608, 25.923363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178841, 34.281895, 26.029150>,  <27.949690, 34.314468, 26.092623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178841, 34.281895, 26.029150>,  <28.560759, 34.227608, 25.923363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178841, 34.281895, 26.029150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263446, -0.025771, 0.964330,
		0.137692, 0.990412, -0.011148,
		-0.954797, 0.135717, 0.264469,
		27.892401, 34.322609, 26.108490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592827, 34.723404, 26.370182>,  <28.560759, 34.227608, 25.923363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592827, 34.723404, 26.370182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227207, 34.580223, 26.446486>,  <28.007835, 34.494316, 26.492268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227207, 34.580223, 26.446486>,  <28.592827, 34.723404, 26.370182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227207, 34.580223, 26.446486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244036, -0.109673, 0.963545,
		-0.323978, 0.927279, 0.187599,
		-0.914049, -0.357948, 0.190758,
		27.952993, 34.472839, 26.503714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291603, 35.233253, 26.890894>,  <28.592827, 34.723404, 26.370182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291603, 35.233253, 26.890894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114243, 34.874752, 26.886576>,  <28.007826, 34.659649, 26.883986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114243, 34.874752, 26.886576>,  <28.291603, 35.233253, 26.890894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114243, 34.874752, 26.886576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154667, -0.088368, 0.984007,
		-0.882878, 0.434641, 0.177804,
		-0.443402, -0.896258, -0.010794,
		27.981222, 34.605873, 26.883337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751369, 35.221157, 27.344561>,  <28.291603, 35.233253, 26.890894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751369, 35.221157, 27.344561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845848, 34.833889, 27.311428>,  <27.902534, 34.601528, 27.291548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845848, 34.833889, 27.311428>,  <27.751369, 35.221157, 27.344561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845848, 34.833889, 27.311428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040869, -0.095066, 0.994631,
		-0.970846, -0.231543, -0.062023,
		0.236196, -0.968169, -0.082832,
		27.916706, 34.543438, 27.286579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479036, 34.949055, 27.884636>,  <27.751369, 35.221157, 27.344561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479036, 34.949055, 27.884636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727806, 34.654091, 27.779236>,  <27.877068, 34.477112, 27.715996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727806, 34.654091, 27.779236>,  <27.479036, 34.949055, 27.884636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727806, 34.654091, 27.779236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070021, -0.282778, 0.956626,
		-0.779940, -0.613400, -0.124232,
		0.621925, -0.737413, -0.263501,
		27.914383, 34.432869, 27.700186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294975, 34.508408, 28.362967>,  <27.479036, 34.949055, 27.884636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294975, 34.508408, 28.362967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648798, 34.388573, 28.219963>,  <27.861092, 34.316673, 28.134161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648798, 34.388573, 28.219963>,  <27.294975, 34.508408, 28.362967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648798, 34.388573, 28.219963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298100, -0.226411, 0.927294,
		-0.358747, -0.926816, -0.110967,
		0.884555, -0.299584, -0.357508,
		27.914165, 34.298698, 28.112711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345215, 33.773972, 28.522053>,  <27.294975, 34.508408, 28.362967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345215, 33.773972, 28.522053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717075, 33.914207, 28.476734>,  <27.940191, 33.998348, 28.449543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717075, 33.914207, 28.476734>,  <27.345215, 33.773972, 28.522053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717075, 33.914207, 28.476734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244001, -0.355437, 0.902290,
		0.276064, -0.866460, -0.415977,
		0.929652, 0.350588, -0.113294,
		27.995972, 34.019382, 28.442745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818562, 33.268421, 28.859734>,  <27.345215, 33.773972, 28.522053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818562, 33.268421, 28.859734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047501, 33.596420, 28.858036>,  <28.184864, 33.793221, 28.857018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047501, 33.596420, 28.858036>,  <27.818562, 33.268421, 28.859734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047501, 33.596420, 28.858036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297055, -0.202506, 0.933140,
		0.764316, -0.535339, -0.359489,
		0.572345, 0.820002, -0.004246,
		28.219204, 33.842422, 28.856762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320868, 33.086739, 29.224783>,  <27.818562, 33.268421, 28.859734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320868, 33.086739, 29.224783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388596, 33.480595, 29.241861>,  <28.429234, 33.716908, 29.252108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388596, 33.480595, 29.241861>,  <28.320868, 33.086739, 29.224783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388596, 33.480595, 29.241861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329318, -0.097355, 0.939187,
		0.928913, -0.144964, -0.340743,
		0.169322, 0.984636, 0.042694,
		28.439392, 33.775986, 29.254669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956108, 33.210205, 29.639038>,  <28.320868, 33.086739, 29.224783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956108, 33.210205, 29.639038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766600, 33.560394, 29.677174>,  <28.652895, 33.770508, 29.700054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766600, 33.560394, 29.677174>,  <28.956108, 33.210205, 29.639038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766600, 33.560394, 29.677174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194376, -0.001632, 0.980926,
		0.858928, 0.483267, -0.169397,
		-0.473773, 0.875471, 0.095337,
		28.624468, 33.823036, 29.705774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449404, 33.740795, 29.862215>,  <28.956108, 33.210205, 29.639038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449404, 33.740795, 29.862215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087751, 33.884106, 29.955332>,  <28.870760, 33.970093, 30.011202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087751, 33.884106, 29.955332>,  <29.449404, 33.740795, 29.862215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087751, 33.884106, 29.955332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270741, 0.058918, 0.960848,
		0.330529, 0.931756, -0.150268,
		-0.904129, 0.358272, 0.232790,
		28.816513, 33.991589, 30.025169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612623, 34.161457, 30.350735>,  <29.449404, 33.740795, 29.862215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612623, 34.161457, 30.350735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214390, 34.156521, 30.387968>,  <28.975451, 34.153561, 30.410307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214390, 34.156521, 30.387968>,  <29.612623, 34.161457, 30.350735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214390, 34.156521, 30.387968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087750, 0.230485, 0.969111,
		-0.033415, 0.972998, -0.228384,
		-0.995582, -0.012342, 0.093082,
		28.915714, 34.152817, 30.415894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460192, 34.749420, 30.476986>,  <29.612623, 34.161457, 30.350735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460192, 34.749420, 30.476986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133118, 34.560585, 30.608757>,  <28.936872, 34.447285, 30.687820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133118, 34.560585, 30.608757>,  <29.460192, 34.749420, 30.476986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133118, 34.560585, 30.608757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014963, 0.589495, 0.807633,
		-0.575469, 0.655462, -0.489087,
		-0.817687, -0.472086, 0.329428,
		28.887812, 34.418961, 30.707586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038439, 35.213707, 30.788939>,  <29.460192, 34.749420, 30.476986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038439, 35.213707, 30.788939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916183, 34.868896, 30.950676>,  <28.842831, 34.662010, 31.047718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916183, 34.868896, 30.950676>,  <29.038439, 35.213707, 30.788939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916183, 34.868896, 30.950676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150794, 0.463127, 0.873370,
		-0.940131, 0.205963, -0.271538,
		-0.305639, -0.862028, 0.404342,
		28.824492, 34.610287, 31.071978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464758, 35.378208, 31.246622>,  <29.038439, 35.213707, 30.788939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464758, 35.378208, 31.246622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596510, 35.030804, 31.394781>,  <28.675560, 34.822361, 31.483677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596510, 35.030804, 31.394781>,  <28.464758, 35.378208, 31.246622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596510, 35.030804, 31.394781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056610, 0.373420, 0.925934,
		-0.942499, -0.325951, 0.073830,
		0.329379, -0.868512, 0.370400,
		28.695324, 34.770248, 31.505901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005667, 35.200287, 31.891642>,  <28.464758, 35.378208, 31.246622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005667, 35.200287, 31.891642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351641, 35.003090, 31.929256>,  <28.559225, 34.884773, 31.951826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351641, 35.003090, 31.929256>,  <28.005667, 35.200287, 31.891642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351641, 35.003090, 31.929256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047661, 0.267210, 0.962459,
		-0.499613, -0.827983, 0.254616,
		0.864936, -0.492993, 0.094039,
		28.611122, 34.855190, 31.957468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929199, 34.911705, 32.491699>,  <28.005667, 35.200287, 31.891642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929199, 34.911705, 32.491699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321209, 34.876911, 32.420158>,  <28.556414, 34.856033, 32.377232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321209, 34.876911, 32.420158>,  <27.929199, 34.911705, 32.491699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321209, 34.876911, 32.420158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194663, 0.235166, 0.952262,
		-0.040776, -0.968055, 0.247402,
		0.980022, -0.086990, -0.178855,
		28.615215, 34.850815, 32.366501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157383, 34.561317, 33.024372>,  <27.929199, 34.911705, 32.491699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157383, 34.561317, 33.024372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495502, 34.731480, 32.895065>,  <28.698374, 34.833576, 32.817482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495502, 34.731480, 32.895065>,  <28.157383, 34.561317, 33.024372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495502, 34.731480, 32.895065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264851, 0.191844, 0.945013,
		0.464034, -0.884434, 0.049494,
		0.845297, 0.425410, -0.323266,
		28.749092, 34.859104, 32.798084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681965, 34.423161, 33.538452>,  <28.157383, 34.561317, 33.024372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681965, 34.423161, 33.538452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840580, 34.735493, 33.345345>,  <28.935749, 34.922890, 33.229481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840580, 34.735493, 33.345345>,  <28.681965, 34.423161, 33.538452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840580, 34.735493, 33.345345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221629, 0.428904, 0.875741,
		0.890864, -0.454261, -0.002977,
		0.396538, 0.780826, -0.482772,
		28.959541, 34.969742, 33.200512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258762, 34.605091, 33.927441>,  <28.681965, 34.423161, 33.538452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258762, 34.605091, 33.927441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179106, 34.929775, 33.707817>,  <29.131311, 35.124588, 33.576042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179106, 34.929775, 33.707817>,  <29.258762, 34.605091, 33.927441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179106, 34.929775, 33.707817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115519, 0.575817, 0.809377,
		0.973138, 0.097753, -0.208436,
		-0.199140, 0.811714, -0.549057,
		29.119364, 35.173290, 33.543098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617271, 35.068153, 34.288269>,  <29.258762, 34.605091, 33.927441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617271, 35.068153, 34.288269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378325, 35.291752, 34.058250>,  <29.234957, 35.425911, 33.920238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378325, 35.291752, 34.058250>,  <29.617271, 35.068153, 34.288269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378325, 35.291752, 34.058250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024378, 0.729371, 0.683684,
		0.801596, 0.394392, -0.449330,
		-0.597368, 0.558993, -0.575047,
		29.199114, 35.459450, 33.885735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981661, 35.708252, 34.248909>,  <29.617271, 35.068153, 34.288269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981661, 35.708252, 34.248909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588665, 35.748241, 34.186020>,  <29.352867, 35.772236, 34.148285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588665, 35.748241, 34.186020>,  <29.981661, 35.708252, 34.248909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588665, 35.748241, 34.186020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061187, 0.623924, 0.779086,
		0.175984, 0.775064, -0.606882,
		-0.982490, 0.099973, -0.157224,
		29.293919, 35.778233, 34.138851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757505, 36.387505, 34.350258>,  <29.981661, 35.708252, 34.248909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757505, 36.387505, 34.350258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433159, 36.171165, 34.439678>,  <29.238550, 36.041363, 34.493332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433159, 36.171165, 34.439678>,  <29.757505, 36.387505, 34.350258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433159, 36.171165, 34.439678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145407, 0.556202, 0.818227,
		-0.566878, 0.630968, -0.529650,
		-0.810868, -0.540850, 0.223551,
		29.189899, 36.008911, 34.506744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286097, 36.924416, 34.401527>,  <29.757505, 36.387505, 34.350258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286097, 36.924416, 34.401527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207447, 37.231579, 34.157673>,  <30.160257, 37.415878, 34.011360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207447, 37.231579, 34.157673>,  <30.286097, 36.924416, 34.401527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207447, 37.231579, 34.157673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961645, 0.272321, 0.032861,
		0.191251, -0.579792, -0.792000,
		-0.196626, 0.767908, -0.609636,
		30.148458, 37.461952, 33.974781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927330, 37.077072, 33.992283>,  <30.286097, 36.924416, 34.401527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927330, 37.077072, 33.992283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724535, 37.413021, 33.914745>,  <30.602858, 37.614590, 33.868221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724535, 37.413021, 33.914745>,  <30.927330, 37.077072, 33.992283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724535, 37.413021, 33.914745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848097, 0.526220, 0.061836,
		0.153939, -0.133048, -0.979082,
		-0.506985, 0.839875, -0.193844,
		30.572439, 37.664982, 33.856590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377087, 37.388035, 33.536133>,  <30.927330, 37.077072, 33.992283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377087, 37.388035, 33.536133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156834, 37.637051, 33.758575>,  <31.024683, 37.786461, 33.892040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156834, 37.637051, 33.758575>,  <31.377087, 37.388035, 33.536133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156834, 37.637051, 33.758575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833575, 0.445390, 0.326773,
		-0.044256, 0.643488, -0.764176,
		-0.550631, 0.622536, 0.556107,
		30.991644, 37.823811, 33.925407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589344, 38.043232, 33.430580>,  <31.377087, 37.388035, 33.536133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589344, 38.043232, 33.430580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412014, 38.054607, 33.788944>,  <31.305616, 38.061432, 34.003963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412014, 38.054607, 33.788944>,  <31.589344, 38.043232, 33.430580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412014, 38.054607, 33.788944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786144, 0.492513, 0.373374,
		-0.430629, 0.869840, -0.240700,
		-0.443324, 0.028439, 0.895910,
		31.279016, 38.063141, 34.057716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727285, 38.642643, 33.795193>,  <31.589344, 38.043232, 33.430580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727285, 38.642643, 33.795193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637260, 38.401119, 34.101070>,  <31.583244, 38.256203, 34.284595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637260, 38.401119, 34.101070>,  <31.727285, 38.642643, 33.795193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637260, 38.401119, 34.101070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741734, 0.402738, 0.536314,
		-0.631804, 0.687905, 0.357226,
		-0.225065, -0.603812, 0.764694,
		31.569740, 38.219975, 34.330479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035019, 38.977985, 34.320747>,  <31.727285, 38.642643, 33.795193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035019, 38.977985, 34.320747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969412, 38.606102, 34.452652>,  <31.930048, 38.382973, 34.531796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969412, 38.606102, 34.452652>,  <32.035019, 38.977985, 34.320747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969412, 38.606102, 34.452652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463537, 0.222446, 0.857701,
		-0.870765, 0.293534, 0.394469,
		-0.164016, -0.929707, 0.329762,
		31.920206, 38.327190, 34.551582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857887, 38.996822, 35.060108>,  <32.035019, 38.977985, 34.320747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857887, 38.996822, 35.060108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994659, 38.623974, 35.012386>,  <32.076721, 38.400265, 34.983753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994659, 38.623974, 35.012386>,  <31.857887, 38.996822, 35.060108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994659, 38.623974, 35.012386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307203, -0.009112, 0.951601,
		-0.888094, -0.362031, 0.283235,
		0.341928, -0.932122, -0.119309,
		32.097237, 38.344337, 34.976593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549038, 38.523670, 35.559204>,  <31.857887, 38.996822, 35.060108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549038, 38.523670, 35.559204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917204, 38.407219, 35.454838>,  <32.138103, 38.337349, 35.392216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917204, 38.407219, 35.454838>,  <31.549038, 38.523670, 35.559204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917204, 38.407219, 35.454838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267534, -0.017599, 0.963388,
		-0.285061, -0.956522, 0.061689,
		0.920416, -0.291129, -0.260919,
		32.193329, 38.319881, 35.376564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796860, 38.098343, 36.100941>,  <31.549038, 38.523670, 35.559204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796860, 38.098343, 36.100941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150410, 38.167610, 35.927147>,  <32.362541, 38.209171, 35.822872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150410, 38.167610, 35.927147>,  <31.796860, 38.098343, 36.100941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150410, 38.167610, 35.927147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449915, -0.060890, 0.890993,
		0.127840, -0.983007, -0.131732,
		0.883874, 0.173172, -0.434485,
		32.415573, 38.219563, 35.796803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269882, 37.562874, 36.249542>,  <31.796860, 38.098343, 36.100941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269882, 37.562874, 36.249542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468243, 37.896622, 36.153286>,  <32.587257, 38.096870, 36.095531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468243, 37.896622, 36.153286>,  <32.269882, 37.562874, 36.249542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468243, 37.896622, 36.153286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450633, -0.010384, 0.892649,
		0.742302, -0.551105, -0.381145,
		0.495901, 0.834371, -0.240638,
		32.617012, 38.146935, 36.081093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904461, 37.419201, 36.340050>,  <32.269882, 37.562874, 36.249542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904461, 37.419201, 36.340050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910183, 37.817127, 36.380314>,  <32.913616, 38.055885, 36.404472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910183, 37.817127, 36.380314>,  <32.904461, 37.419201, 36.340050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910183, 37.817127, 36.380314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621198, -0.087728, 0.778727,
		0.783523, 0.051387, -0.619235,
		0.014307, 0.994818, 0.100658,
		32.914474, 38.115574, 36.410511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593700, 37.641617, 36.484890>,  <32.904461, 37.419201, 36.340050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593700, 37.641617, 36.484890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334984, 37.920837, 36.607777>,  <33.179752, 38.088371, 36.681507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334984, 37.920837, 36.607777>,  <33.593700, 37.641617, 36.484890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334984, 37.920837, 36.607777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382244, -0.051867, 0.922605,
		0.659961, 0.714165, -0.233279,
		-0.646793, 0.698053, 0.307215,
		33.140945, 38.130253, 36.699940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070133, 38.041718, 36.914623>,  <33.593700, 37.641617, 36.484890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070133, 38.041718, 36.914623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695732, 38.153934, 36.999657>,  <33.471092, 38.221264, 37.050678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695732, 38.153934, 36.999657>,  <34.070133, 38.041718, 36.914623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695732, 38.153934, 36.999657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224844, 0.011857, 0.974322,
		0.270817, 0.959769, -0.074176,
		-0.936004, 0.280541, 0.212588,
		33.414932, 38.238098, 37.063435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066341, 38.482914, 37.535637>,  <34.070133, 38.041718, 36.914623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066341, 38.482914, 37.535637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692822, 38.342064, 37.510258>,  <33.468708, 38.257553, 37.495029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692822, 38.342064, 37.510258>,  <34.066341, 38.482914, 37.535637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692822, 38.342064, 37.510258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063701, -0.010887, 0.997910,
		-0.352084, 0.935888, -0.012265,
		-0.933798, -0.352129, -0.063451,
		33.412682, 38.236423, 37.491222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828358, 38.890934, 37.988808>,  <34.066341, 38.482914, 37.535637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828358, 38.890934, 37.988808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566639, 38.591740, 37.944233>,  <33.409607, 38.412224, 37.917488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566639, 38.591740, 37.944233>,  <33.828358, 38.890934, 37.988808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566639, 38.591740, 37.944233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107920, -0.053496, 0.992719,
		-0.748497, 0.661560, -0.045719,
		-0.654298, -0.747981, -0.111437,
		33.370350, 38.367344, 37.910801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231686, 39.130184, 38.304352>,  <33.828358, 38.890934, 37.988808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231686, 39.130184, 38.304352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244919, 38.732132, 38.267231>,  <33.252861, 38.493301, 38.244957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244919, 38.732132, 38.267231>,  <33.231686, 39.130184, 38.304352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244919, 38.732132, 38.267231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033722, -0.093916, 0.995009,
		-0.998883, -0.029791, -0.036665,
		0.033086, -0.995134, -0.092806,
		33.254845, 38.433590, 38.239388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678764, 38.875835, 38.738724>,  <33.231686, 39.130184, 38.304352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678764, 38.875835, 38.738724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905483, 38.554642, 38.665020>,  <33.041515, 38.361927, 38.620800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905483, 38.554642, 38.665020>,  <32.678764, 38.875835, 38.738724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905483, 38.554642, 38.665020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139909, -0.314220, 0.938984,
		-0.811888, -0.506438, -0.290445,
		0.566801, -0.802986, -0.184257,
		33.075523, 38.313747, 38.609741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321774, 38.365463, 39.124882>,  <32.678764, 38.875835, 38.738724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321774, 38.365463, 39.124882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670105, 38.179081, 39.062222>,  <32.879105, 38.067253, 39.024628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670105, 38.179081, 39.062222>,  <32.321774, 38.365463, 39.124882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670105, 38.179081, 39.062222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125474, -0.518794, 0.845641,
		-0.475292, -0.716759, -0.510249,
		0.870835, -0.465949, -0.156644,
		32.931355, 38.039295, 39.015228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262932, 37.611866, 39.056366>,  <32.321774, 38.365463, 39.124882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262932, 37.611866, 39.056366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646988, 37.657349, 39.158504>,  <32.877422, 37.684639, 39.219788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646988, 37.657349, 39.158504>,  <32.262932, 37.611866, 39.056366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646988, 37.657349, 39.158504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129261, -0.629335, 0.766308,
		0.247833, -0.768770, -0.589552,
		0.960141, 0.113710, 0.255342,
		32.935032, 37.691463, 39.235107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591030, 36.956764, 39.040588>,  <32.262932, 37.611866, 39.056366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591030, 36.956764, 39.040588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807468, 37.176456, 39.295322>,  <32.937332, 37.308273, 39.448162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807468, 37.176456, 39.295322>,  <32.591030, 36.956764, 39.040588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807468, 37.176456, 39.295322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095661, -0.712159, 0.695470,
		0.835501, -0.437237, -0.332808,
		0.541098, 0.549229, 0.636836,
		32.969799, 37.341225, 39.486374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863987, 36.435055, 39.542973>,  <32.591030, 36.956764, 39.040588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863987, 36.435055, 39.542973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939148, 36.781425, 39.728390>,  <32.984245, 36.989246, 39.839638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939148, 36.781425, 39.728390>,  <32.863987, 36.435055, 39.542973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939148, 36.781425, 39.728390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021067, -0.468283, 0.883328,
		0.981962, -0.175743, -0.069748,
		0.187901, 0.865925, 0.463538,
		32.995518, 37.041203, 39.867451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186684, 36.133579, 40.068226>,  <32.863987, 36.435055, 39.542973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186684, 36.133579, 40.068226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092926, 36.495625, 40.210114>,  <33.036671, 36.712852, 40.295246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092926, 36.495625, 40.210114>,  <33.186684, 36.133579, 40.068226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092926, 36.495625, 40.210114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167781, -0.397071, 0.902321,
		0.957554, 0.151984, 0.244932,
		-0.234394, 0.905116, 0.354717,
		33.022610, 36.767159, 40.316528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433895, 36.172150, 40.798878>,  <33.186684, 36.133579, 40.068226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433895, 36.172150, 40.798878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190899, 36.488171, 40.765957>,  <33.045101, 36.677784, 40.746204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190899, 36.488171, 40.765957>,  <33.433895, 36.172150, 40.798878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190899, 36.488171, 40.765957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232040, -0.077414, 0.969621,
		0.759678, 0.608134, 0.230352,
		-0.607492, 0.790051, -0.082302,
		33.008652, 36.725185, 40.741268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570942, 36.762867, 41.342976>,  <33.433895, 36.172150, 40.798878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570942, 36.762867, 41.342976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188522, 36.801224, 41.232143>,  <32.959072, 36.824238, 41.165642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188522, 36.801224, 41.232143>,  <33.570942, 36.762867, 41.342976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188522, 36.801224, 41.232143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254895, 0.195220, 0.947057,
		0.144911, 0.976060, -0.162197,
		-0.956049, 0.095896, -0.277083,
		32.901707, 36.829994, 41.149017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293858, 37.335732, 41.656281>,  <33.570942, 36.762867, 41.342976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293858, 37.335732, 41.656281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972820, 37.107613, 41.586311>,  <32.780197, 36.970741, 41.544331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972820, 37.107613, 41.586311>,  <33.293858, 37.335732, 41.656281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972820, 37.107613, 41.586311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285182, 0.109269, 0.952224,
		-0.523938, 0.814138, -0.250338,
		-0.802596, -0.570298, -0.174927,
		32.732040, 36.936523, 41.533833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765339, 37.725132, 42.041325>,  <33.293858, 37.335732, 41.656281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765339, 37.725132, 42.041325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628212, 37.360188, 41.951817>,  <32.545937, 37.141220, 41.898113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628212, 37.360188, 41.951817>,  <32.765339, 37.725132, 42.041325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628212, 37.360188, 41.951817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468036, -0.040649, 0.882774,
		-0.814503, 0.407367, -0.413082,
		-0.342821, -0.912360, -0.223771,
		32.525364, 37.086479, 41.884686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147530, 37.678120, 42.299393>,  <32.765339, 37.725132, 42.041325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147530, 37.678120, 42.299393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209900, 37.285797, 42.252556>,  <32.247322, 37.050404, 42.224453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209900, 37.285797, 42.252556>,  <32.147530, 37.678120, 42.299393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209900, 37.285797, 42.252556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392900, -0.170348, 0.903665,
		-0.906265, -0.094901, -0.411919,
		0.155929, -0.980803, -0.117094,
		32.256680, 36.991554, 42.217426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581505, 37.432728, 42.563332>,  <32.147530, 37.678120, 42.299393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581505, 37.432728, 42.563332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858452, 37.144184, 42.569981>,  <32.024620, 36.971058, 42.573971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858452, 37.144184, 42.569981>,  <31.581505, 37.432728, 42.563332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858452, 37.144184, 42.569981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377970, -0.342965, 0.859950,
		-0.614629, -0.601682, -0.510108,
		0.692366, -0.721355, 0.016621,
		32.066162, 36.927776, 42.574966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177851, 36.867531, 42.813698>,  <31.581505, 37.432728, 42.563332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177851, 36.867531, 42.813698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557055, 36.753246, 42.869770>,  <31.784576, 36.684677, 42.903412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557055, 36.753246, 42.869770>,  <31.177851, 36.867531, 42.813698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557055, 36.753246, 42.869770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256990, -0.427460, 0.866738,
		-0.187711, -0.857700, -0.478660,
		0.948009, -0.285707, 0.140181,
		31.841457, 36.667534, 42.911823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153292, 36.224384, 43.132679>,  <31.177851, 36.867531, 42.813698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153292, 36.224384, 43.132679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524223, 36.334465, 43.234131>,  <31.746782, 36.400513, 43.295002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524223, 36.334465, 43.234131>,  <31.153292, 36.224384, 43.132679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524223, 36.334465, 43.234131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145690, -0.358795, 0.921976,
		0.344730, -0.891926, -0.292626,
		0.927327, 0.275200, 0.253632,
		31.802422, 36.417027, 43.310219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390957, 35.615788, 43.438313>,  <31.153292, 36.224384, 43.132679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390957, 35.615788, 43.438313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628590, 35.913059, 43.561436>,  <31.771170, 36.091423, 43.635311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628590, 35.913059, 43.561436>,  <31.390957, 35.615788, 43.438313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628590, 35.913059, 43.561436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112386, -0.455585, 0.883070,
		0.796515, -0.490023, -0.354178,
		0.594082, 0.743183, 0.307809,
		31.806814, 36.136013, 43.653778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947994, 35.288563, 43.513313>,  <31.390957, 35.615788, 43.438313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947994, 35.288563, 43.513313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979307, 35.608978, 43.750702>,  <31.998095, 35.801228, 43.893135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979307, 35.608978, 43.750702>,  <31.947994, 35.288563, 43.513313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979307, 35.608978, 43.750702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093634, -0.598577, 0.795574,
		0.992525, -0.006708, -0.121861,
		0.078280, 0.801037, 0.593475,
		32.002792, 35.849289, 43.928745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390682, 35.155170, 43.965927>,  <31.947994, 35.288563, 43.513313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390682, 35.155170, 43.965927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182838, 35.447010, 44.143784>,  <32.058132, 35.622112, 44.250496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182838, 35.447010, 44.143784>,  <32.390682, 35.155170, 43.965927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182838, 35.447010, 44.143784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054863, -0.547821, 0.834795,
		0.852643, 0.409370, 0.324679,
		-0.519606, 0.729595, 0.444636,
		32.026958, 35.665890, 44.277176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571747, 34.975609, 44.649391>,  <32.390682, 35.155170, 43.965927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571747, 34.975609, 44.649391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290432, 35.258320, 44.679974>,  <32.121643, 35.427948, 44.698322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290432, 35.258320, 44.679974>,  <32.571747, 34.975609, 44.649391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290432, 35.258320, 44.679974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299608, -0.392217, 0.869713,
		0.644683, 0.588754, 0.487599,
		-0.703292, 0.706777, 0.076461,
		32.079445, 35.470352, 44.702911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673538, 35.333378, 45.319954>,  <32.571747, 34.975609, 44.649391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673538, 35.333378, 45.319954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299984, 35.368675, 45.181347>,  <32.075851, 35.389854, 45.098183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299984, 35.368675, 45.181347>,  <32.673538, 35.333378, 45.319954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299984, 35.368675, 45.181347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356536, -0.303562, 0.883590,
		-0.027213, 0.948716, 0.314955,
		-0.933885, 0.088248, -0.346513,
		32.019817, 35.395149, 45.077393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344913, 35.574482, 45.817188>,  <32.673538, 35.333378, 45.319954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344913, 35.574482, 45.817188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068897, 35.406277, 45.581558>,  <31.903288, 35.305351, 45.440178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068897, 35.406277, 45.581558>,  <32.344913, 35.574482, 45.817188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068897, 35.406277, 45.581558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425723, -0.422392, 0.800215,
		-0.585324, 0.802964, 0.112445,
		-0.690040, -0.420515, -0.589077,
		31.861885, 35.280121, 45.404835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797028, 35.657894, 46.209942>,  <32.344913, 35.574482, 45.817188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797028, 35.657894, 46.209942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733780, 35.357082, 45.953987>,  <31.695831, 35.176598, 45.800415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733780, 35.357082, 45.953987>,  <31.797028, 35.657894, 46.209942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733780, 35.357082, 45.953987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544920, -0.473965, 0.691679,
		-0.823444, 0.458055, -0.334851,
		-0.158120, -0.752026, -0.639887,
		31.686344, 35.131474, 45.762020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182323, 35.528694, 46.346188>,  <31.797028, 35.657894, 46.209942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182323, 35.528694, 46.346188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311867, 35.192993, 46.171474>,  <31.389593, 34.991573, 46.066647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311867, 35.192993, 46.171474>,  <31.182323, 35.528694, 46.346188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311867, 35.192993, 46.171474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511782, -0.543687, 0.665194,
		-0.795735, 0.008106, -0.605591,
		0.323860, -0.839249, -0.436780,
		31.409025, 34.941219, 46.040440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533838, 35.023357, 46.502842>,  <31.182323, 35.528694, 46.346188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533838, 35.023357, 46.502842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874590, 34.832855, 46.415680>,  <31.079041, 34.718555, 46.363384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874590, 34.832855, 46.415680>,  <30.533838, 35.023357, 46.502842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874590, 34.832855, 46.415680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340945, -0.820109, 0.459541,
		-0.397565, -0.317180, -0.861011,
		0.851879, -0.476254, -0.217905,
		31.130154, 34.689980, 46.350307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363224, 34.384354, 46.145153>,  <30.533838, 35.023357, 46.502842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363224, 34.384354, 46.145153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718367, 34.349007, 46.325775>,  <30.931452, 34.327797, 46.434147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718367, 34.349007, 46.325775>,  <30.363224, 34.384354, 46.145153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718367, 34.349007, 46.325775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266592, -0.898668, 0.348316,
		0.375014, -0.429636, -0.821449,
		0.887859, -0.088368, 0.451551,
		30.984724, 34.322495, 46.461239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473421, 33.650394, 46.026680>,  <30.363224, 34.384354, 46.145153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473421, 33.650394, 46.026680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737923, 33.788181, 46.293240>,  <30.896624, 33.870853, 46.453175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737923, 33.788181, 46.293240>,  <30.473421, 33.650394, 46.026680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737923, 33.788181, 46.293240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008638, -0.891774, 0.452399,
		0.750114, -0.293393, -0.592663,
		0.661252, 0.344470, 0.666398,
		30.936298, 33.891521, 46.493160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849552, 33.029255, 46.179588>,  <30.473421, 33.650394, 46.026680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849552, 33.029255, 46.179588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903519, 33.271816, 46.493038>,  <30.935898, 33.417355, 46.681107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903519, 33.271816, 46.493038>,  <30.849552, 33.029255, 46.179588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903519, 33.271816, 46.493038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069262, -0.783151, 0.617963,
		0.988433, -0.137649, -0.063659,
		0.134917, 0.606406, 0.783626,
		30.943995, 33.453739, 46.728127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074915, 32.649147, 46.635857>,  <30.849552, 33.029255, 46.179588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074915, 32.649147, 46.635857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009275, 32.962151, 46.876106>,  <30.969893, 33.149952, 47.020256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009275, 32.962151, 46.876106>,  <31.074915, 32.649147, 46.635857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009275, 32.962151, 46.876106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016034, -0.606680, 0.794785,
		0.986314, 0.140054, 0.087008,
		-0.164099, 0.782512, 0.600622,
		30.960045, 33.196903, 47.056293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518356, 32.546974, 47.302864>,  <31.074915, 32.649147, 46.635857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518356, 32.546974, 47.302864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202122, 32.775990, 47.389744>,  <31.012381, 32.913399, 47.441872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202122, 32.775990, 47.389744>,  <31.518356, 32.546974, 47.302864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202122, 32.775990, 47.389744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018395, -0.332339, 0.942981,
		0.612075, 0.749502, 0.252211,
		-0.790585, 0.572536, 0.217203,
		30.964947, 32.947750, 47.454906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659489, 32.991203, 47.921860>,  <31.518356, 32.546974, 47.302864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659489, 32.991203, 47.921860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264065, 32.934437, 47.901436>,  <31.026810, 32.900375, 47.889183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264065, 32.934437, 47.901436>,  <31.659489, 32.991203, 47.921860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264065, 32.934437, 47.901436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009199, -0.281164, 0.959616,
		-0.150543, 0.949108, 0.276642,
		-0.988561, -0.141918, -0.051058,
		30.967497, 32.891861, 47.886120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485483, 33.317734, 48.489498>,  <31.659489, 32.991203, 47.921860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485483, 33.317734, 48.489498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172798, 33.086754, 48.395283>,  <30.985188, 32.948166, 48.338753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172798, 33.086754, 48.395283>,  <31.485483, 33.317734, 48.489498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172798, 33.086754, 48.395283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093470, -0.264937, 0.959725,
		-0.616596, 0.772244, 0.153130,
		-0.781712, -0.577449, -0.235541,
		30.938284, 32.913521, 48.324619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017931, 33.438087, 49.020901>,  <31.485483, 33.317734, 48.489498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017931, 33.438087, 49.020901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903879, 33.093258, 48.853313>,  <30.835449, 32.886360, 48.752762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903879, 33.093258, 48.853313>,  <31.017931, 33.438087, 49.020901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903879, 33.093258, 48.853313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068666, -0.417621, 0.906023,
		-0.956027, 0.287101, 0.059881,
		-0.285128, -0.862071, -0.418971,
		30.818340, 32.834637, 48.727623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383913, 33.201469, 49.393414>,  <31.017931, 33.438087, 49.020901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383913, 33.201469, 49.393414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561960, 32.888340, 49.219494>,  <30.668789, 32.700462, 49.115143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561960, 32.888340, 49.219494>,  <30.383913, 33.201469, 49.393414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561960, 32.888340, 49.219494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279280, -0.582695, 0.763197,
		-0.850807, -0.218283, -0.477996,
		0.445119, -0.782828, -0.434798,
		30.695496, 32.653492, 49.089054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924324, 32.683914, 49.040821>,  <30.383913, 33.201469, 49.393414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924324, 32.683914, 49.040821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240206, 32.536137, 49.236729>,  <30.429735, 32.447468, 49.354275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240206, 32.536137, 49.236729>,  <29.924324, 32.683914, 49.040821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240206, 32.536137, 49.236729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606813, -0.352960, 0.712178,
		-0.090240, -0.859610, -0.502918,
		0.789705, -0.369444, 0.489771,
		30.477118, 32.425304, 49.383659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845623, 31.957266, 49.086224>,  <29.924324, 32.683914, 49.040821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845623, 31.957266, 49.086224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.054644, 32.111584, 49.390354>,  <30.180056, 32.204174, 49.572834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.054644, 32.111584, 49.390354>,  <29.845623, 31.957266, 49.086224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054644, 32.111584, 49.390354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727053, -0.264171, 0.633725,
		0.445345, -0.883955, 0.142450,
		0.522553, 0.385795, 0.760329,
		30.211411, 32.227322, 49.618454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198338, 31.953129, 48.911572>,  <29.845623, 31.957266, 49.086224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198338, 31.953129, 48.911572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072186, 32.204655, 49.195862>,  <28.996494, 32.355568, 49.366436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072186, 32.204655, 49.195862>,  <29.198338, 31.953129, 48.911572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072186, 32.204655, 49.195862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948965, -0.208986, -0.236199,
		0.000007, -0.748946, 0.662631,
		-0.315381, 0.628812, 0.710725,
		28.977571, 32.393299, 49.409081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708471, 31.681345, 49.466022>,  <29.198338, 31.953129, 48.911572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708471, 31.681345, 49.466022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642370, 32.075760, 49.457771>,  <28.602709, 32.312408, 49.452820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642370, 32.075760, 49.457771>,  <28.708471, 31.681345, 49.466022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642370, 32.075760, 49.457771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973627, -0.166438, -0.156042,
		-0.157295, -0.005709, 0.987535,
		-0.165254, 0.986035, -0.020622,
		28.592794, 32.371571, 49.451584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992016, 31.173048, 49.975109>,  <28.708471, 31.681345, 49.466022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992016, 31.173048, 49.975109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147316, 30.864225, 50.176380>,  <29.240496, 30.678932, 50.297142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147316, 30.864225, 50.176380>,  <28.992016, 31.173048, 49.975109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147316, 30.864225, 50.176380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403115, -0.348723, -0.846103,
		0.828710, 0.531339, 0.175836,
		0.388250, -0.772056, 0.503181,
		29.263790, 30.632608, 50.327335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737696, 31.117472, 49.767120>,  <28.992016, 31.173048, 49.975109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737696, 31.117472, 49.767120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578007, 30.767403, 49.876442>,  <29.482193, 30.557362, 49.942036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578007, 30.767403, 49.876442>,  <29.737696, 31.117472, 49.767120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578007, 30.767403, 49.876442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325741, -0.414032, -0.849982,
		0.857038, -0.250304, 0.450370,
		-0.399222, -0.875171, 0.273307,
		29.458241, 30.504850, 49.958435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213614, 30.565395, 49.893078>,  <29.737696, 31.117472, 49.767120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213614, 30.565395, 49.893078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869038, 30.397175, 49.779194>,  <29.662292, 30.296244, 49.710865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869038, 30.397175, 49.779194>,  <30.213614, 30.565395, 49.893078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869038, 30.397175, 49.779194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465503, -0.429716, -0.773725,
		0.203046, -0.799051, 0.565942,
		-0.861440, -0.420549, -0.284708,
		29.610605, 30.271009, 49.693783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250175, 29.866547, 49.804134>,  <30.213614, 30.565395, 49.893078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250175, 29.866547, 49.804134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950722, 29.987902, 49.568336>,  <29.771049, 30.060715, 49.426857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950722, 29.987902, 49.568336>,  <30.250175, 29.866547, 49.804134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950722, 29.987902, 49.568336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516291, -0.291019, -0.805451,
		-0.415918, -0.907338, 0.061231,
		-0.748636, 0.303389, -0.589491,
		29.726131, 30.078918, 49.391491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044275, 29.306438, 49.348061>,  <30.250175, 29.866547, 49.804134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044275, 29.306438, 49.348061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985455, 29.659296, 49.169086>,  <29.950161, 29.871010, 49.061703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985455, 29.659296, 49.169086>,  <30.044275, 29.306438, 49.348061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985455, 29.659296, 49.169086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560473, -0.298415, -0.772540,
		-0.815012, -0.364381, -0.450534,
		-0.147053, 0.882142, -0.447438,
		29.941339, 29.923939, 49.034855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106771, 29.150595, 48.700253>,  <30.044275, 29.306438, 49.348061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106771, 29.150595, 48.700253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112555, 29.549692, 48.674034>,  <30.116024, 29.789150, 48.658302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112555, 29.549692, 48.674034>,  <30.106771, 29.150595, 48.700253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112555, 29.549692, 48.674034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265732, -0.067027, -0.961714,
		-0.963939, -0.003513, -0.266102,
		0.014458, 0.997745, -0.065543,
		30.116892, 29.849016, 48.654369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681719, 29.292280, 48.101833>,  <30.106771, 29.150595, 48.700253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681719, 29.292280, 48.101833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937210, 29.594839, 48.158249>,  <30.090504, 29.776375, 48.192097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937210, 29.594839, 48.158249>,  <29.681719, 29.292280, 48.101833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937210, 29.594839, 48.158249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175277, 0.035443, -0.983881,
		-0.749204, 0.653151, -0.109941,
		0.638726, 0.756398, 0.141036,
		30.128828, 29.821758, 48.200562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625807, 29.712156, 47.538006>,  <29.681719, 29.292280, 48.101833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625807, 29.712156, 47.538006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986021, 29.825481, 47.669926>,  <30.202148, 29.893476, 47.749077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986021, 29.825481, 47.669926>,  <29.625807, 29.712156, 47.538006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986021, 29.825481, 47.669926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286298, 0.184477, -0.940214,
		-0.327217, 0.941117, 0.085016,
		0.900535, 0.283314, 0.329804,
		30.256182, 29.910475, 47.768867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834379, 30.449823, 47.344193>,  <29.625807, 29.712156, 47.538006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834379, 30.449823, 47.344193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167124, 30.239639, 47.415630>,  <30.366770, 30.113529, 47.458492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167124, 30.239639, 47.415630>,  <29.834379, 30.449823, 47.344193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167124, 30.239639, 47.415630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389197, 0.322920, -0.862698,
		0.395641, 0.787155, 0.473133,
		0.831862, -0.525461, 0.178598,
		30.416683, 30.082001, 47.469212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260138, 30.747446, 46.851986>,  <29.834379, 30.449823, 47.344193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260138, 30.747446, 46.851986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517570, 30.476240, 46.994030>,  <30.672029, 30.313517, 47.079254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517570, 30.476240, 46.994030>,  <30.260138, 30.747446, 46.851986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517570, 30.476240, 46.994030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577404, 0.125548, -0.806748,
		0.502404, 0.724248, 0.472288,
		0.643580, -0.678014, 0.355108,
		30.710644, 30.272837, 47.100563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849363, 31.048422, 46.837200>,  <30.260138, 30.747446, 46.851986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849363, 31.048422, 46.837200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905993, 30.652521, 46.829754>,  <30.939970, 30.414980, 46.825287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905993, 30.652521, 46.829754>,  <30.849363, 31.048422, 46.837200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905993, 30.652521, 46.829754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454050, 0.081634, -0.887228,
		0.879656, 0.117157, 0.460954,
		0.141575, -0.989753, -0.018615,
		30.948465, 30.355595, 46.824169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510166, 30.976278, 46.720947>,  <30.849363, 31.048422, 46.837200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510166, 30.976278, 46.720947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350176, 30.629080, 46.603233>,  <31.254181, 30.420761, 46.532604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350176, 30.629080, 46.603233>,  <31.510166, 30.976278, 46.720947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350176, 30.629080, 46.603233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496349, 0.064784, -0.865702,
		0.770491, -0.492327, 0.404917,
		-0.399976, -0.867996, -0.294281,
		31.230183, 30.368681, 46.514950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012508, 30.728882, 46.249176>,  <31.510166, 30.976278, 46.720947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012508, 30.728882, 46.249176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691420, 30.505934, 46.164352>,  <31.498766, 30.372166, 46.113461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691420, 30.505934, 46.164352>,  <32.012508, 30.728882, 46.249176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691420, 30.505934, 46.164352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277285, -0.034036, -0.960185,
		0.527961, -0.829566, 0.181873,
		-0.802726, -0.557371, -0.212056,
		31.450602, 30.338722, 46.100735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257641, 30.229568, 45.865963>,  <32.012508, 30.728882, 46.249176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257641, 30.229568, 45.865963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865664, 30.224632, 45.786411>,  <31.630476, 30.221670, 45.738678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865664, 30.224632, 45.786411>,  <32.257641, 30.229568, 45.865963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865664, 30.224632, 45.786411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194937, 0.147542, -0.969655,
		0.041309, -0.988979, -0.142178,
		-0.979946, -0.012339, -0.198883,
		31.571680, 30.220930, 45.726746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184044, 29.791180, 45.360096>,  <32.257641, 30.229568, 45.865963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184044, 29.791180, 45.360096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867592, 30.031166, 45.312515>,  <31.677719, 30.175158, 45.283966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867592, 30.031166, 45.312515>,  <32.184044, 29.791180, 45.360096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867592, 30.031166, 45.312515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295816, 0.205105, -0.932965,
		-0.535351, -0.773287, -0.339745,
		-0.791133, 0.599966, -0.118948,
		31.630251, 30.211157, 45.276833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722267, 29.544931, 44.846920>,  <32.184044, 29.791180, 45.360096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722267, 29.544931, 44.846920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619072, 29.930725, 44.869579>,  <31.557154, 30.162201, 44.883175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619072, 29.930725, 44.869579>,  <31.722267, 29.544931, 44.846920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619072, 29.930725, 44.869579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038122, 0.048427, -0.998099,
		-0.965395, -0.259659, 0.024275,
		-0.257990, 0.964485, 0.056650,
		31.541676, 30.220070, 44.886574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261368, 29.636168, 44.319122>,  <31.722267, 29.544931, 44.846920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261368, 29.636168, 44.319122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388758, 30.005699, 44.404087>,  <31.465191, 30.227417, 44.455067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388758, 30.005699, 44.404087>,  <31.261368, 29.636168, 44.319122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388758, 30.005699, 44.404087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193953, 0.155832, -0.968555,
		-0.927878, 0.349656, -0.129551,
		0.318473, 0.923828, 0.212410,
		31.484299, 30.282848, 44.467812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131039, 29.966047, 43.679535>,  <31.261368, 29.636168, 44.319122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131039, 29.966047, 43.679535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396729, 30.190166, 43.877472>,  <31.556143, 30.324638, 43.996235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396729, 30.190166, 43.877472>,  <31.131039, 29.966047, 43.679535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396729, 30.190166, 43.877472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370128, 0.328626, -0.868913,
		-0.649469, 0.760310, 0.010899,
		0.664225, 0.560299, 0.494844,
		31.595997, 30.358255, 44.025925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982178, 30.600721, 43.439358>,  <31.131039, 29.966047, 43.679535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982178, 30.600721, 43.439358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357960, 30.595835, 43.576340>,  <31.583429, 30.592903, 43.658531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357960, 30.595835, 43.576340>,  <30.982178, 30.600721, 43.439358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357960, 30.595835, 43.576340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282536, 0.593126, -0.753906,
		-0.193910, 0.805017, 0.560667,
		0.939453, -0.012218, 0.342459,
		31.639795, 30.592169, 43.679077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127907, 31.292522, 43.598915>,  <30.982178, 30.600721, 43.439358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127907, 31.292522, 43.598915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481590, 31.117907, 43.532452>,  <31.693800, 31.013138, 43.492573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481590, 31.117907, 43.532452>,  <31.127907, 31.292522, 43.598915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481590, 31.117907, 43.532452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177654, 0.643296, -0.744721,
		0.431987, 0.628971, 0.646361,
		0.884209, -0.436538, -0.166157,
		31.746853, 30.986944, 43.482605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590519, 31.816298, 43.671135>,  <31.127907, 31.292522, 43.598915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590519, 31.816298, 43.671135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782578, 31.529364, 43.469189>,  <31.897812, 31.357203, 43.348022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782578, 31.529364, 43.469189>,  <31.590519, 31.816298, 43.671135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782578, 31.529364, 43.469189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345445, 0.683669, -0.642857,
		0.806306, 0.134261, 0.576060,
		0.480145, -0.717336, -0.504867,
		31.926620, 31.314163, 43.317730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321098, 32.057327, 43.634865>,  <31.590519, 31.816298, 43.671135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321098, 32.057327, 43.634865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269524, 31.786589, 43.344967>,  <32.238579, 31.624146, 43.171028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269524, 31.786589, 43.344967>,  <32.321098, 32.057327, 43.634865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269524, 31.786589, 43.344967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555820, 0.555929, -0.618067,
		0.821243, -0.482521, 0.304523,
		-0.128937, -0.676843, -0.724747,
		32.230843, 31.583536, 43.127544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931633, 32.120029, 43.223347>,  <32.321098, 32.057327, 43.634865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931633, 32.120029, 43.223347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679161, 31.924936, 42.982109>,  <32.527679, 31.807880, 42.837364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679161, 31.924936, 42.982109>,  <32.931633, 32.120029, 43.223347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679161, 31.924936, 42.982109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300415, 0.563138, -0.769823,
		0.715096, -0.667077, -0.208918,
		-0.631180, -0.487735, -0.603097,
		32.489807, 31.778616, 42.801182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306767, 32.009865, 42.584976>,  <32.931633, 32.120029, 43.223347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306767, 32.009865, 42.584976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925190, 31.946484, 42.483078>,  <32.696243, 31.908455, 42.421940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925190, 31.946484, 42.483078>,  <33.306767, 32.009865, 42.584976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925190, 31.946484, 42.483078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216263, 0.225300, -0.949984,
		0.207914, -0.961320, -0.180657,
		-0.953940, -0.158445, -0.254741,
		32.639008, 31.898947, 42.406654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372902, 31.563499, 41.967907>,  <33.306767, 32.009865, 42.584976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372902, 31.563499, 41.967907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988411, 31.665400, 41.925674>,  <32.757717, 31.726540, 41.900333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988411, 31.665400, 41.925674>,  <33.372902, 31.563499, 41.967907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988411, 31.665400, 41.925674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131540, 0.087055, -0.987481,
		-0.242371, -0.963080, -0.117189,
		-0.961225, 0.254752, -0.105584,
		32.700043, 31.741825, 41.894001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027740, 31.153053, 41.437653>,  <33.372902, 31.563499, 41.967907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027740, 31.153053, 41.437653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800491, 31.480207, 41.474106>,  <32.664143, 31.676500, 41.495979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800491, 31.480207, 41.474106>,  <33.027740, 31.153053, 41.437653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800491, 31.480207, 41.474106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065233, 0.065633, -0.995709,
		-0.820356, -0.571627, 0.016066,
		-0.568120, 0.817885, 0.091132,
		32.630054, 31.725573, 41.501446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381489, 31.041355, 41.013313>,  <33.027740, 31.153053, 41.437653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381489, 31.041355, 41.013313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444637, 31.433586, 41.059868>,  <32.482525, 31.668924, 41.087799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444637, 31.433586, 41.059868>,  <32.381489, 31.041355, 41.013313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444637, 31.433586, 41.059868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188615, 0.145640, -0.971192,
		-0.969279, 0.131369, 0.207944,
		0.157870, 0.980577, 0.116388,
		32.491997, 31.727758, 41.094784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965822, 31.402693, 40.496620>,  <32.381489, 31.041355, 41.013313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965822, 31.402693, 40.496620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224934, 31.688942, 40.601135>,  <32.380402, 31.860691, 40.663845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224934, 31.688942, 40.601135>,  <31.965822, 31.402693, 40.496620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224934, 31.688942, 40.601135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097419, 0.417966, -0.903224,
		-0.755576, 0.559633, 0.340463,
		0.647776, 0.715622, 0.261286,
		32.419266, 31.903629, 40.679520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568905, 32.030334, 40.335804>,  <31.965822, 31.402693, 40.496620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568905, 32.030334, 40.335804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957788, 32.123955, 40.338097>,  <32.191116, 32.180126, 40.339474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957788, 32.123955, 40.338097>,  <31.568905, 32.030334, 40.335804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957788, 32.123955, 40.338097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142318, 0.610237, -0.779331,
		-0.185902, 0.756855, 0.626587,
		0.972207, 0.234053, 0.005730,
		32.249451, 32.194172, 40.339817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668316, 32.757591, 40.145653>,  <31.568905, 32.030334, 40.335804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668316, 32.757591, 40.145653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031738, 32.615520, 40.057674>,  <32.249790, 32.530277, 40.004887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031738, 32.615520, 40.057674>,  <31.668316, 32.757591, 40.145653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031738, 32.615520, 40.057674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050619, 0.429011, -0.901880,
		0.414684, 0.830543, 0.371802,
		0.908557, -0.355175, -0.219945,
		32.304306, 32.508968, 39.991692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142494, 33.305847, 39.831600>,  <31.668316, 32.757591, 40.145653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142494, 33.305847, 39.831600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326466, 32.968628, 39.720081>,  <32.436848, 32.766296, 39.653168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326466, 32.968628, 39.720081>,  <32.142494, 33.305847, 39.831600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326466, 32.968628, 39.720081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043398, 0.334946, -0.941238,
		0.886896, 0.420801, 0.190637,
		0.459927, -0.843053, -0.278800,
		32.464443, 32.715714, 39.636440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681717, 33.618500, 39.459621>,  <32.142494, 33.305847, 39.831600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681717, 33.618500, 39.459621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693584, 33.241966, 39.325153>,  <32.700706, 33.016045, 39.244473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693584, 33.241966, 39.325153>,  <32.681717, 33.618500, 39.459621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693584, 33.241966, 39.325153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247325, 0.332776, -0.909995,
		0.968478, -0.056142, 0.242689,
		0.029672, -0.941333, -0.336172,
		32.702488, 32.959568, 39.224300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222492, 33.640789, 38.961906>,  <32.681717, 33.618500, 39.459621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222492, 33.640789, 38.961906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056316, 33.286869, 38.877495>,  <32.956612, 33.074516, 38.826847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056316, 33.286869, 38.877495>,  <33.222492, 33.640789, 38.961906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056316, 33.286869, 38.877495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191767, 0.141590, -0.971173,
		0.889178, -0.443930, 0.110855,
		-0.415437, -0.884804, -0.211030,
		32.931686, 33.021427, 38.814186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726669, 33.159023, 38.550224>,  <33.222492, 33.640789, 38.961906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726669, 33.159023, 38.550224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340172, 33.101994, 38.464386>,  <33.108273, 33.067776, 38.412884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340172, 33.101994, 38.464386>,  <33.726669, 33.159023, 38.550224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340172, 33.101994, 38.464386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171609, 0.265129, -0.948819,
		0.192174, -0.953614, -0.231712,
		-0.966240, -0.142574, -0.214599,
		33.050301, 33.059219, 38.400005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737572, 32.913567, 37.896824>,  <33.726669, 33.159023, 38.550224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737572, 32.913567, 37.896824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356850, 33.033924, 37.920570>,  <33.128414, 33.106136, 37.934818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356850, 33.033924, 37.920570>,  <33.737572, 32.913567, 37.896824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356850, 33.033924, 37.920570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063062, 0.381446, -0.922237,
		-0.300138, -0.874050, -0.382039,
		-0.951809, 0.300891, 0.059368,
		33.071308, 33.124191, 37.938381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446419, 32.678001, 37.316124>,  <33.737572, 32.913567, 37.896824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446419, 32.678001, 37.316124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197105, 32.969486, 37.429607>,  <33.047516, 33.144379, 37.497696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197105, 32.969486, 37.429607>,  <33.446419, 32.678001, 37.316124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197105, 32.969486, 37.429607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034064, 0.337154, -0.940833,
		-0.781253, -0.596071, -0.185320,
		-0.623285, 0.728716, 0.283707,
		33.010120, 33.188103, 37.514721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981136, 32.753796, 36.812561>,  <33.446419, 32.678001, 37.316124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981136, 32.753796, 36.812561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951382, 33.101284, 37.008434>,  <32.933529, 33.309776, 37.125957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951382, 33.101284, 37.008434>,  <32.981136, 32.753796, 36.812561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951382, 33.101284, 37.008434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199550, 0.494077, -0.846208,
		-0.977060, 0.034767, -0.210107,
		-0.074389, 0.868722, 0.489681,
		32.929066, 33.361900, 37.155338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690838, 33.244843, 36.339859>,  <32.981136, 32.753796, 36.812561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690838, 33.244843, 36.339859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826328, 33.506187, 36.610676>,  <32.907623, 33.662994, 36.773167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826328, 33.506187, 36.610676>,  <32.690838, 33.244843, 36.339859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826328, 33.506187, 36.610676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247661, 0.632291, -0.734079,
		-0.907706, 0.416328, 0.052361,
		0.338725, 0.653360, 0.677042,
		32.927944, 33.702194, 36.813789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197704, 33.902599, 36.195824>,  <32.690838, 33.244843, 36.339859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197704, 33.902599, 36.195824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527653, 34.020325, 36.388889>,  <32.725620, 34.090961, 36.504730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527653, 34.020325, 36.388889>,  <32.197704, 33.902599, 36.195824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527653, 34.020325, 36.388889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070301, 0.793759, -0.604156,
		-0.560931, 0.532284, 0.634059,
		0.824872, 0.294315, 0.482664,
		32.775116, 34.108620, 36.533688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101593, 34.628586, 36.300602>,  <32.197704, 33.902599, 36.195824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101593, 34.628586, 36.300602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492489, 34.551022, 36.334999>,  <32.727028, 34.504482, 36.355637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492489, 34.551022, 36.334999>,  <32.101593, 34.628586, 36.300602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492489, 34.551022, 36.334999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211553, 0.861057, -0.462414,
		0.015620, 0.470083, 0.882484,
		0.977242, -0.193915, 0.085997,
		32.785660, 34.492847, 36.360798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416306, 35.271694, 36.558064>,  <32.101593, 34.628586, 36.300602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416306, 35.271694, 36.558064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704144, 35.056480, 36.382473>,  <32.876846, 34.927353, 36.277119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704144, 35.056480, 36.382473>,  <32.416306, 35.271694, 36.558064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704144, 35.056480, 36.382473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274855, 0.801235, -0.531486,
		0.637686, 0.261796, 0.724444,
		0.719591, -0.538038, -0.438980,
		32.920021, 34.895069, 36.250778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037792, 35.637272, 36.647861>,  <32.416306, 35.271694, 36.558064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037792, 35.637272, 36.647861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084160, 35.398529, 36.330288>,  <33.111980, 35.255283, 36.139744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084160, 35.398529, 36.330288>,  <33.037792, 35.637272, 36.647861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084160, 35.398529, 36.330288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269586, 0.788220, -0.553202,
		0.955974, -0.149905, 0.252275,
		0.115921, -0.596856, -0.793930,
		33.118935, 35.219471, 36.092110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549236, 36.061745, 36.167519>,  <33.037792, 35.637272, 36.647861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549236, 36.061745, 36.167519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433231, 35.752438, 35.941971>,  <33.363628, 35.566853, 35.806641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433231, 35.752438, 35.941971>,  <33.549236, 36.061745, 36.167519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433231, 35.752438, 35.941971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438359, 0.416415, -0.796517,
		0.850726, -0.478175, 0.218204,
		-0.290012, -0.773270, -0.563868,
		33.346230, 35.520458, 35.772812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100708, 35.770618, 35.988663>,  <33.549236, 36.061745, 36.167519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100708, 35.770618, 35.988663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810177, 35.690498, 35.725658>,  <33.635857, 35.642426, 35.567856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810177, 35.690498, 35.725658>,  <34.100708, 35.770618, 35.988663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810177, 35.690498, 35.725658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507759, 0.488393, -0.709685,
		0.463271, -0.849325, -0.253034,
		-0.726334, -0.200296, -0.657511,
		33.592278, 35.630409, 35.528404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449619, 35.530296, 35.375385>,  <34.100708, 35.770618, 35.988663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449619, 35.530296, 35.375385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088188, 35.640514, 35.244160>,  <33.871330, 35.706646, 35.165424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088188, 35.640514, 35.244160>,  <34.449619, 35.530296, 35.375385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088188, 35.640514, 35.244160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427154, 0.520292, -0.739483,
		-0.033074, -0.808312, -0.587824,
		-0.903574, 0.275549, -0.328066,
		33.817116, 35.723179, 35.145741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776089, 34.820004, 35.325001>,  <34.449619, 35.530296, 35.375385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776089, 34.820004, 35.325001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164024, 34.727753, 35.293449>,  <35.396786, 34.672401, 35.274517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164024, 34.727753, 35.293449>,  <34.776089, 34.820004, 35.325001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164024, 34.727753, 35.293449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152807, -0.827425, 0.540387,
		-0.189896, -0.512035, -0.837711,
		0.969840, -0.230625, -0.078882,
		35.454975, 34.658566, 35.269783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758511, 34.138863, 35.151817>,  <34.776089, 34.820004, 35.325001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758511, 34.138863, 35.151817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127708, 34.198483, 35.293720>,  <35.349228, 34.234257, 35.378864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127708, 34.198483, 35.293720>,  <34.758511, 34.138863, 35.151817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127708, 34.198483, 35.293720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006324, -0.915931, 0.401285,
		0.384750, -0.372629, -0.844461,
		0.922999, 0.149054, 0.354761,
		35.404610, 34.243198, 35.400150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156971, 33.613197, 34.969551>,  <34.758511, 34.138863, 35.151817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156971, 33.613197, 34.969551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299213, 33.757748, 35.314331>,  <35.384560, 33.844479, 35.521198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299213, 33.757748, 35.314331>,  <35.156971, 33.613197, 34.969551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299213, 33.757748, 35.314331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057613, -0.911998, 0.406128,
		0.932859, -0.194081, -0.303492,
		0.355606, 0.361375, 0.861947,
		35.405895, 33.866161, 35.572914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529194, 33.057922, 35.086624>,  <35.156971, 33.613197, 34.969551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529194, 33.057922, 35.086624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533573, 33.240746, 35.442371>,  <35.536201, 33.350441, 35.655819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533573, 33.240746, 35.442371>,  <35.529194, 33.057922, 35.086624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533573, 33.240746, 35.442371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030748, -0.888849, 0.457167,
		0.999467, -0.032351, 0.004322,
		0.010948, 0.457057, 0.889370,
		35.536858, 33.377861, 35.709183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903465, 32.674541, 35.491547>,  <35.529194, 33.057922, 35.086624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903465, 32.674541, 35.491547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724438, 32.875191, 35.787670>,  <35.617020, 32.995579, 35.965343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724438, 32.875191, 35.787670>,  <35.903465, 32.674541, 35.491547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724438, 32.875191, 35.787670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129360, -0.782831, 0.608640,
		0.884841, 0.368177, 0.285485,
		-0.447573, 0.501619, 0.740308,
		35.590164, 33.025677, 36.009762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301575, 32.543537, 36.086266>,  <35.903465, 32.674541, 35.491547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301575, 32.543537, 36.086266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960743, 32.657776, 36.261715>,  <35.756245, 32.726318, 36.366985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960743, 32.657776, 36.261715>,  <36.301575, 32.543537, 36.086266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960743, 32.657776, 36.261715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171795, -0.638983, 0.749792,
		0.494414, 0.714236, 0.495400,
		-0.852081, 0.285600, 0.438624,
		35.705120, 32.743454, 36.393303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401592, 32.699757, 36.839493>,  <36.301575, 32.543537, 36.086266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401592, 32.699757, 36.839493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003036, 32.665798, 36.838753>,  <35.763905, 32.645424, 36.838310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003036, 32.665798, 36.838753>,  <36.401592, 32.699757, 36.839493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003036, 32.665798, 36.838753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033263, -0.410219, 0.911380,
		-0.078132, 0.908027, 0.411561,
		-0.996388, -0.084898, -0.001847,
		35.704121, 32.640327, 36.838200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143364, 33.140614, 37.446781>,  <36.401592, 32.699757, 36.839493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143364, 33.140614, 37.446781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861240, 32.875721, 37.345596>,  <35.691967, 32.716785, 37.284885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861240, 32.875721, 37.345596>,  <36.143364, 33.140614, 37.446781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861240, 32.875721, 37.345596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023801, -0.334510, 0.942091,
		-0.708503, 0.670484, 0.220170,
		-0.705307, -0.662234, -0.252960,
		35.649647, 32.677052, 37.269707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580387, 33.233109, 37.951771>,  <36.143364, 33.140614, 37.446781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580387, 33.233109, 37.951771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517673, 32.872669, 37.790062>,  <35.480045, 32.656406, 37.693035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517673, 32.872669, 37.790062>,  <35.580387, 33.233109, 37.951771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517673, 32.872669, 37.790062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334938, -0.336567, 0.880079,
		-0.929104, 0.273392, -0.249043,
		-0.156787, -0.901099, -0.404275,
		35.470638, 32.602341, 37.668781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036194, 32.985912, 38.286095>,  <35.580387, 33.233109, 37.951771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036194, 32.985912, 38.286095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173840, 32.637054, 38.146980>,  <35.256428, 32.427742, 38.063511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173840, 32.637054, 38.146980>,  <35.036194, 32.985912, 38.286095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173840, 32.637054, 38.146980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188877, -0.427134, 0.884241,
		-0.919734, -0.238593, -0.311711,
		0.344116, -0.872141, -0.347785,
		35.277073, 32.375412, 38.042645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564411, 32.416409, 38.370438>,  <35.036194, 32.985912, 38.286095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564411, 32.416409, 38.370438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905132, 32.212563, 38.321903>,  <35.109566, 32.090256, 38.292782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905132, 32.212563, 38.321903>,  <34.564411, 32.416409, 38.370438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905132, 32.212563, 38.321903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110708, -0.401506, 0.909141,
		-0.512033, -0.760975, -0.398422,
		0.851802, -0.509618, -0.121338,
		35.160675, 32.059677, 38.285503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484455, 31.693964, 38.590500>,  <34.564411, 32.416409, 38.370438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484455, 31.693964, 38.590500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882950, 31.723238, 38.609035>,  <35.122047, 31.740803, 38.620155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882950, 31.723238, 38.609035>,  <34.484455, 31.693964, 38.590500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882950, 31.723238, 38.609035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004186, -0.493629, 0.869662,
		0.086521, -0.866587, -0.491467,
		0.996241, 0.073187, 0.046337,
		35.181824, 31.745193, 38.622936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756458, 31.106316, 38.638256>,  <34.484455, 31.693964, 38.590500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756458, 31.106316, 38.638256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029293, 31.356676, 38.789520>,  <35.192993, 31.506891, 38.880280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029293, 31.356676, 38.789520>,  <34.756458, 31.106316, 38.638256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029293, 31.356676, 38.789520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027943, -0.539055, 0.841807,
		0.730734, -0.563622, -0.385174,
		0.682090, 0.625900, 0.378156,
		35.233921, 31.544445, 38.902966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309429, 30.656649, 38.896732>,  <34.756458, 31.106316, 38.638256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309429, 30.656649, 38.896732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390316, 31.006884, 39.072208>,  <35.438847, 31.217026, 39.177494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390316, 31.006884, 39.072208>,  <35.309429, 30.656649, 38.896732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390316, 31.006884, 39.072208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095113, -0.463389, 0.881036,
		0.974712, -0.136432, -0.176984,
		0.202214, 0.875589, 0.438694,
		35.450981, 31.269560, 39.203815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922119, 30.564297, 39.421864>,  <35.309429, 30.656649, 38.896732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922119, 30.564297, 39.421864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710979, 30.888657, 39.522911>,  <35.584297, 31.083273, 39.583538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710979, 30.888657, 39.522911>,  <35.922119, 30.564297, 39.421864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710979, 30.888657, 39.522911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007016, -0.293258, 0.956008,
		0.849309, 0.506401, 0.149107,
		-0.527850, 0.810900, 0.252620,
		35.552624, 31.131926, 39.598698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194588, 30.889496, 39.921558>,  <35.922119, 30.564297, 39.421864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194588, 30.889496, 39.921558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825520, 31.040377, 39.953564>,  <35.604080, 31.130905, 39.972767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825520, 31.040377, 39.953564>,  <36.194588, 30.889496, 39.921558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825520, 31.040377, 39.953564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024282, -0.150264, 0.988348,
		0.384832, 0.913859, 0.129485,
		-0.922667, 0.377203, 0.080017,
		35.548717, 31.153538, 39.977570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143532, 31.316862, 40.472794>,  <36.194588, 30.889496, 39.921558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143532, 31.316862, 40.472794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757378, 31.226622, 40.420433>,  <35.525684, 31.172478, 40.389015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757378, 31.226622, 40.420433>,  <36.143532, 31.316862, 40.472794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757378, 31.226622, 40.420433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127503, -0.029641, 0.991395,
		-0.227542, 0.973768, -0.000150,
		-0.965385, -0.225603, -0.130903,
		35.467762, 31.158941, 40.381161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836349, 31.622364, 41.029007>,  <36.143532, 31.316862, 40.472794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836349, 31.622364, 41.029007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559399, 31.371796, 40.885780>,  <35.393227, 31.221455, 40.799843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559399, 31.371796, 40.885780>,  <35.836349, 31.622364, 41.029007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559399, 31.371796, 40.885780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244567, -0.263131, 0.933247,
		-0.678824, 0.733729, 0.028984,
		-0.692377, -0.626421, -0.358065,
		35.351685, 31.183868, 40.778362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312420, 31.664520, 41.498779>,  <35.836349, 31.622364, 41.029007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312420, 31.664520, 41.498779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257618, 31.312891, 41.316151>,  <35.224735, 31.101913, 41.206573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257618, 31.312891, 41.316151>,  <35.312420, 31.664520, 41.498779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257618, 31.312891, 41.316151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254815, -0.414129, 0.873823,
		-0.957235, 0.236059, -0.167264,
		-0.137005, -0.879075, -0.456570,
		35.216518, 31.049168, 41.179180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660439, 31.441555, 41.727501>,  <35.312420, 31.664520, 41.498779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660439, 31.441555, 41.727501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840492, 31.107706, 41.600517>,  <34.948524, 30.907396, 41.524326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840492, 31.107706, 41.600517>,  <34.660439, 31.441555, 41.727501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840492, 31.107706, 41.600517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311341, -0.479900, 0.820221,
		-0.836927, -0.270370, -0.475872,
		0.450134, -0.834623, -0.317464,
		34.975533, 30.857319, 41.505280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131763, 30.931108, 41.867188>,  <34.660439, 31.441555, 41.727501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131763, 30.931108, 41.867188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489056, 30.757679, 41.819614>,  <34.703430, 30.653622, 41.791073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489056, 30.757679, 41.819614>,  <34.131763, 30.931108, 41.867188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489056, 30.757679, 41.819614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116173, -0.478130, 0.870572,
		-0.434318, -0.763811, -0.477453,
		0.893237, -0.433572, -0.118926,
		34.757027, 30.627605, 41.783936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025101, 30.261055, 42.035095>,  <34.131763, 30.931108, 41.867188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025101, 30.261055, 42.035095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394203, 30.343130, 42.165585>,  <34.615665, 30.392374, 42.243877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394203, 30.343130, 42.165585>,  <34.025101, 30.261055, 42.035095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394203, 30.343130, 42.165585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266070, -0.273202, 0.924428,
		0.278806, -0.939819, -0.197505,
		0.922754, 0.205186, 0.326228,
		34.671028, 30.404686, 42.263454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213734, 29.713358, 42.428547>,  <34.025101, 30.261055, 42.035095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213734, 29.713358, 42.428547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458401, 30.006538, 42.547638>,  <34.605202, 30.182447, 42.619091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458401, 30.006538, 42.547638>,  <34.213734, 29.713358, 42.428547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458401, 30.006538, 42.547638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034181, -0.351504, 0.935562,
		0.790375, -0.582431, -0.189951,
		0.611669, 0.732952, 0.297728,
		34.641903, 30.226423, 42.636955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421631, 29.463972, 43.030087>,  <34.213734, 29.713358, 42.428547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421631, 29.463972, 43.030087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500355, 29.854633, 43.064518>,  <34.547588, 30.089031, 43.085178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500355, 29.854633, 43.064518>,  <34.421631, 29.463972, 43.030087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500355, 29.854633, 43.064518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026269, -0.093021, 0.995318,
		0.980089, -0.193629, -0.043964,
		0.196812, 0.976655, 0.086082,
		34.559399, 30.147631, 43.090343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948254, 29.512434, 43.450691>,  <34.421631, 29.463972, 43.030087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948254, 29.512434, 43.450691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764347, 29.867575, 43.457989>,  <34.654003, 30.080660, 43.462368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764347, 29.867575, 43.457989>,  <34.948254, 29.512434, 43.450691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764347, 29.867575, 43.457989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025876, -0.007139, 0.999640,
		0.887663, 0.460073, -0.019692,
		-0.459767, 0.887852, 0.018241,
		34.626415, 30.133930, 43.463463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333973, 29.908905, 43.896828>,  <34.948254, 29.512434, 43.450691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333973, 29.908905, 43.896828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970493, 30.074526, 43.875523>,  <34.752407, 30.173899, 43.862740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970493, 30.074526, 43.875523>,  <35.333973, 29.908905, 43.896828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970493, 30.074526, 43.875523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053012, 0.012094, 0.998521,
		0.414081, 0.910174, 0.010960,
		-0.908695, 0.414050, -0.053258,
		34.697884, 30.198740, 43.859547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422630, 30.345451, 44.447659>,  <35.333973, 29.908905, 43.896828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422630, 30.345451, 44.447659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029655, 30.356768, 44.373882>,  <34.793869, 30.363558, 44.329617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029655, 30.356768, 44.373882>,  <35.422630, 30.345451, 44.447659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029655, 30.356768, 44.373882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182186, 0.068175, 0.980898,
		0.040323, 0.997272, -0.061823,
		-0.982437, 0.028289, -0.184438,
		34.734924, 30.365255, 44.318550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185669, 30.824745, 44.884895>,  <35.422630, 30.345451, 44.447659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185669, 30.824745, 44.884895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840359, 30.634726, 44.816681>,  <34.633171, 30.520714, 44.775753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840359, 30.634726, 44.816681>,  <35.185669, 30.824745, 44.884895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840359, 30.634726, 44.816681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218476, 0.047123, 0.974704,
		-0.454998, 0.878695, -0.144467,
		-0.863276, -0.475051, -0.170533,
		34.581375, 30.492210, 44.765522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588741, 31.219242, 45.044521>,  <35.185669, 30.824745, 44.884895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588741, 31.219242, 45.044521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451958, 30.844410, 45.072651>,  <34.369888, 30.619511, 45.089531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451958, 30.844410, 45.072651>,  <34.588741, 31.219242, 45.044521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451958, 30.844410, 45.072651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204618, 0.147293, 0.967696,
		-0.917167, 0.316523, -0.242112,
		-0.341960, -0.937079, 0.070326,
		34.349369, 30.563286, 45.093750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977596, 31.265699, 45.489433>,  <34.588741, 31.219242, 45.044521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977596, 31.265699, 45.489433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102058, 30.886480, 45.515926>,  <34.176735, 30.658949, 45.531822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102058, 30.886480, 45.515926>,  <33.977596, 31.265699, 45.489433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102058, 30.886480, 45.515926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146729, 0.020934, 0.988955,
		-0.938963, -0.317440, -0.132593,
		0.311158, -0.948047, 0.066234,
		34.195404, 30.602066, 45.535797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445717, 30.839211, 45.800125>,  <33.977596, 31.265699, 45.489433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445717, 30.839211, 45.800125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770653, 30.610462, 45.845848>,  <33.965614, 30.473213, 45.873283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770653, 30.610462, 45.845848>,  <33.445717, 30.839211, 45.800125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770653, 30.610462, 45.845848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280283, -0.210965, 0.936448,
		-0.511411, -0.792755, -0.331661,
		0.812343, -0.571869, 0.114306,
		34.014355, 30.438902, 45.880138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230396, 30.347012, 46.320591>,  <33.445717, 30.839211, 45.800125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230396, 30.347012, 46.320591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625751, 30.288025, 46.305950>,  <33.862965, 30.252632, 46.297165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625751, 30.288025, 46.305950>,  <33.230396, 30.347012, 46.320591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625751, 30.288025, 46.305950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044397, -0.510688, 0.858619,
		-0.145310, -0.847025, -0.511306,
		0.988389, -0.147466, -0.036603,
		33.922268, 30.243786, 46.294968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306885, 29.713196, 46.593227>,  <33.230396, 30.347012, 46.320591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306885, 29.713196, 46.593227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677410, 29.862946, 46.610111>,  <33.899727, 29.952795, 46.620243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677410, 29.862946, 46.610111>,  <33.306885, 29.713196, 46.593227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677410, 29.862946, 46.610111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090412, -0.329668, 0.939758,
		0.365739, -0.866696, -0.339225,
		0.926316, 0.374376, 0.042213,
		33.955303, 29.975258, 46.622776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826580, 29.160101, 46.822086>,  <33.306885, 29.713196, 46.593227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826580, 29.160101, 46.822086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932602, 29.536163, 46.907742>,  <33.996216, 29.761801, 46.959133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932602, 29.536163, 46.907742>,  <33.826580, 29.160101, 46.822086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932602, 29.536163, 46.907742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170595, -0.264301, 0.949233,
		0.949022, -0.215070, -0.230440,
		0.265057, 0.940154, 0.214137,
		34.012119, 29.818209, 46.971981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419289, 29.052666, 47.237114>,  <33.826580, 29.160101, 46.822086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419289, 29.052666, 47.237114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273922, 29.417406, 47.313496>,  <34.186703, 29.636250, 47.359325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273922, 29.417406, 47.313496>,  <34.419289, 29.052666, 47.237114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273922, 29.417406, 47.313496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292061, -0.083126, 0.952780,
		0.884665, 0.402022, -0.236107,
		-0.363412, 0.911849, 0.190954,
		34.164898, 29.690960, 47.370781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881630, 29.322454, 47.738426>,  <34.419289, 29.052666, 47.237114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881630, 29.322454, 47.738426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587063, 29.591095, 47.771027>,  <34.410324, 29.752279, 47.790588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587063, 29.591095, 47.771027>,  <34.881630, 29.322454, 47.738426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587063, 29.591095, 47.771027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212256, 0.114971, 0.970427,
		0.642372, 0.731936, -0.227218,
		-0.736414, 0.671604, 0.081503,
		34.366138, 29.792576, 47.795479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128162, 29.817606, 48.184280>,  <34.881630, 29.322454, 47.738426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128162, 29.817606, 48.184280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733124, 29.870274, 48.218502>,  <34.496101, 29.901875, 48.239037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733124, 29.870274, 48.218502>,  <35.128162, 29.817606, 48.184280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733124, 29.870274, 48.218502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113409, 0.221264, 0.968597,
		0.108605, 0.966284, -0.233452,
		-0.987595, 0.131670, 0.085555,
		34.436844, 29.909775, 48.244167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955814, 30.380816, 48.552883>,  <35.128162, 29.817606, 48.184280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955814, 30.380816, 48.552883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625000, 30.159712, 48.593807>,  <34.426510, 30.027050, 48.618362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625000, 30.159712, 48.593807>,  <34.955814, 30.380816, 48.552883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625000, 30.159712, 48.593807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002411, 0.178505, 0.983936,
		-0.562144, 0.813997, -0.146298,
		-0.827036, -0.552761, 0.102308,
		34.376888, 29.993883, 48.624500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626572, 30.302580, 48.679081>,  <34.955814, 30.380816, 48.552883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626572, 30.302580, 48.679081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931477, 30.545387, 48.768959>,  <36.114418, 30.691072, 48.822887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931477, 30.545387, 48.768959>,  <35.626572, 30.302580, 48.679081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931477, 30.545387, 48.768959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126945, 0.200199, -0.971496,
		-0.634700, 0.769057, 0.075545,
		0.762260, 0.607019, 0.224694,
		36.160156, 30.727493, 48.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561443, 30.937902, 48.194355>,  <35.626572, 30.302580, 48.679081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561443, 30.937902, 48.194355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936638, 30.955278, 48.331932>,  <36.161755, 30.965704, 48.414478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936638, 30.955278, 48.331932>,  <35.561443, 30.937902, 48.194355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936638, 30.955278, 48.331932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297084, 0.410589, -0.862066,
		-0.178665, 0.910785, 0.372222,
		0.937987, 0.043440, 0.343938,
		36.218033, 30.968309, 48.435112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732395, 31.520864, 47.927666>,  <35.561443, 30.937902, 48.194355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732395, 31.520864, 47.927666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074112, 31.337109, 48.024940>,  <36.279144, 31.226854, 48.083305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074112, 31.337109, 48.024940>,  <35.732395, 31.520864, 47.927666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074112, 31.337109, 48.024940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451652, 0.424482, -0.784746,
		0.257276, 0.780240, 0.570117,
		0.854295, -0.459391, 0.243188,
		36.330399, 31.199291, 48.097897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071152, 32.034870, 47.708302>,  <35.732395, 31.520864, 47.927666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071152, 32.034870, 47.708302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324802, 31.729824, 47.759369>,  <36.476994, 31.546797, 47.790009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324802, 31.729824, 47.759369>,  <36.071152, 32.034870, 47.708302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324802, 31.729824, 47.759369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426047, 0.206824, -0.880742,
		0.645261, 0.612899, 0.456063,
		0.634131, -0.762613, 0.127669,
		36.515041, 31.501040, 47.797668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738163, 32.371063, 47.687111>,  <36.071152, 32.034870, 47.708302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738163, 32.371063, 47.687111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760563, 31.982054, 47.596729>,  <36.774002, 31.748648, 47.542500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760563, 31.982054, 47.596729>,  <36.738163, 32.371063, 47.687111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760563, 31.982054, 47.596729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272242, 0.232608, -0.933690,
		0.960598, -0.009229, 0.277788,
		0.055998, -0.972527, -0.225955,
		36.777363, 31.690296, 47.528942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399162, 32.277325, 47.438004>,  <36.738163, 32.371063, 47.687111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399162, 32.277325, 47.438004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168613, 31.983723, 47.294319>,  <37.030285, 31.807562, 47.208107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168613, 31.983723, 47.294319>,  <37.399162, 32.277325, 47.438004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168613, 31.983723, 47.294319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339248, 0.184981, -0.922330,
		0.743441, -0.653468, 0.142391,
		-0.576373, -0.734004, -0.359211,
		36.995701, 31.763521, 47.186558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849987, 32.064064, 46.840515>,  <37.399162, 32.277325, 47.438004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849987, 32.064064, 46.840515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487255, 31.905357, 46.783615>,  <37.269615, 31.810135, 46.749474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487255, 31.905357, 46.783615>,  <37.849987, 32.064064, 46.840515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487255, 31.905357, 46.783615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154203, 0.001806, -0.988037,
		0.392274, -0.917919, 0.059544,
		-0.906831, -0.396764, -0.142255,
		37.215206, 31.786329, 46.740940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921165, 31.480257, 46.284775>,  <37.849987, 32.064064, 46.840515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921165, 31.480257, 46.284775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541805, 31.603632, 46.314163>,  <37.314190, 31.677658, 46.331795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541805, 31.603632, 46.314163>,  <37.921165, 31.480257, 46.284775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541805, 31.603632, 46.314163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054598, 0.069385, -0.996095,
		-0.312333, -0.948710, -0.048964,
		-0.948402, 0.308440, 0.073469,
		37.257286, 31.696163, 46.336205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556080, 31.039961, 45.844387>,  <37.921165, 31.480257, 46.284775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556080, 31.039961, 45.844387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351688, 31.381691, 45.882408>,  <37.229053, 31.586729, 45.905220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351688, 31.381691, 45.882408>,  <37.556080, 31.039961, 45.844387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351688, 31.381691, 45.882408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126812, 0.034444, -0.991329,
		-0.850189, -0.518599, 0.090738,
		-0.510977, 0.854324, 0.095049,
		37.198395, 31.637987, 45.910923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990334, 31.013922, 45.364925>,  <37.556080, 31.039961, 45.844387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990334, 31.013922, 45.364925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005451, 31.407791, 45.433025>,  <37.014523, 31.644114, 45.473885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005451, 31.407791, 45.433025>,  <36.990334, 31.013922, 45.364925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005451, 31.407791, 45.433025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161686, 0.174153, -0.971354,
		-0.986118, 0.009186, 0.165790,
		0.037796, 0.984676, 0.170250,
		37.016788, 31.703194, 45.484100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513996, 31.141151, 44.924770>,  <36.990334, 31.013922, 45.364925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513996, 31.141151, 44.924770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736778, 31.466373, 44.992580>,  <36.870449, 31.661507, 45.033268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736778, 31.466373, 44.992580>,  <36.513996, 31.141151, 44.924770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736778, 31.466373, 44.992580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032391, 0.225222, -0.973769,
		-0.829908, 0.536858, 0.151776,
		0.556959, 0.813055, 0.169524,
		36.903866, 31.710291, 45.043438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222000, 31.685755, 44.541332>,  <36.513996, 31.141151, 44.924770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222000, 31.685755, 44.541332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572712, 31.860664, 44.621380>,  <36.783138, 31.965611, 44.669411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572712, 31.860664, 44.621380>,  <36.222000, 31.685755, 44.541332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572712, 31.860664, 44.621380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044411, 0.487996, -0.871715,
		-0.478839, 0.755414, 0.447285,
		0.876779, 0.437275, 0.200123,
		36.835747, 31.991846, 44.681416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204700, 32.452888, 44.422882>,  <36.222000, 31.685755, 44.541332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204700, 32.452888, 44.422882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582279, 32.330151, 44.374191>,  <36.808826, 32.256508, 44.344978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582279, 32.330151, 44.374191>,  <36.204700, 32.452888, 44.422882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582279, 32.330151, 44.374191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119174, 0.660640, -0.741183,
		0.307848, 0.685128, 0.660174,
		0.943942, -0.306847, -0.121727,
		36.865463, 32.238098, 44.337673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606701, 33.081364, 44.351292>,  <36.204700, 32.452888, 44.422882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606701, 33.081364, 44.351292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820778, 32.787628, 44.184288>,  <36.949226, 32.611389, 44.084084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820778, 32.787628, 44.184288>,  <36.606701, 33.081364, 44.351292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820778, 32.787628, 44.184288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105095, 0.548300, -0.829652,
		0.838166, 0.400147, 0.370622,
		0.535195, -0.734336, -0.417513,
		36.981335, 32.567326, 44.059032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308208, 33.328831, 44.140446>,  <36.606701, 33.081364, 44.351292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308208, 33.328831, 44.140446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197269, 33.017406, 43.915264>,  <37.130707, 32.830551, 43.780155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197269, 33.017406, 43.915264>,  <37.308208, 33.328831, 44.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197269, 33.017406, 43.915264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013836, 0.582646, -0.812608,
		0.960671, -0.233161, -0.150821,
		-0.277343, -0.778563, -0.562957,
		37.114067, 32.783836, 43.746376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720413, 33.396042, 43.528725>,  <37.308208, 33.328831, 44.140446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720413, 33.396042, 43.528725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443909, 33.130680, 43.414139>,  <37.278008, 32.971466, 43.345387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443909, 33.130680, 43.414139>,  <37.720413, 33.396042, 43.528725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443909, 33.130680, 43.414139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043353, 0.357645, -0.932851,
		0.721306, -0.657260, -0.218465,
		-0.691258, -0.663400, -0.286466,
		37.236530, 32.931660, 43.328197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929562, 33.185268, 42.908245>,  <37.720413, 33.396042, 43.528725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929562, 33.185268, 42.908245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565758, 33.020226, 42.888027>,  <37.347477, 32.921200, 42.875896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565758, 33.020226, 42.888027>,  <37.929562, 33.185268, 42.908245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565758, 33.020226, 42.888027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042871, 0.214042, -0.975883,
		0.413476, -0.885404, -0.212361,
		-0.909505, -0.412609, -0.050544,
		37.292908, 32.896442, 42.872864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954826, 32.825165, 42.328022>,  <37.929562, 33.185268, 42.908245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954826, 32.825165, 42.328022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557934, 32.827511, 42.377724>,  <37.319798, 32.828918, 42.407543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557934, 32.827511, 42.377724>,  <37.954826, 32.825165, 42.328022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557934, 32.827511, 42.377724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124385, -0.036331, -0.991569,
		-0.001292, -0.999323, 0.036777,
		-0.992233, 0.005856, 0.124254,
		37.260265, 32.829269, 42.415001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690342, 32.451305, 41.720211>,  <37.954826, 32.825165, 42.328022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690342, 32.451305, 41.720211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380753, 32.652157, 41.874523>,  <37.195000, 32.772667, 41.967110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380753, 32.652157, 41.874523>,  <37.690342, 32.451305, 41.720211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380753, 32.652157, 41.874523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419005, 0.050653, -0.906570,
		-0.474758, -0.863307, 0.171191,
		-0.773977, 0.502131, 0.385778,
		37.148560, 32.802795, 41.990257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034714, 32.111652, 41.507767>,  <37.690342, 32.451305, 41.720211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034714, 32.111652, 41.507767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959389, 32.495605, 41.590870>,  <36.914192, 32.725979, 41.640732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959389, 32.495605, 41.590870>,  <37.034714, 32.111652, 41.507767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959389, 32.495605, 41.590870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349829, 0.132110, -0.927452,
		-0.917691, -0.247336, 0.310916,
		-0.188317, 0.959881, 0.207762,
		36.902893, 32.783569, 41.653198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386642, 32.144062, 41.254593>,  <37.034714, 32.111652, 41.507767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386642, 32.144062, 41.254593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537876, 32.514256, 41.263821>,  <36.628616, 32.736370, 41.269356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537876, 32.514256, 41.263821>,  <36.386642, 32.144062, 41.254593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537876, 32.514256, 41.263821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431502, 0.198214, -0.880067,
		-0.819061, 0.322783, 0.474290,
		0.378082, 0.925485, 0.023068,
		36.651302, 32.791901, 41.270741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939926, 32.489895, 40.742836>,  <36.386642, 32.144062, 41.254593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939926, 32.489895, 40.742836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254875, 32.724026, 40.820225>,  <36.443844, 32.864506, 40.866657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254875, 32.724026, 40.820225>,  <35.939926, 32.489895, 40.742836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254875, 32.724026, 40.820225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059999, 0.385104, -0.920921,
		-0.613549, 0.713501, 0.338341,
		0.787374, 0.585330, 0.193471,
		36.491089, 32.899624, 40.878265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752464, 33.134232, 40.389202>,  <35.939926, 32.489895, 40.742836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752464, 33.134232, 40.389202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146599, 33.126102, 40.456955>,  <36.383080, 33.121227, 40.497608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146599, 33.126102, 40.456955>,  <35.752464, 33.134232, 40.389202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146599, 33.126102, 40.456955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167762, 0.295643, -0.940453,
		-0.030968, 0.955083, 0.294717,
		0.985341, -0.020318, 0.169382,
		36.442200, 33.120007, 40.507771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040237, 33.782646, 40.257069>,  <35.752464, 33.134232, 40.389202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040237, 33.782646, 40.257069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335495, 33.517574, 40.206478>,  <36.512650, 33.358532, 40.176125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335495, 33.517574, 40.206478>,  <36.040237, 33.782646, 40.257069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335495, 33.517574, 40.206478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103096, 0.296070, -0.949586,
		0.666717, 0.687894, 0.286862,
		0.738146, -0.662679, -0.126476,
		36.556938, 33.318771, 40.168537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432388, 34.115322, 39.821903>,  <36.040237, 33.782646, 40.257069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432388, 34.115322, 39.821903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595928, 33.750286, 39.820385>,  <36.694050, 33.531265, 39.819473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595928, 33.750286, 39.820385>,  <36.432388, 34.115322, 39.821903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595928, 33.750286, 39.820385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523020, 0.237717, -0.818499,
		0.747859, 0.332659, 0.574496,
		0.408848, -0.912595, -0.003792,
		36.718582, 33.476509, 39.819248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042187, 34.170261, 39.714184>,  <36.432388, 34.115322, 39.821903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042187, 34.170261, 39.714184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984863, 33.793716, 39.592003>,  <36.950470, 33.567791, 39.518696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984863, 33.793716, 39.592003>,  <37.042187, 34.170261, 39.714184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984863, 33.793716, 39.592003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685817, 0.128054, -0.716420,
		0.713525, -0.312152, 0.627251,
		-0.143310, -0.941363, -0.305449,
		36.941872, 33.511307, 39.500370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815403, 33.914059, 39.467670>,  <37.042187, 34.170261, 39.714184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815403, 33.914059, 39.467670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540951, 33.676056, 39.300247>,  <37.376278, 33.533253, 39.199791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540951, 33.676056, 39.300247>,  <37.815403, 33.914059, 39.467670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540951, 33.676056, 39.300247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382680, 0.194116, -0.903258,
		0.618694, -0.779927, 0.094509,
		-0.686129, -0.595007, -0.418561,
		37.335114, 33.497555, 39.174679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142036, 33.488548, 38.967876>,  <37.815403, 33.914059, 39.467670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142036, 33.488548, 38.967876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763458, 33.465759, 38.840759>,  <37.536312, 33.452087, 38.764488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763458, 33.465759, 38.840759>,  <38.142036, 33.488548, 38.967876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763458, 33.465759, 38.840759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322091, -0.098559, -0.941565,
		0.022325, -0.993499, 0.111632,
		-0.946446, -0.056976, -0.317796,
		37.479523, 33.448666, 38.745419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175938, 32.962048, 38.446724>,  <38.142036, 33.488548, 38.967876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175938, 32.962048, 38.446724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855282, 33.190819, 38.377129>,  <37.662888, 33.328083, 38.335373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855282, 33.190819, 38.377129>,  <38.175938, 32.962048, 38.446724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855282, 33.190819, 38.377129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249468, 0.055561, -0.966788,
		-0.543269, -0.818418, -0.187218,
		-0.801639, 0.571930, -0.173985,
		37.614792, 33.362396, 38.324932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961399, 32.847542, 37.742580>,  <38.175938, 32.962048, 38.446724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961399, 32.847542, 37.742580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769360, 33.189800, 37.819908>,  <37.654137, 33.395157, 37.866306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769360, 33.189800, 37.819908>,  <37.961399, 32.847542, 37.742580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769360, 33.189800, 37.819908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272029, 0.354738, -0.894517,
		-0.833970, -0.376866, -0.403070,
		-0.480098, 0.855648, 0.193323,
		37.625332, 33.446495, 37.877907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568001, 33.038464, 37.111679>,  <37.961399, 32.847542, 37.742580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568001, 33.038464, 37.111679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599331, 33.381088, 37.315708>,  <37.618130, 33.586662, 37.438126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599331, 33.381088, 37.315708>,  <37.568001, 33.038464, 37.111679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599331, 33.381088, 37.315708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391021, 0.444251, -0.806067,
		-0.917043, 0.262581, -0.300138,
		0.078321, 0.856558, 0.510072,
		37.622826, 33.638054, 37.468731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422443, 33.519711, 36.633358>,  <37.568001, 33.038464, 37.111679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422443, 33.519711, 36.633358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598194, 33.753555, 36.906174>,  <37.703644, 33.893860, 37.069862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598194, 33.753555, 36.906174>,  <37.422443, 33.519711, 36.633358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598194, 33.753555, 36.906174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335298, 0.597650, -0.728279,
		-0.833380, 0.548677, 0.066576,
		0.439379, 0.584610, 0.682039,
		37.730007, 33.928940, 37.110786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164196, 34.208603, 36.619694>,  <37.422443, 33.519711, 36.633358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164196, 34.208603, 36.619694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524471, 34.230682, 36.792068>,  <37.740639, 34.243931, 36.895493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524471, 34.230682, 36.792068>,  <37.164196, 34.208603, 36.619694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524471, 34.230682, 36.792068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324279, 0.574695, -0.751378,
		-0.289137, 0.816504, 0.499721,
		0.900690, 0.055202, 0.430940,
		37.794678, 34.247242, 36.921352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310322, 34.849934, 36.654251>,  <37.164196, 34.208603, 36.619694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310322, 34.849934, 36.654251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679787, 34.699345, 36.682861>,  <37.901466, 34.608994, 36.700027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679787, 34.699345, 36.682861>,  <37.310322, 34.849934, 36.654251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679787, 34.699345, 36.682861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320713, 0.657296, -0.681986,
		0.209734, 0.652865, 0.727859,
		0.923664, -0.376469, 0.071525,
		37.956886, 34.586403, 36.704319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739433, 35.411564, 36.892231>,  <37.310322, 34.849934, 36.654251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739433, 35.411564, 36.892231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985863, 35.149086, 36.717937>,  <38.133720, 34.991600, 36.613361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985863, 35.149086, 36.717937>,  <37.739433, 35.411564, 36.892231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985863, 35.149086, 36.717937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438630, 0.745271, -0.502170,
		0.654261, 0.118247, 0.746967,
		0.616074, -0.656192, -0.435735,
		38.170685, 34.952229, 36.587215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214912, 35.775993, 36.633484>,  <37.739433, 35.411564, 36.892231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214912, 35.775993, 36.633484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316422, 35.430950, 36.458435>,  <38.377327, 35.223927, 36.353405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316422, 35.430950, 36.458435>,  <38.214912, 35.775993, 36.633484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316422, 35.430950, 36.458435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549404, 0.500912, -0.668762,
		0.796088, -0.070720, 0.601035,
		0.253771, -0.862604, -0.437624,
		38.392551, 35.172169, 36.327148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983818, 35.696926, 36.554157>,  <38.214912, 35.775993, 36.633484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983818, 35.696926, 36.554157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834740, 35.437382, 36.288803>,  <38.745293, 35.281654, 36.129589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834740, 35.437382, 36.288803>,  <38.983818, 35.696926, 36.554157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834740, 35.437382, 36.288803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287160, 0.599154, -0.747365,
		0.882406, -0.469035, -0.036973,
		-0.372692, -0.648862, -0.663384,
		38.722931, 35.242722, 36.089787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503490, 35.530037, 36.033451>,  <38.983818, 35.696926, 36.554157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503490, 35.530037, 36.033451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135582, 35.483490, 35.883530>,  <38.914837, 35.455563, 35.793579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135582, 35.483490, 35.883530>,  <39.503490, 35.530037, 36.033451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135582, 35.483490, 35.883530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226033, 0.623644, -0.748316,
		0.320822, -0.772999, -0.547308,
		-0.919773, -0.116367, -0.374802,
		38.859650, 35.448582, 35.771088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627811, 35.440395, 35.308517>,  <39.503490, 35.530037, 36.033451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627811, 35.440395, 35.308517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242245, 35.538414, 35.350105>,  <39.010902, 35.597225, 35.375057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242245, 35.538414, 35.350105>,  <39.627811, 35.440395, 35.308517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242245, 35.538414, 35.350105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084264, 0.651400, -0.754041,
		-0.252500, -0.718075, -0.648546,
		-0.963921, 0.245045, 0.103971,
		38.953068, 35.611927, 35.381298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276150, 35.291317, 34.670319>,  <39.627811, 35.440395, 35.308517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276150, 35.291317, 34.670319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040249, 35.556828, 34.854317>,  <38.898708, 35.716133, 34.964714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040249, 35.556828, 34.854317>,  <39.276150, 35.291317, 34.670319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040249, 35.556828, 34.854317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059215, 0.603600, -0.795086,
		-0.805413, -0.441662, -0.395278,
		-0.589749, 0.663779, 0.459994,
		38.863323, 35.755962, 34.992313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702831, 35.506622, 34.153202>,  <39.276150, 35.291317, 34.670319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702831, 35.506622, 34.153202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819805, 35.780701, 34.420033>,  <38.889992, 35.945148, 34.580132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819805, 35.780701, 34.420033>,  <38.702831, 35.506622, 34.153202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819805, 35.780701, 34.420033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118555, 0.666214, -0.736277,
		-0.948908, 0.294400, 0.113592,
		0.292436, 0.685192, 0.667078,
		38.907536, 35.986259, 34.620155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328537, 35.426971, 33.756508>,  <38.702831, 35.506622, 34.153202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328537, 35.426971, 33.756508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338806, 35.063644, 33.589516>,  <39.344967, 34.845646, 33.489319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338806, 35.063644, 33.589516>,  <39.328537, 35.426971, 33.756508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338806, 35.063644, 33.589516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652610, 0.331580, -0.681289,
		0.757259, -0.254962, 0.601293,
		0.025674, -0.908322, -0.417482,
		39.346508, 34.791149, 33.464272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047478, 35.155155, 33.737583>,  <39.328537, 35.426971, 33.756508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047478, 35.155155, 33.737583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813393, 35.019489, 33.442966>,  <39.672943, 34.938087, 33.266197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813393, 35.019489, 33.442966>,  <40.047478, 35.155155, 33.737583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813393, 35.019489, 33.442966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653172, 0.341082, -0.676040,
		0.480511, -0.876714, 0.021930,
		-0.585214, -0.339169, -0.736539,
		39.637829, 34.917740, 33.222004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478825, 34.835587, 33.267918>,  <40.047478, 35.155155, 33.737583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478825, 34.835587, 33.267918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160343, 34.970764, 33.067177>,  <39.969254, 35.051872, 32.946732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160343, 34.970764, 33.067177>,  <40.478825, 34.835587, 33.267918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160343, 34.970764, 33.067177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604968, 0.456285, -0.652547,
		0.008460, -0.823163, -0.567742,
		-0.796205, 0.337945, -0.501848,
		39.921482, 35.072147, 32.916622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446186, 35.493908, 33.091869>,  <40.478825, 34.835587, 33.267918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446186, 35.493908, 33.091869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452450, 35.872719, 33.220181>,  <40.456207, 36.100006, 33.297169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452450, 35.872719, 33.220181>,  <40.446186, 35.493908, 33.091869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452450, 35.872719, 33.220181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763268, 0.218561, -0.607991,
		-0.645892, -0.235325, 0.726254,
		0.015655, 0.947023, 0.320782,
		40.457146, 36.156826, 33.316414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083580, 35.559254, 32.607567>,  <40.446186, 35.493908, 33.091869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083580, 35.559254, 32.607567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333591, 35.353085, 32.842064>,  <41.483601, 35.229385, 32.982761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333591, 35.353085, 32.842064>,  <41.083580, 35.559254, 32.607567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333591, 35.353085, 32.842064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602357, -0.159207, -0.782189,
		0.496490, 0.842018, 0.210958,
		0.625031, -0.515421, 0.586240,
		41.521099, 35.198460, 33.017937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749027, 35.828407, 32.524067>,  <41.083580, 35.559254, 32.607567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749027, 35.828407, 32.524067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746002, 35.441589, 32.625862>,  <41.744186, 35.209499, 32.686939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746002, 35.441589, 32.625862>,  <41.749027, 35.828407, 32.524067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746002, 35.441589, 32.625862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461927, -0.229094, -0.856819,
		0.886886, 0.111080, 0.448436,
		-0.007558, -0.967046, 0.254491,
		41.743736, 35.151474, 32.702209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415543, 35.533504, 32.674301>,  <41.749027, 35.828407, 32.524067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415543, 35.533504, 32.674301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180187, 35.242626, 32.532887>,  <42.038975, 35.068100, 32.448036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180187, 35.242626, 32.532887>,  <42.415543, 35.533504, 32.674301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180187, 35.242626, 32.532887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664182, -0.185298, -0.724243,
		0.461157, -0.660946, 0.592017,
		-0.588385, -0.727197, -0.353537,
		42.003674, 35.024467, 32.426826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940002, 35.551048, 33.349339>,  <42.415543, 35.533504, 32.674301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940002, 35.551048, 33.349339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251942, 35.637016, 33.584507>,  <42.439106, 35.688599, 33.725609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251942, 35.637016, 33.584507>,  <41.940002, 35.551048, 33.349339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251942, 35.637016, 33.584507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613547, 0.076244, 0.785969,
		0.124100, -0.973650, 0.191326,
		0.779845, 0.214927, 0.587918,
		42.485897, 35.701492, 33.760883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884319, 35.095005, 33.902901>,  <41.940002, 35.551048, 33.349339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884319, 35.095005, 33.902901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092480, 35.407230, 34.041412>,  <42.217377, 35.594566, 34.124519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092480, 35.407230, 34.041412>,  <41.884319, 35.095005, 33.902901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092480, 35.407230, 34.041412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654141, 0.103740, 0.749224,
		0.548893, -0.616409, 0.564584,
		0.520399, 0.780562, 0.346276,
		42.248600, 35.641399, 34.145294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981354, 34.961113, 34.524883>,  <41.884319, 35.095005, 33.902901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981354, 34.961113, 34.524883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092197, 35.344944, 34.544548>,  <42.158703, 35.575245, 34.556347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092197, 35.344944, 34.544548>,  <41.981354, 34.961113, 34.524883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092197, 35.344944, 34.544548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510450, 0.103672, 0.853635,
		0.814033, -0.261648, 0.518546,
		0.277111, 0.959579, 0.049166,
		42.175331, 35.632816, 34.559299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242088, 35.081612, 35.194794>,  <41.981354, 34.961113, 34.524883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242088, 35.081612, 35.194794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169487, 35.462742, 35.097485>,  <42.125927, 35.691422, 35.039101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169487, 35.462742, 35.097485>,  <42.242088, 35.081612, 35.194794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169487, 35.462742, 35.097485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372078, 0.162452, 0.913875,
		0.910283, 0.256388, 0.325040,
		-0.181503, 0.952825, -0.243274,
		42.115036, 35.748589, 35.024502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621197, 35.413120, 35.663147>,  <42.242088, 35.081612, 35.194794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621197, 35.413120, 35.663147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343670, 35.674118, 35.541252>,  <42.177155, 35.830719, 35.468113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343670, 35.674118, 35.541252>,  <42.621197, 35.413120, 35.663147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343670, 35.674118, 35.541252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264012, 0.163237, 0.950606,
		0.670012, 0.740001, 0.059010,
		-0.693816, 0.652497, -0.304740,
		42.135525, 35.869865, 35.449829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715122, 35.954247, 36.110981>,  <42.621197, 35.413120, 35.663147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715122, 35.954247, 36.110981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345577, 35.971676, 35.958889>,  <42.123848, 35.982132, 35.867634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345577, 35.971676, 35.958889>,  <42.715122, 35.954247, 36.110981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345577, 35.971676, 35.958889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356108, 0.266099, 0.895756,
		0.140208, 0.962960, -0.230324,
		-0.923866, 0.043572, -0.380227,
		42.068417, 35.984749, 35.844822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390869, 36.526413, 36.316750>,  <42.715122, 35.954247, 36.110981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390869, 36.526413, 36.316750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074505, 36.289078, 36.256859>,  <41.884686, 36.146675, 36.220924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074505, 36.289078, 36.256859>,  <42.390869, 36.526413, 36.316750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074505, 36.289078, 36.256859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352629, 0.241939, 0.903946,
		-0.500120, 0.767734, -0.400579,
		-0.790906, -0.593337, -0.149727,
		41.837234, 36.111076, 36.211941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885864, 36.832150, 36.798412>,  <42.390869, 36.526413, 36.316750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885864, 36.832150, 36.798412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701420, 36.495602, 36.685646>,  <41.590752, 36.293674, 36.617989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701420, 36.495602, 36.685646>,  <41.885864, 36.832150, 36.798412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701420, 36.495602, 36.685646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629002, 0.085838, 0.772650,
		-0.625883, 0.533604, -0.568802,
		-0.461115, -0.841367, -0.281913,
		41.563084, 36.243191, 36.601070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197422, 36.961983, 36.936646>,  <41.885864, 36.832150, 36.798412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197422, 36.961983, 36.936646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197937, 36.562115, 36.926449>,  <41.198246, 36.322193, 36.920330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197937, 36.562115, 36.926449>,  <41.197422, 36.961983, 36.936646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197937, 36.562115, 36.926449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640622, -0.020404, 0.767585,
		-0.767855, 0.015341, -0.640440,
		0.001292, -0.999674, -0.025495,
		41.198326, 36.262211, 36.918800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559181, 36.749428, 37.304222>,  <41.197422, 36.961983, 36.936646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559181, 36.749428, 37.304222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772396, 36.411594, 37.284046>,  <40.900326, 36.208893, 37.271938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772396, 36.411594, 37.284046>,  <40.559181, 36.749428, 37.304222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772396, 36.411594, 37.284046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342761, -0.270065, 0.899767,
		-0.773553, -0.462321, -0.433446,
		0.533039, -0.844585, -0.050444,
		40.932308, 36.158218, 37.268913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047409, 36.285809, 37.452133>,  <40.559181, 36.749428, 37.304222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047409, 36.285809, 37.452133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406197, 36.117176, 37.505383>,  <40.621468, 36.015999, 37.537334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406197, 36.117176, 37.505383>,  <40.047409, 36.285809, 37.452133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406197, 36.117176, 37.505383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365960, -0.539076, 0.758597,
		-0.248041, -0.729156, -0.637814,
		0.896967, -0.421578, 0.133129,
		40.675285, 35.990704, 37.545322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964020, 35.489475, 37.457821>,  <40.047409, 36.285809, 37.452133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964020, 35.489475, 37.457821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293247, 35.604935, 37.653469>,  <40.490784, 35.674210, 37.770859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293247, 35.604935, 37.653469>,  <39.964020, 35.489475, 37.457821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293247, 35.604935, 37.653469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268094, -0.561757, 0.782659,
		0.500680, -0.775313, -0.384980,
		0.823070, 0.288651, 0.489117,
		40.540169, 35.691528, 37.800205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142513, 34.887676, 37.753563>,  <39.964020, 35.489475, 37.457821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142513, 34.887676, 37.753563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331886, 35.161060, 37.975822>,  <40.445511, 35.325089, 38.109177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331886, 35.161060, 37.975822>,  <40.142513, 34.887676, 37.753563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331886, 35.161060, 37.975822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271403, -0.486946, 0.830195,
		0.837973, -0.543849, -0.045046,
		0.473435, 0.683456, 0.555650,
		40.473915, 35.366096, 38.142517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232182, 34.662006, 38.353817>,  <40.142513, 34.887676, 37.753563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232182, 34.662006, 38.353817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339081, 35.024647, 38.484451>,  <40.403221, 35.242229, 38.562832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339081, 35.024647, 38.484451>,  <40.232182, 34.662006, 38.353817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339081, 35.024647, 38.484451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469831, -0.173311, 0.865576,
		0.841331, -0.384763, 0.379631,
		0.267248, 0.906599, 0.326585,
		40.419254, 35.296627, 38.582428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705902, 34.498257, 38.794453>,  <40.232182, 34.662006, 38.353817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705902, 34.498257, 38.794453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582878, 34.863876, 38.900219>,  <40.509064, 35.083248, 38.963680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582878, 34.863876, 38.900219>,  <40.705902, 34.498257, 38.794453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582878, 34.863876, 38.900219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319930, -0.361049, 0.875950,
		0.896131, 0.184812, 0.403477,
		-0.307561, 0.914050, 0.264420,
		40.490608, 35.138092, 38.979546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871002, 34.547756, 39.587997>,  <40.705902, 34.498257, 38.794453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871002, 34.547756, 39.587997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598820, 34.826542, 39.497467>,  <40.435509, 34.993813, 39.443150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598820, 34.826542, 39.497467>,  <40.871002, 34.547756, 39.587997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598820, 34.826542, 39.497467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384067, -0.076170, 0.920158,
		0.624077, 0.713050, 0.319511,
		-0.680456, 0.696963, -0.226324,
		40.394684, 35.035629, 39.429569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941624, 34.862328, 40.095322>,  <40.871002, 34.547756, 39.587997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941624, 34.862328, 40.095322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581814, 34.956051, 39.947830>,  <40.365929, 35.012287, 39.859337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581814, 34.956051, 39.947830>,  <40.941624, 34.862328, 40.095322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581814, 34.956051, 39.947830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355834, 0.096732, 0.929529,
		0.253466, 0.967337, -0.003637,
		-0.899520, 0.234310, -0.368730,
		40.311958, 35.026344, 39.837212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680088, 35.421589, 40.432240>,  <40.941624, 34.862328, 40.095322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680088, 35.421589, 40.432240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337395, 35.264782, 40.298176>,  <40.131779, 35.170696, 40.217735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337395, 35.264782, 40.298176>,  <40.680088, 35.421589, 40.432240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337395, 35.264782, 40.298176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382292, 0.046454, 0.922873,
		-0.346212, 0.918785, -0.189663,
		-0.856732, -0.392016, -0.335161,
		40.080376, 35.147179, 40.197628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176960, 35.843025, 40.650303>,  <40.680088, 35.421589, 40.432240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176960, 35.843025, 40.650303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966198, 35.518646, 40.548531>,  <39.839741, 35.324017, 40.487469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966198, 35.518646, 40.548531>,  <40.176960, 35.843025, 40.650303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966198, 35.518646, 40.548531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509406, 0.061695, 0.858311,
		-0.680351, 0.581854, -0.445610,
		-0.526904, -0.810950, -0.254426,
		39.808128, 35.275360, 40.472202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549461, 36.046669, 40.485481>,  <40.176960, 35.843025, 40.650303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549461, 36.046669, 40.485481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525558, 35.663818, 40.598854>,  <39.511215, 35.434109, 40.666878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525558, 35.663818, 40.598854>,  <39.549461, 36.046669, 40.485481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525558, 35.663818, 40.598854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390110, 0.283751, 0.875957,
		-0.918827, -0.058224, -0.390341,
		-0.059758, -0.957129, 0.283432,
		39.507629, 35.376678, 40.683884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852383, 35.867134, 40.728436>,  <39.549461, 36.046669, 40.485481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852383, 35.867134, 40.728436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103886, 35.610210, 40.903751>,  <39.254787, 35.456055, 41.008942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103886, 35.610210, 40.903751>,  <38.852383, 35.867134, 40.728436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103886, 35.610210, 40.903751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443721, 0.166500, 0.880562,
		-0.638570, -0.748140, -0.180318,
		0.628761, -0.642312, 0.438287,
		39.292515, 35.417519, 41.035236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736973, 35.193123, 41.042294>,  <38.852383, 35.867134, 40.728436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736973, 35.193123, 41.042294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992031, 35.416843, 41.254177>,  <39.145065, 35.551075, 41.381306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992031, 35.416843, 41.254177>,  <38.736973, 35.193123, 41.042294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992031, 35.416843, 41.254177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610821, -0.051880, 0.790067,
		0.469369, -0.827338, 0.308554,
		0.637644, 0.559304, 0.529706,
		39.183323, 35.584633, 41.413090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370567, 35.338036, 41.678143>,  <38.736973, 35.193123, 41.042294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370567, 35.338036, 41.678143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749023, 35.386448, 41.798252>,  <38.976097, 35.415497, 41.870319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749023, 35.386448, 41.798252>,  <38.370567, 35.338036, 41.678143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749023, 35.386448, 41.798252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299816, -0.022402, 0.953734,
		0.122165, -0.992395, 0.015094,
		0.946143, 0.121039, 0.300272,
		39.032867, 35.422760, 41.888332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543198, 34.968903, 42.300674>,  <38.370567, 35.338036, 41.678143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543198, 34.968903, 42.300674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799068, 35.276215, 42.291203>,  <38.952591, 35.460602, 42.285519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799068, 35.276215, 42.291203>,  <38.543198, 34.968903, 42.300674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799068, 35.276215, 42.291203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080589, -0.036400, 0.996083,
		0.764404, -0.639084, -0.085198,
		0.639681, 0.768275, -0.023679,
		38.990974, 35.506699, 42.284100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020512, 34.887245, 42.781467>,  <38.543198, 34.968903, 42.300674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020512, 34.887245, 42.781467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976963, 35.282867, 42.741627>,  <38.950836, 35.520241, 42.717724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976963, 35.282867, 42.741627>,  <39.020512, 34.887245, 42.781467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976963, 35.282867, 42.741627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033913, 0.103831, 0.994017,
		0.993477, 0.104840, -0.044846,
		-0.108869, 0.989054, -0.099599,
		38.944302, 35.579582, 42.711746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525101, 35.324440, 43.214317>,  <39.020512, 34.887245, 42.781467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525101, 35.324440, 43.214317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198036, 35.547607, 43.157520>,  <39.001797, 35.681507, 43.123444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198036, 35.547607, 43.157520>,  <39.525101, 35.324440, 43.214317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198036, 35.547607, 43.157520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014390, 0.226757, 0.973845,
		0.575521, 0.798318, -0.177382,
		-0.817661, 0.557915, -0.141991,
		38.952740, 35.714981, 43.114922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065468, 35.394417, 43.661358>,  <39.525101, 35.324440, 43.214317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065468, 35.394417, 43.661358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311043, 35.144699, 43.854576>,  <40.458389, 34.994869, 43.970509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311043, 35.144699, 43.854576>,  <40.065468, 35.394417, 43.661358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311043, 35.144699, 43.854576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785756, 0.424989, -0.449414,
		0.075276, 0.655471, 0.751460,
		0.613939, -0.624294, 0.483048,
		40.495224, 34.957413, 43.999489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666103, 35.762161, 43.943161>,  <40.065468, 35.394417, 43.661358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666103, 35.762161, 43.943161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775867, 35.379284, 43.906326>,  <40.841728, 35.149559, 43.884224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775867, 35.379284, 43.906326>,  <40.666103, 35.762161, 43.943161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775867, 35.379284, 43.906326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849109, 0.286143, -0.444001,
		0.451344, 0.043647, 0.891282,
		0.274413, -0.957192, -0.092088,
		40.858192, 35.092125, 43.878700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411625, 35.689072, 44.028694>,  <40.666103, 35.762161, 43.943161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411625, 35.689072, 44.028694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325123, 35.337364, 43.858932>,  <41.273224, 35.126339, 43.757076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325123, 35.337364, 43.858932>,  <41.411625, 35.689072, 44.028694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325123, 35.337364, 43.858932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866030, 0.027964, -0.499209,
		0.450807, -0.475504, 0.755426,
		-0.216251, -0.879269, -0.424407,
		41.260246, 35.073582, 43.731609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972538, 35.434212, 43.693310>,  <41.411625, 35.689072, 44.028694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972538, 35.434212, 43.693310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751930, 35.154888, 43.510803>,  <41.619564, 34.987293, 43.401299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751930, 35.154888, 43.510803>,  <41.972538, 35.434212, 43.693310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751930, 35.154888, 43.510803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642529, -0.006819, -0.766231,
		0.531957, -0.715761, 0.452446,
		-0.551523, -0.698311, -0.456271,
		41.586472, 34.945396, 43.373920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476761, 34.900661, 43.370262>,  <41.972538, 35.434212, 43.693310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476761, 34.900661, 43.370262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121391, 34.907005, 43.186764>,  <41.908169, 34.910812, 43.076664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121391, 34.907005, 43.186764>,  <42.476761, 34.900661, 43.370262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121391, 34.907005, 43.186764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456988, -0.063349, -0.887214,
		-0.043121, -0.997866, 0.049038,
		-0.888427, 0.015847, -0.458744,
		41.854862, 34.911762, 43.049141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450718, 34.316933, 42.981449>,  <42.476761, 34.900661, 43.370262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450718, 34.316933, 42.981449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173267, 34.544872, 42.805195>,  <42.006798, 34.681637, 42.699440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173267, 34.544872, 42.805195>,  <42.450718, 34.316933, 42.981449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173267, 34.544872, 42.805195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393653, -0.212428, -0.894378,
		-0.603261, -0.793820, -0.076977,
		-0.693623, 0.569845, -0.440639,
		41.965179, 34.715824, 42.673004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203873, 33.881130, 42.426796>,  <42.450718, 34.316933, 42.981449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203873, 33.881130, 42.426796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127483, 34.265724, 42.347721>,  <42.081650, 34.496479, 42.300274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127483, 34.265724, 42.347721>,  <42.203873, 33.881130, 42.426796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127483, 34.265724, 42.347721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419225, -0.102217, -0.902110,
		-0.887570, -0.255152, -0.383558,
		-0.190969, 0.961483, -0.197691,
		42.070194, 34.554169, 42.288414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810631, 33.924610, 41.719433>,  <42.203873, 33.881130, 42.426796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810631, 33.924610, 41.719433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976788, 34.281395, 41.790829>,  <42.076481, 34.495464, 41.833668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976788, 34.281395, 41.790829>,  <41.810631, 33.924610, 41.719433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976788, 34.281395, 41.790829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323920, 0.038315, -0.945309,
		-0.850015, 0.450490, -0.273007,
		0.415392, 0.891959, 0.178491,
		42.101406, 34.548981, 41.844376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648533, 34.318615, 41.061878>,  <41.810631, 33.924610, 41.719433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648533, 34.318615, 41.061878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939182, 34.522190, 41.246483>,  <42.113571, 34.644333, 41.357246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939182, 34.522190, 41.246483>,  <41.648533, 34.318615, 41.061878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939182, 34.522190, 41.246483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455520, 0.145985, -0.878174,
		-0.514308, 0.848336, -0.125754,
		0.726628, 0.508935, 0.461515,
		42.157169, 34.674870, 41.384937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667423, 34.948334, 40.747204>,  <41.648533, 34.318615, 41.061878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667423, 34.948334, 40.747204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030197, 34.899529, 40.908493>,  <42.247860, 34.870243, 41.005264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030197, 34.899529, 40.908493>,  <41.667423, 34.948334, 40.747204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030197, 34.899529, 40.908493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419899, 0.339199, -0.841801,
		-0.034058, 0.932768, 0.358865,
		0.906932, -0.122017, 0.403221,
		42.302277, 34.862923, 41.029461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909306, 35.621876, 40.658577>,  <41.667423, 34.948334, 40.747204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909306, 35.621876, 40.658577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218548, 35.370747, 40.694672>,  <42.404095, 35.220070, 40.716328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218548, 35.370747, 40.694672>,  <41.909306, 35.621876, 40.658577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218548, 35.370747, 40.694672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332413, 0.279887, -0.900647,
		0.540195, 0.726290, 0.425080,
		0.773105, -0.627827, 0.090235,
		42.450478, 35.182400, 40.721741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522102, 35.965069, 40.392040>,  <41.909306, 35.621876, 40.658577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522102, 35.965069, 40.392040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618725, 35.577240, 40.376133>,  <42.676697, 35.344543, 40.366589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618725, 35.577240, 40.376133>,  <42.522102, 35.965069, 40.392040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618725, 35.577240, 40.376133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399286, 0.136661, -0.906584,
		0.884433, 0.203112, 0.420147,
		0.241555, -0.969572, -0.039768,
		42.691193, 35.286369, 40.364204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177490, 35.822502, 40.127983>,  <42.522102, 35.965069, 40.392040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177490, 35.822502, 40.127983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028198, 35.458946, 40.053570>,  <42.938622, 35.240810, 40.008923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028198, 35.458946, 40.053570>,  <43.177490, 35.822502, 40.127983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028198, 35.458946, 40.053570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549044, -0.054763, -0.833998,
		0.747828, -0.413415, 0.519462,
		-0.373235, -0.908894, -0.186030,
		42.916229, 35.186279, 39.997761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791660, 35.488266, 39.854004>,  <43.177490, 35.822502, 40.127983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791660, 35.488266, 39.854004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492950, 35.236240, 39.768829>,  <43.313725, 35.085026, 39.717724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492950, 35.236240, 39.768829>,  <43.791660, 35.488266, 39.854004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492950, 35.236240, 39.768829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376187, -0.136136, -0.916488,
		0.548462, -0.764514, 0.338686,
		-0.746775, -0.630068, -0.212935,
		43.268917, 35.047218, 39.704948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078621, 34.910587, 39.537174>,  <43.791660, 35.488266, 39.854004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078621, 34.910587, 39.537174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705467, 34.943054, 39.396809>,  <43.481575, 34.962536, 39.312588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705467, 34.943054, 39.396809>,  <44.078621, 34.910587, 39.537174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705467, 34.943054, 39.396809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354392, 0.032934, -0.934517,
		-0.064297, -0.996156, -0.059490,
		-0.932884, 0.081170, -0.350913,
		43.425602, 34.967403, 39.291534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052902, 34.420311, 39.048943>,  <44.078621, 34.910587, 39.537174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052902, 34.420311, 39.048943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731647, 34.634686, 38.944832>,  <43.538895, 34.763309, 38.882366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731647, 34.634686, 38.944832>,  <44.052902, 34.420311, 39.048943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731647, 34.634686, 38.944832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172713, -0.208677, -0.962613,
		-0.570216, -0.818061, 0.075032,
		-0.803134, 0.535939, -0.260280,
		43.490707, 34.795467, 38.866749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814796, 34.111340, 38.555485>,  <44.052902, 34.420311, 39.048943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814796, 34.111340, 38.555485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611057, 34.454559, 38.529190>,  <43.488815, 34.660492, 38.513412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611057, 34.454559, 38.529190>,  <43.814796, 34.111340, 38.555485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611057, 34.454559, 38.529190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096366, -0.019035, -0.995164,
		-0.855148, -0.513220, -0.072991,
		-0.509348, 0.858046, -0.065735,
		43.458252, 34.711971, 38.509468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324505, 34.042667, 37.983047>,  <43.814796, 34.111340, 38.555485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324505, 34.042667, 37.983047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401421, 34.432617, 38.028011>,  <43.447571, 34.666588, 38.054989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401421, 34.432617, 38.028011>,  <43.324505, 34.042667, 37.983047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401421, 34.432617, 38.028011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171284, 0.079447, -0.982013,
		-0.966274, 0.208087, -0.151705,
		0.192292, 0.974878, 0.112410,
		43.459106, 34.725082, 38.061733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033802, 34.403141, 37.500183>,  <43.324505, 34.042667, 37.983047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033802, 34.403141, 37.500183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289288, 34.696003, 37.594833>,  <43.442577, 34.871719, 37.651623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289288, 34.696003, 37.594833>,  <43.033802, 34.403141, 37.500183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289288, 34.696003, 37.594833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192050, 0.146102, -0.970449,
		-0.745094, 0.665280, -0.047294,
		0.638711, 0.732159, 0.236627,
		43.480900, 34.915649, 37.665821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779972, 35.049816, 37.127323>,  <43.033802, 34.403141, 37.500183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779972, 35.049816, 37.127323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.165371, 35.097431, 37.223240>,  <43.396610, 35.125999, 37.280792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.165371, 35.097431, 37.223240>,  <42.779972, 35.049816, 37.127323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165371, 35.097431, 37.223240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197658, 0.287825, -0.937064,
		-0.180564, 0.950257, 0.253790,
		0.963498, 0.119037, 0.239796,
		43.454422, 35.133141, 37.295177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015312, 35.458614, 36.632236>,  <42.779972, 35.049816, 37.127323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015312, 35.458614, 36.632236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378265, 35.363838, 36.771099>,  <43.596035, 35.306973, 36.854416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378265, 35.363838, 36.771099>,  <43.015312, 35.458614, 36.632236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378265, 35.363838, 36.771099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401676, 0.245624, -0.882227,
		0.123766, 0.939961, 0.318048,
		0.907380, -0.236942, 0.347160,
		43.650478, 35.292755, 36.875248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537418, 36.061626, 36.547035>,  <43.015312, 35.458614, 36.632236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537418, 36.061626, 36.547035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751331, 35.723785, 36.557228>,  <43.879677, 35.521080, 36.563343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751331, 35.723785, 36.557228>,  <43.537418, 36.061626, 36.547035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751331, 35.723785, 36.557228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543913, 0.321002, -0.775317,
		0.646660, 0.428482, 0.631058,
		0.534780, -0.844607, 0.025478,
		43.911766, 35.470402, 36.564873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244770, 36.237328, 36.474304>,  <43.537418, 36.061626, 36.547035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244770, 36.237328, 36.474304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223919, 35.851242, 36.371826>,  <44.211411, 35.619591, 36.310337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223919, 35.851242, 36.371826>,  <44.244770, 36.237328, 36.474304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223919, 35.851242, 36.371826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573063, 0.181194, -0.799229,
		0.817852, -0.188477, 0.543686,
		-0.052124, -0.965218, -0.256199,
		44.208282, 35.561676, 36.294968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877476, 36.194965, 36.156780>,  <44.244770, 36.237328, 36.474304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877476, 36.194965, 36.156780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680386, 35.872623, 36.025440>,  <44.562130, 35.679218, 35.946636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680386, 35.872623, 36.025440>,  <44.877476, 36.194965, 36.156780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680386, 35.872623, 36.025440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489088, 0.055627, -0.870459,
		0.719732, -0.589489, 0.366726,
		-0.492726, -0.805859, -0.328348,
		44.532566, 35.630867, 35.926937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358326, 35.716339, 36.027740>,  <44.877476, 36.194965, 36.156780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358326, 35.716339, 36.027740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045723, 35.630692, 35.793339>,  <44.858162, 35.579304, 35.652699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045723, 35.630692, 35.793339>,  <45.358326, 35.716339, 36.027740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045723, 35.630692, 35.793339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585409, 0.073110, -0.807435,
		0.215729, -0.974068, 0.068210,
		-0.781509, -0.214118, -0.586001,
		44.811272, 35.566456, 35.617538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547131, 35.209137, 35.575935>,  <45.358326, 35.716339, 36.027740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547131, 35.209137, 35.575935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252983, 35.419468, 35.404945>,  <45.076492, 35.545666, 35.302349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252983, 35.419468, 35.404945>,  <45.547131, 35.209137, 35.575935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252983, 35.419468, 35.404945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560991, 0.118486, -0.819299,
		-0.380156, -0.842301, -0.382114,
		-0.735371, 0.525824, -0.427480,
		45.032372, 35.577213, 35.276703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243332, 34.905869, 35.256721>,  <45.547131, 35.209137, 35.575935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243332, 34.905869, 35.256721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540813, 35.134808, 35.394890>,  <46.719303, 35.272171, 35.477791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540813, 35.134808, 35.394890>,  <46.243332, 34.905869, 35.256721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540813, 35.134808, 35.394890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621537, 0.401746, 0.672526,
		0.246152, -0.714853, 0.654519,
		0.743707, 0.572351, 0.345417,
		46.763927, 35.306515, 35.498516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953846, 34.693329, 35.516415>,  <46.243332, 34.905869, 35.256721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953846, 34.693329, 35.516415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638134, 34.608459, 35.746899>,  <46.448708, 34.557537, 35.885189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638134, 34.608459, 35.746899>,  <46.953846, 34.693329, 35.516415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.638134, 34.608459, 35.746899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469337, 0.813545, -0.343318,
		-0.395927, -0.541410, -0.741699,
		-0.789281, -0.212178, 0.576208,
		46.401348, 34.544807, 35.919762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.613129, 34.658108, 35.332947>,  <46.953846, 34.693329, 35.516415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.613129, 34.658108, 35.332947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672951, 34.934238, 35.049801>,  <47.708843, 35.099918, 34.879913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672951, 34.934238, 35.049801>,  <47.613129, 34.658108, 35.332947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.672951, 34.934238, 35.049801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080084, 0.705110, 0.704561,
		0.985504, -0.162061, 0.050170,
		0.149558, 0.690330, -0.707867,
		47.717819, 35.141338, 34.837440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.057522, 37.206703, 43.970478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658524, 37.218884, 43.944942>,  <35.419125, 37.226192, 43.929623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658524, 37.218884, 43.944942>,  <36.057522, 37.206703, 43.970478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658524, 37.218884, 43.944942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070335, 0.332024, -0.940645,
		-0.007449, -0.942779, -0.333334,
		-0.997496, 0.030452, -0.063837,
		35.359276, 37.228020, 43.925793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901279, 36.885254, 43.394386>,  <36.057522, 37.206703, 43.970478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901279, 36.885254, 43.394386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564896, 37.096699, 43.440613>,  <35.363064, 37.223568, 43.468349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564896, 37.096699, 43.440613>,  <35.901279, 36.885254, 43.394386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564896, 37.096699, 43.440613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055492, 0.296699, -0.953357,
		-0.538246, -0.795321, -0.278846,
		-0.840959, 0.528615, 0.115563,
		35.312607, 37.255283, 43.475281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522186, 36.753780, 42.810574>,  <35.901279, 36.885254, 43.394386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522186, 36.753780, 42.810574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.372883, 37.095234, 42.955894>,  <35.283302, 37.300106, 43.043087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.372883, 37.095234, 42.955894>,  <35.522186, 36.753780, 42.810574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372883, 37.095234, 42.955894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049785, 0.372612, -0.926651,
		-0.926391, -0.363966, -0.096581,
		-0.373257, 0.853633, 0.363305,
		35.260906, 37.351322, 43.064884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946419, 36.904255, 42.432892>,  <35.522186, 36.753780, 42.810574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946419, 36.904255, 42.432892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.040298, 37.259182, 42.591679>,  <35.096626, 37.472137, 42.686951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.040298, 37.259182, 42.591679>,  <34.946419, 36.904255, 42.432892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040298, 37.259182, 42.591679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007122, 0.409932, -0.912088,
		-0.972042, 0.211238, 0.102530,
		0.234698, 0.887318, 0.396967,
		35.110706, 37.525379, 42.710770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419353, 37.417793, 42.257019>,  <34.946419, 36.904255, 42.432892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419353, 37.417793, 42.257019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753185, 37.622349, 42.338959>,  <34.953484, 37.745083, 42.388123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753185, 37.622349, 42.338959>,  <34.419353, 37.417793, 42.257019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753185, 37.622349, 42.338959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106628, 0.514778, -0.850667,
		-0.540472, 0.688105, 0.484151,
		0.834578, 0.511385, 0.204852,
		35.003559, 37.775764, 42.400414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264385, 38.052368, 41.846054>,  <34.419353, 37.417793, 42.257019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264385, 38.052368, 41.846054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656689, 38.055759, 41.924061>,  <34.892071, 38.057796, 41.970863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656689, 38.055759, 41.924061>,  <34.264385, 38.052368, 41.846054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656689, 38.055759, 41.924061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174318, 0.411551, -0.894561,
		-0.087845, 0.911347, 0.402156,
		0.980763, 0.008480, 0.195017,
		34.950916, 38.058304, 41.982567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565247, 38.905182, 41.767471>,  <34.264385, 38.052368, 41.846054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565247, 38.905182, 41.767471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.837936, 38.615665, 41.724796>,  <35.001549, 38.441956, 41.699192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.837936, 38.615665, 41.724796>,  <34.565247, 38.905182, 41.767471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837936, 38.615665, 41.724796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339245, 0.441934, -0.830426,
		0.648201, 0.529929, 0.546819,
		0.681724, -0.723789, -0.106686,
		35.042454, 38.398529, 41.692791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085003, 39.286205, 41.501293>,  <34.565247, 38.905182, 41.767471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085003, 39.286205, 41.501293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.210255, 38.912270, 41.434319>,  <35.285404, 38.687908, 41.394135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.210255, 38.912270, 41.434319>,  <35.085003, 39.286205, 41.501293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210255, 38.912270, 41.434319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349861, 0.277448, -0.894774,
		0.882921, 0.221596, 0.413938,
		0.313125, -0.934836, -0.167437,
		35.304192, 38.631821, 41.384087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725540, 39.310654, 41.083935>,  <35.085003, 39.286205, 41.501293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725540, 39.310654, 41.083935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594894, 38.936714, 41.028252>,  <35.516506, 38.712349, 40.994843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594894, 38.936714, 41.028252>,  <35.725540, 39.310654, 41.083935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594894, 38.936714, 41.028252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263007, 0.051575, -0.963414,
		0.907827, -0.351279, 0.229027,
		-0.326615, -0.934849, -0.139211,
		35.496910, 38.656258, 40.986488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196148, 38.971474, 40.743595>,  <35.725540, 39.310654, 41.083935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196148, 38.971474, 40.743595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881168, 38.733017, 40.680931>,  <35.692181, 38.589943, 40.643333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881168, 38.733017, 40.680931>,  <36.196148, 38.971474, 40.743595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881168, 38.733017, 40.680931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202782, -0.010547, -0.979167,
		0.582070, -0.802810, 0.129192,
		-0.787448, -0.596141, -0.156656,
		35.644936, 38.554176, 40.633934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400246, 38.430668, 40.320976>,  <36.196148, 38.971474, 40.743595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400246, 38.430668, 40.320976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004059, 38.454777, 40.271442>,  <35.766346, 38.469242, 40.241722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004059, 38.454777, 40.271442>,  <36.400246, 38.430668, 40.320976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004059, 38.454777, 40.271442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117936, -0.093108, -0.988647,
		-0.071106, -0.993831, 0.085114,
		-0.990472, 0.060261, -0.123829,
		35.706917, 38.472858, 40.234295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184353, 37.892464, 39.993786>,  <36.400246, 38.430668, 40.320976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184353, 37.892464, 39.993786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887920, 38.147511, 39.909653>,  <35.710060, 38.300541, 39.859173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887920, 38.147511, 39.909653>,  <36.184353, 37.892464, 39.993786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887920, 38.147511, 39.909653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159906, -0.136641, -0.977629,
		-0.652095, -0.758137, -0.000697,
		-0.741082, 0.637619, -0.210333,
		35.665596, 38.338795, 39.846554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703651, 37.679607, 39.316296>,  <36.184353, 37.892464, 39.993786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703651, 37.679607, 39.316296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658047, 38.075230, 39.353752>,  <35.630684, 38.312603, 39.376225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658047, 38.075230, 39.353752>,  <35.703651, 37.679607, 39.316296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658047, 38.075230, 39.353752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305347, 0.124580, -0.944057,
		-0.945391, -0.079044, -0.316209,
		-0.114015, 0.989056, 0.093641,
		35.623840, 38.371948, 39.381844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153942, 37.966042, 38.763851>,  <35.703651, 37.679607, 39.316296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153942, 37.966042, 38.763851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389011, 38.264130, 38.889889>,  <35.530052, 38.442982, 38.965511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389011, 38.264130, 38.889889>,  <35.153942, 37.966042, 38.763851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389011, 38.264130, 38.889889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320721, 0.142977, -0.936320,
		-0.742817, 0.651308, -0.154985,
		0.587674, 0.745222, 0.315094,
		35.565315, 38.487698, 38.984417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133324, 38.462517, 38.189957>,  <35.153942, 37.966042, 38.763851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133324, 38.462517, 38.189957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461407, 38.566456, 38.393810>,  <35.658257, 38.628819, 38.516125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461407, 38.566456, 38.393810>,  <35.133324, 38.462517, 38.189957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461407, 38.566456, 38.393810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438704, 0.286034, -0.851894,
		-0.367140, 0.922313, 0.120611,
		0.820212, 0.259852, 0.509637,
		35.707470, 38.644413, 38.546700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350704, 39.228546, 37.973221>,  <35.133324, 38.462517, 38.189957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350704, 39.228546, 37.973221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677429, 39.067429, 38.138424>,  <35.873463, 38.970757, 38.237545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677429, 39.067429, 38.138424>,  <35.350704, 39.228546, 37.973221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677429, 39.067429, 38.138424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527834, 0.232841, -0.816808,
		0.232841, 0.885178, 0.402797,
		0.816808, -0.402797, 0.413012,
		35.922470, 38.946590, 38.262329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915432, 39.775181, 38.070995>,  <35.350704, 39.228546, 37.973221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915432, 39.775181, 38.070995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079132, 39.411385, 38.041740>,  <36.177353, 39.193108, 38.024189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079132, 39.411385, 38.041740>,  <35.915432, 39.775181, 38.070995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079132, 39.411385, 38.041740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581416, 0.321720, -0.747297,
		0.703187, 0.263306, 0.660453,
		0.409249, -0.909487, -0.073139,
		36.201908, 39.138538, 38.019798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512093, 39.963734, 37.712399>,  <35.915432, 39.775181, 38.070995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512093, 39.963734, 37.712399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.507423, 39.564785, 37.683784>,  <36.504620, 39.325417, 37.666615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.507423, 39.564785, 37.683784>,  <36.512093, 39.963734, 37.712399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507423, 39.564785, 37.683784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693608, 0.043453, -0.719041,
		0.720258, -0.058014, 0.691276,
		-0.011677, -0.997370, -0.071536,
		36.503922, 39.265575, 37.662323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165897, 39.800934, 37.678562>,  <36.512093, 39.963734, 37.712399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165897, 39.800934, 37.678562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957798, 39.489895, 37.537319>,  <36.832939, 39.303272, 37.452572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957798, 39.489895, 37.537319>,  <37.165897, 39.800934, 37.678562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957798, 39.489895, 37.537319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698520, -0.149567, -0.699786,
		0.491336, -0.610717, 0.620978,
		-0.520249, -0.777595, -0.353110,
		36.801723, 39.256615, 37.431385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687729, 39.346943, 37.456547>,  <37.165897, 39.800934, 37.678562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687729, 39.346943, 37.456547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.346397, 39.266983, 37.263935>,  <37.141598, 39.219009, 37.148369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.346397, 39.266983, 37.263935>,  <37.687729, 39.346943, 37.456547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346397, 39.266983, 37.263935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521173, -0.301426, -0.798449,
		0.014460, -0.932300, 0.361396,
		-0.853328, -0.199896, -0.481531,
		37.090401, 39.207016, 37.119476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763527, 38.680939, 37.066727>,  <37.687729, 39.346943, 37.456547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763527, 38.680939, 37.066727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470398, 38.899509, 36.904545>,  <37.294521, 39.030651, 36.807236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470398, 38.899509, 36.904545>,  <37.763527, 38.680939, 37.066727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470398, 38.899509, 36.904545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457958, -0.044626, -0.887853,
		-0.503240, -0.836318, -0.217537,
		-0.732819, 0.546426, -0.405456,
		37.250553, 39.063438, 36.782909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605560, 38.395439, 36.462147>,  <37.763527, 38.680939, 37.066727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605560, 38.395439, 36.462147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483170, 38.771942, 36.404999>,  <37.409737, 38.997845, 36.370708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483170, 38.771942, 36.404999>,  <37.605560, 38.395439, 36.462147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483170, 38.771942, 36.404999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275176, -0.056230, -0.959748,
		-0.911404, -0.332974, -0.241807,
		-0.305974, 0.941258, -0.142875,
		37.391376, 39.054321, 36.362137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613449, 37.759064, 36.193771>,  <37.605560, 38.395439, 36.462147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613449, 37.759064, 36.193771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.993961, 37.652927, 36.256592>,  <38.222267, 37.589245, 36.294285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.993961, 37.652927, 36.256592>,  <37.613449, 37.759064, 36.193771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993961, 37.652927, 36.256592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217898, -0.218153, 0.951278,
		-0.218153, -0.939150, -0.265342,
		-0.951278, 0.265342, -0.157048,
		38.279346, 37.573326, 36.303707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574409, 37.318058, 36.642242>,  <37.613449, 37.759064, 36.193771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574409, 37.318058, 36.642242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954971, 37.438705, 36.667099>,  <38.183308, 37.511093, 36.682014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954971, 37.438705, 36.667099>,  <37.574409, 37.318058, 36.642242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954971, 37.438705, 36.667099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086226, 0.067193, 0.994007,
		0.295641, -0.951056, 0.089935,
		0.951400, 0.301624, 0.062141,
		38.240391, 37.529194, 36.685741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790890, 37.019894, 37.267883>,  <37.574409, 37.318058, 36.642242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790890, 37.019894, 37.267883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091969, 37.273552, 37.197102>,  <38.272614, 37.425747, 37.154633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091969, 37.273552, 37.197102>,  <37.790890, 37.019894, 37.267883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091969, 37.273552, 37.197102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240628, -0.014801, 0.970505,
		0.612821, -0.773073, -0.163733,
		0.752695, 0.634144, -0.176952,
		38.317776, 37.463795, 37.144016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391476, 36.697403, 37.558189>,  <37.790890, 37.019894, 37.267883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391476, 36.697403, 37.558189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482956, 37.085415, 37.525330>,  <38.537842, 37.318222, 37.505615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482956, 37.085415, 37.525330>,  <38.391476, 36.697403, 37.558189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482956, 37.085415, 37.525330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365517, -0.007355, 0.930776,
		0.902272, -0.242893, -0.356243,
		0.228699, 0.970025, -0.082145,
		38.551567, 37.376423, 37.500687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012272, 36.744556, 37.743942>,  <38.391476, 36.697403, 37.558189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012272, 36.744556, 37.743942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915974, 37.130527, 37.785820>,  <38.858196, 37.362110, 37.810947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915974, 37.130527, 37.785820>,  <39.012272, 36.744556, 37.743942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915974, 37.130527, 37.785820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268204, -0.037529, 0.962631,
		0.932796, 0.259827, -0.249762,
		-0.240744, 0.964926, 0.104694,
		38.843750, 37.420006, 37.817226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514511, 36.996124, 38.049049>,  <39.012272, 36.744556, 37.743942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514511, 36.996124, 38.049049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.235657, 37.273403, 38.122246>,  <39.068344, 37.439770, 38.166164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.235657, 37.273403, 38.122246>,  <39.514511, 36.996124, 38.049049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235657, 37.273403, 38.122246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275722, 0.023619, 0.960947,
		0.661800, 0.720365, -0.207595,
		-0.697136, 0.693193, 0.182989,
		39.026516, 37.481361, 38.177143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806923, 37.458969, 38.473404>,  <39.514511, 36.996124, 38.049049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806923, 37.458969, 38.473404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416588, 37.529655, 38.524792>,  <39.182384, 37.572067, 38.555622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416588, 37.529655, 38.524792>,  <39.806923, 37.458969, 38.473404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416588, 37.529655, 38.524792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137849, 0.041838, 0.989569,
		0.169499, 0.983372, -0.065188,
		-0.975842, 0.176717, 0.128466,
		39.123837, 37.582672, 38.563332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721123, 38.059109, 39.008663>,  <39.806923, 37.458969, 38.473404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721123, 38.059109, 39.008663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377487, 37.854439, 39.013714>,  <39.171307, 37.731636, 39.016747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377487, 37.854439, 39.013714>,  <39.721123, 38.059109, 39.008663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377487, 37.854439, 39.013714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031411, 0.077336, 0.996510,
		-0.510865, 0.855692, -0.082511,
		-0.859087, -0.511674, 0.012630,
		39.119762, 37.700935, 39.017502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438560, 38.332340, 39.608421>,  <39.721123, 38.059109, 39.008663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438560, 38.332340, 39.608421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205616, 38.022755, 39.508953>,  <39.065849, 37.837006, 39.449272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205616, 38.022755, 39.508953>,  <39.438560, 38.332340, 39.608421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205616, 38.022755, 39.508953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224756, -0.140675, 0.964207,
		-0.781240, 0.617410, -0.092028,
		-0.582365, -0.773961, -0.248667,
		39.030907, 37.790565, 39.434353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846844, 38.391373, 40.037746>,  <39.438560, 38.332340, 39.608421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846844, 38.391373, 40.037746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.885941, 38.005974, 39.938057>,  <38.909401, 37.774734, 39.878242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.885941, 38.005974, 39.938057>,  <38.846844, 38.391373, 40.037746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885941, 38.005974, 39.938057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174364, -0.263130, 0.948873,
		-0.979818, -0.049293, -0.193720,
		0.097747, -0.963500, -0.249225,
		38.915264, 37.716923, 39.863289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313732, 37.974773, 40.424793>,  <38.846844, 38.391373, 40.037746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313732, 37.974773, 40.424793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588535, 37.694481, 40.347858>,  <38.753418, 37.526306, 40.301697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588535, 37.694481, 40.347858>,  <38.313732, 37.974773, 40.424793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588535, 37.694481, 40.347858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149391, -0.395237, 0.906350,
		-0.711126, -0.593938, -0.376215,
		0.687009, -0.700732, -0.192334,
		38.794640, 37.484261, 40.290157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047920, 37.252758, 40.675640>,  <38.313732, 37.974773, 40.424793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047920, 37.252758, 40.675640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440399, 37.178139, 40.655830>,  <38.675888, 37.133366, 40.643944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440399, 37.178139, 40.655830>,  <38.047920, 37.252758, 40.675640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440399, 37.178139, 40.655830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027063, -0.387002, 0.921682,
		-0.191105, -0.903011, -0.384773,
		0.981196, -0.186551, -0.049519,
		38.734756, 37.122173, 40.640976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097298, 36.543060, 40.986744>,  <38.047920, 37.252758, 40.675640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097298, 36.543060, 40.986744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.442699, 36.743469, 41.009838>,  <38.649940, 36.863716, 41.023693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.442699, 36.743469, 41.009838>,  <38.097298, 36.543060, 40.986744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442699, 36.743469, 41.009838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056621, -0.210052, 0.976049,
		0.501150, -0.839556, -0.209749,
		0.863506, 0.501023, 0.057731,
		38.701752, 36.893776, 41.027157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559841, 36.158020, 41.350647>,  <38.097298, 36.543060, 40.986744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559841, 36.158020, 41.350647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701221, 36.527718, 41.408390>,  <38.786049, 36.749538, 41.443035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701221, 36.527718, 41.408390>,  <38.559841, 36.158020, 41.350647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701221, 36.527718, 41.408390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060260, -0.176494, 0.982455,
		0.933510, -0.338551, -0.118077,
		0.353451, 0.924247, 0.144358,
		38.807259, 36.804993, 41.451698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002712, 36.041443, 41.982662>,  <38.559841, 36.158020, 41.350647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002712, 36.041443, 41.982662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930660, 36.433010, 41.944145>,  <38.887428, 36.667950, 41.921036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930660, 36.433010, 41.944145>,  <39.002712, 36.041443, 41.982662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930660, 36.433010, 41.944145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146417, 0.070119, 0.986735,
		0.972684, 0.191844, 0.130699,
		-0.180135, 0.978917, -0.096292,
		38.876621, 36.726685, 41.915257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450108, 36.504002, 42.376617>,  <39.002712, 36.041443, 41.982662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450108, 36.504002, 42.376617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109993, 36.707081, 42.321102>,  <38.905926, 36.828926, 42.287792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109993, 36.707081, 42.321102>,  <39.450108, 36.504002, 42.376617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109993, 36.707081, 42.321102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048150, 0.187561, 0.981072,
		0.524117, 0.840873, -0.135034,
		-0.850284, 0.507695, -0.138792,
		38.854908, 36.859390, 42.279465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413288, 37.092754, 43.002438>,  <39.450108, 36.504002, 42.376617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413288, 37.092754, 43.002438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041286, 37.014584, 42.877926>,  <38.818085, 36.967682, 42.803219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041286, 37.014584, 42.877926>,  <39.413288, 37.092754, 43.002438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041286, 37.014584, 42.877926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313684, -0.019351, 0.949330,
		-0.191553, 0.980527, -0.043307,
		-0.930005, -0.195431, -0.311283,
		38.762283, 36.955956, 42.784542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914715, 37.391327, 43.468502>,  <39.413288, 37.092754, 43.002438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914715, 37.391327, 43.468502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.658154, 37.162868, 43.263599>,  <38.504219, 37.025795, 43.140659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.658154, 37.162868, 43.263599>,  <38.914715, 37.391327, 43.468502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658154, 37.162868, 43.263599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532259, -0.149609, 0.833257,
		-0.552547, 0.807101, -0.208038,
		-0.641399, -0.571144, -0.512253,
		38.465733, 36.991524, 43.109924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.239597, 37.508904, 43.853874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186539, 37.169403, 43.649120>,  <38.154705, 36.965702, 43.526268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186539, 37.169403, 43.649120>,  <38.239597, 37.508904, 43.853874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186539, 37.169403, 43.649120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516411, -0.381629, 0.766603,
		-0.846005, 0.366029, -0.387684,
		-0.132647, -0.848754, -0.511881,
		38.146744, 36.914776, 43.495556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537235, 37.351498, 43.953060>,  <38.239597, 37.508904, 43.853874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537235, 37.351498, 43.953060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711525, 37.005081, 43.854992>,  <37.816097, 36.797230, 43.796150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711525, 37.005081, 43.854992>,  <37.537235, 37.351498, 43.953060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711525, 37.005081, 43.854992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583692, -0.479228, 0.655473,
		-0.685163, -0.142499, -0.714314,
		0.435724, -0.866046, -0.245174,
		37.842243, 36.745266, 43.781441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025311, 36.904461, 43.833622>,  <37.537235, 37.351498, 43.953060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025311, 36.904461, 43.833622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.314594, 36.630917, 43.872192>,  <37.488163, 36.466789, 43.895332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.314594, 36.630917, 43.872192>,  <37.025311, 36.904461, 43.833622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314594, 36.630917, 43.872192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552987, -0.489762, 0.674046,
		-0.413731, -0.540797, -0.732369,
		0.723209, -0.683864, 0.096424,
		37.531555, 36.425758, 43.901119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722080, 36.269142, 43.770695>,  <37.025311, 36.904461, 43.833622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722080, 36.269142, 43.770695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077557, 36.176437, 43.928944>,  <37.290840, 36.120815, 44.023895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077557, 36.176437, 43.928944>,  <36.722080, 36.269142, 43.770695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077557, 36.176437, 43.928944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452090, -0.586835, 0.671743,
		0.076481, -0.775828, -0.626292,
		0.888688, -0.231765, 0.395626,
		37.344162, 36.106907, 44.047630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700741, 35.533817, 43.805756>,  <36.722080, 36.269142, 43.770695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700741, 35.533817, 43.805756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964127, 35.643791, 44.085995>,  <37.122158, 35.709774, 44.254139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964127, 35.643791, 44.085995>,  <36.700741, 35.533817, 43.805756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964127, 35.643791, 44.085995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432324, -0.623813, 0.651117,
		0.616057, -0.731621, -0.291897,
		0.658460, 0.274931, 0.700602,
		37.161663, 35.726269, 44.296177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935154, 34.899891, 44.104923>,  <36.700741, 35.533817, 43.805756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935154, 34.899891, 44.104923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986252, 35.194881, 44.370197>,  <37.016911, 35.371876, 44.529362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986252, 35.194881, 44.370197>,  <36.935154, 34.899891, 44.104923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986252, 35.194881, 44.370197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133932, -0.649710, 0.748290,
		0.982722, -0.184415, 0.015772,
		0.127748, 0.737474, 0.663184,
		37.024578, 35.416122, 44.569153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225220, 34.561016, 44.752151>,  <36.935154, 34.899891, 44.104923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225220, 34.561016, 44.752151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093407, 34.913300, 44.888245>,  <37.014317, 35.124668, 44.969902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093407, 34.913300, 44.888245>,  <37.225220, 34.561016, 44.752151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093407, 34.913300, 44.888245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128468, -0.398841, 0.907977,
		0.935362, 0.255502, 0.244575,
		-0.329536, 0.880707, 0.340237,
		36.994545, 35.177513, 44.990314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611183, 34.750195, 45.353516>,  <37.225220, 34.561016, 44.752151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611183, 34.750195, 45.353516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.271137, 34.959183, 45.379814>,  <37.067108, 35.084576, 45.395596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.271137, 34.959183, 45.379814>,  <37.611183, 34.750195, 45.353516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271137, 34.959183, 45.379814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183484, -0.410929, 0.893012,
		0.493594, 0.747100, 0.445204,
		-0.850117, 0.522473, 0.065751,
		37.016102, 35.115925, 45.399540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547825, 35.004959, 46.104492>,  <37.611183, 34.750195, 45.353516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547825, 35.004959, 46.104492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190464, 34.973331, 45.927597>,  <36.976048, 34.954353, 45.821461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190464, 34.973331, 45.927597>,  <37.547825, 35.004959, 46.104492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190464, 34.973331, 45.927597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380727, -0.389286, 0.838751,
		-0.238478, 0.917717, 0.317685,
		-0.893407, -0.079073, -0.442235,
		36.922443, 34.949608, 45.794926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088734, 35.309971, 46.645672>,  <37.547825, 35.004959, 46.104492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088734, 35.309971, 46.645672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.837193, 35.146164, 46.381294>,  <36.686268, 35.047878, 46.222668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.837193, 35.146164, 46.381294>,  <37.088734, 35.309971, 46.645672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837193, 35.146164, 46.381294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547671, -0.370094, 0.750391,
		-0.551910, 0.833861, 0.008452,
		-0.628850, -0.409520, -0.660940,
		36.648537, 35.023308, 46.183014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499554, 35.444920, 46.905220>,  <37.088734, 35.309971, 46.645672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499554, 35.444920, 46.905220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388355, 35.146648, 46.663002>,  <36.321636, 34.967686, 46.517670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388355, 35.146648, 46.663002>,  <36.499554, 35.444920, 46.905220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388355, 35.146648, 46.663002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603739, -0.354687, 0.713930,
		-0.747141, 0.564058, -0.351595,
		-0.277992, -0.745678, -0.605545,
		36.304958, 34.922943, 46.481339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748447, 35.231331, 47.033028>,  <36.499554, 35.444920, 46.905220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748447, 35.231331, 47.033028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885601, 34.909122, 46.839710>,  <35.967892, 34.715797, 46.723721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885601, 34.909122, 46.839710>,  <35.748447, 35.231331, 47.033028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885601, 34.909122, 46.839710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551548, -0.589097, 0.590558,
		-0.760414, 0.064071, -0.646271,
		0.342879, -0.805518, -0.483296,
		35.988464, 34.667465, 46.694721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188328, 34.816311, 46.901310>,  <35.748447, 35.231331, 47.033028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188328, 34.816311, 46.901310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508160, 34.576160, 46.907173>,  <35.700058, 34.432072, 46.910690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508160, 34.576160, 46.907173>,  <35.188328, 34.816311, 46.901310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508160, 34.576160, 46.907173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436143, -0.563733, 0.701416,
		-0.412849, -0.567235, -0.712601,
		0.799584, -0.600375, 0.014659,
		35.748035, 34.396049, 46.911572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881157, 34.187901, 46.834156>,  <35.188328, 34.816311, 46.901310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881157, 34.187901, 46.834156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239925, 34.139149, 47.004181>,  <35.455185, 34.109898, 47.106197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239925, 34.139149, 47.004181>,  <34.881157, 34.187901, 46.834156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239925, 34.139149, 47.004181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371652, -0.728629, 0.575304,
		0.239598, -0.673978, -0.698818,
		0.896921, -0.121875, 0.425064,
		35.509003, 34.102585, 47.131699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887650, 33.505489, 47.132660>,  <34.881157, 34.187901, 46.834156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887650, 33.505489, 47.132660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229256, 33.616020, 47.308975>,  <35.434219, 33.682339, 47.414764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229256, 33.616020, 47.308975>,  <34.887650, 33.505489, 47.132660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229256, 33.616020, 47.308975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077525, -0.770221, 0.633048,
		0.514438, -0.574805, -0.636359,
		0.854016, 0.276330, 0.440793,
		35.485462, 33.698917, 47.441212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208012, 32.945446, 47.231838>,  <34.887650, 33.505489, 47.132660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208012, 32.945446, 47.231838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.398178, 33.177471, 47.496418>,  <35.512276, 33.316685, 47.655167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.398178, 33.177471, 47.496418>,  <35.208012, 32.945446, 47.231838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398178, 33.177471, 47.496418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379374, -0.543178, 0.749021,
		0.793762, -0.607029, -0.038173,
		0.475412, 0.580063, 0.661445,
		35.540802, 33.351490, 47.694851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598293, 32.564945, 47.771969>,  <35.208012, 32.945446, 47.231838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598293, 32.564945, 47.771969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536991, 32.929329, 47.925159>,  <35.500210, 33.147957, 48.017075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536991, 32.929329, 47.925159>,  <35.598293, 32.564945, 47.771969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536991, 32.929329, 47.925159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380852, -0.412066, 0.827740,
		0.911847, -0.019001, 0.410091,
		-0.153257, 0.910956, 0.382978,
		35.491013, 33.202614, 48.040054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970985, 32.581120, 48.406677>,  <35.598293, 32.564945, 47.771969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970985, 32.581120, 48.406677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680660, 32.855972, 48.419613>,  <35.506466, 33.020885, 48.427376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680660, 32.855972, 48.419613>,  <35.970985, 32.581120, 48.406677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680660, 32.855972, 48.419613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326226, -0.385215, 0.863242,
		0.605622, 0.615999, 0.503754,
		-0.725809, 0.687135, 0.032340,
		35.462917, 33.062115, 48.429314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979652, 32.941109, 48.998814>,  <35.970985, 32.581120, 48.406677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979652, 32.941109, 48.998814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604553, 33.004234, 48.875057>,  <35.379494, 33.042110, 48.800804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604553, 33.004234, 48.875057>,  <35.979652, 32.941109, 48.998814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604553, 33.004234, 48.875057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337930, -0.208906, 0.917693,
		0.080190, 0.965118, 0.249231,
		-0.937749, 0.157812, -0.309391,
		35.323227, 33.051579, 48.782242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606552, 33.307148, 49.628658>,  <35.979652, 32.941109, 48.998814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606552, 33.307148, 49.628658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311882, 33.192646, 49.383587>,  <35.135082, 33.123943, 49.236546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311882, 33.192646, 49.383587>,  <35.606552, 33.307148, 49.628658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311882, 33.192646, 49.383587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574787, -0.212266, 0.790293,
		-0.356276, 0.934346, -0.008165,
		-0.736673, -0.286255, -0.612675,
		35.090881, 33.106770, 49.199783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037510, 33.550819, 49.987816>,  <35.606552, 33.307148, 49.628658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037510, 33.550819, 49.987816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899956, 33.270233, 49.738117>,  <34.817425, 33.101879, 49.588299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899956, 33.270233, 49.738117>,  <35.037510, 33.550819, 49.987816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899956, 33.270233, 49.738117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489445, -0.433444, 0.756683,
		-0.801367, 0.565745, -0.194277,
		-0.343881, -0.701469, -0.624249,
		34.796791, 33.059792, 49.550842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274563, 33.377380, 50.049946>,  <35.037510, 33.550819, 49.987816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274563, 33.377380, 50.049946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502842, 33.058380, 49.971657>,  <34.639809, 32.866982, 49.924683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502842, 33.058380, 49.971657>,  <34.274563, 33.377380, 50.049946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502842, 33.058380, 49.971657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441189, -0.498805, 0.746020,
		-0.692576, -0.339399, -0.636511,
		0.570693, -0.797498, -0.195721,
		34.674049, 32.819130, 49.912941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018055, 33.919273, 50.466442>,  <34.274563, 33.377380, 50.049946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018055, 33.919273, 50.466442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034264, 34.217556, 50.732460>,  <34.043991, 34.396526, 50.892071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034264, 34.217556, 50.732460>,  <34.018055, 33.919273, 50.466442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034264, 34.217556, 50.732460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987986, 0.069440, -0.138066,
		-0.149137, 0.662649, -0.733931,
		0.040525, 0.745704, 0.665044,
		34.046421, 34.441269, 50.931973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604923, 33.741791, 51.109142>,  <34.018055, 33.919273, 50.466442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604923, 33.741791, 51.109142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232300, 33.597103, 51.123894>,  <33.008724, 33.510292, 51.132744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232300, 33.597103, 51.123894>,  <33.604923, 33.741791, 51.109142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232300, 33.597103, 51.123894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108204, 0.178961, -0.977888,
		0.347118, -0.914950, -0.205852,
		-0.931559, -0.361716, 0.036881,
		32.952831, 33.488590, 51.134956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510067, 33.202332, 50.651203>,  <33.604923, 33.741791, 51.109142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510067, 33.202332, 50.651203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.169369, 33.402927, 50.711922>,  <32.964951, 33.523285, 50.748352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.169369, 33.402927, 50.711922>,  <33.510067, 33.202332, 50.651203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169369, 33.402927, 50.711922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000408, 0.290334, -0.956925,
		-0.523962, -0.814991, -0.247494,
		-0.851742, 0.501493, 0.151792,
		32.913845, 33.553375, 50.757458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122097, 32.919403, 50.126278>,  <33.510067, 33.202332, 50.651203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122097, 32.919403, 50.126278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.961590, 33.275635, 50.211926>,  <32.865288, 33.489376, 50.263313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.961590, 33.275635, 50.211926>,  <33.122097, 32.919403, 50.126278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961590, 33.275635, 50.211926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013417, 0.228025, -0.973563,
		-0.915863, -0.393530, -0.079550,
		-0.401266, 0.890584, 0.214119,
		32.841209, 33.542809, 50.276161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553043, 33.010513, 49.635422>,  <33.122097, 32.919403, 50.126278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553043, 33.010513, 49.635422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603069, 33.383739, 49.770332>,  <32.633083, 33.607674, 49.851276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603069, 33.383739, 49.770332>,  <32.553043, 33.010513, 49.635422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603069, 33.383739, 49.770332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021327, 0.337337, -0.941142,
		-0.991919, 0.124897, 0.022289,
		0.125065, 0.933062, 0.337275,
		32.640591, 33.663658, 49.871513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264793, 33.424088, 49.147289>,  <32.553043, 33.010513, 49.635422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264793, 33.424088, 49.147289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497883, 33.695942, 49.325516>,  <32.637737, 33.859055, 49.432453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497883, 33.695942, 49.325516>,  <32.264793, 33.424088, 49.147289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497883, 33.695942, 49.325516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070971, 0.503622, -0.861004,
		-0.809567, 0.533348, 0.245238,
		0.582722, 0.679635, 0.445568,
		32.672699, 33.899834, 49.459187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972958, 34.115936, 49.031170>,  <32.264793, 33.424088, 49.147289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972958, 34.115936, 49.031170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.358913, 34.187263, 49.108311>,  <32.590488, 34.230061, 49.154594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.358913, 34.187263, 49.108311>,  <31.972958, 34.115936, 49.031170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358913, 34.187263, 49.108311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066857, 0.543299, -0.836873,
		-0.254009, 0.820382, 0.512301,
		0.964888, 0.178322, 0.192851,
		32.648380, 34.240761, 49.166164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066189, 34.878590, 48.954220>,  <31.972958, 34.115936, 49.031170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066189, 34.878590, 48.954220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426910, 34.708092, 48.925739>,  <32.643345, 34.605793, 48.908649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426910, 34.708092, 48.925739>,  <32.066189, 34.878590, 48.954220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426910, 34.708092, 48.925739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148321, 0.460041, -0.875422,
		0.405896, 0.778898, 0.478087,
		0.901804, -0.426240, -0.071202,
		32.697453, 34.580219, 48.904377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599411, 35.425919, 48.688828>,  <32.066189, 34.878590, 48.954220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599411, 35.425919, 48.688828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762421, 35.067440, 48.618675>,  <32.860226, 34.852352, 48.576584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762421, 35.067440, 48.618675>,  <32.599411, 35.425919, 48.688828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762421, 35.067440, 48.618675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348066, 0.329992, -0.877471,
		0.844261, 0.296543, 0.446414,
		0.407521, -0.896196, -0.175383,
		32.884678, 34.798580, 48.566059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236446, 35.538548, 48.468155>,  <32.599411, 35.425919, 48.688828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236446, 35.538548, 48.468155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208050, 35.160606, 48.340279>,  <33.191013, 34.933842, 48.263554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208050, 35.160606, 48.340279>,  <33.236446, 35.538548, 48.468155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208050, 35.160606, 48.340279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427282, 0.260805, -0.865685,
		0.901327, -0.198054, 0.385206,
		-0.070989, -0.944857, -0.319695,
		33.186752, 34.877148, 48.244370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931870, 35.308605, 48.146484>,  <33.236446, 35.538548, 48.468155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931870, 35.308605, 48.146484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651943, 35.073788, 47.983692>,  <33.483986, 34.932896, 47.886017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651943, 35.073788, 47.983692>,  <33.931870, 35.308605, 48.146484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651943, 35.073788, 47.983692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337884, 0.229939, -0.912668,
		0.629358, -0.776213, 0.037438,
		-0.699816, -0.587044, -0.406984,
		33.441998, 34.897675, 47.861595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309956, 34.898010, 47.823044>,  <33.931870, 35.308605, 48.146484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309956, 34.898010, 47.823044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949013, 34.914219, 47.651413>,  <33.732449, 34.923943, 47.548435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949013, 34.914219, 47.651413>,  <34.309956, 34.898010, 47.823044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949013, 34.914219, 47.651413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424977, 0.249362, -0.870180,
		0.071732, -0.967562, -0.242235,
		-0.902357, 0.040524, -0.429079,
		33.678307, 34.926376, 47.522690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464077, 34.732018, 47.081482>,  <34.309956, 34.898010, 47.823044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464077, 34.732018, 47.081482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.093643, 34.879887, 47.051281>,  <33.871384, 34.968609, 47.033161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.093643, 34.879887, 47.051281>,  <34.464077, 34.732018, 47.081482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093643, 34.879887, 47.051281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250836, 0.453722, -0.855113,
		-0.281857, -0.810849, -0.512914,
		-0.926087, 0.369677, -0.075506,
		33.815819, 34.990791, 47.028629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235172, 34.522980, 46.453262>,  <34.464077, 34.732018, 47.081482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235172, 34.522980, 46.453262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.978916, 34.820522, 46.529438>,  <33.825165, 34.999046, 46.575142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.978916, 34.820522, 46.529438>,  <34.235172, 34.522980, 46.453262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978916, 34.820522, 46.529438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251567, 0.437664, -0.863229,
		-0.725464, -0.505108, -0.467513,
		-0.640637, 0.743853, 0.190441,
		33.786724, 35.043678, 46.586571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664055, 34.602829, 45.824543>,  <34.235172, 34.522980, 46.453262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664055, 34.602829, 45.824543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734497, 34.939816, 46.028206>,  <33.776760, 35.142006, 46.150406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734497, 34.939816, 46.028206>,  <33.664055, 34.602829, 45.824543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734497, 34.939816, 46.028206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246520, 0.463016, -0.851378,
		-0.953004, 0.275446, -0.126147,
		0.176101, 0.842464, 0.509159,
		33.787327, 35.192554, 46.180954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654438, 35.034508, 45.247536>,  <33.664055, 34.602829, 45.824543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654438, 35.034508, 45.247536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750988, 35.291985, 45.538025>,  <33.808918, 35.446472, 45.712318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750988, 35.291985, 45.538025>,  <33.654438, 35.034508, 45.247536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750988, 35.291985, 45.538025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332284, 0.648287, -0.685063,
		-0.911770, 0.406670, -0.057408,
		0.241378, 0.643695, 0.726218,
		33.823402, 35.485092, 45.755890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294250, 35.724369, 45.119675>,  <33.654438, 35.034508, 45.247536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294250, 35.724369, 45.119675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624298, 35.766846, 45.341633>,  <33.822327, 35.792332, 45.474808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624298, 35.766846, 45.341633>,  <33.294250, 35.724369, 45.119675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624298, 35.766846, 45.341633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325361, 0.713634, -0.620376,
		-0.461873, 0.692423, 0.554278,
		0.825114, 0.106194, 0.554895,
		33.871834, 35.798702, 45.508102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530560, 36.336575, 45.019699>,  <33.294250, 35.724369, 45.119675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530560, 36.336575, 45.019699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.862434, 36.187336, 45.185791>,  <34.061558, 36.097794, 45.285446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.862434, 36.187336, 45.185791>,  <33.530560, 36.336575, 45.019699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862434, 36.187336, 45.185791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554977, 0.631472, -0.541520,
		-0.060166, 0.679736, 0.730985,
		0.829687, -0.373099, 0.415231,
		34.111340, 36.075405, 45.310360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858955, 36.937542, 45.430641>,  <33.530560, 36.336575, 45.019699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858955, 36.937542, 45.430641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124702, 36.673908, 45.289658>,  <34.284149, 36.515728, 45.205067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124702, 36.673908, 45.289658>,  <33.858955, 36.937542, 45.430641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124702, 36.673908, 45.289658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365833, 0.697976, -0.615626,
		0.651757, 0.280059, 0.704826,
		0.664363, -0.659087, -0.352456,
		34.324013, 36.476181, 45.183922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426281, 37.338089, 45.318939>,  <33.858955, 36.937542, 45.430641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426281, 37.338089, 45.318939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557102, 37.015163, 45.122456>,  <34.635593, 36.821407, 45.004566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557102, 37.015163, 45.122456>,  <34.426281, 37.338089, 45.318939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557102, 37.015163, 45.122456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429270, 0.589989, -0.683843,
		0.841882, 0.012791, 0.539511,
		0.327052, -0.807310, -0.491210,
		34.655216, 36.772972, 44.975094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211582, 37.405762, 45.207172>,  <34.426281, 37.338089, 45.318939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211582, 37.405762, 45.207172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061783, 37.138927, 44.949570>,  <34.971905, 36.978828, 44.795006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061783, 37.138927, 44.949570>,  <35.211582, 37.405762, 45.207172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061783, 37.138927, 44.949570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359674, 0.535658, -0.764006,
		0.854627, -0.517751, 0.039332,
		-0.374497, -0.667087, -0.644009,
		34.949432, 36.938801, 44.756367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713722, 37.438370, 44.678661>,  <35.211582, 37.405762, 45.207172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713722, 37.438370, 44.678661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405529, 37.265232, 44.491474>,  <35.220612, 37.161350, 44.379162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405529, 37.265232, 44.491474>,  <35.713722, 37.438370, 44.678661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405529, 37.265232, 44.491474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295533, 0.407902, -0.863873,
		0.564812, -0.803901, -0.186361,
		-0.770485, -0.432850, -0.467967,
		35.174381, 37.135376, 44.351086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.275391, 34.090172, 40.900494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.355721, 34.479004, 40.851948>,  <39.403919, 34.712303, 40.822819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.355721, 34.479004, 40.851948>,  <39.275391, 34.090172, 40.900494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355721, 34.479004, 40.851948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317451, -0.181783, -0.930688,
		-0.926765, 0.148381, -0.345094,
		0.200828, 0.972079, -0.121367,
		39.415970, 34.770626, 40.815536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177547, 34.154789, 40.183304>,  <39.275391, 34.090172, 40.900494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177547, 34.154789, 40.183304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331661, 34.508488, 40.288879>,  <39.424129, 34.720707, 40.352222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331661, 34.508488, 40.288879>,  <39.177547, 34.154789, 40.183304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331661, 34.508488, 40.288879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350828, 0.124185, -0.928169,
		-0.853509, 0.450203, -0.262373,
		0.385282, 0.884249, 0.263936,
		39.447247, 34.773762, 40.368061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060081, 34.548298, 39.603951>,  <39.177547, 34.154789, 40.183304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060081, 34.548298, 39.603951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362953, 34.717075, 39.803402>,  <39.544678, 34.818344, 39.923073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362953, 34.717075, 39.803402>,  <39.060081, 34.548298, 39.603951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362953, 34.717075, 39.803402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406509, 0.293131, -0.865346,
		-0.511295, 0.857924, 0.050429,
		0.757184, 0.421947, 0.498631,
		39.590107, 34.843658, 39.952991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124710, 35.184761, 39.262672>,  <39.060081, 34.548298, 39.603951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124710, 35.184761, 39.262672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474800, 35.165310, 39.455177>,  <39.684853, 35.153637, 39.570683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474800, 35.165310, 39.455177>,  <39.124710, 35.184761, 39.262672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474800, 35.165310, 39.455177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470923, 0.312970, -0.824792,
		-0.110510, 0.948517, 0.296821,
		0.875225, -0.048632, 0.481265,
		39.737370, 35.150719, 39.599556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458729, 35.862495, 39.234322>,  <39.124710, 35.184761, 39.262672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458729, 35.862495, 39.234322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751480, 35.594273, 39.282841>,  <39.927132, 35.433338, 39.311954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751480, 35.594273, 39.282841>,  <39.458729, 35.862495, 39.234322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751480, 35.594273, 39.282841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511692, 0.423226, -0.747697,
		0.450035, 0.609289, 0.652867,
		0.731874, -0.670557, 0.121302,
		39.971043, 35.393105, 39.319233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081646, 36.279114, 39.292099>,  <39.458729, 35.862495, 39.234322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081646, 36.279114, 39.292099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195343, 35.911999, 39.181190>,  <40.263561, 35.691730, 39.114643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195343, 35.911999, 39.181190>,  <40.081646, 36.279114, 39.292099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195343, 35.911999, 39.181190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687258, 0.396690, -0.608534,
		0.668495, -0.017591, 0.743509,
		0.284238, -0.917784, -0.277275,
		40.280613, 35.636665, 39.098007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723930, 36.413307, 39.114033>,  <40.081646, 36.279114, 39.292099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723930, 36.413307, 39.114033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633808, 36.064461, 38.940296>,  <40.579735, 35.855152, 38.836056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633808, 36.064461, 38.940296>,  <40.723930, 36.413307, 39.114033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633808, 36.064461, 38.940296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499831, 0.279197, -0.819889,
		0.836304, -0.401825, 0.373005,
		-0.225310, -0.872116, -0.434338,
		40.566216, 35.802826, 38.809994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257179, 36.308109, 38.692192>,  <40.723930, 36.413307, 39.114033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257179, 36.308109, 38.692192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.018452, 36.032974, 38.526936>,  <40.875217, 35.867893, 38.427780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.018452, 36.032974, 38.526936>,  <41.257179, 36.308109, 38.692192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018452, 36.032974, 38.526936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551102, 0.022832, -0.834125,
		0.583178, -0.725502, 0.365444,
		-0.596816, -0.687841, -0.413141,
		40.839405, 35.826622, 38.402992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683880, 35.883183, 38.375141>,  <41.257179, 36.308109, 38.692192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683880, 35.883183, 38.375141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.333797, 35.804245, 38.198479>,  <41.123749, 35.756882, 38.092480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.333797, 35.804245, 38.198479>,  <41.683880, 35.883183, 38.375141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333797, 35.804245, 38.198479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423260, 0.129655, -0.896683,
		0.234222, -0.971722, -0.029945,
		-0.875209, -0.197348, -0.441659,
		41.071236, 35.745041, 38.065983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903389, 35.553165, 37.831749>,  <41.683880, 35.883183, 38.375141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903389, 35.553165, 37.831749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528545, 35.669476, 37.754517>,  <41.303638, 35.739262, 37.708176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528545, 35.669476, 37.754517>,  <41.903389, 35.553165, 37.831749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528545, 35.669476, 37.754517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211071, 0.031504, -0.976963,
		-0.277998, -0.956271, -0.090897,
		-0.937105, 0.290779, -0.193083,
		41.247414, 35.756710, 37.696590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772278, 35.177090, 37.288158>,  <41.903389, 35.553165, 37.831749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772278, 35.177090, 37.288158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482323, 35.452431, 37.277580>,  <41.308350, 35.617638, 37.271233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482323, 35.452431, 37.277580>,  <41.772278, 35.177090, 37.288158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482323, 35.452431, 37.277580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147825, 0.117942, -0.981956,
		-0.672815, -0.715722, -0.187252,
		-0.724892, 0.688355, -0.026449,
		41.264854, 35.658936, 37.269646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220947, 35.019981, 36.851612>,  <41.772278, 35.177090, 37.288158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220947, 35.019981, 36.851612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.217159, 35.419228, 36.875877>,  <41.214886, 35.658775, 36.890434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.217159, 35.419228, 36.875877>,  <41.220947, 35.019981, 36.851612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217159, 35.419228, 36.875877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203399, 0.061318, -0.977174,
		-0.979050, 0.003086, -0.203596,
		-0.009469, 0.998114, 0.060661,
		41.214317, 35.718662, 36.894077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960976, 35.182583, 36.256195>,  <41.220947, 35.019981, 36.851612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960976, 35.182583, 36.256195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.126873, 35.526558, 36.375187>,  <41.226414, 35.732944, 36.446583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.126873, 35.526558, 36.375187>,  <40.960976, 35.182583, 36.256195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126873, 35.526558, 36.375187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316661, 0.170083, -0.933165,
		-0.853059, 0.481228, -0.201767,
		0.414748, 0.859937, 0.297477,
		41.251297, 35.784538, 36.464432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676811, 35.670082, 35.867180>,  <40.960976, 35.182583, 36.256195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676811, 35.670082, 35.867180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.041409, 35.797382, 35.971413>,  <41.260166, 35.873764, 36.033955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.041409, 35.797382, 35.971413>,  <40.676811, 35.670082, 35.867180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041409, 35.797382, 35.971413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183038, 0.253515, -0.949857,
		-0.368354, 0.913481, 0.172824,
		0.911489, 0.318250, 0.260585,
		41.314854, 35.892857, 36.049587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857235, 36.236954, 35.448921>,  <40.676811, 35.670082, 35.867180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857235, 36.236954, 35.448921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.228775, 36.142029, 35.562702>,  <41.451698, 36.085075, 35.630970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.228775, 36.142029, 35.562702>,  <40.857235, 36.236954, 35.448921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228775, 36.142029, 35.562702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332445, 0.195235, -0.922694,
		0.163430, 0.951613, 0.260237,
		0.928854, -0.237311, 0.284452,
		41.507431, 36.070835, 35.648037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298531, 36.777374, 35.089005>,  <40.857235, 36.236954, 35.448921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298531, 36.777374, 35.089005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.556992, 36.491058, 35.194931>,  <41.712070, 36.319267, 35.258488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.556992, 36.491058, 35.194931>,  <41.298531, 36.777374, 35.089005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556992, 36.491058, 35.194931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438007, 0.063644, -0.896716,
		0.625007, 0.695409, 0.354645,
		0.646155, -0.715790, 0.264816,
		41.750839, 36.276321, 35.274376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878895, 36.974293, 34.701515>,  <41.298531, 36.777374, 35.089005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878895, 36.974293, 34.701515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953716, 36.597507, 34.813023>,  <41.998611, 36.371437, 34.879925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953716, 36.597507, 34.813023>,  <41.878895, 36.974293, 34.701515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953716, 36.597507, 34.813023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607777, -0.111967, -0.786174,
		0.771762, 0.316485, 0.551562,
		0.187056, -0.941966, 0.278764,
		42.009834, 36.314919, 34.896652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511299, 36.846664, 34.490826>,  <41.878895, 36.974293, 34.701515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511299, 36.846664, 34.490826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.439434, 36.457504, 34.549061>,  <42.396317, 36.224010, 34.584003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.439434, 36.457504, 34.549061>,  <42.511299, 36.846664, 34.490826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439434, 36.457504, 34.549061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725845, -0.230995, -0.647913,
		0.663982, -0.010728, 0.747672,
		-0.179659, -0.972896, 0.145589,
		42.385536, 36.165634, 34.592739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131580, 36.560276, 34.636314>,  <42.511299, 36.846664, 34.490826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131580, 36.560276, 34.636314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.875397, 36.294868, 34.481625>,  <42.721687, 36.135624, 34.388809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.875397, 36.294868, 34.481625>,  <43.131580, 36.560276, 34.636314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875397, 36.294868, 34.481625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705634, -0.309639, -0.637342,
		0.303140, -0.681080, 0.666511,
		-0.640458, -0.663516, -0.386729,
		42.683258, 36.095814, 34.365604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508656, 35.982815, 34.557915>,  <43.131580, 36.560276, 34.636314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508656, 35.982815, 34.557915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207577, 35.950844, 34.296516>,  <43.026928, 35.931660, 34.139679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207577, 35.950844, 34.296516>,  <43.508656, 35.982815, 34.557915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207577, 35.950844, 34.296516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625241, -0.397674, -0.671513,
		-0.206206, -0.914039, 0.349302,
		-0.752697, -0.079928, -0.653497,
		42.981766, 35.926865, 34.100468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958862, 36.077366, 35.124241>,  <43.508656, 35.982815, 34.557915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958862, 36.077366, 35.124241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266380, 35.827736, 35.068394>,  <44.450890, 35.677959, 35.034885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266380, 35.827736, 35.068394>,  <43.958862, 36.077366, 35.124241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266380, 35.827736, 35.068394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357748, -0.600665, 0.714996,
		-0.530070, -0.499737, -0.685047,
		0.768793, -0.624071, -0.139615,
		44.497017, 35.640514, 35.026508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730186, 35.326084, 34.957058>,  <43.958862, 36.077366, 35.124241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730186, 35.326084, 34.957058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082420, 35.361099, 35.143349>,  <44.293762, 35.382111, 35.255123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082420, 35.361099, 35.143349>,  <43.730186, 35.326084, 34.957058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082420, 35.361099, 35.143349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400148, -0.389126, 0.829736,
		0.253862, -0.917015, -0.307631,
		0.880588, 0.087540, 0.465726,
		44.346596, 35.387360, 35.283066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750759, 34.819550, 35.356167>,  <43.730186, 35.326084, 34.957058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750759, 34.819550, 35.356167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.010704, 35.044643, 35.560524>,  <44.166672, 35.179699, 35.683136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.010704, 35.044643, 35.560524>,  <43.750759, 34.819550, 35.356167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010704, 35.044643, 35.560524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326352, -0.400462, 0.856227,
		0.686425, -0.723156, -0.076592,
		0.649858, 0.562739, 0.510891,
		44.205662, 35.213467, 35.713791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105801, 34.304760, 35.993752>,  <43.750759, 34.819550, 35.356167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105801, 34.304760, 35.993752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.143845, 34.693893, 36.078175>,  <44.166672, 34.927376, 36.128826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.143845, 34.693893, 36.078175>,  <44.105801, 34.304760, 35.993752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143845, 34.693893, 36.078175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298323, -0.174415, 0.938394,
		0.949714, -0.152215, 0.273631,
		0.095112, 0.972836, 0.211053,
		44.172379, 34.985744, 36.141491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445385, 34.299236, 36.584305>,  <44.105801, 34.304760, 35.993752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445385, 34.299236, 36.584305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.305599, 34.673439, 36.605110>,  <44.221729, 34.897961, 36.617592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.305599, 34.673439, 36.605110>,  <44.445385, 34.299236, 36.584305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305599, 34.673439, 36.605110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132395, -0.104257, 0.985699,
		0.927549, 0.337580, 0.160290,
		-0.349464, 0.935505, 0.052009,
		44.200760, 34.954090, 36.620712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728760, 34.718193, 37.173935>,  <44.445385, 34.299236, 36.584305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728760, 34.718193, 37.173935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.391933, 34.913994, 37.083317>,  <44.189838, 35.031475, 37.028946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.391933, 34.913994, 37.083317>,  <44.728760, 34.718193, 37.173935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391933, 34.913994, 37.083317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280076, -0.037861, 0.959231,
		0.460966, 0.871181, 0.168979,
		-0.842062, 0.489500, -0.226544,
		44.139317, 35.060844, 37.015354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679359, 35.326801, 37.541126>,  <44.728760, 34.718193, 37.173935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679359, 35.326801, 37.541126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289089, 35.258469, 37.486168>,  <44.054928, 35.217468, 37.453194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289089, 35.258469, 37.486168>,  <44.679359, 35.326801, 37.541126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289089, 35.258469, 37.486168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153599, 0.085500, 0.984427,
		-0.156428, 0.981583, -0.109660,
		-0.975673, -0.170836, -0.137395,
		43.996387, 35.207218, 37.444950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291256, 35.876053, 37.934315>,  <44.679359, 35.326801, 37.541126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291256, 35.876053, 37.934315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.033638, 35.581478, 37.851498>,  <43.879066, 35.404732, 37.801807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.033638, 35.581478, 37.851498>,  <44.291256, 35.876053, 37.934315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033638, 35.581478, 37.851498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405109, 0.098755, 0.908919,
		-0.648915, 0.669260, -0.361940,
		-0.644047, -0.736437, -0.207039,
		43.840424, 35.360546, 37.789387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615864, 36.034187, 38.129803>,  <44.291256, 35.876053, 37.934315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615864, 36.034187, 38.129803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574238, 35.636478, 38.120029>,  <43.549263, 35.397854, 38.114166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574238, 35.636478, 38.120029>,  <43.615864, 36.034187, 38.129803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574238, 35.636478, 38.120029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572066, 0.039739, 0.819245,
		-0.813579, 0.099232, -0.572924,
		-0.104063, -0.994271, -0.024436,
		43.543018, 35.338196, 38.112698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901909, 35.909485, 38.344707>,  <43.615864, 36.034187, 38.129803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901909, 35.909485, 38.344707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.079067, 35.554470, 38.395496>,  <43.185364, 35.341461, 38.425968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.079067, 35.554470, 38.395496>,  <42.901909, 35.909485, 38.344707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079067, 35.554470, 38.395496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503210, -0.128868, 0.854502,
		-0.742038, -0.442351, -0.503692,
		0.442899, -0.887535, 0.126971,
		43.211937, 35.288208, 38.433586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389370, 35.494781, 38.632126>,  <42.901909, 35.909485, 38.344707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389370, 35.494781, 38.632126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.718639, 35.280262, 38.706718>,  <42.916199, 35.151550, 38.751472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.718639, 35.280262, 38.706718>,  <42.389370, 35.494781, 38.632126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718639, 35.280262, 38.706718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345715, -0.212879, 0.913873,
		-0.450410, -0.816742, -0.360642,
		0.823171, -0.536297, 0.186477,
		42.965591, 35.119373, 38.762661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226398, 34.799290, 38.844563>,  <42.389370, 35.494781, 38.632126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226398, 34.799290, 38.844563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593540, 34.847263, 38.995907>,  <42.813824, 34.876045, 39.086716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593540, 34.847263, 38.995907>,  <42.226398, 34.799290, 38.844563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593540, 34.847263, 38.995907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347466, -0.217997, 0.912000,
		0.191859, -0.968552, -0.158418,
		0.917854, 0.119931, 0.378364,
		42.868896, 34.883244, 39.109417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267838, 34.273891, 39.297260>,  <42.226398, 34.799290, 38.844563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267838, 34.273891, 39.297260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.573231, 34.502815, 39.416958>,  <42.756466, 34.640171, 39.488777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.573231, 34.502815, 39.416958>,  <42.267838, 34.273891, 39.297260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573231, 34.502815, 39.416958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196957, -0.234946, 0.951845,
		0.615059, -0.785659, -0.066657,
		0.763486, 0.572312, 0.299246,
		42.802277, 34.674507, 39.506733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719982, 33.960163, 39.800133>,  <42.267838, 34.273891, 39.297260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719982, 33.960163, 39.800133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755909, 34.350941, 39.877605>,  <42.777466, 34.585407, 39.924088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755909, 34.350941, 39.877605>,  <42.719982, 33.960163, 39.800133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755909, 34.350941, 39.877605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106890, -0.183887, 0.977118,
		0.990206, -0.108464, 0.087909,
		0.089817, 0.976945, 0.193680,
		42.782852, 34.644024, 39.935711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050690, 34.007431, 40.400326>,  <42.719982, 33.960163, 39.800133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050690, 34.007431, 40.400326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917011, 34.384167, 40.386143>,  <42.836803, 34.610207, 40.377632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917011, 34.384167, 40.386143>,  <43.050690, 34.007431, 40.400326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917011, 34.384167, 40.386143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037899, 0.024157, 0.998989,
		0.941743, 0.335197, 0.027622,
		-0.334192, 0.941838, -0.035454,
		42.816753, 34.666718, 40.375507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402611, 34.277367, 40.984226>,  <43.050690, 34.007431, 40.400326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402611, 34.277367, 40.984226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.113224, 34.538948, 40.895741>,  <42.939590, 34.695896, 40.842648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.113224, 34.538948, 40.895741>,  <43.402611, 34.277367, 40.984226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113224, 34.538948, 40.895741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252438, 0.047646, 0.966439,
		0.642545, 0.755034, 0.130611,
		-0.723471, 0.653952, -0.221214,
		42.896183, 34.735134, 40.829376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544224, 34.877495, 41.454826>,  <43.402611, 34.277367, 40.984226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544224, 34.877495, 41.454826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.167301, 34.856319, 41.322613>,  <42.941147, 34.843616, 41.243286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.167301, 34.856319, 41.322613>,  <43.544224, 34.877495, 41.454826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167301, 34.856319, 41.322613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330895, -0.002068, 0.943666,
		-0.050637, 0.998596, -0.015567,
		-0.942308, -0.052936, -0.330535,
		42.884609, 34.840439, 41.223454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148716, 35.437477, 41.715054>,  <43.544224, 34.877495, 41.454826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148716, 35.437477, 41.715054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850952, 35.176624, 41.657677>,  <42.672295, 35.020115, 41.623249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850952, 35.176624, 41.657677>,  <43.148716, 35.437477, 41.715054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850952, 35.176624, 41.657677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427454, 0.300392, 0.852671,
		-0.512964, 0.696054, -0.502371,
		-0.744413, -0.652130, -0.143441,
		42.627628, 34.980984, 41.614643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590569, 35.790668, 42.061657>,  <43.148716, 35.437477, 41.715054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590569, 35.790668, 42.061657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.432774, 35.430061, 41.990505>,  <42.338097, 35.213696, 41.947815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.432774, 35.430061, 41.990505>,  <42.590569, 35.790668, 42.061657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432774, 35.430061, 41.990505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633251, 0.126442, 0.763548,
		-0.665861, 0.413855, -0.620768,
		-0.394489, -0.901519, -0.177881,
		42.314426, 35.159607, 41.937141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762154, 35.811756, 42.026020>,  <42.590569, 35.790668, 42.061657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762154, 35.811756, 42.026020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.853195, 35.429405, 42.100311>,  <41.907822, 35.199993, 42.144886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.853195, 35.429405, 42.100311>,  <41.762154, 35.811756, 42.026020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853195, 35.429405, 42.100311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598236, 0.013232, 0.801210,
		-0.768317, -0.293467, -0.568829,
		0.227602, -0.955878, 0.185729,
		41.921474, 35.142643, 42.156029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114719, 35.500427, 42.107578>,  <41.762154, 35.811756, 42.026020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114719, 35.500427, 42.107578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.381004, 35.271816, 42.299488>,  <41.540775, 35.134647, 42.414635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.381004, 35.271816, 42.299488>,  <41.114719, 35.500427, 42.107578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381004, 35.271816, 42.299488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666820, -0.167044, 0.726256,
		-0.334934, -0.803399, -0.492310,
		0.665711, -0.571530, 0.479774,
		41.580719, 35.100357, 42.443420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685696, 34.997711, 42.486607>,  <41.114719, 35.500427, 42.107578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685696, 34.997711, 42.486607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.048428, 34.975395, 42.653721>,  <41.266068, 34.962006, 42.753990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.048428, 34.975395, 42.653721>,  <40.685696, 34.997711, 42.486607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048428, 34.975395, 42.653721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418049, -0.245550, 0.874609,
		0.053799, -0.967777, -0.245993,
		0.906830, -0.055784, 0.417789,
		41.320477, 34.958660, 42.779057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.030994, 37.086891, 40.548290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632908, 37.111835, 40.578388>,  <39.394058, 37.126801, 40.596447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632908, 37.111835, 40.578388>,  <40.030994, 37.086891, 40.548290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632908, 37.111835, 40.578388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067877, 0.112807, -0.991296,
		-0.070303, -0.991658, -0.108034,
		-0.995213, 0.062358, 0.075242,
		39.334343, 37.130543, 40.600960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722378, 36.665939, 39.968269>,  <40.030994, 37.086891, 40.548290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722378, 36.665939, 39.968269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433369, 36.923622, 40.068634>,  <39.259964, 37.078232, 40.128853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433369, 36.923622, 40.068634>,  <39.722378, 36.665939, 39.968269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433369, 36.923622, 40.068634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256999, 0.086644, -0.962520,
		-0.641803, -0.759927, 0.102958,
		-0.722524, 0.644208, 0.250908,
		39.216610, 37.116886, 40.143906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108879, 36.464996, 39.629162>,  <39.722378, 36.665939, 39.968269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108879, 36.464996, 39.629162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038265, 36.850399, 39.709652>,  <38.995899, 37.081642, 39.757946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038265, 36.850399, 39.709652>,  <39.108879, 36.464996, 39.629162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038265, 36.850399, 39.709652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229299, 0.158559, -0.960355,
		-0.957214, -0.215673, 0.192940,
		-0.176531, 0.963506, 0.201229,
		38.985306, 37.139450, 39.770020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488804, 36.627285, 39.208336>,  <39.108879, 36.464996, 39.629162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488804, 36.627285, 39.208336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673908, 36.972797, 39.288071>,  <38.784973, 37.180103, 39.335911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673908, 36.972797, 39.288071>,  <38.488804, 36.627285, 39.208336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673908, 36.972797, 39.288071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066997, 0.258295, -0.963740,
		-0.883947, 0.432629, 0.177400,
		0.462763, 0.863780, 0.199334,
		38.812737, 37.231930, 39.347870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948597, 37.128387, 39.079121>,  <38.488804, 36.627285, 39.208336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948597, 37.128387, 39.079121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304832, 37.309479, 39.061745>,  <38.518574, 37.418133, 39.051319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304832, 37.309479, 39.061745>,  <37.948597, 37.128387, 39.079121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304832, 37.309479, 39.061745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175500, 0.253976, -0.951155,
		-0.419581, 0.854713, 0.305642,
		0.890590, 0.452727, -0.043439,
		38.572010, 37.445297, 39.048714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823902, 37.701828, 38.657864>,  <37.948597, 37.128387, 39.079121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823902, 37.701828, 38.657864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223015, 37.678349, 38.645340>,  <38.462482, 37.664261, 38.637825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223015, 37.678349, 38.645340>,  <37.823902, 37.701828, 38.657864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223015, 37.678349, 38.645340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014362, 0.269442, -0.962909,
		0.064956, 0.961226, 0.268003,
		0.997785, -0.058697, -0.031307,
		38.522350, 37.660740, 38.635948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072689, 38.340374, 38.360714>,  <37.823902, 37.701828, 38.657864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072689, 38.340374, 38.360714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362541, 38.072132, 38.297222>,  <38.536453, 37.911186, 38.259129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362541, 38.072132, 38.297222>,  <38.072689, 38.340374, 38.360714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362541, 38.072132, 38.297222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139529, 0.082789, -0.986751,
		0.674861, 0.737181, -0.033577,
		0.724634, -0.670604, -0.158729,
		38.579933, 37.870953, 38.249603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679344, 38.674164, 37.888004>,  <38.072689, 38.340374, 38.360714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679344, 38.674164, 37.888004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699272, 38.275120, 37.868855>,  <38.711227, 38.035694, 37.857365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699272, 38.275120, 37.868855>,  <38.679344, 38.674164, 37.888004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699272, 38.275120, 37.868855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002641, 0.047806, -0.998853,
		0.998755, 0.049886, -0.000253,
		0.049817, -0.997610, -0.047879,
		38.714218, 37.975838, 37.854492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974819, 38.616924, 37.269222>,  <38.679344, 38.674164, 37.888004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974819, 38.616924, 37.269222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900581, 38.230286, 37.339920>,  <38.856041, 37.998302, 37.382339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900581, 38.230286, 37.339920>,  <38.974819, 38.616924, 37.269222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900581, 38.230286, 37.339920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007595, -0.181273, -0.983403,
		0.982598, -0.181168, 0.040984,
		-0.185591, -0.966601, 0.176743,
		38.844906, 37.940304, 37.392944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305531, 38.194725, 36.828285>,  <38.974819, 38.616924, 37.269222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305531, 38.194725, 36.828285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008526, 37.958260, 36.954269>,  <38.830322, 37.816380, 37.029858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008526, 37.958260, 36.954269>,  <39.305531, 38.194725, 36.828285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008526, 37.958260, 36.954269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117655, -0.347788, -0.930161,
		0.659419, -0.727712, 0.188683,
		-0.742512, -0.591166, 0.314957,
		38.785770, 37.780910, 37.048756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541374, 37.611813, 36.680298>,  <39.305531, 38.194725, 36.828285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541374, 37.611813, 36.680298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141457, 37.609718, 36.688198>,  <38.901508, 37.608463, 36.692936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141457, 37.609718, 36.688198>,  <39.541374, 37.611813, 36.680298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141457, 37.609718, 36.688198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018153, -0.215707, -0.976289,
		0.009373, -0.976444, 0.215567,
		-0.999791, -0.005238, 0.019747,
		38.841518, 37.608147, 36.694122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481609, 36.973061, 36.398632>,  <39.541374, 37.611813, 36.680298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481609, 36.973061, 36.398632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138359, 37.177551, 36.379593>,  <38.932407, 37.300247, 36.368168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138359, 37.177551, 36.379593>,  <39.481609, 36.973061, 36.398632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138359, 37.177551, 36.379593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055740, -0.184914, -0.981173,
		-0.510407, -0.839315, 0.187175,
		-0.858125, 0.511230, -0.047598,
		38.880920, 37.330921, 36.365314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887123, 36.628658, 36.160873>,  <39.481609, 36.973061, 36.398632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887123, 36.628658, 36.160873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785847, 37.004742, 36.069748>,  <38.725082, 37.230392, 36.015072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785847, 37.004742, 36.069748>,  <38.887123, 36.628658, 36.160873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785847, 37.004742, 36.069748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226590, -0.286568, -0.930879,
		-0.940506, -0.184071, 0.285599,
		-0.253192, 0.940211, -0.227810,
		38.709888, 37.286804, 36.001404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731541, 36.959805, 35.535950>,  <38.887123, 36.628658, 36.160873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731541, 36.959805, 35.535950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673420, 36.687656, 35.248623>,  <38.638550, 36.524368, 35.076225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673420, 36.687656, 35.248623>,  <38.731541, 36.959805, 35.535950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673420, 36.687656, 35.248623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120356, -0.708476, 0.695397,
		-0.982040, 0.187494, 0.021053,
		-0.145298, -0.680374, -0.718318,
		38.629829, 36.483543, 35.033127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074738, 36.603249, 35.518192>,  <38.731541, 36.959805, 35.535950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074738, 36.603249, 35.518192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329857, 36.347626, 35.346230>,  <38.482929, 36.194252, 35.243053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329857, 36.347626, 35.346230>,  <38.074738, 36.603249, 35.518192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329857, 36.347626, 35.346230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290052, -0.716366, 0.634578,
		-0.713428, -0.280111, -0.642307,
		0.637879, -0.639028, -0.429829,
		38.521194, 36.155907, 35.217258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714546, 35.927494, 35.322365>,  <38.074738, 36.603249, 35.518192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714546, 35.927494, 35.322365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101425, 35.839466, 35.373112>,  <38.333553, 35.786648, 35.403561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101425, 35.839466, 35.373112>,  <37.714546, 35.927494, 35.322365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101425, 35.839466, 35.373112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253749, -0.813894, 0.522675,
		-0.011771, -0.537722, -0.843040,
		0.967198, -0.220073, 0.126866,
		38.391586, 35.773445, 35.411171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749416, 35.195572, 35.188137>,  <37.714546, 35.927494, 35.322365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749416, 35.195572, 35.188137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095009, 35.275749, 35.372898>,  <38.302364, 35.323856, 35.483753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095009, 35.275749, 35.372898>,  <37.749416, 35.195572, 35.188137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095009, 35.275749, 35.372898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077888, -0.853107, 0.515890,
		0.497457, -0.481698, -0.721460,
		0.863985, 0.200440, 0.461902,
		38.354206, 35.335880, 35.511467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174072, 34.536255, 35.151657>,  <37.749416, 35.195572, 35.188137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174072, 34.536255, 35.151657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331314, 34.757664, 35.445347>,  <38.425659, 34.890511, 35.621559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331314, 34.757664, 35.445347>,  <38.174072, 34.536255, 35.151657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331314, 34.757664, 35.445347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149231, -0.749512, 0.644951,
		0.907305, -0.363099, -0.212030,
		0.393100, 0.553526, 0.734221,
		38.449245, 34.923721, 35.665615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601303, 34.094616, 35.598633>,  <38.174072, 34.536255, 35.151657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601303, 34.094616, 35.598633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520237, 34.417847, 35.819878>,  <38.471596, 34.611786, 35.952625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520237, 34.417847, 35.819878>,  <38.601303, 34.094616, 35.598633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520237, 34.417847, 35.819878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039049, -0.571057, 0.819981,
		0.978469, 0.144583, 0.147288,
		-0.202665, 0.808078, 0.553116,
		38.459438, 34.660271, 35.985813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951195, 33.970360, 36.192398>,  <38.601303, 34.094616, 35.598633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951195, 33.970360, 36.192398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723179, 34.281952, 36.296886>,  <38.586369, 34.468906, 36.359581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723179, 34.281952, 36.296886>,  <38.951195, 33.970360, 36.192398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723179, 34.281952, 36.296886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014348, -0.327327, 0.944802,
		0.821492, 0.534827, 0.197766,
		-0.570040, 0.778985, 0.261223,
		38.552166, 34.515648, 36.375252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116680, 34.009354, 36.926102>,  <38.951195, 33.970360, 36.192398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116680, 34.009354, 36.926102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773823, 34.208878, 36.874722>,  <38.568108, 34.328590, 36.843895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773823, 34.208878, 36.874722>,  <39.116680, 34.009354, 36.926102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773823, 34.208878, 36.874722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280465, -0.242805, 0.928647,
		0.432029, 0.832007, 0.348016,
		-0.857141, 0.498808, -0.128451,
		38.516682, 34.358521, 36.836185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877834, 34.513992, 37.521088>,  <39.116680, 34.009354, 36.926102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877834, 34.513992, 37.521088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547642, 34.398159, 37.327297>,  <38.349525, 34.328659, 37.211025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547642, 34.398159, 37.327297>,  <38.877834, 34.513992, 37.521088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547642, 34.398159, 37.327297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439451, -0.208895, 0.873639,
		-0.354198, 0.934078, 0.045181,
		-0.825486, -0.289586, -0.484472,
		38.299995, 34.311283, 37.181957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354156, 34.700356, 37.978832>,  <38.877834, 34.513992, 37.521088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354156, 34.700356, 37.978832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147053, 34.467808, 37.727776>,  <38.022789, 34.328278, 37.577141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147053, 34.467808, 37.727776>,  <38.354156, 34.700356, 37.978832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147053, 34.467808, 37.727776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545578, -0.340723, 0.765672,
		-0.658990, 0.738861, -0.140770,
		-0.517761, -0.581371, -0.627639,
		37.991726, 34.293396, 37.539482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691605, 34.745979, 38.233688>,  <38.354156, 34.700356, 37.978832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691605, 34.745979, 38.233688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647831, 34.430248, 37.992035>,  <37.621567, 34.240810, 37.847042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647831, 34.430248, 37.992035>,  <37.691605, 34.745979, 38.233688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647831, 34.430248, 37.992035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631084, -0.414402, 0.655746,
		-0.767956, 0.453021, -0.452786,
		-0.109431, -0.789330, -0.604137,
		37.615002, 34.193451, 37.810795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001007, 34.501869, 38.252056>,  <37.691605, 34.745979, 38.233688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001007, 34.501869, 38.252056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218502, 34.187416, 38.134514>,  <37.348999, 33.998745, 38.063988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218502, 34.187416, 38.134514>,  <37.001007, 34.501869, 38.252056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218502, 34.187416, 38.134514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523742, -0.591434, 0.613106,
		-0.655776, -0.179465, -0.733314,
		0.543738, -0.786129, -0.293855,
		37.381622, 33.951576, 38.046356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482723, 34.058716, 38.090233>,  <37.001007, 34.501869, 38.252056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482723, 34.058716, 38.090233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826557, 33.868793, 38.165791>,  <37.032856, 33.754841, 38.211124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826557, 33.868793, 38.165791>,  <36.482723, 34.058716, 38.090233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826557, 33.868793, 38.165791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421905, -0.450886, 0.786573,
		-0.288297, -0.755820, -0.587896,
		0.859582, -0.474803, 0.188895,
		37.084431, 33.726353, 38.222458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293331, 33.373566, 38.340202>,  <36.482723, 34.058716, 38.090233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293331, 33.373566, 38.340202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670609, 33.384270, 38.472668>,  <36.896976, 33.390690, 38.552147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670609, 33.384270, 38.472668>,  <36.293331, 33.373566, 38.340202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670609, 33.384270, 38.472668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274294, -0.499753, 0.821590,
		0.187487, -0.865755, -0.464023,
		0.943192, 0.026758, 0.331168,
		36.953568, 33.392296, 38.572018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505901, 32.659546, 38.602142>,  <36.293331, 33.373566, 38.340202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505901, 32.659546, 38.602142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764057, 32.918091, 38.764961>,  <36.918949, 33.073219, 38.862652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764057, 32.918091, 38.764961>,  <36.505901, 32.659546, 38.602142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764057, 32.918091, 38.764961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125224, -0.436148, 0.891119,
		0.753520, -0.626090, -0.200545,
		0.645389, 0.646363, 0.407048,
		36.957672, 33.112000, 38.887077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503769, 31.888052, 38.660843>,  <36.505901, 32.659546, 38.602142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503769, 31.888052, 38.660843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106312, 31.843996, 38.651539>,  <35.867836, 31.817562, 38.645958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106312, 31.843996, 38.651539>,  <36.503769, 31.888052, 38.660843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106312, 31.843996, 38.651539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020024, 0.376255, -0.926300,
		0.110773, -0.919947, -0.376069,
		-0.993644, -0.110140, -0.023258,
		35.808220, 31.810953, 38.644562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313454, 31.577412, 37.988499>,  <36.503769, 31.888052, 38.660843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313454, 31.577412, 37.988499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969109, 31.737322, 38.114414>,  <35.762501, 31.833267, 38.189964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969109, 31.737322, 38.114414>,  <36.313454, 31.577412, 37.988499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969109, 31.737322, 38.114414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181191, 0.337255, -0.923812,
		-0.475480, -0.852315, -0.217895,
		-0.860865, 0.399774, 0.314789,
		35.710850, 31.857254, 38.208851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873711, 31.277153, 37.535748>,  <36.313454, 31.577412, 37.988499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873711, 31.277153, 37.535748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697392, 31.610422, 37.669327>,  <35.591599, 31.810383, 37.749474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697392, 31.610422, 37.669327>,  <35.873711, 31.277153, 37.535748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697392, 31.610422, 37.669327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208105, 0.267042, -0.940947,
		-0.873148, -0.484266, 0.055674,
		-0.440801, 0.833172, 0.333945,
		35.565151, 31.860374, 37.769512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269318, 31.453106, 37.134987>,  <35.873711, 31.277153, 37.535748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269318, 31.453106, 37.134987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357319, 31.807270, 37.298767>,  <35.410118, 32.019768, 37.397038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357319, 31.807270, 37.298767>,  <35.269318, 31.453106, 37.134987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357319, 31.807270, 37.298767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210157, 0.452898, -0.866439,
		-0.952594, 0.104566, 0.285712,
		0.219999, 0.885409, 0.409453,
		35.423317, 32.072891, 37.421604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808151, 31.807999, 36.885422>,  <35.269318, 31.453106, 37.134987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808151, 31.807999, 36.885422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060730, 32.089802, 37.014999>,  <35.212276, 32.258884, 37.092747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060730, 32.089802, 37.014999>,  <34.808151, 31.807999, 36.885422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060730, 32.089802, 37.014999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258540, 0.585147, -0.768609,
		-0.731047, 0.401585, 0.551634,
		0.631449, 0.704509, 0.323944,
		35.250164, 32.301155, 37.112183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454567, 32.421661, 36.655102>,  <34.808151, 31.807999, 36.885422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454567, 32.421661, 36.655102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832176, 32.529133, 36.731655>,  <35.058743, 32.593616, 36.777588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832176, 32.529133, 36.731655>,  <34.454567, 32.421661, 36.655102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832176, 32.529133, 36.731655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043775, 0.677084, -0.734603,
		-0.326955, 0.685106, 0.650946,
		0.944026, 0.268677, 0.191385,
		35.115383, 32.609737, 36.789070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521164, 33.056114, 36.780113>,  <34.454567, 32.421661, 36.655102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521164, 33.056114, 36.780113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894562, 32.976482, 36.660809>,  <35.118599, 32.928703, 36.589226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894562, 32.976482, 36.660809>,  <34.521164, 33.056114, 36.780113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894562, 32.976482, 36.660809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029934, 0.785585, -0.618029,
		0.357348, 0.585853, 0.727378,
		0.933492, -0.199078, -0.298264,
		35.174610, 32.916759, 36.571331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021603, 33.608574, 36.981853>,  <34.521164, 33.056114, 36.780113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021603, 33.608574, 36.981853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210270, 33.431046, 36.677078>,  <35.323471, 33.324528, 36.494213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210270, 33.431046, 36.677078>,  <35.021603, 33.608574, 36.981853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210270, 33.431046, 36.677078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053648, 0.876941, -0.477593,
		0.880144, 0.184388, 0.437433,
		0.471666, -0.443818, -0.761943,
		35.351768, 33.297901, 36.448494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631836, 33.918461, 36.916683>,  <35.021603, 33.608574, 36.981853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631836, 33.918461, 36.916683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620285, 33.753147, 36.552624>,  <35.613354, 33.653961, 36.334190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620285, 33.753147, 36.552624>,  <35.631836, 33.918461, 36.916683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620285, 33.753147, 36.552624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334102, 0.854167, -0.398465,
		0.942094, -0.315589, 0.113409,
		-0.028881, -0.413281, -0.910145,
		35.611622, 33.629162, 36.279579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120136, 34.276501, 36.532707>,  <35.631836, 33.918461, 36.916683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120136, 34.276501, 36.532707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900368, 34.138527, 36.228298>,  <35.768505, 34.055744, 36.045654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900368, 34.138527, 36.228298>,  <36.120136, 34.276501, 36.532707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900368, 34.138527, 36.228298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430893, 0.663385, -0.611762,
		0.715867, -0.664036, -0.215851,
		-0.549423, -0.344931, -0.761023,
		35.735542, 34.035049, 35.999992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579266, 34.124790, 35.937962>,  <36.120136, 34.276501, 36.532707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579266, 34.124790, 35.937962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219921, 34.194267, 35.776577>,  <36.004314, 34.235954, 35.679745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219921, 34.194267, 35.776577>,  <36.579266, 34.124790, 35.937962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219921, 34.194267, 35.776577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417853, 0.621170, -0.662983,
		0.135461, -0.764184, -0.630612,
		-0.898359, 0.173694, -0.403461,
		35.950413, 34.246376, 35.655540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736603, 34.156166, 35.234283>,  <36.579266, 34.124790, 35.937962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736603, 34.156166, 35.234283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383465, 34.337315, 35.284065>,  <36.171581, 34.446003, 35.313934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383465, 34.337315, 35.284065>,  <36.736603, 34.156166, 35.234283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383465, 34.337315, 35.284065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304216, 0.753292, -0.583099,
		-0.357816, -0.476927, -0.802812,
		-0.882848, 0.452871, 0.124451,
		36.118610, 34.473175, 35.321400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.844517, 29.933226, 41.551979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.500450, 30.123070, 41.626667>,  <35.294010, 30.236977, 41.671478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.500450, 30.123070, 41.626667>,  <35.844517, 29.933226, 41.551979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500450, 30.123070, 41.626667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001688, 0.368753, -0.929526,
		-0.510016, -0.799229, -0.317989,
		-0.860163, 0.474610, 0.186721,
		35.242401, 30.265453, 41.682682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364059, 29.687807, 41.060146>,  <35.844517, 29.933226, 41.551979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364059, 29.687807, 41.060146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276699, 30.059652, 41.178886>,  <35.224285, 30.282759, 41.250130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276699, 30.059652, 41.178886>,  <35.364059, 29.687807, 41.060146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276699, 30.059652, 41.178886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054763, 0.292044, -0.954836,
		-0.974322, -0.224790, -0.012873,
		-0.218397, 0.929613, 0.296855,
		35.211182, 30.338535, 41.267944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037121, 29.913429, 40.546062>,  <35.364059, 29.687807, 41.060146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037121, 29.913429, 40.546062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.101398, 30.257383, 40.739876>,  <35.139965, 30.463757, 40.856163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.101398, 30.257383, 40.739876>,  <35.037121, 29.913429, 40.546062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101398, 30.257383, 40.739876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102100, 0.502759, -0.858376,
		-0.981709, 0.088469, 0.168587,
		0.160699, 0.859887, 0.484531,
		35.149609, 30.515350, 40.885235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397221, 30.342857, 40.382748>,  <35.037121, 29.913429, 40.546062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397221, 30.342857, 40.382748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714828, 30.564470, 40.482815>,  <34.905392, 30.697439, 40.542854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714828, 30.564470, 40.482815>,  <34.397221, 30.342857, 40.382748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714828, 30.564470, 40.482815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014070, 0.428165, -0.903591,
		-0.607732, 0.713947, 0.347766,
		0.794018, 0.554034, 0.250164,
		34.953033, 30.730680, 40.557865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199394, 30.965712, 40.253689>,  <34.397221, 30.342857, 40.382748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199394, 30.965712, 40.253689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596115, 31.014496, 40.268906>,  <34.834148, 31.043766, 40.278034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596115, 31.014496, 40.268906>,  <34.199394, 30.965712, 40.253689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596115, 31.014496, 40.268906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021937, 0.455917, -0.889752,
		-0.125860, 0.881626, 0.454856,
		0.991805, 0.121963, 0.038042,
		34.893658, 31.051085, 40.280319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424694, 31.699165, 40.227791>,  <34.199394, 30.965712, 40.253689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424694, 31.699165, 40.227791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.756878, 31.505520, 40.117538>,  <34.956188, 31.389332, 40.051388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.756878, 31.505520, 40.117538>,  <34.424694, 31.699165, 40.227791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756878, 31.505520, 40.117538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162353, 0.683626, -0.711546,
		0.532900, 0.546158, 0.646319,
		0.830457, -0.484114, -0.275634,
		35.006016, 31.360285, 40.034847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927505, 32.188198, 39.975567>,  <34.424694, 31.699165, 40.227791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927505, 32.188198, 39.975567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150848, 31.874157, 39.868351>,  <35.284855, 31.685732, 39.804024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150848, 31.874157, 39.868351>,  <34.927505, 32.188198, 39.975567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150848, 31.874157, 39.868351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267787, 0.476365, -0.837476,
		0.785191, 0.395836, 0.476224,
		0.558359, -0.785106, -0.268037,
		35.318356, 31.638626, 39.787941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626373, 32.425240, 39.778851>,  <34.927505, 32.188198, 39.975567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626373, 32.425240, 39.778851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.547981, 32.077187, 39.597984>,  <35.500946, 31.868355, 39.489464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.547981, 32.077187, 39.597984>,  <35.626373, 32.425240, 39.778851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547981, 32.077187, 39.597984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253729, 0.400412, -0.880507,
		0.947214, -0.287289, 0.142307,
		-0.195978, -0.870135, -0.452169,
		35.489189, 31.816147, 39.462334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176460, 32.333603, 39.317238>,  <35.626373, 32.425240, 39.778851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176460, 32.333603, 39.317238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873264, 32.101933, 39.197231>,  <35.691345, 31.962931, 39.125225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873264, 32.101933, 39.197231>,  <36.176460, 32.333603, 39.317238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873264, 32.101933, 39.197231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135584, 0.310014, -0.941015,
		0.638020, -0.753956, -0.156460,
		-0.757989, -0.579173, -0.300020,
		35.645866, 31.928181, 39.107224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856754, 32.304836, 39.125767>,  <36.176460, 32.333603, 39.317238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856754, 32.304836, 39.125767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895443, 32.686344, 39.239582>,  <36.918655, 32.915249, 39.307873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895443, 32.686344, 39.239582>,  <36.856754, 32.304836, 39.125767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895443, 32.686344, 39.239582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156130, -0.267802, 0.950740,
		0.982990, -0.136380, 0.123010,
		0.096720, 0.953773, 0.284539,
		36.924458, 32.972477, 39.324944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127499, 32.265137, 39.785999>,  <36.856754, 32.304836, 39.125767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127499, 32.265137, 39.785999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.002071, 32.644768, 39.773823>,  <36.926815, 32.872547, 39.766518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.002071, 32.644768, 39.773823>,  <37.127499, 32.265137, 39.785999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002071, 32.644768, 39.773823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275610, -0.060286, 0.959377,
		0.908689, 0.309217, 0.280479,
		-0.313564, 0.949079, -0.030442,
		36.908001, 32.929493, 39.764690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593082, 32.573154, 40.152645>,  <37.127499, 32.265137, 39.785999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593082, 32.573154, 40.152645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.265186, 32.802238, 40.154518>,  <37.068447, 32.939690, 40.155643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.265186, 32.802238, 40.154518>,  <37.593082, 32.573154, 40.152645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265186, 32.802238, 40.154518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044775, -0.072235, 0.996382,
		0.570981, 0.816566, 0.084857,
		-0.819742, 0.572714, 0.004683,
		37.019264, 32.974052, 40.155922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740841, 33.045536, 40.620510>,  <37.593082, 32.573154, 40.152645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740841, 33.045536, 40.620510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343311, 33.077709, 40.589916>,  <37.104794, 33.097015, 40.571560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343311, 33.077709, 40.589916>,  <37.740841, 33.045536, 40.620510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343311, 33.077709, 40.589916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069971, 0.080947, 0.994259,
		0.086167, 0.993468, -0.074819,
		-0.993820, 0.080437, -0.076489,
		37.045166, 33.101841, 40.566971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588924, 33.582600, 41.087921>,  <37.740841, 33.045536, 40.620510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588924, 33.582600, 41.087921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.241814, 33.393261, 41.027374>,  <37.033546, 33.279659, 40.991047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.241814, 33.393261, 41.027374>,  <37.588924, 33.582600, 41.087921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241814, 33.393261, 41.027374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251310, 0.155213, 0.955381,
		-0.428730, 0.867096, -0.253645,
		-0.867776, -0.473344, -0.151365,
		36.981480, 33.251259, 40.981964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113594, 34.019924, 41.443611>,  <37.588924, 33.582600, 41.087921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113594, 34.019924, 41.443611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.933990, 33.665203, 41.399849>,  <36.826229, 33.452370, 41.373592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.933990, 33.665203, 41.399849>,  <37.113594, 34.019924, 41.443611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933990, 33.665203, 41.399849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189078, -0.025369, 0.981634,
		-0.873292, 0.461449, -0.156284,
		-0.449010, -0.886804, -0.109404,
		36.799286, 33.399162, 41.367027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628868, 34.017101, 41.888077>,  <37.113594, 34.019924, 41.443611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628868, 34.017101, 41.888077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685783, 33.628151, 41.814068>,  <36.719933, 33.394779, 41.769665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685783, 33.628151, 41.814068>,  <36.628868, 34.017101, 41.888077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685783, 33.628151, 41.814068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082397, -0.197908, 0.976751,
		-0.986389, -0.123737, -0.108281,
		0.142290, -0.972379, -0.185018,
		36.728470, 33.336437, 41.758564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195774, 33.677032, 42.258926>,  <36.628868, 34.017101, 41.888077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195774, 33.677032, 42.258926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487240, 33.411530, 42.191429>,  <36.662117, 33.252228, 42.150928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487240, 33.411530, 42.191429>,  <36.195774, 33.677032, 42.258926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487240, 33.411530, 42.191429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083915, -0.331060, 0.939871,
		-0.679715, -0.670686, -0.296930,
		0.728660, -0.663761, -0.168746,
		36.705837, 33.212402, 42.140804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987278, 33.114017, 42.650475>,  <36.195774, 33.677032, 42.258926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987278, 33.114017, 42.650475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368519, 33.017879, 42.576908>,  <36.597263, 32.960197, 42.532768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368519, 33.017879, 42.576908>,  <35.987278, 33.114017, 42.650475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368519, 33.017879, 42.576908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088316, -0.360385, 0.928613,
		-0.289468, -0.901309, -0.322259,
		0.953104, -0.240343, -0.183920,
		36.654449, 32.945778, 42.521732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091991, 32.544617, 42.950989>,  <35.987278, 33.114017, 42.650475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091991, 32.544617, 42.950989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475170, 32.641819, 42.889954>,  <36.705078, 32.700142, 42.853333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475170, 32.641819, 42.889954>,  <36.091991, 32.544617, 42.950989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475170, 32.641819, 42.889954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242334, -0.400388, 0.883722,
		0.153654, -0.883537, -0.442439,
		0.957948, 0.243005, -0.152590,
		36.762554, 32.714722, 42.844177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504406, 31.891752, 43.022820>,  <36.091991, 32.544617, 42.950989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504406, 31.891752, 43.022820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.697559, 32.223972, 43.133820>,  <36.813450, 32.423306, 43.200420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.697559, 32.223972, 43.133820>,  <36.504406, 31.891752, 43.022820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697559, 32.223972, 43.133820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232785, -0.427247, 0.873654,
		0.844177, -0.357275, -0.399650,
		0.482884, 0.830551, 0.277504,
		36.842426, 32.473137, 43.217072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135887, 31.690121, 43.167004>,  <36.504406, 31.891752, 43.022820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135887, 31.690121, 43.167004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091038, 32.039181, 43.357124>,  <37.064129, 32.248615, 43.471199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091038, 32.039181, 43.357124>,  <37.135887, 31.690121, 43.167004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091038, 32.039181, 43.357124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302910, -0.425540, 0.852738,
		0.946401, 0.239586, -0.216621,
		-0.112123, 0.872648, 0.475304,
		37.057400, 32.300976, 43.499714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789982, 31.650768, 43.641979>,  <37.135887, 31.690121, 43.167004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789982, 31.650768, 43.641979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521561, 31.927195, 43.749393>,  <37.360508, 32.093052, 43.813843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521561, 31.927195, 43.749393>,  <37.789982, 31.650768, 43.641979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521561, 31.927195, 43.749393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169404, -0.209693, 0.962981,
		0.721794, 0.691704, 0.023646,
		-0.671056, 0.691068, 0.268532,
		37.320244, 32.134514, 43.829952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089062, 31.888224, 44.258461>,  <37.789982, 31.650768, 43.641979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089062, 31.888224, 44.258461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.701454, 31.985540, 44.275528>,  <37.468891, 32.043930, 44.285767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.701454, 31.985540, 44.275528>,  <38.089062, 31.888224, 44.258461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701454, 31.985540, 44.275528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018872, -0.245153, 0.969301,
		0.246281, 0.938461, 0.242148,
		-0.969015, 0.243291, 0.042666,
		37.410751, 32.058529, 44.288326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.510027, 36.672771, 44.847878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.678232, 36.360531, 44.662910>,  <31.779156, 36.173187, 44.551929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.678232, 36.360531, 44.662910>,  <31.510027, 36.672771, 44.847878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678232, 36.360531, 44.662910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326846, 0.605784, -0.725395,
		0.846370, 0.153898, 0.509876,
		0.420511, -0.780603, -0.462416,
		31.804386, 36.126350, 44.524185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145489, 36.973148, 44.570011>,  <31.510027, 36.672771, 44.847878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145489, 36.973148, 44.570011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.100368, 36.631100, 44.367607>,  <32.073296, 36.425873, 44.246162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.100368, 36.631100, 44.367607>,  <32.145489, 36.973148, 44.570011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100368, 36.631100, 44.367607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257344, 0.466744, -0.846123,
		0.959714, -0.225661, 0.167412,
		-0.112798, -0.855118, -0.506013,
		32.066528, 36.374565, 44.215805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667519, 37.018833, 44.047581>,  <32.145489, 36.973148, 44.570011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667519, 37.018833, 44.047581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409164, 36.736195, 43.931953>,  <32.254154, 36.566612, 43.862579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409164, 36.736195, 43.931953>,  <32.667519, 37.018833, 44.047581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409164, 36.736195, 43.931953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231997, 0.179070, -0.956092,
		0.727334, -0.684584, 0.048270,
		-0.645881, -0.706596, -0.289065,
		32.215401, 36.524216, 43.845234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042194, 36.747471, 43.617325>,  <32.667519, 37.018833, 44.047581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042194, 36.747471, 43.617325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.667694, 36.634060, 43.534328>,  <32.442993, 36.566013, 43.484531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.667694, 36.634060, 43.534328>,  <33.042194, 36.747471, 43.617325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667694, 36.634060, 43.534328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162560, 0.173966, -0.971242,
		0.311470, -0.943052, -0.116785,
		-0.936248, -0.283528, -0.207488,
		32.386818, 36.549004, 43.472080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152309, 36.257584, 43.092510>,  <33.042194, 36.747471, 43.617325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152309, 36.257584, 43.092510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779388, 36.396938, 43.053665>,  <32.555634, 36.480553, 43.030357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779388, 36.396938, 43.053665>,  <33.152309, 36.257584, 43.092510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779388, 36.396938, 43.053665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182766, 0.222126, -0.957735,
		-0.312094, -0.910651, -0.270763,
		-0.932306, 0.348390, -0.097112,
		32.499695, 36.501453, 43.024532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922695, 35.933517, 42.577583>,  <33.152309, 36.257584, 43.092510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922695, 35.933517, 42.577583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676544, 36.248119, 42.598473>,  <32.528854, 36.436878, 42.611004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676544, 36.248119, 42.598473>,  <32.922695, 35.933517, 42.577583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676544, 36.248119, 42.598473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013976, 0.077129, -0.996923,
		-0.788108, -0.612755, -0.058456,
		-0.615378, 0.786500, 0.052222,
		32.491932, 36.484070, 42.614140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557053, 35.751637, 41.992176>,  <32.922695, 35.933517, 42.577583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557053, 35.751637, 41.992176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457298, 36.131931, 42.065838>,  <32.397446, 36.360107, 42.110035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457298, 36.131931, 42.065838>,  <32.557053, 35.751637, 41.992176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457298, 36.131931, 42.065838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028076, 0.197185, -0.979964,
		-0.967997, -0.239218, -0.075868,
		-0.249385, 0.950733, 0.184159,
		32.382484, 36.417152, 42.121086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096542, 35.873127, 41.536194>,  <32.557053, 35.751637, 41.992176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096542, 35.873127, 41.536194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230595, 36.233963, 41.644947>,  <32.311028, 36.450462, 41.710201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230595, 36.233963, 41.644947>,  <32.096542, 35.873127, 41.536194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230595, 36.233963, 41.644947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053150, 0.270013, -0.961389,
		-0.940670, 0.336645, 0.042544,
		0.335134, 0.902088, 0.271886,
		32.331135, 36.504589, 41.726513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703203, 36.260147, 41.173363>,  <32.096542, 35.873127, 41.536194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703203, 36.260147, 41.173363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.005379, 36.488457, 41.302063>,  <32.186684, 36.625443, 41.379284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.005379, 36.488457, 41.302063>,  <31.703203, 36.260147, 41.173363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005379, 36.488457, 41.302063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193276, 0.275085, -0.941792,
		-0.626062, 0.773655, 0.097492,
		0.755441, 0.570778, 0.321749,
		32.232010, 36.659691, 41.398586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632843, 36.897259, 40.853329>,  <31.703203, 36.260147, 41.173363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632843, 36.897259, 40.853329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020885, 36.892338, 40.950272>,  <32.253712, 36.889385, 41.008438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020885, 36.892338, 40.950272>,  <31.632843, 36.897259, 40.853329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020885, 36.892338, 40.950272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232143, 0.338048, -0.912049,
		-0.070708, 0.941048, 0.330799,
		0.970108, -0.012304, 0.242361,
		32.311916, 36.888645, 41.022980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945793, 37.559711, 40.675877>,  <31.632843, 36.897259, 40.853329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945793, 37.559711, 40.675877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.264099, 37.317471, 40.676834>,  <32.455082, 37.172127, 40.677406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.264099, 37.317471, 40.676834>,  <31.945793, 37.559711, 40.675877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264099, 37.317471, 40.676834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351833, 0.459097, -0.815747,
		0.492918, 0.649985, 0.578404,
		0.795767, -0.605598, 0.002389,
		32.502831, 37.135792, 40.677551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465984, 37.985004, 40.680882>,  <31.945793, 37.559711, 40.675877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465984, 37.985004, 40.680882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.622375, 37.642632, 40.545517>,  <32.716209, 37.437210, 40.464298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.622375, 37.642632, 40.545517>,  <32.465984, 37.985004, 40.680882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622375, 37.642632, 40.545517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464962, 0.500987, -0.729947,
		0.794321, 0.128047, 0.593850,
		0.390979, -0.855930, -0.338407,
		32.739670, 37.385853, 40.443996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189945, 38.041092, 40.643524>,  <32.465984, 37.985004, 40.680882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189945, 38.041092, 40.643524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.134956, 37.730522, 40.397507>,  <33.101963, 37.544182, 40.249897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.134956, 37.730522, 40.397507>,  <33.189945, 38.041092, 40.643524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134956, 37.730522, 40.397507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420964, 0.516270, -0.745825,
		0.896600, -0.361437, 0.255875,
		-0.137468, -0.776421, -0.615039,
		33.093716, 37.497597, 40.212994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796272, 37.957047, 40.308132>,  <33.189945, 38.041092, 40.643524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796272, 37.957047, 40.308132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536205, 37.790478, 40.053928>,  <33.380165, 37.690536, 39.901405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536205, 37.790478, 40.053928>,  <33.796272, 37.957047, 40.308132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536205, 37.790478, 40.053928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394833, 0.529445, -0.750863,
		0.649144, -0.739107, -0.179810,
		-0.650168, -0.416423, -0.635510,
		33.341156, 37.665550, 39.863274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518047, 37.921810, 40.525723>,  <33.796272, 37.957047, 40.308132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518047, 37.921810, 40.525723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886208, 38.077156, 40.543743>,  <35.107105, 38.170364, 40.554554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886208, 38.077156, 40.543743>,  <34.518047, 37.921810, 40.525723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886208, 38.077156, 40.543743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015862, -0.152231, 0.988218,
		0.390648, -0.908844, -0.146275,
		0.920403, 0.388365, 0.045052,
		35.162331, 38.193665, 40.557259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949326, 37.460503, 40.805710>,  <34.518047, 37.921810, 40.525723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949326, 37.460503, 40.805710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136456, 37.811363, 40.849045>,  <35.248734, 38.021881, 40.875046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136456, 37.811363, 40.849045>,  <34.949326, 37.460503, 40.805710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136456, 37.811363, 40.849045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094240, -0.171391, 0.980686,
		0.878781, -0.448582, -0.162844,
		0.467828, 0.877154, 0.108341,
		35.276802, 38.074509, 40.881546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603107, 37.407455, 41.061352>,  <34.949326, 37.460503, 40.805710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603107, 37.407455, 41.061352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.522259, 37.781929, 41.176388>,  <35.473751, 38.006615, 41.245411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.522259, 37.781929, 41.176388>,  <35.603107, 37.407455, 41.061352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522259, 37.781929, 41.176388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131051, -0.265157, 0.955258,
		0.970553, 0.230765, -0.069095,
		-0.202119, 0.936183, 0.287591,
		35.461624, 38.062782, 41.262665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107010, 37.667725, 41.666138>,  <35.603107, 37.407455, 41.061352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107010, 37.667725, 41.666138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.774406, 37.889465, 41.680496>,  <35.574844, 38.022511, 41.689110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.774406, 37.889465, 41.680496>,  <36.107010, 37.667725, 41.666138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774406, 37.889465, 41.680496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034170, -0.013458, 0.999325,
		0.554465, 0.832171, -0.007752,
		-0.831505, 0.554356, 0.035897,
		35.524956, 38.055771, 41.691265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224403, 38.081055, 42.214680>,  <36.107010, 37.667725, 41.666138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224403, 38.081055, 42.214680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.827477, 38.085011, 42.165356>,  <35.589321, 38.087383, 42.135761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.827477, 38.085011, 42.165356>,  <36.224403, 38.081055, 42.214680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827477, 38.085011, 42.165356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123686, -0.096405, 0.987627,
		-0.002122, 0.995293, 0.096888,
		-0.992319, 0.009888, -0.123308,
		35.529781, 38.087978, 42.128365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012463, 38.497192, 42.733536>,  <36.224403, 38.081055, 42.214680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012463, 38.497192, 42.733536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689846, 38.285320, 42.628517>,  <35.496277, 38.158195, 42.565506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689846, 38.285320, 42.628517>,  <36.012463, 38.497192, 42.733536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689846, 38.285320, 42.628517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202553, -0.169633, 0.964467,
		-0.555398, 0.831060, 0.029526,
		-0.806539, -0.529683, -0.262547,
		35.447884, 38.126415, 42.549751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497604, 38.658531, 43.202251>,  <36.012463, 38.497192, 42.733536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497604, 38.658531, 43.202251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.374836, 38.310696, 43.047535>,  <35.301174, 38.101994, 42.954704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.374836, 38.310696, 43.047535>,  <35.497604, 38.658531, 43.202251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374836, 38.310696, 43.047535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282682, -0.304773, 0.909507,
		-0.908785, 0.388488, -0.152277,
		-0.306922, -0.869592, -0.386792,
		35.282761, 38.049816, 42.931496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792191, 38.495403, 43.561222>,  <35.497604, 38.658531, 43.202251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792191, 38.495403, 43.561222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945972, 38.158703, 43.409615>,  <35.038242, 37.956684, 43.318649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945972, 38.158703, 43.409615>,  <34.792191, 38.495403, 43.561222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945972, 38.158703, 43.409615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184568, -0.472373, 0.861857,
		-0.904507, -0.261386, -0.336964,
		0.384450, -0.841748, -0.379021,
		35.061306, 37.906178, 43.295910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333256, 38.003754, 43.815216>,  <34.792191, 38.495403, 43.561222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333256, 38.003754, 43.815216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644459, 37.785542, 43.690571>,  <34.831181, 37.654613, 43.615784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644459, 37.785542, 43.690571>,  <34.333256, 38.003754, 43.815216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644459, 37.785542, 43.690571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151528, -0.644294, 0.749616,
		-0.609707, -0.535989, -0.583929,
		0.778009, -0.545528, -0.311613,
		34.877861, 37.621883, 43.597084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034008, 37.313759, 43.716759>,  <34.333256, 38.003754, 43.815216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034008, 37.313759, 43.716759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425808, 37.275406, 43.787628>,  <34.660889, 37.252396, 43.830151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425808, 37.275406, 43.787628>,  <34.034008, 37.313759, 43.716759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425808, 37.275406, 43.787628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198987, -0.597623, 0.776692,
		0.031410, -0.796023, -0.604450,
		0.979499, -0.095882, 0.177170,
		34.719658, 37.246643, 43.840778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180355, 36.576588, 43.776058>,  <34.034008, 37.313759, 43.716759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180355, 36.576588, 43.776058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.486656, 36.759754, 43.956699>,  <34.670437, 36.869656, 44.065083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.486656, 36.759754, 43.956699>,  <34.180355, 36.576588, 43.776058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486656, 36.759754, 43.956699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096827, -0.612089, 0.784838,
		0.635810, -0.644716, -0.424367,
		0.765748, 0.457918, 0.451598,
		34.716381, 36.897129, 44.092178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676708, 36.038837, 43.912857>,  <34.180355, 36.576588, 43.776058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676708, 36.038837, 43.912857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744591, 36.333027, 44.175240>,  <34.785320, 36.509541, 44.332668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744591, 36.333027, 44.175240>,  <34.676708, 36.038837, 43.912857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744591, 36.333027, 44.175240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169731, -0.633853, 0.754600,
		0.970769, -0.239396, 0.017264,
		0.169705, 0.735473, 0.655958,
		34.795502, 36.553669, 44.372028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101200, 35.771969, 44.339218>,  <34.676708, 36.038837, 43.912857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101200, 35.771969, 44.339218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940872, 36.083199, 44.532688>,  <34.844677, 36.269936, 44.648769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940872, 36.083199, 44.532688>,  <35.101200, 35.771969, 44.339218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940872, 36.083199, 44.532688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357593, -0.618931, 0.699322,
		0.843487, 0.107344, 0.526314,
		-0.400820, 0.778076, 0.483675,
		34.820625, 36.316620, 44.677792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358772, 35.663620, 45.002621>,  <35.101200, 35.771969, 44.339218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358772, 35.663620, 45.002621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036995, 35.898895, 45.035881>,  <34.843929, 36.040058, 45.055836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036995, 35.898895, 45.035881>,  <35.358772, 35.663620, 45.002621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036995, 35.898895, 45.035881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280120, -0.499043, 0.820054,
		0.523839, 0.636392, 0.566213,
		-0.804441, 0.588184, 0.083152,
		34.795662, 36.075352, 45.060825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969238, 35.957882, 45.377869>,  <35.358772, 35.663620, 45.002621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969238, 35.957882, 45.377869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.276802, 35.702549, 45.392338>,  <36.461338, 35.549347, 45.401020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.276802, 35.702549, 45.392338>,  <35.969238, 35.957882, 45.377869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276802, 35.702549, 45.392338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489209, 0.550964, -0.676102,
		0.411652, 0.537555, 0.735920,
		0.768907, -0.638337, 0.036171,
		36.507473, 35.511047, 45.403191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617718, 36.306591, 45.532108>,  <35.969238, 35.957882, 45.377869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617718, 36.306591, 45.532108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.738148, 35.972637, 45.347794>,  <36.810406, 35.772266, 45.237206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.738148, 35.972637, 45.347794>,  <36.617718, 36.306591, 45.532108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738148, 35.972637, 45.347794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599499, 0.541490, -0.589397,
		0.741590, -0.098790, 0.663540,
		0.301074, -0.834882, -0.460788,
		36.828468, 35.722172, 45.209557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281235, 36.405697, 45.392372>,  <36.617718, 36.306591, 45.532108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281235, 36.405697, 45.392372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.234795, 36.090759, 45.150177>,  <37.206932, 35.901798, 45.004860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.234795, 36.090759, 45.150177>,  <37.281235, 36.405697, 45.392372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234795, 36.090759, 45.150177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550551, 0.456373, -0.699012,
		0.826689, -0.414503, 0.380489,
		-0.116098, -0.787344, -0.605484,
		37.199966, 35.854557, 44.968533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966518, 36.162483, 45.173389>,  <37.281235, 36.405697, 45.392372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966518, 36.162483, 45.173389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721333, 36.012394, 44.895256>,  <37.574223, 35.922340, 44.728378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721333, 36.012394, 44.895256>,  <37.966518, 36.162483, 45.173389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721333, 36.012394, 44.895256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505393, 0.490261, -0.710086,
		0.607334, -0.786671, -0.110877,
		-0.612963, -0.375223, -0.695330,
		37.537445, 35.899826, 44.686657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417023, 35.871140, 44.734665>,  <37.966518, 36.162483, 45.173389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417023, 35.871140, 44.734665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.079937, 35.968346, 44.542511>,  <37.877686, 36.026669, 44.427219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.079937, 35.968346, 44.542511>,  <38.417023, 35.871140, 44.734665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079937, 35.968346, 44.542511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538194, 0.358563, -0.762745,
		-0.013108, -0.901320, -0.432956,
		-0.842719, 0.243012, -0.480386,
		37.827122, 36.041248, 44.398396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557938, 35.637749, 44.012558>,  <38.417023, 35.871140, 44.734665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557938, 35.637749, 44.012558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248955, 35.889908, 43.981792>,  <38.063564, 36.041203, 43.963333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248955, 35.889908, 43.981792>,  <38.557938, 35.637749, 44.012558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248955, 35.889908, 43.981792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397676, 0.385726, -0.832508,
		-0.495142, -0.673661, -0.548649,
		-0.772456, 0.630394, -0.076909,
		38.017220, 36.079025, 43.958721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349140, 35.617710, 43.391804>,  <38.557938, 35.637749, 44.012558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349140, 35.617710, 43.391804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.183380, 35.960217, 43.515152>,  <38.083923, 36.165718, 43.589161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.183380, 35.960217, 43.515152>,  <38.349140, 35.617710, 43.391804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183380, 35.960217, 43.515152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412732, 0.478796, -0.774859,
		-0.811127, -0.193827, -0.551819,
		-0.414398, 0.856262, 0.308366,
		38.059059, 36.217094, 43.607662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995171, 35.800056, 42.818436>,  <38.349140, 35.617710, 43.391804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995171, 35.800056, 42.818436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.041653, 36.143627, 43.017929>,  <38.069542, 36.349770, 43.137627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.041653, 36.143627, 43.017929>,  <37.995171, 35.800056, 42.818436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041653, 36.143627, 43.017929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207045, 0.470158, -0.857953,
		-0.971406, 0.202960, -0.123202,
		0.116205, 0.858929, 0.498736,
		38.076515, 36.401306, 43.167549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708946, 36.211971, 42.406075>,  <37.995171, 35.800056, 42.818436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708946, 36.211971, 42.406075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.943649, 36.438446, 42.637642>,  <38.084469, 36.574333, 42.776581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.943649, 36.438446, 42.637642>,  <37.708946, 36.211971, 42.406075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943649, 36.438446, 42.637642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240312, 0.560961, -0.792195,
		-0.773284, 0.603945, 0.193085,
		0.586755, 0.566191, 0.578918,
		38.119675, 36.608303, 42.811317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543472, 36.875294, 42.289539>,  <37.708946, 36.211971, 42.406075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543472, 36.875294, 42.289539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.919449, 36.882187, 42.425900>,  <38.145035, 36.886322, 42.507717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.919449, 36.882187, 42.425900>,  <37.543472, 36.875294, 42.289539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919449, 36.882187, 42.425900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304082, 0.411435, -0.859218,
		-0.155068, 0.911276, 0.381483,
		0.939940, 0.017235, 0.340903,
		38.201431, 36.887356, 42.528172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785889, 37.488079, 41.963455>,  <37.543472, 36.875294, 42.289539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785889, 37.488079, 41.963455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.132477, 37.323460, 42.076492>,  <38.340431, 37.224689, 42.144314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.132477, 37.323460, 42.076492>,  <37.785889, 37.488079, 41.963455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132477, 37.323460, 42.076492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362306, 0.128951, -0.923096,
		0.343458, 0.902219, 0.260839,
		0.866470, -0.411549, 0.282590,
		38.392418, 37.199997, 42.161270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383495, 37.885727, 41.705933>,  <37.785889, 37.488079, 41.963455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383495, 37.885727, 41.705933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.546986, 37.528175, 41.779598>,  <38.645081, 37.313644, 41.823799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.546986, 37.528175, 41.779598>,  <38.383495, 37.885727, 41.705933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546986, 37.528175, 41.779598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415997, 0.002858, -0.909362,
		0.812336, 0.448292, 0.373021,
		0.408725, -0.893883, 0.184166,
		38.669601, 37.260010, 41.834846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041893, 38.047577, 41.583435>,  <38.383495, 37.885727, 41.705933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041893, 38.047577, 41.583435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004902, 37.650478, 41.552700>,  <38.982708, 37.412220, 41.534260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004902, 37.650478, 41.552700>,  <39.041893, 38.047577, 41.583435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004902, 37.650478, 41.552700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488006, 0.022080, -0.872561,
		0.867928, -0.118192, 0.482423,
		-0.092478, -0.992745, -0.076842,
		38.977158, 37.352654, 41.529648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681702, 37.812870, 41.362358>,  <39.041893, 38.047577, 41.583435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681702, 37.812870, 41.362358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368767, 37.594868, 41.241741>,  <39.181007, 37.464066, 41.169373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368767, 37.594868, 41.241741>,  <39.681702, 37.812870, 41.362358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368767, 37.594868, 41.241741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393681, -0.057512, -0.917446,
		0.482671, -0.836458, 0.259551,
		-0.782333, -0.545005, -0.301538,
		39.134068, 37.431366, 41.151279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.670284, 36.818661, 25.476969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.379520, 36.602528, 25.646507>,  <27.205063, 36.472847, 25.748230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.379520, 36.602528, 25.646507>,  <27.670284, 36.818661, 25.476969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379520, 36.602528, 25.646507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029635, 0.591935, 0.805441,
		-0.686096, 0.598042, -0.414269,
		-0.726907, -0.540333, 0.423846,
		27.161448, 36.440426, 25.773661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207071, 37.348602, 25.871090>,  <27.670284, 36.818661, 25.476969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207071, 37.348602, 25.871090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.129751, 36.982899, 26.013510>,  <27.083359, 36.763477, 26.098961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.129751, 36.982899, 26.013510>,  <27.207071, 37.348602, 25.871090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129751, 36.982899, 26.013510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284406, 0.295100, 0.912156,
		-0.939014, 0.277584, 0.202977,
		-0.193301, -0.914256, 0.356049,
		27.071760, 36.708622, 26.120325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785187, 37.547741, 26.433754>,  <27.207071, 37.348602, 25.871090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785187, 37.547741, 26.433754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.949272, 37.187065, 26.488432>,  <27.047724, 36.970661, 26.521238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.949272, 37.187065, 26.488432>,  <26.785187, 37.547741, 26.433754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949272, 37.187065, 26.488432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149560, 0.214370, 0.965234,
		-0.899642, -0.375510, 0.222794,
		0.410216, -0.901686, 0.136695,
		27.072336, 36.916561, 26.529440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463791, 37.393723, 26.994762>,  <26.785187, 37.547741, 26.433754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463791, 37.393723, 26.994762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777122, 37.146542, 26.967852>,  <26.965122, 36.998234, 26.951706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777122, 37.146542, 26.967852>,  <26.463791, 37.393723, 26.994762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777122, 37.146542, 26.967852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144247, 0.075433, 0.986662,
		-0.604638, -0.782586, 0.148227,
		0.783330, -0.617955, -0.067276,
		27.012121, 36.961155, 26.947668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414501, 36.808289, 27.528749>,  <26.463791, 37.393723, 26.994762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414501, 36.808289, 27.528749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796131, 36.887939, 27.439230>,  <27.025110, 36.935730, 27.385517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796131, 36.887939, 27.439230>,  <26.414501, 36.808289, 27.528749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796131, 36.887939, 27.439230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226610, 0.008867, 0.973945,
		0.195921, -0.979934, -0.036664,
		0.954077, 0.199125, -0.223800,
		27.082354, 36.947678, 27.372089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771196, 36.385353, 27.977825>,  <26.414501, 36.808289, 27.528749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771196, 36.385353, 27.977825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038889, 36.654797, 27.852362>,  <27.199505, 36.816463, 27.777084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038889, 36.654797, 27.852362>,  <26.771196, 36.385353, 27.977825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038889, 36.654797, 27.852362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518849, -0.121457, 0.846194,
		0.531909, -0.729038, -0.430785,
		0.669230, 0.673610, -0.313657,
		27.239658, 36.856880, 27.758265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303370, 36.167000, 28.280550>,  <26.771196, 36.385353, 27.977825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303370, 36.167000, 28.280550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.440765, 36.532104, 28.192118>,  <27.523203, 36.751167, 28.139059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.440765, 36.532104, 28.192118>,  <27.303370, 36.167000, 28.280550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440765, 36.532104, 28.192118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580922, -0.021533, 0.813674,
		0.737931, -0.407921, -0.537641,
		0.343491, 0.912763, -0.221081,
		27.543814, 36.805935, 28.125793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918863, 36.085052, 28.397203>,  <27.303370, 36.167000, 28.280550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918863, 36.085052, 28.397203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.863102, 36.481113, 28.402473>,  <27.829645, 36.718750, 28.405636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.863102, 36.481113, 28.402473>,  <27.918863, 36.085052, 28.397203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863102, 36.481113, 28.402473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329377, 0.033819, 0.943593,
		0.933850, 0.135881, -0.330847,
		-0.139406, 0.990148, 0.013174,
		27.821280, 36.778156, 28.406425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425873, 36.274380, 28.880110>,  <27.918863, 36.085052, 28.397203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425873, 36.274380, 28.880110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183393, 36.590675, 28.846041>,  <28.037907, 36.780453, 28.825600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183393, 36.590675, 28.846041>,  <28.425873, 36.274380, 28.880110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183393, 36.590675, 28.846041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079227, 0.166600, 0.982836,
		0.791357, 0.589046, -0.163641,
		-0.606199, 0.790739, -0.085172,
		28.001534, 36.827896, 28.820490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734453, 36.813129, 29.160444>,  <28.425873, 36.274380, 28.880110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734453, 36.813129, 29.160444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347675, 36.912106, 29.185062>,  <28.115608, 36.971493, 29.199833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347675, 36.912106, 29.185062>,  <28.734453, 36.813129, 29.160444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347675, 36.912106, 29.185062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112347, 0.196763, 0.973993,
		0.228900, 0.948713, -0.218058,
		-0.966945, 0.247445, 0.061546,
		28.057592, 36.986340, 29.203526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718105, 37.386166, 29.536955>,  <28.734453, 36.813129, 29.160444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718105, 37.386166, 29.536955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373108, 37.184914, 29.558725>,  <28.166109, 37.064163, 29.571787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373108, 37.184914, 29.558725>,  <28.718105, 37.386166, 29.536955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373108, 37.184914, 29.558725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021463, 0.071081, 0.997239,
		-0.505613, 0.861281, -0.050508,
		-0.862493, -0.503133, 0.054425,
		28.114361, 37.033974, 29.575052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478041, 37.666447, 30.142826>,  <28.718105, 37.386166, 29.536955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478041, 37.666447, 30.142826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.231777, 37.354340, 30.098734>,  <28.084019, 37.167076, 30.072279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.231777, 37.354340, 30.098734>,  <28.478041, 37.666447, 30.142826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231777, 37.354340, 30.098734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178626, 0.001941, 0.983915,
		-0.767502, 0.625445, -0.140571,
		-0.615657, -0.780266, -0.110231,
		28.047079, 37.120258, 30.065664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855425, 37.787174, 30.521503>,  <28.478041, 37.666447, 30.142826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855425, 37.787174, 30.521503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828411, 37.390636, 30.476456>,  <27.812202, 37.152714, 30.449427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828411, 37.390636, 30.476456>,  <27.855425, 37.787174, 30.521503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828411, 37.390636, 30.476456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262572, -0.091238, 0.960589,
		-0.962546, 0.094442, -0.254136,
		-0.067533, -0.991341, -0.112619,
		27.808151, 37.093235, 30.442671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303713, 37.607830, 30.749348>,  <27.855425, 37.787174, 30.521503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303713, 37.607830, 30.749348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460918, 37.240021, 30.751137>,  <27.555243, 37.019337, 30.752211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460918, 37.240021, 30.751137>,  <27.303713, 37.607830, 30.749348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460918, 37.240021, 30.751137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369284, -0.153376, 0.916573,
		-0.842122, -0.361877, -0.399843,
		0.393013, -0.919522, 0.004474,
		27.578823, 36.964165, 30.752480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826618, 37.197826, 31.050774>,  <27.303713, 37.607830, 30.749348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826618, 37.197826, 31.050774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.159107, 36.978199, 31.085619>,  <27.358601, 36.846420, 31.106525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.159107, 36.978199, 31.085619>,  <26.826618, 37.197826, 31.050774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159107, 36.978199, 31.085619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269835, -0.261468, 0.926728,
		-0.486063, -0.793823, -0.365496,
		0.831223, -0.549072, 0.087111,
		27.408474, 36.813477, 31.111752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666162, 36.510159, 31.156296>,  <26.826618, 37.197826, 31.050774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666162, 36.510159, 31.156296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.036556, 36.560013, 31.298857>,  <27.258793, 36.589924, 31.384394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.036556, 36.560013, 31.298857>,  <26.666162, 36.510159, 31.156296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036556, 36.560013, 31.298857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283789, -0.392868, 0.874710,
		0.249039, -0.911109, -0.328419,
		0.925982, 0.124635, 0.356403,
		27.314350, 36.597404, 31.405777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777447, 35.918571, 31.539879>,  <26.666162, 36.510159, 31.156296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777447, 35.918571, 31.539879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.044010, 36.180851, 31.681847>,  <27.203947, 36.338219, 31.767027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.044010, 36.180851, 31.681847>,  <26.777447, 35.918571, 31.539879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044010, 36.180851, 31.681847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055374, -0.431184, 0.900563,
		0.743529, -0.619794, -0.251036,
		0.666407, 0.655694, 0.354919,
		27.243933, 36.377560, 31.788322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956118, 35.608238, 32.062778>,  <26.777447, 35.918571, 31.539879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956118, 35.608238, 32.062778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.152020, 35.948948, 32.137199>,  <27.269562, 36.153374, 32.181850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.152020, 35.948948, 32.137199>,  <26.956118, 35.608238, 32.062778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152020, 35.948948, 32.137199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024497, -0.199868, 0.979517,
		0.871516, -0.484282, -0.077020,
		0.489756, 0.851777, 0.186052,
		27.298946, 36.204479, 32.193016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458405, 35.441704, 32.560429>,  <26.956118, 35.608238, 32.062778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458405, 35.441704, 32.560429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.337492, 35.822891, 32.569122>,  <27.264944, 36.051605, 32.574341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.337492, 35.822891, 32.569122>,  <27.458405, 35.441704, 32.560429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337492, 35.822891, 32.569122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130775, -0.064047, 0.989341,
		0.944206, 0.296215, 0.143985,
		-0.302280, 0.952971, 0.021736,
		27.246809, 36.108784, 32.575642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750813, 35.646961, 33.113857>,  <27.458405, 35.441704, 32.560429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750813, 35.646961, 33.113857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.438084, 35.887291, 33.047211>,  <27.250446, 36.031490, 33.007221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.438084, 35.887291, 33.047211>,  <27.750813, 35.646961, 33.113857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438084, 35.887291, 33.047211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259962, -0.071221, 0.962989,
		0.566723, 0.796200, 0.211874,
		-0.781822, 0.600827, -0.166619,
		27.203537, 36.067539, 32.997227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989109, 35.972229, 33.717133>,  <27.750813, 35.646961, 33.113857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989109, 35.972229, 33.717133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376081, 35.965660, 33.818169>,  <28.608265, 35.961720, 33.878792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376081, 35.965660, 33.818169>,  <27.989109, 35.972229, 33.717133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376081, 35.965660, 33.818169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202160, -0.550396, -0.810059,
		0.152331, 0.834742, -0.529151,
		0.967433, -0.016424, 0.252593,
		28.666311, 35.960732, 33.893948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294744, 36.094322, 33.162418>,  <27.989109, 35.972229, 33.717133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294744, 36.094322, 33.162418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587181, 35.924652, 33.376175>,  <28.762644, 35.822849, 33.504429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587181, 35.924652, 33.376175>,  <28.294744, 36.094322, 33.162418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587181, 35.924652, 33.376175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237810, -0.575701, -0.782314,
		0.639491, 0.699028, -0.320017,
		0.731093, -0.424180, 0.534391,
		28.806509, 35.797398, 33.536491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888168, 36.183041, 32.798122>,  <28.294744, 36.094322, 33.162418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888168, 36.183041, 32.798122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.956467, 35.865646, 33.031780>,  <28.997446, 35.675209, 33.171974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.956467, 35.865646, 33.031780>,  <28.888168, 36.183041, 32.798122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956467, 35.865646, 33.031780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027250, -0.596422, -0.802209,
		0.984938, 0.121055, -0.123458,
		0.170745, -0.793490, 0.584140,
		29.007690, 35.627598, 33.207024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308985, 35.925625, 32.450916>,  <28.888168, 36.183041, 32.798122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308985, 35.925625, 32.450916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.212259, 35.621490, 32.692051>,  <29.154224, 35.439011, 32.836731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.212259, 35.621490, 32.692051>,  <29.308985, 35.925625, 32.450916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212259, 35.621490, 32.692051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174601, -0.645231, -0.743769,
		0.954484, -0.074598, 0.288781,
		-0.241814, -0.760337, 0.602838,
		29.139715, 35.393391, 32.872902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865019, 35.420456, 32.466068>,  <29.308985, 35.925625, 32.450916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865019, 35.420456, 32.466068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.507732, 35.257439, 32.542038>,  <29.293360, 35.159630, 32.587620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.507732, 35.257439, 32.542038>,  <29.865019, 35.420456, 32.466068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507732, 35.257439, 32.542038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070583, -0.544274, -0.835933,
		0.444050, -0.733264, 0.514921,
		-0.893218, -0.407540, 0.189929,
		29.239767, 35.135178, 32.599018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906801, 34.797718, 32.248302>,  <29.865019, 35.420456, 32.466068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906801, 34.797718, 32.248302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508284, 34.805462, 32.281834>,  <29.269173, 34.810108, 32.301952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508284, 34.805462, 32.281834>,  <29.906801, 34.797718, 32.248302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508284, 34.805462, 32.281834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075978, -0.655055, -0.751751,
		0.040362, -0.755333, 0.654097,
		-0.996292, 0.019355, 0.083828,
		29.209396, 34.811268, 32.306984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651108, 34.145378, 32.153591>,  <29.906801, 34.797718, 32.248302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651108, 34.145378, 32.153591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320553, 34.358440, 32.080528>,  <29.122219, 34.486279, 32.036690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320553, 34.358440, 32.080528>,  <29.651108, 34.145378, 32.153591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320553, 34.358440, 32.080528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152621, -0.524108, -0.837865,
		-0.542026, -0.664522, 0.514410,
		-0.826386, 0.532655, -0.182660,
		29.072636, 34.518234, 32.025730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098194, 33.660152, 32.008362>,  <29.651108, 34.145378, 32.153591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098194, 33.660152, 32.008362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.994869, 34.007225, 31.838463>,  <28.932875, 34.215469, 31.736523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.994869, 34.007225, 31.838463>,  <29.098194, 33.660152, 32.008362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994869, 34.007225, 31.838463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260076, -0.485896, -0.834425,
		-0.930395, -0.105077, 0.351175,
		-0.258314, 0.867677, -0.424748,
		28.917376, 34.267529, 31.711039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469730, 33.501915, 31.646648>,  <29.098194, 33.660152, 32.008362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469730, 33.501915, 31.646648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574789, 33.844643, 31.469166>,  <28.637825, 34.050282, 31.362677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574789, 33.844643, 31.469166>,  <28.469730, 33.501915, 31.646648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574789, 33.844643, 31.469166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317363, -0.357551, -0.878315,
		-0.911206, 0.371503, 0.178013,
		0.262648, 0.856821, -0.443704,
		28.653584, 34.101688, 31.336054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861912, 33.798061, 31.252804>,  <28.469730, 33.501915, 31.646648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861912, 33.798061, 31.252804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181362, 33.962944, 31.077402>,  <28.373032, 34.061874, 30.972162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181362, 33.962944, 31.077402>,  <27.861912, 33.798061, 31.252804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181362, 33.962944, 31.077402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437823, -0.101985, -0.893258,
		-0.412924, 0.905366, 0.099024,
		0.798627, 0.412203, -0.438502,
		28.420950, 34.086605, 30.945852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652941, 33.935818, 30.705694>,  <27.861912, 33.798061, 31.252804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652941, 33.935818, 30.705694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033239, 34.018272, 30.613096>,  <28.261419, 34.067745, 30.557537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033239, 34.018272, 30.613096>,  <27.652941, 33.935818, 30.705694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033239, 34.018272, 30.613096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222884, -0.064378, -0.972717,
		-0.215417, 0.976403, -0.015262,
		0.950746, 0.206138, -0.231493,
		28.318462, 34.080112, 30.543648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566887, 34.441593, 30.233835>,  <27.652941, 33.935818, 30.705694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566887, 34.441593, 30.233835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.929050, 34.281631, 30.176832>,  <28.146349, 34.185654, 30.142630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.929050, 34.281631, 30.176832>,  <27.566887, 34.441593, 30.233835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929050, 34.281631, 30.176832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114892, 0.092344, -0.989077,
		0.408695, 0.911894, 0.037664,
		0.905411, -0.399903, -0.142510,
		28.200674, 34.161659, 30.134079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752747, 34.786556, 29.715841>,  <27.566887, 34.441593, 30.233835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752747, 34.786556, 29.715841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010948, 34.481659, 29.735085>,  <28.165869, 34.298721, 29.746632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010948, 34.481659, 29.735085>,  <27.752747, 34.786556, 29.715841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010948, 34.481659, 29.735085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040088, -0.029091, -0.998773,
		0.762705, 0.646640, 0.011779,
		0.645503, -0.762241, 0.048110,
		28.204599, 34.252987, 29.749517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401089, 35.045059, 29.425915>,  <27.752747, 34.786556, 29.715841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401089, 35.045059, 29.425915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404016, 34.647831, 29.379004>,  <28.405773, 34.409492, 29.350857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404016, 34.647831, 29.379004>,  <28.401089, 35.045059, 29.425915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404016, 34.647831, 29.379004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014943, 0.117376, -0.992975,
		0.999862, 0.005513, 0.015698,
		0.007317, -0.993072, -0.117278,
		28.406212, 34.349911, 29.343821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767132, 35.026432, 28.793739>,  <28.401089, 35.045059, 29.425915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767132, 35.026432, 28.793739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626839, 34.652088, 28.807364>,  <28.542664, 34.427483, 28.815538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626839, 34.652088, 28.807364>,  <28.767132, 35.026432, 28.793739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626839, 34.652088, 28.807364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051955, -0.055760, -0.997092,
		0.935034, -0.347942, 0.068179,
		-0.350731, -0.935857, 0.034060,
		28.521620, 34.371330, 28.817581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205677, 34.477001, 28.372066>,  <28.767132, 35.026432, 28.793739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205677, 34.477001, 28.372066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.827063, 34.349113, 28.389250>,  <28.599894, 34.272381, 28.399559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.827063, 34.349113, 28.389250>,  <29.205677, 34.477001, 28.372066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827063, 34.349113, 28.389250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033620, -0.034673, -0.998833,
		0.320839, -0.946877, 0.022070,
		-0.946537, -0.319722, 0.042959,
		28.543102, 34.253197, 28.402138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159195, 34.017864, 27.775805>,  <29.205677, 34.477001, 28.372066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159195, 34.017864, 27.775805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777710, 34.083317, 27.876728>,  <28.548819, 34.122589, 27.937283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777710, 34.083317, 27.876728>,  <29.159195, 34.017864, 27.775805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777710, 34.083317, 27.876728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258684, -0.018534, -0.965784,
		-0.153356, -0.986347, 0.060005,
		-0.953711, 0.163631, 0.252310,
		28.491596, 34.132404, 27.952421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735346, 33.492596, 27.401775>,  <29.159195, 34.017864, 27.775805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735346, 33.492596, 27.401775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475140, 33.778522, 27.504433>,  <28.319016, 33.950077, 27.566027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475140, 33.778522, 27.504433>,  <28.735346, 33.492596, 27.401775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475140, 33.778522, 27.504433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377841, -0.011460, -0.925799,
		-0.658835, -0.699219, 0.277542,
		-0.650517, 0.714816, 0.256643,
		28.279985, 33.992966, 27.581427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040270, 33.236996, 27.052732>,  <28.735346, 33.492596, 27.401775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040270, 33.236996, 27.052732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992184, 33.627392, 27.125397>,  <27.963331, 33.861629, 27.168995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992184, 33.627392, 27.125397>,  <28.040270, 33.236996, 27.052732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992184, 33.627392, 27.125397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548642, 0.087188, -0.831499,
		-0.827369, -0.199625, 0.524985,
		-0.120216, 0.975986, 0.181659,
		27.956120, 33.920189, 27.179895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328703, 33.437832, 27.035948>,  <28.040270, 33.236996, 27.052732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328703, 33.437832, 27.035948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532331, 33.775188, 26.967201>,  <27.654509, 33.977604, 26.925953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532331, 33.775188, 26.967201>,  <27.328703, 33.437832, 27.035948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532331, 33.775188, 26.967201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467821, 0.103511, -0.877741,
		-0.722489, 0.527235, 0.447250,
		0.509071, 0.843391, -0.171866,
		27.685053, 34.028206, 26.915642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827126, 33.893719, 26.844313>,  <27.328703, 33.437832, 27.035948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827126, 33.893719, 26.844313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.173439, 34.048332, 26.717184>,  <27.381227, 34.141102, 26.640907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.173439, 34.048332, 26.717184>,  <26.827126, 33.893719, 26.844313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173439, 34.048332, 26.717184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464731, 0.385507, -0.797126,
		-0.185597, 0.837838, 0.513401,
		0.865782, 0.386537, -0.317821,
		27.433174, 34.164295, 26.621838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707575, 34.639366, 26.693588>,  <26.827126, 33.893719, 26.844313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707575, 34.639366, 26.693588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.028221, 34.502159, 26.497732>,  <27.220610, 34.419834, 26.380219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.028221, 34.502159, 26.497732>,  <26.707575, 34.639366, 26.693588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028221, 34.502159, 26.497732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334915, 0.420773, -0.843079,
		0.495218, 0.839815, 0.222418,
		0.801618, -0.343017, -0.489641,
		27.268707, 34.399254, 26.350840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.080616, 32.415367, 44.797215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.709377, 32.269302, 44.768116>,  <37.486633, 32.181664, 44.750656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.709377, 32.269302, 44.768116>,  <38.080616, 32.415367, 44.797215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709377, 32.269302, 44.768116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028427, -0.125319, 0.991709,
		-0.371252, 0.922470, 0.105928,
		-0.928097, -0.365162, -0.072748,
		37.430946, 32.159752, 44.746292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848755, 32.566711, 45.404762>,  <38.080616, 32.415367, 44.797215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848755, 32.566711, 45.404762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524342, 32.363770, 45.288269>,  <37.329693, 32.242004, 45.218372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524342, 32.363770, 45.288269>,  <37.848755, 32.566711, 45.404762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524342, 32.363770, 45.288269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253719, -0.143518, 0.956572,
		-0.527118, 0.849703, -0.012327,
		-0.811032, -0.507354, -0.291236,
		37.281033, 32.211563, 45.200897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216000, 32.940098, 45.772369>,  <37.848755, 32.566711, 45.404762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216000, 32.940098, 45.772369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152229, 32.557556, 45.674412>,  <37.113968, 32.328030, 45.615639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152229, 32.557556, 45.674412>,  <37.216000, 32.940098, 45.772369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152229, 32.557556, 45.674412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364855, -0.173424, 0.914770,
		-0.917314, 0.235185, -0.321283,
		-0.159422, -0.956353, -0.244893,
		37.104404, 32.270649, 45.600945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476292, 32.758728, 46.072083>,  <37.216000, 32.940098, 45.772369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476292, 32.758728, 46.072083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680477, 32.420029, 46.012165>,  <36.802990, 32.216808, 45.976215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680477, 32.420029, 46.012165>,  <36.476292, 32.758728, 46.072083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680477, 32.420029, 46.012165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272194, -0.324353, 0.905928,
		-0.815683, -0.421669, -0.396051,
		0.510462, -0.846753, -0.149794,
		36.833614, 32.166004, 45.967228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037655, 32.107800, 46.374413>,  <36.476292, 32.758728, 46.072083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037655, 32.107800, 46.374413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420536, 31.992392, 46.383614>,  <36.650265, 31.923147, 46.389133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420536, 31.992392, 46.383614>,  <36.037655, 32.107800, 46.374413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420536, 31.992392, 46.383614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193963, -0.580442, 0.790864,
		-0.214822, -0.761476, -0.611559,
		0.957199, -0.288516, 0.023007,
		36.707695, 31.905836, 46.390514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082207, 31.307819, 46.307018>,  <36.037655, 32.107800, 46.374413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082207, 31.307819, 46.307018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417252, 31.457644, 46.466072>,  <36.618279, 31.547537, 46.561504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417252, 31.457644, 46.466072>,  <36.082207, 31.307819, 46.307018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417252, 31.457644, 46.466072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239931, -0.401692, 0.883786,
		0.490757, -0.835673, -0.246593,
		0.837610, 0.374559, 0.397637,
		36.668533, 31.570011, 46.585361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418552, 30.699879, 46.604488>,  <36.082207, 31.307819, 46.307018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418552, 30.699879, 46.604488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562199, 31.038584, 46.761475>,  <36.648388, 31.241806, 46.855667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562199, 31.038584, 46.761475>,  <36.418552, 30.699879, 46.604488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562199, 31.038584, 46.761475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318473, -0.284097, 0.904358,
		0.877275, -0.449759, 0.167647,
		0.359115, 0.846762, 0.392467,
		36.669933, 31.292612, 46.879215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835552, 30.435019, 47.159996>,  <36.418552, 30.699879, 46.604488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835552, 30.435019, 47.159996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.841743, 30.812544, 47.292042>,  <36.845459, 31.039059, 47.371269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.841743, 30.812544, 47.292042>,  <36.835552, 30.435019, 47.159996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841743, 30.812544, 47.292042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092423, -0.327387, 0.940359,
		0.995599, -0.045065, 0.082163,
		0.015479, 0.943815, 0.330111,
		36.846386, 31.095688, 47.391075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267673, 30.441175, 47.729717>,  <36.835552, 30.435019, 47.159996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267673, 30.441175, 47.729717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046143, 30.772507, 47.763538>,  <36.913223, 30.971306, 47.783833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046143, 30.772507, 47.763538>,  <37.267673, 30.441175, 47.729717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046143, 30.772507, 47.763538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295995, -0.290779, 0.909854,
		0.778244, 0.478873, 0.406222,
		-0.553826, 0.828328, 0.084553,
		36.879993, 31.021006, 47.788902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513790, 30.635199, 48.399765>,  <37.267673, 30.441175, 47.729717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513790, 30.635199, 48.399765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172226, 30.818424, 48.300961>,  <36.967289, 30.928360, 48.241676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172226, 30.818424, 48.300961>,  <37.513790, 30.635199, 48.399765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172226, 30.818424, 48.300961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370837, -0.202555, 0.906339,
		0.365127, 0.865534, 0.342831,
		-0.853910, 0.458064, -0.247014,
		36.916054, 30.955843, 48.226856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372547, 31.069399, 48.939163>,  <37.513790, 30.635199, 48.399765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372547, 31.069399, 48.939163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004589, 31.044588, 48.784267>,  <36.783813, 31.029701, 48.691330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004589, 31.044588, 48.784267>,  <37.372547, 31.069399, 48.939163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004589, 31.044588, 48.784267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391949, 0.111892, 0.913157,
		-0.013314, 0.991782, -0.127240,
		-0.919891, -0.062029, -0.387238,
		36.728622, 31.025980, 48.668095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029964, 31.549717, 49.255325>,  <37.372547, 31.069399, 48.939163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029964, 31.549717, 49.255325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768784, 31.285799, 49.106560>,  <36.612076, 31.127449, 49.017300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768784, 31.285799, 49.106560>,  <37.029964, 31.549717, 49.255325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768784, 31.285799, 49.106560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579287, 0.118709, 0.806433,
		-0.487931, 0.742009, -0.459722,
		-0.652955, -0.659795, -0.371914,
		36.572899, 31.087860, 48.994984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419403, 31.878124, 49.267673>,  <37.029964, 31.549717, 49.255325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419403, 31.878124, 49.267673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350109, 31.484175, 49.268860>,  <36.308533, 31.247805, 49.269569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350109, 31.484175, 49.268860>,  <36.419403, 31.878124, 49.267673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350109, 31.484175, 49.268860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555474, 0.100191, 0.825476,
		-0.813287, 0.141360, -0.564430,
		-0.173239, -0.984875, 0.002962,
		36.298138, 31.188713, 49.269749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668789, 31.709175, 49.320576>,  <36.419403, 31.878124, 49.267673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668789, 31.709175, 49.320576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.899719, 31.417923, 49.468369>,  <36.038277, 31.243172, 49.557045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.899719, 31.417923, 49.468369>,  <35.668789, 31.709175, 49.320576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899719, 31.417923, 49.468369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416841, 0.126270, 0.900166,
		-0.702092, -0.673709, -0.230615,
		0.577330, -0.728130, 0.369482,
		36.072918, 31.199484, 49.579212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983711, 31.986485, 49.264362>,  <35.668789, 31.709175, 49.320576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983711, 31.986485, 49.264362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646069, 32.185139, 49.345196>,  <34.443485, 32.304333, 49.393696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646069, 32.185139, 49.345196>,  <34.983711, 31.986485, 49.264362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646069, 32.185139, 49.345196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282494, 0.732278, -0.619650,
		-0.455724, -0.465962, -0.758416,
		-0.844105, 0.496637, 0.202086,
		34.392838, 32.334129, 49.405823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507423, 32.107990, 48.685410>,  <34.983711, 31.986485, 49.264362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507423, 32.107990, 48.685410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551392, 32.404240, 48.950558>,  <34.577774, 32.581989, 49.109646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551392, 32.404240, 48.950558>,  <34.507423, 32.107990, 48.685410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551392, 32.404240, 48.950558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257448, 0.622936, -0.738696,
		-0.960020, 0.251854, -0.122197,
		0.109922, 0.740622, 0.662870,
		34.584370, 32.626427, 49.149418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071480, 32.753033, 48.461903>,  <34.507423, 32.107990, 48.685410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071480, 32.753033, 48.461903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383499, 32.856972, 48.689587>,  <34.570709, 32.919334, 48.826199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383499, 32.856972, 48.689587>,  <34.071480, 32.753033, 48.461903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383499, 32.856972, 48.689587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369703, 0.542526, -0.754311,
		-0.504820, 0.798839, 0.327129,
		0.780049, 0.259851, 0.569211,
		34.617516, 32.934925, 48.860352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154182, 33.440731, 48.376781>,  <34.071480, 32.753033, 48.461903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154182, 33.440731, 48.376781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506828, 33.321316, 48.523003>,  <34.718418, 33.249668, 48.610737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506828, 33.321316, 48.523003>,  <34.154182, 33.440731, 48.376781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506828, 33.321316, 48.523003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464118, 0.689045, -0.556607,
		-0.085716, 0.660374, 0.746029,
		0.881616, -0.298535, 0.365553,
		34.771313, 33.231754, 48.632668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581127, 34.057507, 48.404427>,  <34.154182, 33.440731, 48.376781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581127, 34.057507, 48.404427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835270, 33.752941, 48.455917>,  <34.987755, 33.570202, 48.486813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835270, 33.752941, 48.455917>,  <34.581127, 34.057507, 48.404427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835270, 33.752941, 48.455917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696435, 0.492974, -0.521494,
		0.333615, 0.420982, 0.843490,
		0.635358, -0.761413, 0.128723,
		35.025879, 33.524517, 48.494534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282711, 34.379753, 48.599777>,  <34.581127, 34.057507, 48.404427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282711, 34.379753, 48.599777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334309, 34.016731, 48.439926>,  <35.365269, 33.798916, 48.344017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334309, 34.016731, 48.439926>,  <35.282711, 34.379753, 48.599777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334309, 34.016731, 48.439926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603169, 0.391680, -0.694819,
		0.787114, -0.151411, 0.597936,
		0.128996, -0.907558, -0.399623,
		35.373009, 33.744465, 48.320038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011723, 34.266140, 48.505219>,  <35.282711, 34.379753, 48.599777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011723, 34.266140, 48.505219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845921, 33.990440, 48.267525>,  <35.746437, 33.825020, 48.124908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845921, 33.990440, 48.267525>,  <36.011723, 34.266140, 48.505219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845921, 33.990440, 48.267525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484446, 0.385645, -0.785233,
		0.770387, -0.613360, 0.174053,
		-0.414507, -0.689252, -0.594235,
		35.721569, 33.783665, 48.089252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555534, 34.255138, 47.987247>,  <36.011723, 34.266140, 48.505219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555534, 34.255138, 47.987247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235352, 34.075310, 47.828674>,  <36.043243, 33.967415, 47.733532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235352, 34.075310, 47.828674>,  <36.555534, 34.255138, 47.987247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235352, 34.075310, 47.828674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267516, 0.323909, -0.907479,
		0.536382, -0.832449, -0.139008,
		-0.800456, -0.449569, -0.396432,
		35.995216, 33.940441, 47.709743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839958, 33.951260, 47.401867>,  <36.555534, 34.255138, 47.987247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839958, 33.951260, 47.401867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446323, 33.976601, 47.335468>,  <36.210140, 33.991806, 47.295628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446323, 33.976601, 47.335468>,  <36.839958, 33.951260, 47.401867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446323, 33.976601, 47.335468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176419, 0.237510, -0.955230,
		-0.021088, -0.969317, -0.244907,
		-0.984089, 0.063350, -0.165998,
		36.151096, 33.995605, 47.285667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745033, 33.553143, 46.868664>,  <36.839958, 33.951260, 47.401867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745033, 33.553143, 46.868664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466946, 33.840500, 46.878361>,  <36.300095, 34.012913, 46.884178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466946, 33.840500, 46.878361>,  <36.745033, 33.553143, 46.868664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466946, 33.840500, 46.878361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252399, 0.275561, -0.927556,
		-0.673027, -0.638736, -0.372896,
		-0.695219, 0.718389, 0.024244,
		36.258381, 34.056015, 46.885635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578152, 33.619499, 46.230362>,  <36.745033, 33.553143, 46.868664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578152, 33.619499, 46.230362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.392990, 33.947838, 46.364193>,  <36.281895, 34.144840, 46.444492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.392990, 33.947838, 46.364193>,  <36.578152, 33.619499, 46.230362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392990, 33.947838, 46.364193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173455, 0.454033, -0.873938,
		-0.869273, -0.346514, -0.352552,
		-0.462901, 0.820843, 0.334574,
		36.254120, 34.194092, 46.464565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170822, 33.935749, 45.645706>,  <36.578152, 33.619499, 46.230362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170822, 33.935749, 45.645706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210835, 34.232979, 45.910381>,  <36.234840, 34.411316, 46.069187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210835, 34.232979, 45.910381>,  <36.170822, 33.935749, 45.645706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210835, 34.232979, 45.910381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108218, 0.652957, -0.749623,
		-0.989082, 0.146591, -0.015100,
		0.100028, 0.743073, 0.661692,
		36.240845, 34.455902, 46.108891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695633, 34.457184, 45.474438>,  <36.170822, 33.935749, 45.645706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695633, 34.457184, 45.474438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989746, 34.641296, 45.673435>,  <36.166214, 34.751762, 45.792835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989746, 34.641296, 45.673435>,  <35.695633, 34.457184, 45.474438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989746, 34.641296, 45.673435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238634, 0.511213, -0.825660,
		-0.634364, 0.725811, 0.266046,
		0.735280, 0.460282, 0.497498,
		36.210331, 34.779381, 45.822685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750050, 35.096039, 45.320244>,  <35.695633, 34.457184, 45.474438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750050, 35.096039, 45.320244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114838, 35.072075, 45.482586>,  <36.333710, 35.057697, 45.579990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114838, 35.072075, 45.482586>,  <35.750050, 35.096039, 45.320244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114838, 35.072075, 45.482586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344656, 0.648496, -0.678723,
		-0.222534, 0.758857, 0.612058,
		0.911971, -0.059910, 0.405857,
		36.388428, 35.054100, 45.604343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137295, 35.483578, 45.718140>,  <35.750050, 35.096039, 45.320244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137295, 35.483578, 45.718140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825256, 35.702785, 45.597393>,  <34.638035, 35.834312, 45.524944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825256, 35.702785, 45.597393>,  <35.137295, 35.483578, 45.718140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825256, 35.702785, 45.597393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508355, -0.273917, 0.816422,
		0.364731, 0.790342, 0.492271,
		-0.780094, 0.548023, -0.301868,
		34.591228, 35.867191, 45.506832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978073, 35.897560, 46.316666>,  <35.137295, 35.483578, 45.718140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978073, 35.897560, 46.316666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.661598, 35.869896, 46.073605>,  <34.471714, 35.853298, 45.927769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.661598, 35.869896, 46.073605>,  <34.978073, 35.897560, 46.316666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661598, 35.869896, 46.073605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559347, -0.319943, 0.764701,
		-0.247305, 0.944909, 0.214447,
		-0.791183, -0.069164, -0.607656,
		34.424244, 35.849148, 45.891308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502766, 36.122776, 46.640285>,  <34.978073, 35.897560, 46.316666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502766, 36.122776, 46.640285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270935, 35.933426, 46.374954>,  <34.131836, 35.819817, 46.215755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270935, 35.933426, 46.374954>,  <34.502766, 36.122776, 46.640285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270935, 35.933426, 46.374954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564209, -0.354241, 0.745775,
		-0.588013, 0.806489, -0.061775,
		-0.579576, -0.473380, -0.663327,
		34.097061, 35.791412, 46.175957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850853, 36.318527, 46.823017>,  <34.502766, 36.122776, 46.640285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850853, 36.318527, 46.823017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.811726, 35.976124, 46.619972>,  <33.788250, 35.770679, 46.498146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.811726, 35.976124, 46.619972>,  <33.850853, 36.318527, 46.823017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811726, 35.976124, 46.619972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571141, -0.369422, 0.733026,
		-0.815004, 0.361622, -0.452768,
		-0.097816, -0.856013, -0.507617,
		33.782379, 35.719318, 46.467686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199730, 36.102535, 46.963932>,  <33.850853, 36.318527, 46.823017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199730, 36.102535, 46.963932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371883, 35.764095, 46.838146>,  <33.475174, 35.561031, 46.762672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371883, 35.764095, 46.838146>,  <33.199730, 36.102535, 46.963932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371883, 35.764095, 46.838146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422865, -0.496780, 0.757888,
		-0.797469, -0.193204, -0.571590,
		0.430382, -0.846098, -0.314467,
		33.500999, 35.510265, 46.743805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646587, 35.620136, 47.044670>,  <33.199730, 36.102535, 46.963932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646587, 35.620136, 47.044670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998100, 35.429253, 47.045933>,  <33.209007, 35.314724, 47.046688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998100, 35.429253, 47.045933>,  <32.646587, 35.620136, 47.044670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998100, 35.429253, 47.045933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276267, -0.503339, 0.818734,
		-0.389120, -0.720362, -0.574164,
		0.878784, -0.477209, 0.003153,
		33.261734, 35.286091, 47.046879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517685, 34.856777, 46.969872>,  <32.646587, 35.620136, 47.044670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517685, 34.856777, 46.969872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.876270, 34.899879, 47.141804>,  <33.091419, 34.925739, 47.244961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.876270, 34.899879, 47.141804>,  <32.517685, 34.856777, 46.969872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876270, 34.899879, 47.141804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308869, -0.543589, 0.780456,
		0.317745, -0.832406, -0.454024,
		0.896459, 0.107752, 0.429827,
		33.145206, 34.932205, 47.270752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241104, 34.165024, 46.686852>,  <32.517685, 34.856777, 46.969872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241104, 34.165024, 46.686852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849249, 34.192177, 46.611275>,  <31.614136, 34.208469, 46.565929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849249, 34.192177, 46.611275>,  <32.241104, 34.165024, 46.686852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849249, 34.192177, 46.611275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191323, 0.600889, -0.776098,
		0.060849, -0.796445, -0.601641,
		-0.979639, 0.067883, -0.188942,
		31.555357, 34.212543, 46.554592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242775, 34.194717, 46.027260>,  <32.241104, 34.165024, 46.686852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242775, 34.194717, 46.027260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.881662, 34.327290, 46.136906>,  <31.664995, 34.406834, 46.202694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.881662, 34.327290, 46.136906>,  <32.242775, 34.194717, 46.027260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881662, 34.327290, 46.136906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016944, 0.664238, -0.747329,
		-0.429768, -0.670030, -0.605277,
		-0.902780, 0.331434, 0.274115,
		31.610828, 34.426720, 46.219139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837221, 33.915813, 45.415443>,  <32.242775, 34.194717, 46.027260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837221, 33.915813, 45.415443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671543, 34.230297, 45.598888>,  <31.572136, 34.418987, 45.708954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671543, 34.230297, 45.598888>,  <31.837221, 33.915813, 45.415443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671543, 34.230297, 45.598888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137787, 0.552217, -0.822235,
		-0.899698, -0.277377, -0.337056,
		-0.414197, 0.786205, 0.458610,
		31.547283, 34.466160, 45.736473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421164, 34.280209, 44.975735>,  <31.837221, 33.915813, 45.415443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421164, 34.280209, 44.975735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.434563, 34.570351, 45.250759>,  <31.442602, 34.744438, 45.415771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.434563, 34.570351, 45.250759>,  <31.421164, 34.280209, 44.975735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434563, 34.570351, 45.250759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039764, 0.686431, -0.726107,
		-0.998647, 0.051664, -0.005848,
		0.033499, 0.725357, 0.687557,
		31.444613, 34.787956, 45.457027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891029, 34.746284, 44.698734>,  <31.421164, 34.280209, 44.975735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891029, 34.746284, 44.698734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146282, 34.944382, 44.934536>,  <31.299435, 35.063240, 45.076019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146282, 34.944382, 44.934536>,  <30.891029, 34.746284, 44.698734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146282, 34.944382, 44.934536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168813, 0.657040, -0.734711,
		-0.751190, 0.568361, 0.335677,
		0.638134, 0.495241, 0.589509,
		31.337723, 35.092953, 45.111389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776672, 35.470459, 44.648746>,  <30.891029, 34.746284, 44.698734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776672, 35.470459, 44.648746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.162626, 35.452831, 44.752327>,  <31.394199, 35.442253, 44.814476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.162626, 35.452831, 44.752327>,  <30.776672, 35.470459, 44.648746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162626, 35.452831, 44.752327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195776, 0.777912, -0.597097,
		-0.175124, 0.626826, 0.759224,
		0.964885, -0.044072, 0.258949,
		31.452091, 35.439610, 44.830013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977360, 36.183102, 44.704079>,  <30.776672, 35.470459, 44.648746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977360, 36.183102, 44.704079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.316414, 35.972210, 44.680267>,  <31.519846, 35.845676, 44.665981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.316414, 35.972210, 44.680267>,  <30.977360, 36.183102, 44.704079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316414, 35.972210, 44.680267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397646, 0.705532, -0.586603,
		0.351274, 0.473554, 0.807684,
		0.847635, -0.527230, -0.059528,
		31.570704, 35.814041, 44.662411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.343575, 29.237652, 48.712303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636604, 29.509832, 48.705219>,  <33.812424, 29.673141, 48.700970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636604, 29.509832, 48.705219>,  <33.343575, 29.237652, 48.712303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636604, 29.509832, 48.705219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110429, 0.093135, -0.989511,
		-0.671664, 0.726851, 0.143370,
		0.732579, 0.680452, -0.017711,
		33.856377, 29.713968, 48.699905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131565, 29.912725, 48.361633>,  <33.343575, 29.237652, 48.712303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131565, 29.912725, 48.361633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.528625, 29.892321, 48.317734>,  <33.766861, 29.880077, 48.291393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.528625, 29.892321, 48.317734>,  <33.131565, 29.912725, 48.361633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528625, 29.892321, 48.317734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097076, 0.205859, -0.973755,
		0.072267, 0.977251, 0.199393,
		0.992650, -0.051014, -0.109745,
		33.826420, 29.877016, 48.284809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315517, 30.564693, 47.985088>,  <33.131565, 29.912725, 48.361633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315517, 30.564693, 47.985088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.644218, 30.343355, 47.930649>,  <33.841438, 30.210552, 47.897984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.644218, 30.343355, 47.930649>,  <33.315517, 30.564693, 47.985088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644218, 30.343355, 47.930649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062586, 0.149753, -0.986741,
		0.566391, 0.819379, 0.088429,
		0.821757, -0.553346, -0.136100,
		33.890747, 30.177351, 47.889820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789349, 30.896280, 47.611469>,  <33.315517, 30.564693, 47.985088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789349, 30.896280, 47.611469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.912960, 30.522074, 47.542992>,  <33.987125, 30.297550, 47.501904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.912960, 30.522074, 47.542992>,  <33.789349, 30.896280, 47.611469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912960, 30.522074, 47.542992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108736, 0.213582, -0.970855,
		0.944817, 0.281404, 0.167726,
		0.309025, -0.935518, -0.171197,
		34.005669, 30.241419, 47.491631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477154, 30.967392, 47.299519>,  <33.789349, 30.896280, 47.611469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477154, 30.967392, 47.299519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.296841, 30.622971, 47.205383>,  <34.188652, 30.416317, 47.148903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.296841, 30.622971, 47.205383>,  <34.477154, 30.967392, 47.299519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296841, 30.622971, 47.205383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228962, 0.143286, -0.962832,
		0.862770, -0.487910, 0.132558,
		-0.450782, -0.861053, -0.235336,
		34.161606, 30.364655, 47.134781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988152, 30.693378, 46.849697>,  <34.477154, 30.967392, 47.299519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988152, 30.693378, 46.849697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.653191, 30.487551, 46.775974>,  <34.452213, 30.364054, 46.731739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.653191, 30.487551, 46.775974>,  <34.988152, 30.693378, 46.849697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653191, 30.487551, 46.775974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152546, 0.103779, -0.982832,
		0.524865, -0.851144, -0.008409,
		-0.837405, -0.514572, -0.184309,
		34.401970, 30.333179, 46.720680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202232, 30.243748, 46.404804>,  <34.988152, 30.693378, 46.849697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202232, 30.243748, 46.404804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.806061, 30.265123, 46.353893>,  <34.568359, 30.277948, 46.323345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.806061, 30.265123, 46.353893>,  <35.202232, 30.243748, 46.404804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806061, 30.265123, 46.353893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131862, 0.093386, -0.986859,
		-0.040850, -0.994195, -0.099538,
		-0.990426, 0.053439, -0.127281,
		34.508934, 30.281155, 46.315708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083004, 29.657490, 45.937904>,  <35.202232, 30.243748, 46.404804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083004, 29.657490, 45.937904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.759354, 29.892368, 45.928741>,  <34.565163, 30.033295, 45.923244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.759354, 29.892368, 45.928741>,  <35.083004, 29.657490, 45.937904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759354, 29.892368, 45.928741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000880, -0.037777, -0.999286,
		-0.587641, -0.808564, 0.030050,
		-0.809121, 0.587195, -0.022911,
		34.516617, 30.068527, 45.921867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464428, 29.315495, 45.578094>,  <35.083004, 29.657490, 45.937904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464428, 29.315495, 45.578094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.409916, 29.711315, 45.559288>,  <34.377209, 29.948809, 45.548004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.409916, 29.711315, 45.559288>,  <34.464428, 29.315495, 45.578094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409916, 29.711315, 45.559288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051705, -0.040289, -0.997849,
		-0.989320, -0.138420, -0.045674,
		-0.136282, 0.989554, -0.047015,
		34.369030, 30.008181, 45.545185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887196, 29.360331, 45.178097>,  <34.464428, 29.315495, 45.578094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887196, 29.360331, 45.178097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.045689, 29.726519, 45.150059>,  <34.140785, 29.946232, 45.133236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.045689, 29.726519, 45.150059>,  <33.887196, 29.360331, 45.178097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045689, 29.726519, 45.150059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148221, -0.139119, -0.979120,
		-0.906107, 0.377570, -0.190816,
		0.396233, 0.915471, -0.070093,
		34.164558, 30.001160, 45.129032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598122, 29.629539, 44.622082>,  <33.887196, 29.360331, 45.178097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598122, 29.629539, 44.622082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.901649, 29.889668, 44.636353>,  <34.083767, 30.045744, 44.644917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.901649, 29.889668, 44.636353>,  <33.598122, 29.629539, 44.622082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901649, 29.889668, 44.636353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188595, 0.271840, -0.943682,
		-0.623393, 0.709359, 0.328926,
		0.758824, 0.650318, 0.035681,
		34.129295, 30.084763, 44.647057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445080, 30.158075, 44.278969>,  <33.598122, 29.629539, 44.622082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445080, 30.158075, 44.278969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838184, 30.231482, 44.287895>,  <34.074047, 30.275524, 44.293251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838184, 30.231482, 44.287895>,  <33.445080, 30.158075, 44.278969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838184, 30.231482, 44.287895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029725, 0.276027, -0.960690,
		-0.182460, 0.943468, 0.276724,
		0.982764, 0.183513, 0.022319,
		34.133015, 30.286535, 44.294590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831532, 30.604076, 44.188187>,  <33.445080, 30.158075, 44.278969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831532, 30.604076, 44.188187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.462959, 30.602348, 44.032780>,  <32.241817, 30.601313, 43.939533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.462959, 30.602348, 44.032780>,  <32.831532, 30.604076, 44.188187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462959, 30.602348, 44.032780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380223, -0.195799, 0.903932,
		-0.079976, 0.980635, 0.178773,
		-0.921430, -0.004319, -0.388519,
		32.186531, 30.601053, 43.916225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473560, 31.147541, 44.619835>,  <32.831532, 30.604076, 44.188187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473560, 31.147541, 44.619835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.201427, 30.919245, 44.435917>,  <32.038147, 30.782267, 44.325565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.201427, 30.919245, 44.435917>,  <32.473560, 31.147541, 44.619835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201427, 30.919245, 44.435917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494286, -0.105900, 0.862825,
		-0.541140, 0.814274, -0.210061,
		-0.680330, -0.570739, -0.459791,
		31.997328, 30.748022, 44.297981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820013, 31.500212, 44.785503>,  <32.473560, 31.147541, 44.619835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820013, 31.500212, 44.785503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.734512, 31.121763, 44.688210>,  <31.683212, 30.894693, 44.629833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.734512, 31.121763, 44.688210>,  <31.820013, 31.500212, 44.785503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734512, 31.121763, 44.688210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588995, -0.073820, 0.804758,
		-0.779355, 0.315282, -0.541482,
		-0.213754, -0.946122, -0.243232,
		31.670385, 30.837927, 44.615238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127157, 31.434784, 44.990585>,  <31.820013, 31.500212, 44.785503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127157, 31.434784, 44.990585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.271807, 31.064053, 44.950157>,  <31.358597, 30.841614, 44.925900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.271807, 31.064053, 44.950157>,  <31.127157, 31.434784, 44.990585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271807, 31.064053, 44.950157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558828, -0.302248, 0.772242,
		-0.746285, -0.222781, -0.627238,
		0.361622, -0.926831, -0.101067,
		31.380293, 30.786003, 44.919838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624269, 31.000994, 45.148396>,  <31.127157, 31.434784, 44.990585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624269, 31.000994, 45.148396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.936169, 30.754602, 45.193230>,  <31.123308, 30.606768, 45.220131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.936169, 30.754602, 45.193230>,  <30.624269, 31.000994, 45.148396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936169, 30.754602, 45.193230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499620, -0.504296, 0.704319,
		-0.377323, -0.605190, -0.700980,
		0.779748, -0.615979, 0.112082,
		31.170094, 30.569809, 45.226852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379524, 30.384104, 45.242565>,  <30.624269, 31.000994, 45.148396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379524, 30.384104, 45.242565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.734585, 30.355947, 45.424606>,  <30.947620, 30.339054, 45.533833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.734585, 30.355947, 45.424606>,  <30.379524, 30.384104, 45.242565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734585, 30.355947, 45.424606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447392, -0.366085, 0.815979,
		0.109171, -0.927915, -0.356447,
		0.887650, -0.070390, 0.455108,
		31.000879, 30.334829, 45.561138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342882, 29.818630, 45.732468>,  <30.379524, 30.384104, 45.242565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342882, 29.818630, 45.732468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.680506, 30.000425, 45.846313>,  <30.883080, 30.109503, 45.914619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.680506, 30.000425, 45.846313>,  <30.342882, 29.818630, 45.732468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680506, 30.000425, 45.846313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214440, -0.200391, 0.955960,
		0.491505, -0.867919, -0.071681,
		0.844060, 0.454488, 0.284610,
		30.933723, 30.136772, 45.931698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662739, 29.251171, 46.189079>,  <30.342882, 29.818630, 45.732468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662739, 29.251171, 46.189079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.856323, 29.587320, 46.286694>,  <30.972473, 29.789011, 46.345261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.856323, 29.587320, 46.286694>,  <30.662739, 29.251171, 46.189079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856323, 29.587320, 46.286694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209825, -0.159294, 0.964675,
		0.849561, -0.518070, 0.099240,
		0.483961, 0.840374, 0.244034,
		31.001513, 29.839432, 46.359905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052565, 29.051504, 46.713326>,  <30.662739, 29.251171, 46.189079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052565, 29.051504, 46.713326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.060408, 29.450264, 46.743793>,  <31.065113, 29.689520, 46.762074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.060408, 29.450264, 46.743793>,  <31.052565, 29.051504, 46.713326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060408, 29.450264, 46.743793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156889, -0.072178, 0.984976,
		0.987422, -0.031263, 0.154988,
		0.019606, 0.996902, 0.076175,
		31.066290, 29.749334, 46.766647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390568, 29.220947, 47.347340>,  <31.052565, 29.051504, 46.713326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390568, 29.220947, 47.347340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.152519, 29.533825, 47.273579>,  <31.009691, 29.721552, 47.229321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.152519, 29.533825, 47.273579>,  <31.390568, 29.220947, 47.347340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152519, 29.533825, 47.273579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325475, -0.024796, 0.945225,
		0.734777, 0.622541, 0.269341,
		-0.595121, 0.782194, -0.184402,
		30.973984, 29.768482, 47.218258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565773, 29.765190, 47.811554>,  <31.390568, 29.220947, 47.347340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565773, 29.765190, 47.811554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188238, 29.837797, 47.701118>,  <30.961718, 29.881361, 47.634857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188238, 29.837797, 47.701118>,  <31.565773, 29.765190, 47.811554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188238, 29.837797, 47.701118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269397, 0.061058, 0.961092,
		0.191313, 0.981490, -0.008728,
		-0.943835, 0.181518, -0.276091,
		30.905088, 29.892252, 47.618290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364620, 30.324701, 48.286175>,  <31.565773, 29.765190, 47.811554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364620, 30.324701, 48.286175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.014179, 30.208685, 48.132126>,  <30.803915, 30.139076, 48.039696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.014179, 30.208685, 48.132126>,  <31.364620, 30.324701, 48.286175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014179, 30.208685, 48.132126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451482, 0.213305, 0.866409,
		-0.169143, 0.932940, -0.317825,
		-0.876102, -0.290039, -0.385127,
		30.751348, 30.121674, 48.016586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842283, 30.846315, 48.437344>,  <31.364620, 30.324701, 48.286175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842283, 30.846315, 48.437344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.638292, 30.509884, 48.365219>,  <30.515898, 30.308025, 48.321945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.638292, 30.509884, 48.365219>,  <30.842283, 30.846315, 48.437344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638292, 30.509884, 48.365219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648565, 0.238274, 0.722903,
		-0.565056, 0.485605, -0.667008,
		-0.509975, -0.841079, -0.180308,
		30.485300, 30.257561, 48.311127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214197, 31.072104, 48.330162>,  <30.842283, 30.846315, 48.437344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214197, 31.072104, 48.330162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.195974, 30.690781, 48.449581>,  <30.185041, 30.461987, 48.521233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.195974, 30.690781, 48.449581>,  <30.214197, 31.072104, 48.330162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195974, 30.690781, 48.449581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713899, 0.240120, 0.657792,
		-0.698765, -0.183169, -0.691503,
		-0.045556, -0.953305, 0.298552,
		30.182308, 30.404789, 48.539146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534422, 31.735609, 48.059311>,  <30.214197, 31.072104, 48.330162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534422, 31.735609, 48.059311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.623272, 32.066120, 48.266357>,  <30.676582, 32.264427, 48.390583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.623272, 32.066120, 48.266357>,  <30.534422, 31.735609, 48.059311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623272, 32.066120, 48.266357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207626, 0.558784, -0.802902,
		-0.952655, 0.070875, 0.295678,
		0.222126, 0.826279, 0.517613,
		30.689909, 32.314003, 48.421642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965523, 32.177898, 47.958351>,  <30.534422, 31.735609, 48.059311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965523, 32.177898, 47.958351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.275547, 32.406898, 48.065327>,  <30.461561, 32.544296, 48.129513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.275547, 32.406898, 48.065327>,  <29.965523, 32.177898, 47.958351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275547, 32.406898, 48.065327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144813, 0.572908, -0.806725,
		-0.615067, 0.586534, 0.526945,
		0.775063, 0.572498, 0.267439,
		30.508066, 32.578648, 48.145557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680082, 32.841446, 47.878124>,  <29.965523, 32.177898, 47.958351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680082, 32.841446, 47.878124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.079737, 32.840683, 47.861534>,  <30.319530, 32.840225, 47.851578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.079737, 32.840683, 47.861534>,  <29.680082, 32.841446, 47.878124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079737, 32.840683, 47.861534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028952, 0.684140, -0.728776,
		0.029764, 0.729348, 0.683495,
		0.999138, -0.001903, -0.041479,
		30.379478, 32.840111, 47.849091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862480, 33.543575, 47.792961>,  <29.680082, 32.841446, 47.878124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862480, 33.543575, 47.792961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.196201, 33.353527, 47.681107>,  <30.396435, 33.239498, 47.613995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.196201, 33.353527, 47.681107>,  <29.862480, 33.543575, 47.792961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196201, 33.353527, 47.681107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169555, 0.703780, -0.689888,
		0.524586, 0.528160, 0.667725,
		0.834302, -0.475121, -0.279641,
		30.446491, 33.210991, 47.597214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347769, 34.075386, 47.810463>,  <29.862480, 33.543575, 47.792961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347769, 34.075386, 47.810463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.537249, 33.801243, 47.589233>,  <30.650936, 33.636757, 47.456497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.537249, 33.801243, 47.589233>,  <30.347769, 34.075386, 47.810463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537249, 33.801243, 47.589233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415193, 0.727624, -0.546056,
		0.776675, 0.029033, 0.629232,
		0.473698, -0.685361, -0.553073,
		30.679358, 33.595634, 47.423313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091053, 34.220478, 47.725204>,  <30.347769, 34.075386, 47.810463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091053, 34.220478, 47.725204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.050566, 33.970692, 47.415417>,  <31.026274, 33.820820, 47.229546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.050566, 33.970692, 47.415417>,  <31.091053, 34.220478, 47.725204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050566, 33.970692, 47.415417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497969, 0.642128, -0.582837,
		0.861267, -0.444656, 0.245968,
		-0.101219, -0.624462, -0.774468,
		31.020201, 33.783352, 47.183075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796131, 34.116348, 47.423000>,  <31.091053, 34.220478, 47.725204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796131, 34.116348, 47.423000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.511759, 34.076965, 47.144466>,  <31.341135, 34.053337, 46.977345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.511759, 34.076965, 47.144466>,  <31.796131, 34.116348, 47.423000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511759, 34.076965, 47.144466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467675, 0.673290, -0.572678,
		0.525219, -0.732794, -0.432618,
		-0.710933, -0.098457, -0.696334,
		31.298479, 34.047428, 46.935566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564976, 34.046448, 47.400478>,  <31.796131, 34.116348, 47.423000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564976, 34.046448, 47.400478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840286, 34.306316, 47.529598>,  <33.005474, 34.462238, 47.607071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840286, 34.306316, 47.529598>,  <32.564976, 34.046448, 47.400478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840286, 34.306316, 47.529598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026673, -0.422000, 0.906204,
		0.724958, -0.632329, -0.273124,
		0.688276, 0.649675, 0.322798,
		33.046768, 34.501217, 47.626438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129581, 33.700539, 47.776894>,  <32.564976, 34.046448, 47.400478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129581, 33.700539, 47.776894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.111347, 34.073925, 47.919193>,  <33.100407, 34.297958, 48.004574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.111347, 34.073925, 47.919193>,  <33.129581, 33.700539, 47.776894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111347, 34.073925, 47.919193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117690, -0.348620, 0.929846,
		0.992004, 0.084253, -0.093969,
		-0.045583, 0.933470, 0.355748,
		33.097672, 34.353966, 48.025917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280182, 33.602230, 48.437130>,  <33.129581, 33.700539, 47.776894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280182, 33.602230, 48.437130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186359, 33.990082, 48.464828>,  <33.130066, 34.222794, 48.481449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186359, 33.990082, 48.464828>,  <33.280182, 33.602230, 48.437130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186359, 33.990082, 48.464828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159085, -0.031989, 0.986746,
		0.958996, 0.242469, -0.146751,
		-0.234561, 0.969632, 0.069250,
		33.115990, 34.280972, 48.485603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831795, 33.891632, 48.837872>,  <33.280182, 33.602230, 48.437130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831795, 33.891632, 48.837872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.506153, 34.122528, 48.863258>,  <33.310768, 34.261066, 48.878490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.506153, 34.122528, 48.863258>,  <33.831795, 33.891632, 48.837872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506153, 34.122528, 48.863258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080889, 0.004485, 0.996713,
		0.575061, 0.816560, -0.050344,
		-0.814102, 0.577243, 0.063471,
		33.261921, 34.295700, 48.882301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895100, 34.366535, 49.390141>,  <33.831795, 33.891632, 48.837872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895100, 34.366535, 49.390141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.500481, 34.346428, 49.327908>,  <33.263710, 34.334366, 49.290565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.500481, 34.346428, 49.327908>,  <33.895100, 34.366535, 49.390141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500481, 34.346428, 49.327908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137259, -0.262456, 0.955132,
		-0.088845, 0.963634, 0.252025,
		-0.986543, -0.050266, -0.155585,
		33.204517, 34.331348, 49.281231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598980, 34.675144, 49.924599>,  <33.895100, 34.366535, 49.390141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598980, 34.675144, 49.924599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.321819, 34.431431, 49.770367>,  <33.155525, 34.285202, 49.677830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.321819, 34.431431, 49.770367>,  <33.598980, 34.675144, 49.924599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321819, 34.431431, 49.770367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254633, -0.293529, 0.921413,
		-0.674576, 0.736627, 0.048244,
		-0.692899, -0.609279, -0.385577,
		33.113949, 34.248646, 49.654694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050640, 34.818249, 50.364250>,  <33.598980, 34.675144, 49.924599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050640, 34.818249, 50.364250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.956863, 34.463291, 50.205471>,  <32.900597, 34.250317, 50.110203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.956863, 34.463291, 50.205471>,  <33.050640, 34.818249, 50.364250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956863, 34.463291, 50.205471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208380, -0.352966, 0.912137,
		-0.949534, 0.296559, -0.102165,
		-0.234441, -0.887394, -0.396950,
		32.886532, 34.197071, 50.086388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411430, 34.708351, 50.689613>,  <33.050640, 34.818249, 50.364250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411430, 34.708351, 50.689613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.545498, 34.356236, 50.555298>,  <32.625938, 34.144966, 50.474709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.545498, 34.356236, 50.555298>,  <32.411430, 34.708351, 50.689613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545498, 34.356236, 50.555298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303887, -0.438368, 0.845864,
		-0.891802, -0.181468, -0.414437,
		0.335173, -0.880286, -0.335792,
		32.646049, 34.092152, 50.454559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837070, 34.192635, 50.631760>,  <32.411430, 34.708351, 50.689613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837070, 34.192635, 50.631760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.190327, 34.017418, 50.698906>,  <32.402279, 33.912289, 50.739193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.190327, 34.017418, 50.698906>,  <31.837070, 34.192635, 50.631760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190327, 34.017418, 50.698906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374887, -0.443918, 0.813877,
		-0.281998, -0.781698, -0.556260,
		0.883140, -0.438047, 0.167864,
		32.455269, 33.886005, 50.749264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.634914, 39.867641, 35.959404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828285, 39.526459, 36.038162>,  <36.944305, 39.321751, 36.085419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828285, 39.526459, 36.038162>,  <36.634914, 39.867641, 35.959404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828285, 39.526459, 36.038162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584677, -0.147206, 0.797799,
		-0.651502, -0.500797, -0.569866,
		0.483423, -0.852956, 0.196899,
		36.973312, 39.270573, 36.097233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116924, 39.396130, 36.117752>,  <36.634914, 39.867641, 35.959404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116924, 39.396130, 36.117752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453625, 39.298649, 36.310448>,  <36.655643, 39.240162, 36.426064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453625, 39.298649, 36.310448>,  <36.116924, 39.396130, 36.117752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453625, 39.298649, 36.310448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517614, -0.110748, 0.848417,
		-0.153406, -0.963507, -0.219363,
		0.841750, -0.243698, 0.481736,
		36.706150, 39.225540, 36.454967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936039, 38.852077, 36.577747>,  <36.116924, 39.396130, 36.117752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936039, 38.852077, 36.577747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290062, 38.946148, 36.738430>,  <36.502476, 39.002590, 36.834839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290062, 38.946148, 36.738430>,  <35.936039, 38.852077, 36.577747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290062, 38.946148, 36.738430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392332, -0.087524, 0.915650,
		0.250500, -0.968003, 0.014805,
		0.885057, 0.235179, 0.401704,
		36.555580, 39.016701, 36.858940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977692, 38.322231, 37.047268>,  <35.936039, 38.852077, 36.577747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977692, 38.322231, 37.047268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258114, 38.580956, 37.167377>,  <36.426365, 38.736191, 37.239445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258114, 38.580956, 37.167377>,  <35.977692, 38.322231, 37.047268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258114, 38.580956, 37.167377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303718, -0.110159, 0.946372,
		0.645199, -0.754656, 0.119220,
		0.701052, 0.646807, 0.300277,
		36.468430, 38.774998, 37.257462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428314, 37.990112, 37.547207>,  <35.977692, 38.322231, 37.047268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428314, 37.990112, 37.547207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454941, 38.383831, 37.612606>,  <36.470917, 38.620064, 37.651844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454941, 38.383831, 37.612606>,  <36.428314, 37.990112, 37.547207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454941, 38.383831, 37.612606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122883, -0.154528, 0.980317,
		0.990186, -0.085346, 0.110667,
		0.066565, 0.984295, 0.163499,
		36.474911, 38.679119, 37.661655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738686, 37.974648, 38.200859>,  <36.428314, 37.990112, 37.547207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738686, 37.974648, 38.200859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569328, 38.329773, 38.128723>,  <36.467712, 38.542847, 38.085442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569328, 38.329773, 38.128723>,  <36.738686, 37.974648, 38.200859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569328, 38.329773, 38.128723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376019, 0.008893, 0.926569,
		0.824225, 0.460116, 0.330070,
		-0.423395, 0.887814, -0.180342,
		36.442310, 38.596119, 38.074619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867340, 38.328968, 38.821423>,  <36.738686, 37.974648, 38.200859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867340, 38.328968, 38.821423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575577, 38.531387, 38.637299>,  <36.400520, 38.652840, 38.526825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575577, 38.531387, 38.637299>,  <36.867340, 38.328968, 38.821423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575577, 38.531387, 38.637299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422488, 0.195973, 0.884929,
		0.538020, 0.839949, 0.070853,
		-0.729410, 0.506044, -0.460306,
		36.356754, 38.683201, 38.499207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774590, 39.110935, 39.107143>,  <36.867340, 38.328968, 38.821423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774590, 39.110935, 39.107143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435123, 38.974094, 38.945778>,  <36.231445, 38.891991, 38.848961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435123, 38.974094, 38.945778>,  <36.774590, 39.110935, 39.107143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435123, 38.974094, 38.945778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469721, 0.136804, 0.872151,
		-0.243173, 0.929652, -0.276791,
		-0.848663, -0.342098, -0.403410,
		36.180523, 38.871464, 38.824757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259712, 39.536953, 39.335167>,  <36.774590, 39.110935, 39.107143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259712, 39.536953, 39.335167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056946, 39.209511, 39.227146>,  <35.935287, 39.013046, 39.162334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056946, 39.209511, 39.227146>,  <36.259712, 39.536953, 39.335167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056946, 39.209511, 39.227146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391578, -0.060413, 0.918160,
		-0.767922, 0.571175, -0.289922,
		-0.506915, -0.818602, -0.270052,
		35.904873, 38.963932, 39.146130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591599, 39.697788, 39.544693>,  <36.259712, 39.536953, 39.335167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591599, 39.697788, 39.544693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608562, 39.299782, 39.508575>,  <35.618740, 39.060978, 39.486904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608562, 39.299782, 39.508575>,  <35.591599, 39.697788, 39.544693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608562, 39.299782, 39.508575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476025, -0.099584, 0.873775,
		-0.878408, 0.005925, -0.477874,
		0.042411, -0.995011, -0.090295,
		35.621284, 39.001278, 39.481487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871380, 39.382748, 39.801674>,  <35.591599, 39.697788, 39.544693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871380, 39.382748, 39.801674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119675, 39.069374, 39.813831>,  <35.268650, 38.881351, 39.821125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119675, 39.069374, 39.813831>,  <34.871380, 39.382748, 39.801674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119675, 39.069374, 39.813831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390778, -0.275547, 0.878275,
		-0.679693, -0.557053, -0.477189,
		0.620734, -0.783432, 0.030397,
		35.305897, 38.834343, 39.822952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442902, 38.642056, 39.952847>,  <34.871380, 39.382748, 39.801674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442902, 38.642056, 39.952847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824394, 38.594730, 40.063404>,  <35.053291, 38.566338, 40.129738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824394, 38.594730, 40.063404>,  <34.442902, 38.642056, 39.952847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824394, 38.594730, 40.063404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298853, -0.272795, 0.914478,
		-0.032792, -0.954770, -0.295531,
		0.953735, -0.118308, 0.276390,
		35.110516, 38.559238, 40.146320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140770, 38.063023, 39.462032>,  <34.442902, 38.642056, 39.952847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140770, 38.063023, 39.462032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765102, 37.942356, 39.396366>,  <33.539700, 37.869957, 39.356968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765102, 37.942356, 39.396366>,  <34.140770, 38.063023, 39.462032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765102, 37.942356, 39.396366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096533, 0.226857, -0.969132,
		0.329599, -0.926030, -0.183937,
		-0.939173, -0.301669, -0.164164,
		33.483349, 37.851856, 39.347118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174843, 37.616177, 38.906769>,  <34.140770, 38.063023, 39.462032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174843, 37.616177, 38.906769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786930, 37.712070, 38.924900>,  <33.554184, 37.769608, 38.935780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786930, 37.712070, 38.924900>,  <34.174843, 37.616177, 38.906769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786930, 37.712070, 38.924900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034089, 0.050822, -0.998126,
		-0.241593, -0.969506, -0.041114,
		-0.969778, 0.239739, 0.045327,
		33.495995, 37.783993, 38.938499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635353, 37.158192, 38.470409>,  <34.174843, 37.616177, 38.906769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635353, 37.158192, 38.470409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470726, 37.519653, 38.517757>,  <33.371948, 37.736530, 38.546165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470726, 37.519653, 38.517757>,  <33.635353, 37.158192, 38.470409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470726, 37.519653, 38.517757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098313, 0.085100, -0.991510,
		-0.906060, -0.419714, 0.053817,
		-0.411571, 0.903658, 0.118369,
		33.347256, 37.790752, 38.553268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111996, 37.107243, 37.989368>,  <33.635353, 37.158192, 38.470409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111996, 37.107243, 37.989368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140888, 37.494610, 38.084824>,  <33.158222, 37.727032, 38.142097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140888, 37.494610, 38.084824>,  <33.111996, 37.107243, 37.989368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140888, 37.494610, 38.084824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165633, 0.247589, -0.954602,
		-0.983539, 0.029425, 0.178285,
		0.072230, 0.968418, 0.238640,
		33.162556, 37.785133, 38.156414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564690, 37.404652, 37.632191>,  <33.111996, 37.107243, 37.989368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564690, 37.404652, 37.632191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841339, 37.683014, 37.709522>,  <33.007328, 37.850029, 37.755920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841339, 37.683014, 37.709522>,  <32.564690, 37.404652, 37.632191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841339, 37.683014, 37.709522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123066, 0.377304, -0.917876,
		-0.711695, 0.611034, 0.346595,
		0.691625, 0.695902, 0.193328,
		33.048828, 37.891785, 37.767521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164276, 38.023407, 37.477924>,  <32.564690, 37.404652, 37.632191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164276, 38.023407, 37.477924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555714, 38.105461, 37.471298>,  <32.790577, 38.154694, 37.467323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555714, 38.105461, 37.471298>,  <32.164276, 38.023407, 37.477924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555714, 38.105461, 37.471298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118473, 0.495711, -0.860369,
		-0.168280, 0.843914, 0.509403,
		0.978594, 0.205134, -0.016563,
		32.849293, 38.167000, 37.466328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148094, 38.662079, 37.219261>,  <32.164276, 38.023407, 37.477924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148094, 38.662079, 37.219261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527271, 38.544872, 37.169384>,  <32.754776, 38.474548, 37.139458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527271, 38.544872, 37.169384>,  <32.148094, 38.662079, 37.219261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527271, 38.544872, 37.169384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061017, 0.551437, -0.831982,
		0.312546, 0.781061, 0.540609,
		0.947941, -0.293019, -0.124692,
		32.811653, 38.456966, 37.131977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590691, 39.273930, 36.865181>,  <32.148094, 38.662079, 37.219261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590691, 39.273930, 36.865181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784683, 38.927410, 36.817337>,  <32.901081, 38.719498, 36.788631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784683, 38.927410, 36.817337>,  <32.590691, 39.273930, 36.865181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784683, 38.927410, 36.817337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027669, 0.121508, -0.992205,
		0.874084, 0.484515, 0.034960,
		0.484986, -0.866303, -0.119614,
		32.930180, 38.667519, 36.781452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086319, 39.381519, 36.433811>,  <32.590691, 39.273930, 36.865181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086319, 39.381519, 36.433811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024239, 38.987564, 36.403042>,  <32.986992, 38.751190, 36.384583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024239, 38.987564, 36.403042>,  <33.086319, 39.381519, 36.433811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024239, 38.987564, 36.403042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110666, 0.094706, -0.989335,
		0.981665, -0.145034, -0.123692,
		-0.155201, -0.984884, -0.076919,
		32.977676, 38.692101, 36.379967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388649, 39.187542, 35.808884>,  <33.086319, 39.381519, 36.433811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388649, 39.187542, 35.808884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161266, 38.867588, 35.885872>,  <33.024837, 38.675617, 35.932064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161266, 38.867588, 35.885872>,  <33.388649, 39.187542, 35.808884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161266, 38.867588, 35.885872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285860, -0.027337, -0.957882,
		0.771453, -0.599535, -0.213114,
		-0.568457, -0.799882, 0.192472,
		32.990730, 38.627625, 35.943615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489044, 38.654758, 35.263721>,  <33.388649, 39.187542, 35.808884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489044, 38.654758, 35.263721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152073, 38.521362, 35.433002>,  <32.949890, 38.441326, 35.534573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152073, 38.521362, 35.433002>,  <33.489044, 38.654758, 35.263721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152073, 38.521362, 35.433002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391086, -0.161832, -0.906014,
		0.370637, -0.928759, 0.005908,
		-0.842425, -0.333492, 0.423206,
		32.899345, 38.421314, 35.559963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357185, 37.918850, 34.972610>,  <33.489044, 38.654758, 35.263721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357185, 37.918850, 34.972610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008965, 38.080505, 35.084904>,  <32.800034, 38.177498, 35.152279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008965, 38.080505, 35.084904>,  <33.357185, 37.918850, 34.972610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008965, 38.080505, 35.084904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356941, -0.125925, -0.925600,
		-0.338725, -0.905986, 0.253879,
		-0.870551, 0.404144, 0.280730,
		32.747799, 38.201748, 35.169125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861237, 37.536037, 34.563019>,  <33.357185, 37.918850, 34.972610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861237, 37.536037, 34.563019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679455, 37.872944, 34.678993>,  <32.570385, 38.075089, 34.748577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679455, 37.872944, 34.678993>,  <32.861237, 37.536037, 34.563019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679455, 37.872944, 34.678993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513127, 0.018525, -0.858113,
		-0.728130, -0.538744, 0.423770,
		-0.454453, 0.842266, 0.289933,
		32.543118, 38.125622, 34.765972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139221, 37.361439, 34.325535>,  <32.861237, 37.536037, 34.563019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139221, 37.361439, 34.325535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207962, 37.749275, 34.395237>,  <32.249207, 37.981976, 34.437057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207962, 37.749275, 34.395237>,  <32.139221, 37.361439, 34.325535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207962, 37.749275, 34.395237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586784, 0.242832, -0.772475,
		-0.791298, 0.030498, 0.610670,
		0.171850, 0.969589, 0.174257,
		32.259518, 38.040154, 34.447514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533569, 36.883915, 34.733383>,  <32.139221, 37.361439, 34.325535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533569, 36.883915, 34.733383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720005, 36.872513, 35.087093>,  <32.831867, 36.865669, 35.299320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720005, 36.872513, 35.087093>,  <32.533569, 36.883915, 34.733383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720005, 36.872513, 35.087093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210175, -0.974437, 0.079364,
		0.859413, -0.222844, -0.460163,
		0.466085, -0.028508, 0.884280,
		32.859829, 36.863960, 35.352379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157440, 36.383335, 34.728287>,  <32.533569, 36.883915, 34.733383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157440, 36.383335, 34.728287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960976, 36.399906, 35.076321>,  <32.843098, 36.409851, 35.285141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960976, 36.399906, 35.076321>,  <33.157440, 36.383335, 34.728287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960976, 36.399906, 35.076321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086379, -0.996261, -0.001321,
		0.866774, -0.075806, 0.492906,
		-0.491164, 0.041431, 0.870081,
		32.813625, 36.412334, 35.337345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561794, 35.961567, 34.764084>,  <33.157440, 36.383335, 34.728287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561794, 35.961567, 34.764084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942680, 35.899616, 34.869381>,  <33.171211, 35.862446, 34.932560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942680, 35.899616, 34.869381>,  <32.561794, 35.961567, 34.764084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942680, 35.899616, 34.869381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304123, -0.560209, 0.770503,
		0.028135, -0.813743, -0.580543,
		0.952217, -0.154878, 0.263240,
		33.228344, 35.853153, 34.948353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673542, 35.278893, 34.719570>,  <32.561794, 35.961567, 34.764084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673542, 35.278893, 34.719570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970360, 35.396297, 34.960640>,  <33.148453, 35.466740, 35.105282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970360, 35.396297, 34.960640>,  <32.673542, 35.278893, 34.719570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970360, 35.396297, 34.960640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196929, -0.763931, 0.614515,
		0.640769, -0.574683, -0.509072,
		0.742047, 0.293512, 0.602675,
		33.192974, 35.484352, 35.141441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996571, 34.649494, 34.915039>,  <32.673542, 35.278893, 34.719570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996571, 34.649494, 34.915039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135483, 34.910568, 35.184376>,  <33.218830, 35.067215, 35.345978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135483, 34.910568, 35.184376>,  <32.996571, 34.649494, 34.915039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135483, 34.910568, 35.184376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014645, -0.714172, 0.699817,
		0.937645, -0.252896, -0.238462,
		0.347284, 0.652688, 0.673344,
		33.239670, 35.106373, 35.386379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530090, 34.349033, 35.228241>,  <32.996571, 34.649494, 34.915039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530090, 34.349033, 35.228241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385838, 34.620140, 35.484547>,  <33.299286, 34.782803, 35.638329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385838, 34.620140, 35.484547>,  <33.530090, 34.349033, 35.228241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385838, 34.620140, 35.484547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000365, -0.686892, 0.726759,
		0.932707, 0.262329, 0.247470,
		-0.360636, 0.677763, 0.640765,
		33.277645, 34.823467, 35.676777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897659, 34.158218, 35.707306>,  <33.530090, 34.349033, 35.228241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897659, 34.158218, 35.707306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620106, 34.401680, 35.861229>,  <33.453575, 34.547756, 35.953583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620106, 34.401680, 35.861229>,  <33.897659, 34.158218, 35.707306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620106, 34.401680, 35.861229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042393, -0.567982, 0.821948,
		0.718842, 0.554020, 0.419914,
		-0.693879, 0.608653, 0.384803,
		33.411942, 34.584274, 35.976669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057037, 34.278149, 36.435131>,  <33.897659, 34.158218, 35.707306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057037, 34.278149, 36.435131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662586, 34.341267, 36.414505>,  <33.425915, 34.379139, 36.402130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662586, 34.341267, 36.414505>,  <34.057037, 34.278149, 36.435131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662586, 34.341267, 36.414505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124989, -0.501337, 0.856177,
		0.109251, 0.850742, 0.514103,
		-0.986125, 0.157795, -0.051562,
		33.366749, 34.388607, 36.399036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933037, 34.410156, 37.117462>,  <34.057037, 34.278149, 36.435131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933037, 34.410156, 37.117462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581696, 34.343323, 36.938316>,  <33.370892, 34.303223, 36.830830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581696, 34.343323, 36.938316>,  <33.933037, 34.410156, 37.117462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581696, 34.343323, 36.938316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318413, -0.494303, 0.808874,
		-0.356535, 0.853080, 0.380968,
		-0.878348, -0.167087, -0.447868,
		33.318192, 34.293198, 36.803955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501190, 34.556458, 37.641109>,  <33.933037, 34.410156, 37.117462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501190, 34.556458, 37.641109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313622, 34.312092, 37.385956>,  <33.201080, 34.165470, 37.232864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313622, 34.312092, 37.385956>,  <33.501190, 34.556458, 37.641109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313622, 34.312092, 37.385956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500004, -0.411731, 0.761889,
		-0.728086, 0.676209, -0.112392,
		-0.468920, -0.610917, -0.637882,
		33.172947, 34.128819, 37.194592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810589, 34.426384, 37.831333>,  <33.501190, 34.556458, 37.641109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810589, 34.426384, 37.831333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858150, 34.090031, 37.620136>,  <32.886688, 33.888218, 37.493416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858150, 34.090031, 37.620136>,  <32.810589, 34.426384, 37.831333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858150, 34.090031, 37.620136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491540, -0.511887, 0.704528,
		-0.862699, 0.175758, -0.474194,
		0.118907, -0.840881, -0.527996,
		32.893822, 33.837765, 37.461739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249233, 34.124371, 38.002274>,  <32.810589, 34.426384, 37.831333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249233, 34.124371, 38.002274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472763, 33.833900, 37.842079>,  <32.606880, 33.659618, 37.745960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472763, 33.833900, 37.842079>,  <32.249233, 34.124371, 38.002274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472763, 33.833900, 37.842079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308018, -0.630137, 0.712778,
		-0.769961, -0.274961, -0.575809,
		0.558825, -0.726171, -0.400488,
		32.640411, 33.616051, 37.721931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878170, 33.434227, 38.166435>,  <32.249233, 34.124371, 38.002274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878170, 33.434227, 38.166435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243401, 33.303684, 38.068634>,  <32.462540, 33.225361, 38.009953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243401, 33.303684, 38.068634>,  <31.878170, 33.434227, 38.166435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243401, 33.303684, 38.068634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046841, -0.679562, 0.732121,
		-0.405089, -0.657030, -0.635779,
		0.913077, -0.326354, -0.244507,
		32.517323, 33.205776, 37.995281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825760, 32.681370, 38.184116>,  <31.878170, 33.434227, 38.166435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825760, 32.681370, 38.184116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212341, 32.777557, 38.220215>,  <32.444290, 32.835270, 38.241875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212341, 32.777557, 38.220215>,  <31.825760, 32.681370, 38.184116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212341, 32.777557, 38.220215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052847, -0.530014, 0.846341,
		0.251351, -0.813179, -0.524941,
		0.966452, 0.240470, 0.090246,
		32.502277, 32.849697, 38.247288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231609, 32.071087, 38.377075>,  <31.825760, 32.681370, 38.184116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231609, 32.071087, 38.377075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436897, 32.377335, 38.532215>,  <32.560070, 32.561085, 38.625298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436897, 32.377335, 38.532215>,  <32.231609, 32.071087, 38.377075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436897, 32.377335, 38.532215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187963, -0.541198, 0.819619,
		0.837422, -0.347743, -0.421663,
		0.513220, 0.765624, 0.387848,
		32.590862, 32.607021, 38.648571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605213, 31.676611, 38.886238>,  <32.231609, 32.071087, 38.377075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605213, 31.676611, 38.886238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643845, 32.061478, 38.988148>,  <32.667023, 32.292397, 39.049294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643845, 32.061478, 38.988148>,  <32.605213, 31.676611, 38.886238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643845, 32.061478, 38.988148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138690, -0.266485, 0.953809,
		0.985616, -0.056781, -0.159179,
		0.096577, 0.962165, 0.254777,
		32.672817, 32.350128, 39.064579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145973, 31.660318, 39.349926>,  <32.605213, 31.676611, 38.886238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145973, 31.660318, 39.349926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935478, 31.991673, 39.426720>,  <32.809181, 32.190483, 39.472797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935478, 31.991673, 39.426720>,  <33.145973, 31.660318, 39.349926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935478, 31.991673, 39.426720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003384, -0.223730, 0.974645,
		0.850332, 0.513542, 0.114932,
		-0.526235, 0.828384, 0.191983,
		32.777607, 32.240189, 39.484314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515182, 32.037544, 39.870968>,  <33.145973, 31.660318, 39.349926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515182, 32.037544, 39.870968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133930, 32.156078, 39.895374>,  <32.905178, 32.227200, 39.910019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133930, 32.156078, 39.895374>,  <33.515182, 32.037544, 39.870968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133930, 32.156078, 39.895374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023192, -0.129508, 0.991307,
		0.301659, 0.946263, 0.116566,
		-0.953134, 0.296334, 0.061013,
		32.847992, 32.244980, 39.913677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577374, 32.560787, 40.382790>,  <33.515182, 32.037544, 39.870968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577374, 32.560787, 40.382790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199894, 32.431572, 40.354282>,  <32.973408, 32.354042, 40.337177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199894, 32.431572, 40.354282>,  <33.577374, 32.560787, 40.382790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199894, 32.431572, 40.354282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056600, -0.054591, 0.996903,
		-0.325930, 0.944809, 0.033234,
		-0.943698, -0.323039, -0.071269,
		32.916786, 32.334660, 40.332901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093613, 33.004639, 40.807640>,  <33.577374, 32.560787, 40.382790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093613, 33.004639, 40.807640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897388, 32.656754, 40.785904>,  <32.779655, 32.448021, 40.772861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897388, 32.656754, 40.785904>,  <33.093613, 33.004639, 40.807640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897388, 32.656754, 40.785904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089319, -0.011849, 0.995933,
		-0.866820, 0.493415, -0.071869,
		-0.490557, -0.869713, -0.054342,
		32.750221, 32.395840, 40.769600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556404, 33.045017, 41.252399>,  <33.093613, 33.004639, 40.807640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556404, 33.045017, 41.252399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535034, 32.649414, 41.197243>,  <32.522213, 32.412052, 41.164150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535034, 32.649414, 41.197243>,  <32.556404, 33.045017, 41.252399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535034, 32.649414, 41.197243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119475, -0.130763, 0.984188,
		-0.991399, 0.069059, -0.111175,
		-0.053429, -0.989005, -0.137889,
		32.519005, 32.352711, 41.155876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853518, 32.742699, 41.517311>,  <32.556404, 33.045017, 41.252399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853518, 32.742699, 41.517311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114647, 32.439697, 41.518002>,  <32.271324, 32.257896, 41.518417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114647, 32.439697, 41.518002>,  <31.853518, 32.742699, 41.517311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114647, 32.439697, 41.518002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224165, -0.191011, 0.955649,
		-0.723582, -0.624257, -0.294503,
		0.652824, -0.757508, 0.001725,
		32.310493, 32.212444, 41.518520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481936, 32.273525, 41.789536>,  <31.853518, 32.742699, 41.517311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481936, 32.273525, 41.789536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850481, 32.122292, 41.825619>,  <32.071609, 32.031551, 41.847267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850481, 32.122292, 41.825619>,  <31.481936, 32.273525, 41.789536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850481, 32.122292, 41.825619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232565, -0.350275, 0.907315,
		-0.311440, -0.856950, -0.410660,
		0.921368, -0.378079, 0.090207,
		32.126892, 32.008865, 41.852680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421080, 31.625454, 42.016396>,  <31.481936, 32.273525, 41.789536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421080, 31.625454, 42.016396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794374, 31.714865, 42.128895>,  <32.018353, 31.768511, 42.196396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794374, 31.714865, 42.128895>,  <31.421080, 31.625454, 42.016396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794374, 31.714865, 42.128895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125071, -0.531744, 0.837619,
		0.336782, -0.816875, -0.468287,
		0.933239, 0.223526, 0.281249,
		32.074345, 31.781923, 42.213268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747139, 30.951746, 42.071400>,  <31.421080, 31.625454, 42.016396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747139, 30.951746, 42.071400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951590, 31.219212, 42.287415>,  <32.074261, 31.379690, 42.417023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951590, 31.219212, 42.287415>,  <31.747139, 30.951746, 42.071400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951590, 31.219212, 42.287415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024498, -0.616723, 0.786799,
		0.859157, -0.415383, -0.298843,
		0.511126, 0.668663, 0.540038,
		32.104927, 31.419811, 42.449425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271610, 30.609230, 42.295284>,  <31.747139, 30.951746, 42.071400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271610, 30.609230, 42.295284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253040, 30.912352, 42.555614>,  <32.241898, 31.094225, 42.711815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253040, 30.912352, 42.555614>,  <32.271610, 30.609230, 42.295284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253040, 30.912352, 42.555614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066906, -0.652427, 0.754893,
		0.996679, -0.008496, 0.080992,
		-0.046428, 0.757804, 0.650828,
		32.239113, 31.139692, 42.750862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609718, 30.334538, 42.838196>,  <32.271610, 30.609230, 42.295284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609718, 30.334538, 42.838196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391720, 30.641823, 42.972557>,  <32.260921, 30.826193, 43.053173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391720, 30.641823, 42.972557>,  <32.609718, 30.334538, 42.838196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391720, 30.641823, 42.972557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115036, -0.465355, 0.877617,
		0.830511, 0.439655, 0.341988,
		-0.544994, 0.768211, 0.335906,
		32.228222, 30.872286, 43.073330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902538, 30.450115, 43.467461>,  <32.609718, 30.334538, 42.838196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902538, 30.450115, 43.467461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535526, 30.608442, 43.482777>,  <32.315319, 30.703438, 43.491966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535526, 30.608442, 43.482777>,  <32.902538, 30.450115, 43.467461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535526, 30.608442, 43.482777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156684, -0.448330, 0.880028,
		0.365494, 0.801455, 0.473375,
		-0.917532, 0.395815, 0.038287,
		32.260265, 30.727186, 43.494263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526413, 30.847616, 43.744183>,  <32.902538, 30.450115, 43.467461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526413, 30.847616, 43.744183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880989, 30.670467, 43.797977>,  <34.093735, 30.564178, 43.830254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880989, 30.670467, 43.797977>,  <33.526413, 30.847616, 43.744183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880989, 30.670467, 43.797977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295373, 0.317594, -0.901049,
		0.356339, 0.838449, 0.412341,
		0.886441, -0.442873, 0.134485,
		34.146923, 30.537605, 43.838322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229313, 31.305908, 43.495121>,  <33.526413, 30.847616, 43.744183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229313, 31.305908, 43.495121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312149, 30.914942, 43.478298>,  <34.361851, 30.680361, 43.468204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312149, 30.914942, 43.478298>,  <34.229313, 31.305908, 43.495121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312149, 30.914942, 43.478298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325460, 0.109368, -0.939210,
		0.922600, 0.180811, 0.340759,
		0.207088, -0.977418, -0.042057,
		34.374275, 30.621716, 43.465683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864021, 31.429861, 43.242203>,  <34.229313, 31.305908, 43.495121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864021, 31.429861, 43.242203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767803, 31.046728, 43.179352>,  <34.710072, 30.816849, 43.141640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767803, 31.046728, 43.179352>,  <34.864021, 31.429861, 43.242203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767803, 31.046728, 43.179352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483259, 0.022210, -0.875195,
		0.841782, -0.286462, 0.457540,
		-0.240548, -0.957834, -0.157131,
		34.695641, 30.759378, 43.132214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514771, 31.060825, 43.144867>,  <34.864021, 31.429861, 43.242203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514771, 31.060825, 43.144867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236977, 30.828476, 42.975033>,  <35.070301, 30.689066, 42.873135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236977, 30.828476, 42.975033>,  <35.514771, 31.060825, 43.144867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236977, 30.828476, 42.975033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592111, -0.126153, -0.795921,
		0.408768, -0.804158, 0.431554,
		-0.694488, -0.580875, -0.424583,
		35.028629, 30.654213, 42.847656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898628, 30.657391, 42.639671>,  <35.514771, 31.060825, 43.144867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898628, 30.657391, 42.639671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523640, 30.573841, 42.528309>,  <35.298645, 30.523710, 42.461491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523640, 30.573841, 42.528309>,  <35.898628, 30.657391, 42.639671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523640, 30.573841, 42.528309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327834, -0.261250, -0.907895,
		0.116903, -0.942401, 0.313392,
		-0.937474, -0.208876, -0.278410,
		35.242397, 30.511179, 42.444786>
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
