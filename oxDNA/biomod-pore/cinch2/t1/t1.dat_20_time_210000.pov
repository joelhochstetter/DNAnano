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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.079414, 32.864391, 23.578024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952774, 32.641670, 23.270847>,  <42.876789, 32.508038, 23.086542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952774, 32.641670, 23.270847>,  <43.079414, 32.864391, 23.578024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952774, 32.641670, 23.270847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917146, 0.386309, 0.098022,
		0.242083, 0.735347, -0.632977,
		-0.316605, -0.556803, -0.767940,
		42.857792, 32.474628, 23.040464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598797, 33.265079, 23.170038>,  <43.079414, 32.864391, 23.578024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598797, 33.265079, 23.170038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498528, 32.878780, 23.143219>,  <42.438366, 32.646999, 23.127129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498528, 32.878780, 23.143219>,  <42.598797, 33.265079, 23.170038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498528, 32.878780, 23.143219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965818, 0.244761, 0.085370,
		-0.066036, 0.086155, -0.994091,
		-0.250670, -0.965748, -0.067047,
		42.423328, 32.589054, 23.123104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108978, 33.432289, 22.737497>,  <42.598797, 33.265079, 23.170038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108978, 33.432289, 22.737497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947960, 33.277683, 22.405579>,  <41.851349, 33.184921, 22.206427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947960, 33.277683, 22.405579>,  <42.108978, 33.432289, 22.737497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947960, 33.277683, 22.405579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808139, 0.575829, 0.123820,
		0.429964, 0.720435, -0.544154,
		-0.402544, -0.386515, -0.829798,
		41.827198, 33.161728, 22.156639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806034, 33.959164, 22.297480>,  <42.108978, 33.432289, 22.737497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806034, 33.959164, 22.297480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605061, 33.615990, 22.254581>,  <41.484478, 33.410084, 22.228844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605061, 33.615990, 22.254581>,  <41.806034, 33.959164, 22.297480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605061, 33.615990, 22.254581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841694, 0.513709, -0.166296,
		0.197764, 0.006713, -0.980227,
		-0.502435, -0.857938, -0.107244,
		41.454330, 33.358608, 22.222408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980850, 34.358688, 21.686987>,  <41.806034, 33.959164, 22.297480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980850, 34.358688, 21.686987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913673, 34.693913, 21.479351>,  <41.873367, 34.895046, 21.354771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913673, 34.693913, 21.479351>,  <41.980850, 34.358688, 21.686987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913673, 34.693913, 21.479351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693348, -0.474730, -0.542125,
		-0.700760, 0.268865, 0.660793,
		-0.167940, 0.838059, -0.519089,
		41.863293, 34.945332, 21.323624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244663, 34.511436, 21.679369>,  <41.980850, 34.358688, 21.686987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244663, 34.511436, 21.679369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404228, 34.691418, 21.359768>,  <41.499966, 34.799408, 21.168007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404228, 34.691418, 21.359768>,  <41.244663, 34.511436, 21.679369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404228, 34.691418, 21.359768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616024, -0.513936, -0.596979,
		-0.679251, 0.730349, 0.072168,
		0.398913, 0.449956, -0.799004,
		41.523903, 34.826405, 21.120066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644688, 34.178852, 21.432842>,  <41.244663, 34.511436, 21.679369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644688, 34.178852, 21.432842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407024, 34.475971, 21.309406>,  <40.264427, 34.654243, 21.235346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407024, 34.475971, 21.309406>,  <40.644688, 34.178852, 21.432842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407024, 34.475971, 21.309406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709016, 0.302500, -0.637016,
		-0.379824, -0.597285, -0.706388,
		-0.594163, 0.742795, -0.308588,
		40.228775, 34.698811, 21.216829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580521, 34.127396, 20.694099>,  <40.644688, 34.178852, 21.432842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580521, 34.127396, 20.694099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475033, 34.507607, 20.759758>,  <40.411739, 34.735733, 20.799154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475033, 34.507607, 20.759758>,  <40.580521, 34.127396, 20.694099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475033, 34.507607, 20.759758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574968, 0.291537, -0.764472,
		-0.774510, -0.107223, -0.623408,
		-0.263716, 0.950531, 0.164148,
		40.395920, 34.792767, 20.809002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449585, 34.442684, 20.063311>,  <40.580521, 34.127396, 20.694099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449585, 34.442684, 20.063311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478073, 34.797085, 20.246586>,  <40.495167, 35.009724, 20.356550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478073, 34.797085, 20.246586>,  <40.449585, 34.442684, 20.063311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478073, 34.797085, 20.246586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459391, 0.378600, -0.803506,
		-0.885374, 0.267712, -0.380055,
		0.071220, 0.885998, 0.458187,
		40.499439, 35.062885, 20.384043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381958, 34.824474, 19.536686>,  <40.449585, 34.442684, 20.063311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381958, 34.824474, 19.536686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533527, 35.071926, 19.811996>,  <40.624470, 35.220398, 19.977182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533527, 35.071926, 19.811996>,  <40.381958, 34.824474, 19.536686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533527, 35.071926, 19.811996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410535, 0.554182, -0.724116,
		-0.829386, 0.556943, -0.043977,
		0.378920, 0.618625, 0.688275,
		40.647202, 35.257515, 20.018478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326130, 35.516586, 19.319618>,  <40.381958, 34.824474, 19.536686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326130, 35.516586, 19.319618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626816, 35.555775, 19.580486>,  <40.807228, 35.579288, 19.737007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626816, 35.555775, 19.580486>,  <40.326130, 35.516586, 19.319618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626816, 35.555775, 19.580486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479148, 0.598359, -0.642172,
		-0.453144, 0.795216, 0.402855,
		0.751717, 0.097969, 0.652168,
		40.852329, 35.585167, 19.776136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486202, 36.323933, 19.411623>,  <40.326130, 35.516586, 19.319618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486202, 36.323933, 19.411623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808468, 36.105774, 19.504097>,  <41.001827, 35.974876, 19.559582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808468, 36.105774, 19.504097>,  <40.486202, 36.323933, 19.411623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808468, 36.105774, 19.504097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546455, 0.533610, -0.645482,
		0.228682, 0.646374, 0.727946,
		0.805662, -0.545400, 0.231187,
		41.050167, 35.942154, 19.573454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113941, 36.814678, 19.579344>,  <40.486202, 36.323933, 19.411623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113941, 36.814678, 19.579344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253746, 36.452118, 19.484455>,  <41.337627, 36.234581, 19.427523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253746, 36.452118, 19.484455>,  <41.113941, 36.814678, 19.579344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253746, 36.452118, 19.484455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552564, 0.403882, -0.729077,
		0.756646, 0.123743, 0.642008,
		0.349514, -0.906403, -0.237220,
		41.358601, 36.180199, 19.413290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873856, 37.044182, 19.455818>,  <41.113941, 36.814678, 19.579344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873856, 37.044182, 19.455818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808147, 36.687466, 19.287186>,  <41.768723, 36.473438, 19.186007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808147, 36.687466, 19.287186>,  <41.873856, 37.044182, 19.455818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808147, 36.687466, 19.287186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599453, 0.249164, -0.760640,
		0.783372, -0.377667, 0.493656,
		-0.164267, -0.891788, -0.421582,
		41.758869, 36.419930, 19.160711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544727, 36.816090, 19.182291>,  <41.873856, 37.044182, 19.455818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544727, 36.816090, 19.182291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270077, 36.611980, 18.975151>,  <42.105286, 36.489513, 18.850866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270077, 36.611980, 18.975151>,  <42.544727, 36.816090, 19.182291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270077, 36.611980, 18.975151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529406, 0.137256, -0.837192,
		0.498274, -0.848989, 0.175898,
		-0.686624, -0.510273, -0.517852,
		42.064091, 36.458900, 18.819796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854927, 36.326591, 18.884777>,  <42.544727, 36.816090, 19.182291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854927, 36.326591, 18.884777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521061, 36.322575, 18.664513>,  <42.320740, 36.320164, 18.532354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521061, 36.322575, 18.664513>,  <42.854927, 36.326591, 18.884777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521061, 36.322575, 18.664513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546593, 0.107577, -0.830460,
		0.067570, -0.994146, -0.084307,
		-0.834668, -0.010032, -0.550662,
		42.270660, 36.319565, 18.499313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045128, 35.916454, 18.329546>,  <42.854927, 36.326591, 18.884777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045128, 35.916454, 18.329546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728477, 36.125019, 18.202141>,  <42.538486, 36.250160, 18.125698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728477, 36.125019, 18.202141>,  <43.045128, 35.916454, 18.329546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728477, 36.125019, 18.202141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518244, 0.296873, -0.802054,
		-0.323645, -0.799996, -0.505233,
		-0.791629, 0.521415, -0.318511,
		42.490990, 36.281445, 18.106588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952831, 35.762791, 17.664206>,  <43.045128, 35.916454, 18.329546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952831, 35.762791, 17.664206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737591, 36.097713, 17.702930>,  <42.608448, 36.298668, 17.726166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737591, 36.097713, 17.702930>,  <42.952831, 35.762791, 17.664206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737591, 36.097713, 17.702930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369614, 0.337627, -0.865675,
		-0.757519, -0.430035, -0.491156,
		-0.538099, 0.837304, 0.096812,
		42.576160, 36.348904, 17.731974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565819, 35.821354, 17.100948>,  <42.952831, 35.762791, 17.664206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565819, 35.821354, 17.100948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558117, 36.203995, 17.217247>,  <42.553497, 36.433578, 17.287025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558117, 36.203995, 17.217247>,  <42.565819, 35.821354, 17.100948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558117, 36.203995, 17.217247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042469, 0.291321, -0.955682,
		-0.998912, -0.006052, -0.046235,
		-0.019253, 0.956606, 0.290747,
		42.552341, 36.490978, 17.304472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105915, 36.081226, 16.740311>,  <42.565819, 35.821354, 17.100948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105915, 36.081226, 16.740311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323395, 36.397816, 16.851994>,  <42.453884, 36.587769, 16.919004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323395, 36.397816, 16.851994>,  <42.105915, 36.081226, 16.740311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323395, 36.397816, 16.851994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032633, 0.312488, -0.949361,
		-0.838646, 0.525277, 0.144071,
		0.543698, 0.791476, 0.279208,
		42.486504, 36.635258, 16.935757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860207, 36.623428, 16.363432>,  <42.105915, 36.081226, 16.740311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860207, 36.623428, 16.363432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222427, 36.743866, 16.482975>,  <42.439758, 36.816128, 16.554701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222427, 36.743866, 16.482975>,  <41.860207, 36.623428, 16.363432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222427, 36.743866, 16.482975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192897, 0.335194, -0.922191,
		-0.377844, 0.892740, 0.245455,
		0.905552, 0.301097, 0.298858,
		42.494095, 36.834194, 16.572632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926868, 37.299652, 16.157934>,  <41.860207, 36.623428, 16.363432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926868, 37.299652, 16.157934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298576, 37.157146, 16.196991>,  <42.521603, 37.071644, 16.220425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298576, 37.157146, 16.196991>,  <41.926868, 37.299652, 16.157934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298576, 37.157146, 16.196991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227614, 0.344039, -0.910950,
		0.290948, 0.868742, 0.400795,
		0.929269, -0.356266, 0.097640,
		42.577358, 37.050266, 16.226282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356319, 37.836197, 15.946630>,  <41.926868, 37.299652, 16.157934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356319, 37.836197, 15.946630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620834, 37.537868, 15.914498>,  <42.779545, 37.358871, 15.895219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620834, 37.537868, 15.914498>,  <42.356319, 37.836197, 15.946630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620834, 37.537868, 15.914498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248803, 0.319100, -0.914479,
		0.707668, 0.584748, 0.396579,
		0.661288, -0.745818, -0.080330,
		42.819221, 37.314121, 15.890399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832123, 37.969086, 15.430943>,  <42.356319, 37.836197, 15.946630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832123, 37.969086, 15.430943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912216, 37.577190, 15.432359>,  <42.960274, 37.342052, 15.433208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912216, 37.577190, 15.432359>,  <42.832123, 37.969086, 15.430943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912216, 37.577190, 15.432359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096800, 0.016191, -0.995172,
		0.974954, 0.199614, 0.098081,
		0.200238, -0.979741, 0.003537,
		42.972286, 37.283268, 15.433420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463856, 37.820435, 14.949613>,  <42.832123, 37.969086, 15.430943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463856, 37.820435, 14.949613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238705, 37.490204, 14.965524>,  <43.103615, 37.292065, 14.975070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238705, 37.490204, 14.965524>,  <43.463856, 37.820435, 14.949613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238705, 37.490204, 14.965524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121647, -0.130349, -0.983977,
		0.817537, -0.549024, 0.173800,
		-0.562882, -0.825580, 0.039777,
		43.069839, 37.242531, 14.977457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863956, 37.268776, 14.535826>,  <43.463856, 37.820435, 14.949613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863956, 37.268776, 14.535826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503574, 37.109715, 14.605273>,  <43.287346, 37.014278, 14.646942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503574, 37.109715, 14.605273>,  <43.863956, 37.268776, 14.535826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503574, 37.109715, 14.605273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065215, -0.519684, -0.851866,
		0.428976, -0.756173, 0.494147,
		-0.900959, -0.397656, 0.173619,
		43.233288, 36.990417, 14.657359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904377, 36.541435, 14.652842>,  <43.863956, 37.268776, 14.535826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904377, 36.541435, 14.652842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559803, 36.669483, 14.495133>,  <43.353058, 36.746311, 14.400509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559803, 36.669483, 14.495133>,  <43.904377, 36.541435, 14.652842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559803, 36.669483, 14.495133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191135, -0.514901, -0.835670,
		-0.470521, -0.795238, 0.382370,
		-0.861439, 0.320116, -0.394269,
		43.301373, 36.765518, 14.376852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682087, 35.899757, 14.259690>,  <43.904377, 36.541435, 14.652842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682087, 35.899757, 14.259690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494865, 36.219906, 14.109843>,  <43.382534, 36.411995, 14.019936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494865, 36.219906, 14.109843>,  <43.682087, 35.899757, 14.259690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494865, 36.219906, 14.109843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054880, -0.396773, -0.916274,
		-0.881995, -0.449423, 0.141786,
		-0.468052, 0.800369, -0.374617,
		43.354450, 36.460018, 13.997458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375195, 35.587334, 13.703360>,  <43.682087, 35.899757, 14.259690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375195, 35.587334, 13.703360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409019, 35.980450, 13.637671>,  <43.429314, 36.216320, 13.598258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409019, 35.980450, 13.637671>,  <43.375195, 35.587334, 13.703360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409019, 35.980450, 13.637671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095714, -0.172061, -0.980425,
		-0.991811, 0.067187, -0.108617,
		0.084560, 0.982792, -0.164221,
		43.434387, 36.275288, 13.588405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022877, 35.824608, 13.147701>,  <43.375195, 35.587334, 13.703360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022877, 35.824608, 13.147701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280933, 36.127659, 13.187297>,  <43.435768, 36.309490, 13.211055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280933, 36.127659, 13.187297>,  <43.022877, 35.824608, 13.147701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280933, 36.127659, 13.187297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139469, 0.010612, -0.990170,
		-0.751229, 0.652602, -0.098819,
		0.645138, 0.757627, 0.098990,
		43.474476, 36.354946, 13.216993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355114, 35.349655, 12.762868>,  <43.022877, 35.824608, 13.147701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355114, 35.349655, 12.762868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003555, 35.528831, 12.697280>,  <42.792618, 35.636337, 12.657928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003555, 35.528831, 12.697280>,  <43.355114, 35.349655, 12.762868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003555, 35.528831, 12.697280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370011, 0.423271, -0.827003,
		-0.301044, -0.787522, -0.537756,
		-0.878899, 0.447940, -0.163969,
		42.739887, 35.663212, 12.648089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127476, 35.270065, 12.058268>,  <43.355114, 35.349655, 12.762868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127476, 35.270065, 12.058268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997189, 35.606060, 12.231860>,  <42.919018, 35.807655, 12.336016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997189, 35.606060, 12.231860>,  <43.127476, 35.270065, 12.058268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997189, 35.606060, 12.231860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427387, 0.540246, -0.724896,
		-0.843356, -0.050633, -0.534965,
		-0.325716, 0.839982, 0.433980,
		42.899475, 35.858055, 12.362054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061153, 34.510509, 11.942509>,  <43.127476, 35.270065, 12.058268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061153, 34.510509, 11.942509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410912, 34.666138, 12.058482>,  <43.620766, 34.759514, 12.128066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410912, 34.666138, 12.058482>,  <43.061153, 34.510509, 11.942509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410912, 34.666138, 12.058482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420860, 0.310759, 0.852236,
		0.241471, -0.867214, 0.435466,
		0.874396, 0.389060, 0.289936,
		43.673229, 34.782856, 12.145462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085678, 33.742828, 11.761813>,  <43.061153, 34.510509, 11.942509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085678, 33.742828, 11.761813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164848, 33.553040, 12.104905>,  <43.212349, 33.439167, 12.310760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164848, 33.553040, 12.104905>,  <43.085678, 33.742828, 11.761813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164848, 33.553040, 12.104905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956489, 0.097885, 0.274859,
		-0.214373, -0.874809, -0.434457,
		0.197922, -0.474476, 0.857729,
		43.224224, 33.410698, 12.362224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434692, 33.325592, 11.824607>,  <43.085678, 33.742828, 11.761813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434692, 33.325592, 11.824607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614422, 33.400635, 12.173985>,  <42.722260, 33.445660, 12.383613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614422, 33.400635, 12.173985>,  <42.434692, 33.325592, 11.824607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614422, 33.400635, 12.173985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891281, 0.160910, 0.423941,
		-0.061014, -0.968975, 0.239508,
		0.449327, 0.187603, 0.873447,
		42.749222, 33.456917, 12.436020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126244, 32.878006, 12.315683>,  <42.434692, 33.325592, 11.824607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126244, 32.878006, 12.315683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284103, 33.201225, 12.490644>,  <42.378819, 33.395157, 12.595619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284103, 33.201225, 12.490644>,  <42.126244, 32.878006, 12.315683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284103, 33.201225, 12.490644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850779, 0.141562, 0.506099,
		0.347032, -0.571858, 0.743335,
		0.394645, 0.808046, 0.437399,
		42.402496, 33.443638, 12.621863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027561, 32.852158, 12.999672>,  <42.126244, 32.878006, 12.315683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027561, 32.852158, 12.999672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079762, 33.245998, 12.953156>,  <42.111080, 33.482304, 12.925247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079762, 33.245998, 12.953156>,  <42.027561, 32.852158, 12.999672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079762, 33.245998, 12.953156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691553, 0.174445, 0.700945,
		0.710440, -0.011052, 0.703671,
		0.130499, 0.984605, -0.116290,
		42.118912, 33.541378, 12.918269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035679, 33.159115, 13.684699>,  <42.027561, 32.852158, 12.999672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035679, 33.159115, 13.684699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.944252, 33.455585, 13.432221>,  <41.889397, 33.633469, 13.280735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.944252, 33.455585, 13.432221>,  <42.035679, 33.159115, 13.684699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944252, 33.455585, 13.432221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805758, 0.219839, 0.549931,
		0.546360, 0.634289, 0.546963,
		-0.228572, 0.741180, -0.631195,
		41.875679, 33.677940, 13.242863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163044, 33.955177, 13.965146>,  <42.035679, 33.159115, 13.684699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163044, 33.955177, 13.965146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899780, 34.008904, 13.668826>,  <41.741821, 34.041142, 13.491035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899780, 34.008904, 13.668826>,  <42.163044, 33.955177, 13.965146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899780, 34.008904, 13.668826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671195, 0.341061, 0.658160,
		0.341061, 0.930396, -0.134319,
		-0.658160, 0.134319, -0.740799,
		41.702332, 34.049198, 13.446587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832489, 34.515358, 14.176081>,  <42.163044, 33.955177, 13.965146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832489, 34.515358, 14.176081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588375, 34.359177, 13.900371>,  <41.441906, 34.265469, 13.734944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588375, 34.359177, 13.900371>,  <41.832489, 34.515358, 14.176081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588375, 34.359177, 13.900371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792173, 0.296422, 0.533475,
		-0.003982, 0.871596, -0.490209,
		-0.610283, -0.390455, -0.689274,
		41.405289, 34.242039, 13.693588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467026, 35.110950, 13.863388>,  <41.832489, 34.515358, 14.176081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467026, 35.110950, 13.863388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266850, 34.766483, 13.827727>,  <41.146744, 34.559803, 13.806331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266850, 34.766483, 13.827727>,  <41.467026, 35.110950, 13.863388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266850, 34.766483, 13.827727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754708, 0.383460, 0.532330,
		-0.424241, 0.333680, -0.841830,
		-0.500436, -0.861171, -0.089152,
		41.116718, 34.508133, 13.800982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720596, 35.332371, 13.886126>,  <41.467026, 35.110950, 13.863388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720596, 35.332371, 13.886126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711353, 34.938175, 13.953389>,  <40.705807, 34.701656, 13.993748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711353, 34.938175, 13.953389>,  <40.720596, 35.332371, 13.886126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711353, 34.938175, 13.953389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712606, 0.134212, 0.688607,
		-0.701184, -0.103916, -0.705367,
		-0.023112, -0.985489, 0.168159,
		40.704418, 34.642529, 14.003837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094753, 35.116272, 14.048585>,  <40.720596, 35.332371, 13.886126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094753, 35.116272, 14.048585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322292, 34.852245, 14.244842>,  <40.458817, 34.693829, 14.362596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322292, 34.852245, 14.244842>,  <40.094753, 35.116272, 14.048585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322292, 34.852245, 14.244842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633331, 0.029029, 0.773336,
		-0.524693, -0.750649, -0.401525,
		0.568848, -0.660063, 0.490641,
		40.492947, 34.654228, 14.392034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611301, 34.999977, 14.604177>,  <40.094753, 35.116272, 14.048585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611301, 34.999977, 14.604177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939339, 34.793606, 14.703191>,  <40.136162, 34.669785, 14.762599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939339, 34.793606, 14.703191>,  <39.611301, 34.999977, 14.604177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939339, 34.793606, 14.703191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386641, -0.180690, 0.904356,
		-0.421854, -0.837360, -0.347660,
		0.820090, -0.515926, 0.247533,
		40.185368, 34.638828, 14.777451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358982, 34.406059, 14.943813>,  <39.611301, 34.999977, 14.604177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358982, 34.406059, 14.943813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740173, 34.431637, 15.062295>,  <39.968887, 34.446983, 15.133384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740173, 34.431637, 15.062295>,  <39.358982, 34.406059, 14.943813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740173, 34.431637, 15.062295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253458, -0.367553, 0.894798,
		0.166088, -0.927802, -0.334064,
		0.952982, 0.063945, 0.296205,
		40.026070, 34.450821, 15.151156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600311, 33.729637, 15.258376>,  <39.358982, 34.406059, 14.943813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600311, 33.729637, 15.258376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800060, 34.047489, 15.396466>,  <39.919910, 34.238201, 15.479321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800060, 34.047489, 15.396466>,  <39.600311, 33.729637, 15.258376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800060, 34.047489, 15.396466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270915, -0.235265, 0.933411,
		0.822939, -0.559650, 0.097792,
		0.499376, 0.794634, 0.345226,
		39.949875, 34.285881, 15.500034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768436, 33.500309, 15.910217>,  <39.600311, 33.729637, 15.258376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768436, 33.500309, 15.910217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807999, 33.897923, 15.928599>,  <39.831734, 34.136490, 15.939629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807999, 33.897923, 15.928599>,  <39.768436, 33.500309, 15.910217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807999, 33.897923, 15.928599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314521, -0.012587, 0.949167,
		0.944084, -0.108329, 0.311401,
		0.098902, 0.994036, 0.045955,
		39.837669, 34.196133, 15.942386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262539, 33.587173, 16.344696>,  <39.768436, 33.500309, 15.910217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262539, 33.587173, 16.344696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071350, 33.938457, 16.351589>,  <39.956638, 34.149227, 16.355724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071350, 33.938457, 16.351589>,  <40.262539, 33.587173, 16.344696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071350, 33.938457, 16.351589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019187, -0.009174, 0.999774,
		0.878167, 0.478193, -0.012465,
		-0.477970, 0.878207, 0.017231,
		39.927959, 34.201920, 16.356758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480583, 33.826393, 16.918156>,  <40.262539, 33.587173, 16.344696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480583, 33.826393, 16.918156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188732, 34.091900, 16.852371>,  <40.013622, 34.251205, 16.812901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188732, 34.091900, 16.852371>,  <40.480583, 33.826393, 16.918156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188732, 34.091900, 16.852371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232571, -0.014703, 0.972468,
		0.643078, 0.747791, 0.165102,
		-0.729631, 0.663771, -0.164459,
		39.969845, 34.291031, 16.803034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566994, 34.343876, 17.473837>,  <40.480583, 33.826393, 16.918156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566994, 34.343876, 17.473837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187325, 34.365940, 17.349884>,  <39.959522, 34.379177, 17.275513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187325, 34.365940, 17.349884>,  <40.566994, 34.343876, 17.473837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187325, 34.365940, 17.349884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314735, -0.176400, 0.932644,
		-0.003220, 0.982772, 0.184794,
		-0.949174, 0.055158, -0.309881,
		39.902573, 34.382488, 17.256920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241825, 34.754169, 17.934834>,  <40.566994, 34.343876, 17.473837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241825, 34.754169, 17.934834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926201, 34.559841, 17.784435>,  <39.736828, 34.443245, 17.694197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926201, 34.559841, 17.784435>,  <40.241825, 34.754169, 17.934834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926201, 34.559841, 17.784435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487874, 0.123620, 0.864116,
		-0.373321, 0.865275, -0.334561,
		-0.789057, -0.485816, -0.375995,
		39.689484, 34.414097, 17.671637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649471, 35.199818, 18.176491>,  <40.241825, 34.754169, 17.934834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649471, 35.199818, 18.176491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503365, 34.835793, 18.098145>,  <39.415699, 34.617378, 18.051136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503365, 34.835793, 18.098145>,  <39.649471, 35.199818, 18.176491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503365, 34.835793, 18.098145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581598, 0.058810, 0.811348,
		-0.726859, 0.410274, -0.550773,
		-0.365266, -0.910064, -0.195868,
		39.393784, 34.562775, 18.039385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945713, 35.274601, 18.161469>,  <39.649471, 35.199818, 18.176491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945713, 35.274601, 18.161469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014534, 34.888359, 18.239441>,  <39.055828, 34.656612, 18.286224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014534, 34.888359, 18.239441>,  <38.945713, 35.274601, 18.161469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014534, 34.888359, 18.239441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659247, 0.034170, 0.751150,
		-0.731977, -0.257746, -0.630695,
		0.172055, -0.965609, 0.194930,
		39.066151, 34.598675, 18.297920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363640, 35.198124, 18.650869>,  <38.945713, 35.274601, 18.161469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363640, 35.198124, 18.650869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547062, 34.843285, 18.671989>,  <38.657116, 34.630383, 18.684662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547062, 34.843285, 18.671989>,  <38.363640, 35.198124, 18.650869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547062, 34.843285, 18.671989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624760, -0.279556, 0.729056,
		-0.631983, -0.367299, -0.682414,
		0.458555, -0.887096, 0.052799,
		38.684628, 34.577156, 18.687830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935604, 34.534817, 18.434689>,  <38.363640, 35.198124, 18.650869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935604, 34.534817, 18.434689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228615, 34.421898, 18.682468>,  <38.404419, 34.354145, 18.831137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228615, 34.421898, 18.682468>,  <37.935604, 34.534817, 18.434689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228615, 34.421898, 18.682468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676699, -0.202945, 0.707738,
		-0.074077, -0.937615, -0.339691,
		0.732524, -0.282296, 0.619449,
		38.448372, 34.337208, 18.868303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593914, 33.973328, 18.889320>,  <37.935604, 34.534817, 18.434689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593914, 33.973328, 18.889320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923206, 34.068192, 19.095638>,  <38.120781, 34.125111, 19.219429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923206, 34.068192, 19.095638>,  <37.593914, 33.973328, 18.889320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923206, 34.068192, 19.095638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473924, -0.213104, 0.854390,
		0.312546, -0.947809, -0.063038,
		0.823232, 0.237160, 0.515794,
		38.170177, 34.139339, 19.250376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546413, 33.447044, 19.459223>,  <37.593914, 33.973328, 18.889320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546413, 33.447044, 19.459223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825897, 33.703217, 19.586754>,  <37.993587, 33.856918, 19.663273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825897, 33.703217, 19.586754>,  <37.546413, 33.447044, 19.459223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825897, 33.703217, 19.586754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430350, 0.020255, 0.902435,
		0.571487, -0.767751, 0.289761,
		0.698714, 0.640429, 0.318826,
		38.035511, 33.895344, 19.682402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034431, 33.338284, 20.030260>,  <37.546413, 33.447044, 19.459223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034431, 33.338284, 20.030260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973141, 33.733303, 20.016037>,  <37.936367, 33.970314, 20.007504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973141, 33.733303, 20.016037>,  <38.034431, 33.338284, 20.030260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973141, 33.733303, 20.016037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355849, -0.021574, 0.934294,
		0.921896, 0.155814, 0.354725,
		-0.153228, 0.987551, -0.035558,
		37.927174, 34.029568, 20.005369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460819, 33.706768, 20.553928>,  <38.034431, 33.338284, 20.030260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460819, 33.706768, 20.553928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153046, 33.957489, 20.504799>,  <37.968380, 34.107922, 20.475321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153046, 33.957489, 20.504799>,  <38.460819, 33.706768, 20.553928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153046, 33.957489, 20.504799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192395, -0.044075, 0.980327,
		0.609061, 0.777928, 0.154507,
		-0.769434, 0.626806, -0.122825,
		37.922215, 34.145531, 20.467951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187492, 33.901451, 21.273539>,  <38.460819, 33.706768, 20.553928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187492, 33.901451, 21.273539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957565, 34.103752, 21.016228>,  <37.819611, 34.225132, 20.861841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957565, 34.103752, 21.016228>,  <38.187492, 33.901451, 21.273539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957565, 34.103752, 21.016228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746105, -0.001105, 0.665827,
		0.336032, 0.862679, 0.377978,
		-0.574813, 0.505751, -0.643278,
		37.785122, 34.255478, 20.823244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763641, 34.586853, 21.423756>,  <38.187492, 33.901451, 21.273539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763641, 34.586853, 21.423756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570061, 34.329670, 21.186302>,  <37.453915, 34.175362, 21.043831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570061, 34.329670, 21.186302>,  <37.763641, 34.586853, 21.423756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570061, 34.329670, 21.186302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741033, -0.059733, 0.668807,
		-0.465473, 0.763569, -0.447545,
		-0.483947, -0.642957, -0.593634,
		37.424877, 34.136784, 21.008211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116386, 34.770943, 21.336252>,  <37.763641, 34.586853, 21.423756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116386, 34.770943, 21.336252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115387, 34.372849, 21.297276>,  <37.114788, 34.133991, 21.273890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115387, 34.372849, 21.297276>,  <37.116386, 34.770943, 21.336252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115387, 34.372849, 21.297276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552033, -0.079880, 0.829987,
		-0.833819, 0.055863, -0.549205,
		-0.002495, -0.995238, -0.097443,
		37.114639, 34.074276, 21.268042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437859, 34.579201, 21.615288>,  <37.116386, 34.770943, 21.336252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437859, 34.579201, 21.615288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668705, 34.252850, 21.629639>,  <36.807213, 34.057041, 21.638248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668705, 34.252850, 21.629639>,  <36.437859, 34.579201, 21.615288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668705, 34.252850, 21.629639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329939, -0.192748, 0.924115,
		-0.747046, -0.545158, -0.380427,
		0.577115, -0.815874, 0.035878,
		36.841839, 34.008087, 21.640402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086670, 33.965603, 21.864828>,  <36.437859, 34.579201, 21.615288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086670, 33.965603, 21.864828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465748, 33.874252, 21.954025>,  <36.693195, 33.819443, 22.007544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465748, 33.874252, 21.954025>,  <36.086670, 33.965603, 21.864828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465748, 33.874252, 21.954025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307295, -0.463858, 0.830907,
		-0.086324, -0.855967, -0.509773,
		0.947691, -0.228378, 0.222992,
		36.750053, 33.805740, 22.020924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339867, 33.188328, 21.994925>,  <36.086670, 33.965603, 21.864828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339867, 33.188328, 21.994925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559628, 33.439327, 22.215614>,  <36.691486, 33.589928, 22.348028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559628, 33.439327, 22.215614>,  <36.339867, 33.188328, 21.994925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559628, 33.439327, 22.215614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136669, -0.583927, 0.800220,
		0.824303, -0.515048, -0.235052,
		0.549405, 0.627499, 0.551724,
		36.724449, 33.627579, 22.381132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879478, 32.756733, 22.244352>,  <36.339867, 33.188328, 21.994925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879478, 32.756733, 22.244352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835964, 33.065994, 22.494282>,  <36.809856, 33.251553, 22.644239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835964, 33.065994, 22.494282>,  <36.879478, 32.756733, 22.244352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835964, 33.065994, 22.494282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293695, -0.625490, 0.722845,
		0.949689, -0.104873, 0.295114,
		-0.108784, 0.773152, 0.624822,
		36.803329, 33.297939, 22.681728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342422, 32.518364, 22.775694>,  <36.879478, 32.756733, 22.244352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342422, 32.518364, 22.775694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069820, 32.782310, 22.902267>,  <36.906258, 32.940678, 22.978210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069820, 32.782310, 22.902267>,  <37.342422, 32.518364, 22.775694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069820, 32.782310, 22.902267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167235, -0.561380, 0.810484,
		0.712448, 0.499431, 0.492937,
		-0.681506, 0.659864, 0.316432,
		36.865368, 32.980270, 22.997196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290203, 32.396149, 23.503487>,  <37.342422, 32.518364, 22.775694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290203, 32.396149, 23.503487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954742, 32.605415, 23.442879>,  <36.753468, 32.730976, 23.406515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954742, 32.605415, 23.442879>,  <37.290203, 32.396149, 23.503487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954742, 32.605415, 23.442879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441243, -0.489489, 0.752133,
		0.319328, 0.697634, 0.641356,
		-0.838650, 0.523171, -0.151518,
		36.703148, 32.762367, 23.397423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135067, 32.693138, 24.201591>,  <37.290203, 32.396149, 23.503487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135067, 32.693138, 24.201591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807178, 32.651196, 23.976360>,  <36.610443, 32.626030, 23.841223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807178, 32.651196, 23.976360>,  <37.135067, 32.693138, 24.201591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807178, 32.651196, 23.976360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404281, -0.590460, 0.698508,
		-0.405717, 0.800226, 0.441624,
		-0.819726, -0.104856, -0.563076,
		36.561260, 32.619740, 23.807438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629005, 32.788830, 24.588558>,  <37.135067, 32.693138, 24.201591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629005, 32.788830, 24.588558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428375, 32.598808, 24.299355>,  <36.307999, 32.484795, 24.125832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428375, 32.598808, 24.299355>,  <36.629005, 32.788830, 24.588558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428375, 32.598808, 24.299355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401002, -0.612867, 0.680875,
		-0.766563, 0.631439, 0.116901,
		-0.501576, -0.475056, -0.723010,
		36.277901, 32.456291, 24.082451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963715, 32.787056, 24.784075>,  <36.629005, 32.788830, 24.588558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963715, 32.787056, 24.784075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978443, 32.498550, 24.507404>,  <35.987278, 32.325447, 24.341402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978443, 32.498550, 24.507404>,  <35.963715, 32.787056, 24.784075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978443, 32.498550, 24.507404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507315, -0.609814, 0.608899,
		-0.860974, 0.328480, -0.388362,
		0.036818, -0.721268, -0.691677,
		35.989491, 32.282169, 24.299902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295734, 32.426235, 24.770567>,  <35.963715, 32.787056, 24.784075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295734, 32.426235, 24.770567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536629, 32.167629, 24.583237>,  <35.681164, 32.012466, 24.470839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536629, 32.167629, 24.583237>,  <35.295734, 32.426235, 24.770567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536629, 32.167629, 24.583237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389524, -0.750039, 0.534521,
		-0.696838, -0.139485, -0.703535,
		0.602236, -0.646518, -0.468323,
		35.717300, 31.973673, 24.442739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898155, 31.851845, 24.617109>,  <35.295734, 32.426235, 24.770567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898155, 31.851845, 24.617109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277149, 31.724525, 24.629536>,  <35.504543, 31.648134, 24.636992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277149, 31.724525, 24.629536>,  <34.898155, 31.851845, 24.617109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277149, 31.724525, 24.629536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253232, -0.687350, 0.680753,
		-0.195330, -0.652867, -0.731854,
		0.947481, -0.318300, 0.031067,
		35.561394, 31.629036, 24.638855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997143, 31.047289, 24.674320>,  <34.898155, 31.851845, 24.617109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997143, 31.047289, 24.674320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382160, 31.127651, 24.747150>,  <35.613171, 31.175869, 24.790850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382160, 31.127651, 24.747150>,  <34.997143, 31.047289, 24.674320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382160, 31.127651, 24.747150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074748, -0.842132, 0.534066,
		0.260631, -0.500450, -0.825603,
		0.962540, 0.200906, 0.182078,
		35.670921, 31.187923, 24.801773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260628, 30.305992, 24.754402>,  <34.997143, 31.047289, 24.674320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260628, 30.305992, 24.754402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517773, 30.572575, 24.905434>,  <35.672058, 30.732525, 24.996052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517773, 30.572575, 24.905434>,  <35.260628, 30.305992, 24.754402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517773, 30.572575, 24.905434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258055, -0.652552, 0.712449,
		0.721207, -0.360569, -0.591482,
		0.642859, 0.666458, 0.377578,
		35.710632, 30.772512, 25.018707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920624, 29.956537, 24.852242>,  <35.260628, 30.305992, 24.754402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920624, 29.956537, 24.852242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871464, 30.263390, 25.104084>,  <35.841969, 30.447502, 25.255190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871464, 30.263390, 25.104084>,  <35.920624, 29.956537, 24.852242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871464, 30.263390, 25.104084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225381, -0.596264, 0.770501,
		0.966488, 0.236596, -0.099616,
		-0.122900, 0.767132, 0.629606,
		35.834595, 30.493528, 25.292967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483730, 29.954405, 25.265091>,  <35.920624, 29.956537, 24.852242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483730, 29.954405, 25.265091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252655, 30.193653, 25.487274>,  <36.114010, 30.337202, 25.620584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252655, 30.193653, 25.487274>,  <36.483730, 29.954405, 25.265091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252655, 30.193653, 25.487274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106074, -0.619711, 0.777629,
		0.809339, 0.508143, 0.294552,
		-0.577684, 0.598121, 0.555457,
		36.079350, 30.373089, 25.653912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700001, 29.820808, 25.873228>,  <36.483730, 29.954405, 25.265091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700001, 29.820808, 25.873228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380119, 30.037926, 25.975876>,  <36.188190, 30.168196, 26.037464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380119, 30.037926, 25.975876>,  <36.700001, 29.820808, 25.873228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380119, 30.037926, 25.975876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034731, -0.384879, 0.922313,
		0.599391, 0.746489, 0.288937,
		-0.799703, 0.542791, 0.256619,
		36.140209, 30.200764, 26.052862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761734, 30.341019, 26.489952>,  <36.700001, 29.820808, 25.873228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761734, 30.341019, 26.489952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405113, 30.163380, 26.454372>,  <36.191139, 30.056797, 26.433025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405113, 30.163380, 26.454372>,  <36.761734, 30.341019, 26.489952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405113, 30.163380, 26.454372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124503, -0.429130, 0.894621,
		-0.435468, 0.786528, 0.437883,
		-0.891553, -0.444097, -0.088947,
		36.137646, 30.030151, 26.427689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461914, 30.494699, 27.193157>,  <36.761734, 30.341019, 26.489952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461914, 30.494699, 27.193157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269035, 30.213673, 26.983822>,  <36.153309, 30.045057, 26.858221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269035, 30.213673, 26.983822>,  <36.461914, 30.494699, 27.193157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269035, 30.213673, 26.983822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142518, -0.652330, 0.744415,
		-0.864391, 0.284372, 0.414682,
		-0.482200, -0.702565, -0.523340,
		36.124374, 30.002903, 26.826820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071327, 30.206158, 27.659988>,  <36.461914, 30.494699, 27.193157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071327, 30.206158, 27.659988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032490, 29.930042, 27.373192>,  <36.009190, 29.764374, 27.201113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032490, 29.930042, 27.373192>,  <36.071327, 30.206158, 27.659988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032490, 29.930042, 27.373192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078224, -0.712875, 0.696915,
		-0.992197, 0.123751, 0.015217,
		-0.097092, -0.690286, -0.716993,
		36.003361, 29.722956, 27.158094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471748, 29.777960, 27.804050>,  <36.071327, 30.206158, 27.659988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471748, 29.777960, 27.804050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723293, 29.551998, 27.590355>,  <35.874222, 29.416422, 27.462137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723293, 29.551998, 27.590355>,  <35.471748, 29.777960, 27.804050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723293, 29.551998, 27.590355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219620, -0.788190, 0.574911,
		-0.745854, -0.244211, -0.619729,
		0.628864, -0.564905, -0.534241,
		35.911953, 29.382526, 27.430082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118687, 29.031879, 27.786421>,  <35.471748, 29.777960, 27.804050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118687, 29.031879, 27.786421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494728, 28.984150, 27.658691>,  <35.720352, 28.955513, 27.582054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494728, 28.984150, 27.658691>,  <35.118687, 29.031879, 27.786421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494728, 28.984150, 27.658691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062531, -0.860478, 0.505636,
		-0.335106, -0.495317, -0.801477,
		0.940103, -0.119324, -0.319324,
		35.776760, 28.948353, 27.562895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223866, 28.476213, 27.358685>,  <35.118687, 29.031879, 27.786421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223866, 28.476213, 27.358685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584660, 28.540943, 27.518799>,  <35.801136, 28.579781, 27.614866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584660, 28.540943, 27.518799>,  <35.223866, 28.476213, 27.358685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584660, 28.540943, 27.518799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070067, -0.859952, 0.505542,
		0.426034, -0.484040, -0.764329,
		0.901990, 0.161824, 0.400284,
		35.855255, 28.589491, 27.638884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446655, 27.790184, 27.522736>,  <35.223866, 28.476213, 27.358685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446655, 27.790184, 27.522736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723545, 28.005764, 27.714722>,  <35.889679, 28.135111, 27.829912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723545, 28.005764, 27.714722>,  <35.446655, 27.790184, 27.522736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723545, 28.005764, 27.714722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135291, -0.750177, 0.647249,
		0.708891, -0.383105, -0.592203,
		0.692221, 0.538949, 0.479963,
		35.931210, 28.167448, 27.858711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042927, 27.340878, 27.626257>,  <35.446655, 27.790184, 27.522736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042927, 27.340878, 27.626257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083191, 27.636288, 27.892925>,  <36.107349, 27.813534, 28.052925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083191, 27.636288, 27.892925>,  <36.042927, 27.340878, 27.626257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083191, 27.636288, 27.892925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278006, -0.664260, 0.693882,
		0.955291, 0.115494, -0.272178,
		0.100658, 0.738526, 0.666669,
		36.113388, 27.857845, 28.092926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753716, 27.288811, 28.016987>,  <36.042927, 27.340878, 27.626257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753716, 27.288811, 28.016987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516811, 27.511578, 28.249905>,  <36.374668, 27.645239, 28.389656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516811, 27.511578, 28.249905>,  <36.753716, 27.288811, 28.016987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516811, 27.511578, 28.249905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319134, -0.501439, 0.804184,
		0.739850, 0.662118, 0.119252,
		-0.592263, 0.556919, 0.582294,
		36.339134, 27.678654, 28.424593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242420, 27.581644, 28.624912>,  <36.753716, 27.288811, 28.016987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242420, 27.581644, 28.624912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853004, 27.556694, 28.712856>,  <36.619354, 27.541723, 28.765623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853004, 27.556694, 28.712856>,  <37.242420, 27.581644, 28.624912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853004, 27.556694, 28.712856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217436, -0.549017, 0.807033,
		0.070369, 0.833480, 0.548050,
		-0.973535, -0.062376, 0.219862,
		36.560944, 27.537981, 28.778814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227676, 27.681316, 29.324043>,  <37.242420, 27.581644, 28.624912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227676, 27.681316, 29.324043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879910, 27.486973, 29.288139>,  <36.671249, 27.370367, 29.266598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879910, 27.486973, 29.288139>,  <37.227676, 27.681316, 29.324043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879910, 27.486973, 29.288139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225627, -0.552038, 0.802712,
		-0.439556, 0.677638, 0.589573,
		-0.869415, -0.485861, -0.089758,
		36.619083, 27.341215, 29.261211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965202, 27.740507, 29.996424>,  <37.227676, 27.681316, 29.324043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965202, 27.740507, 29.996424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759628, 27.448597, 29.816071>,  <36.636284, 27.273451, 29.707859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759628, 27.448597, 29.816071>,  <36.965202, 27.740507, 29.996424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759628, 27.448597, 29.816071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063282, -0.491923, 0.868335,
		-0.855492, 0.474801, 0.206635,
		-0.513935, -0.729778, -0.450883,
		36.605450, 27.229664, 29.680805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541084, 27.558369, 30.430815>,  <36.965202, 27.740507, 29.996424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541084, 27.558369, 30.430815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518066, 27.239948, 30.189819>,  <36.504257, 27.048895, 30.045223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518066, 27.239948, 30.189819>,  <36.541084, 27.558369, 30.430815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518066, 27.239948, 30.189819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236853, -0.575371, 0.782847,
		-0.969840, 0.187748, -0.155438,
		-0.057544, -0.796052, -0.602487,
		36.500805, 27.001133, 30.009073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832191, 27.403799, 30.392252>,  <36.541084, 27.558369, 30.430815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832191, 27.403799, 30.392252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045506, 27.073593, 30.318344>,  <36.173492, 26.875469, 30.274000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045506, 27.073593, 30.318344>,  <35.832191, 27.403799, 30.392252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045506, 27.073593, 30.318344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500756, -0.484095, 0.717562,
		-0.681803, -0.290138, -0.671539,
		0.533281, -0.825513, -0.184769,
		36.205490, 26.825939, 30.262913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386993, 26.926111, 30.542198>,  <35.832191, 27.403799, 30.392252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386993, 26.926111, 30.542198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732590, 26.725464, 30.524742>,  <35.939945, 26.605076, 30.514269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732590, 26.725464, 30.524742>,  <35.386993, 26.926111, 30.542198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732590, 26.725464, 30.524742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298891, -0.580693, 0.757271,
		-0.405200, -0.641230, -0.651641,
		0.863989, -0.501616, -0.043639,
		35.991787, 26.574978, 30.511650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233273, 26.175650, 30.661470>,  <35.386993, 26.926111, 30.542198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233273, 26.175650, 30.661470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623020, 26.176514, 30.751442>,  <35.856869, 26.177032, 30.805424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623020, 26.176514, 30.751442>,  <35.233273, 26.175650, 30.661470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623020, 26.176514, 30.751442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192419, -0.509884, 0.838447,
		0.116499, -0.860240, -0.496401,
		0.974373, 0.002162, 0.224928,
		35.915333, 26.177162, 30.818920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416569, 25.526648, 30.820240>,  <35.233273, 26.175650, 30.661470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416569, 25.526648, 30.820240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689323, 25.768520, 30.984867>,  <35.852978, 25.913645, 31.083643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689323, 25.768520, 30.984867>,  <35.416569, 25.526648, 30.820240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689323, 25.768520, 30.984867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140004, -0.444373, 0.884834,
		0.717934, -0.660979, -0.218354,
		0.681887, 0.604682, 0.411570,
		35.893890, 25.949924, 31.108337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816219, 25.044832, 31.203165>,  <35.416569, 25.526648, 30.820240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816219, 25.044832, 31.203165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893032, 25.407509, 31.353382>,  <35.939121, 25.625114, 31.443512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893032, 25.407509, 31.353382>,  <35.816219, 25.044832, 31.203165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893032, 25.407509, 31.353382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012263, -0.380420, 0.924733,
		0.981312, -0.182183, -0.061934,
		0.192031, 0.906692, 0.375545,
		35.950642, 25.679516, 31.466045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204941, 24.862522, 31.780218>,  <35.816219, 25.044832, 31.203165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204941, 24.862522, 31.780218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092926, 25.237904, 31.861095>,  <36.025719, 25.463133, 31.909622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092926, 25.237904, 31.861095>,  <36.204941, 24.862522, 31.780218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092926, 25.237904, 31.861095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109270, -0.178094, 0.977928,
		0.953751, 0.295947, -0.052672,
		-0.280035, 0.938455, 0.202195,
		36.008915, 25.519440, 31.921755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710796, 25.117184, 32.225010>,  <36.204941, 24.862522, 31.780218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710796, 25.117184, 32.225010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375141, 25.324005, 32.292549>,  <36.173748, 25.448097, 32.333073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375141, 25.324005, 32.292549>,  <36.710796, 25.117184, 32.225010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375141, 25.324005, 32.292549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099674, -0.158992, 0.982235,
		0.534711, 0.841059, 0.081879,
		-0.839136, 0.517051, 0.168847,
		36.123402, 25.479120, 32.343204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900181, 25.437517, 32.828606>,  <36.710796, 25.117184, 32.225010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900181, 25.437517, 32.828606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502789, 25.481632, 32.817051>,  <36.264355, 25.508101, 32.810116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502789, 25.481632, 32.817051>,  <36.900181, 25.437517, 32.828606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502789, 25.481632, 32.817051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028299, 0.006915, 0.999576,
		0.110439, 0.993876, -0.003749,
		-0.993480, 0.110286, -0.028889,
		36.204746, 25.514717, 32.808384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687706, 25.961235, 33.359291>,  <36.900181, 25.437517, 32.828606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687706, 25.961235, 33.359291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359058, 25.742161, 33.296059>,  <36.161869, 25.610716, 33.258121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359058, 25.742161, 33.296059>,  <36.687706, 25.961235, 33.359291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359058, 25.742161, 33.296059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170256, -0.028883, 0.984977,
		-0.544021, 0.836187, -0.069516,
		-0.821616, -0.547684, -0.158079,
		36.112572, 25.577856, 33.248634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176895, 26.392649, 33.663979>,  <36.687706, 25.961235, 33.359291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176895, 26.392649, 33.663979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062836, 26.010231, 33.636654>,  <35.994400, 25.780781, 33.620258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062836, 26.010231, 33.636654>,  <36.176895, 26.392649, 33.663979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062836, 26.010231, 33.636654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118450, -0.035572, 0.992323,
		-0.951135, 0.291055, -0.103100,
		-0.285153, -0.956045, -0.068309,
		35.977291, 25.723417, 33.616161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491631, 26.362041, 34.019421>,  <36.176895, 26.392649, 33.663979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491631, 26.362041, 34.019421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596527, 25.976040, 34.019142>,  <35.659466, 25.744440, 34.018974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596527, 25.976040, 34.019142>,  <35.491631, 26.362041, 34.019421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596527, 25.976040, 34.019142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390161, -0.106687, 0.914545,
		-0.882613, -0.239557, -0.404484,
		0.262238, -0.965003, -0.000697,
		35.675198, 25.686539, 34.018932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011562, 26.138189, 34.435879>,  <35.491631, 26.362041, 34.019421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011562, 26.138189, 34.435879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277809, 25.839684, 34.433231>,  <35.437557, 25.660580, 34.431644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277809, 25.839684, 34.433231>,  <35.011562, 26.138189, 34.435879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277809, 25.839684, 34.433231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147640, -0.140362, 0.979031,
		-0.731546, -0.650681, -0.203606,
		0.665615, -0.746266, -0.006614,
		35.477493, 25.615805, 34.431248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716091, 25.462700, 34.687923>,  <35.011562, 26.138189, 34.435879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716091, 25.462700, 34.687923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112072, 25.467201, 34.744312>,  <35.349659, 25.469902, 34.778145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112072, 25.467201, 34.744312>,  <34.716091, 25.462700, 34.687923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112072, 25.467201, 34.744312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137922, -0.143416, 0.980005,
		0.031246, -0.989598, -0.140423,
		0.989950, 0.011254, 0.140969,
		35.409058, 25.470577, 34.786602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810005, 24.955114, 35.178276>,  <34.716091, 25.462700, 34.687923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810005, 24.955114, 35.178276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179520, 25.108166, 35.184227>,  <35.401226, 25.199997, 35.187798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179520, 25.108166, 35.184227>,  <34.810005, 24.955114, 35.178276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179520, 25.108166, 35.184227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044999, -0.147066, 0.988103,
		0.380263, -0.912123, -0.153075,
		0.923783, 0.382627, 0.014879,
		35.456654, 25.222954, 35.188690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232323, 24.433176, 35.543709>,  <34.810005, 24.955114, 35.178276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232323, 24.433176, 35.543709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421867, 24.785225, 35.555340>,  <35.535595, 24.996454, 35.562321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421867, 24.785225, 35.555340>,  <35.232323, 24.433176, 35.543709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421867, 24.785225, 35.555340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249295, -0.165749, 0.954138,
		0.844577, -0.444877, -0.297951,
		0.473859, 0.880120, 0.029082,
		35.564026, 25.049261, 35.564064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868450, 24.361454, 35.969913>,  <35.232323, 24.433176, 35.543709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868450, 24.361454, 35.969913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792023, 24.752613, 36.003868>,  <35.746166, 24.987309, 36.024242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792023, 24.752613, 36.003868>,  <35.868450, 24.361454, 35.969913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792023, 24.752613, 36.003868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325584, -0.018450, 0.945333,
		0.926007, 0.208259, -0.314863,
		-0.191064, 0.977900, 0.084891,
		35.734703, 25.045982, 36.029335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203693, 24.604727, 36.430809>,  <35.868450, 24.361454, 35.969913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203693, 24.604727, 36.430809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992470, 24.944408, 36.429832>,  <35.865738, 25.148218, 36.429249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992470, 24.944408, 36.429832>,  <36.203693, 24.604727, 36.430809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992470, 24.944408, 36.429832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205467, 0.130548, 0.969918,
		0.823978, 0.511670, -0.243420,
		-0.528056, 0.849206, -0.002438,
		35.834053, 25.199171, 36.429100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685902, 25.070925, 36.649559>,  <36.203693, 24.604727, 36.430809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685902, 25.070925, 36.649559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320370, 25.213516, 36.727375>,  <36.101051, 25.299070, 36.774063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320370, 25.213516, 36.727375>,  <36.685902, 25.070925, 36.649559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320370, 25.213516, 36.727375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294404, 0.251547, 0.921982,
		0.279730, 0.899804, -0.334819,
		-0.913826, 0.356478, 0.194541,
		36.046223, 25.320459, 36.785736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604218, 25.854225, 36.865852>,  <36.685902, 25.070925, 36.649559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604218, 25.854225, 36.865852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313225, 25.633205, 37.028557>,  <36.138630, 25.500593, 37.126179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313225, 25.633205, 37.028557>,  <36.604218, 25.854225, 36.865852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313225, 25.633205, 37.028557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216588, 0.377582, 0.900290,
		-0.651040, 0.743047, -0.155010,
		-0.727486, -0.552551, 0.406757,
		36.094978, 25.467440, 37.150585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996941, 26.175924, 37.226723>,  <36.604218, 25.854225, 36.865852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996941, 26.175924, 37.226723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156498, 25.879593, 37.442894>,  <36.252232, 25.701794, 37.572598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156498, 25.879593, 37.442894>,  <35.996941, 26.175924, 37.226723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156498, 25.879593, 37.442894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860700, 0.099149, -0.499365,
		0.316360, 0.664338, 0.677179,
		0.398889, -0.740826, 0.540429,
		36.276165, 25.657345, 37.605022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151711, 26.220259, 37.159050>,  <35.996941, 26.175924, 37.226723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151711, 26.220259, 37.159050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006062, 26.588646, 37.214516>,  <34.918671, 26.809679, 37.247795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006062, 26.588646, 37.214516>,  <35.151711, 26.220259, 37.159050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006062, 26.588646, 37.214516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837687, 0.258781, 0.480950,
		0.407056, 0.291286, -0.865712,
		-0.364124, 0.920969, 0.138669,
		34.896824, 26.864937, 37.256115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725983, 25.756544, 37.597786>,  <35.151711, 26.220259, 37.159050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725983, 25.756544, 37.597786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383595, 25.606644, 37.455311>,  <34.178162, 25.516703, 37.369827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383595, 25.606644, 37.455311>,  <34.725983, 25.756544, 37.597786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383595, 25.606644, 37.455311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059096, 0.755326, -0.652679,
		0.513631, -0.537627, -0.668686,
		-0.855974, -0.374753, -0.356187,
		34.126801, 25.494217, 37.348454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742764, 25.587219, 36.795055>,  <34.725983, 25.756544, 37.597786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742764, 25.587219, 36.795055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435493, 25.721737, 37.012978>,  <34.251129, 25.802446, 37.143730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435493, 25.721737, 37.012978>,  <34.742764, 25.587219, 36.795055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435493, 25.721737, 37.012978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053363, 0.881610, -0.468952,
		-0.638008, -0.331166, -0.695179,
		-0.768178, 0.336292, 0.544803,
		34.205040, 25.822624, 37.176418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566200, 26.001047, 36.361095>,  <34.742764, 25.587219, 36.795055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566200, 26.001047, 36.361095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371635, 26.106720, 36.694229>,  <34.254898, 26.170124, 36.894108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371635, 26.106720, 36.694229>,  <34.566200, 26.001047, 36.361095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371635, 26.106720, 36.694229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089571, 0.963248, -0.253239,
		-0.869127, -0.048581, -0.492198,
		-0.486411, 0.264183, 0.832833,
		34.225712, 26.185974, 36.944080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895752, 26.370653, 36.163040>,  <34.566200, 26.001047, 36.361095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895752, 26.370653, 36.163040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098473, 26.452747, 36.497948>,  <34.220104, 26.502005, 36.698895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098473, 26.452747, 36.497948>,  <33.895752, 26.370653, 36.163040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098473, 26.452747, 36.497948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311044, 0.862285, -0.399644,
		-0.803990, 0.462971, 0.373172,
		0.506805, 0.205237, 0.837273,
		34.250515, 26.514318, 36.749130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745480, 26.976870, 36.662506>,  <33.895752, 26.370653, 36.163040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745480, 26.976870, 36.662506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138744, 26.908916, 36.635593>,  <34.374702, 26.868145, 36.619446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138744, 26.908916, 36.635593>,  <33.745480, 26.976870, 36.662506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138744, 26.908916, 36.635593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081885, 0.738820, -0.668910,
		0.163347, 0.652139, 0.740292,
		0.983165, -0.169883, -0.067283,
		34.433693, 26.857952, 36.615410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118767, 27.628410, 36.655746>,  <33.745480, 26.976870, 36.662506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118767, 27.628410, 36.655746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376720, 27.385117, 36.470631>,  <34.531490, 27.239140, 36.359562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376720, 27.385117, 36.470631>,  <34.118767, 27.628410, 36.655746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376720, 27.385117, 36.470631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096483, 0.665470, -0.740163,
		0.758169, 0.432664, 0.487833,
		0.644880, -0.608236, -0.462794,
		34.570183, 27.202646, 36.331791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674545, 28.108463, 36.385998>,  <34.118767, 27.628410, 36.655746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674545, 28.108463, 36.385998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680321, 27.767048, 36.177666>,  <34.683784, 27.562199, 36.052666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680321, 27.767048, 36.177666>,  <34.674545, 28.108463, 36.385998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680321, 27.767048, 36.177666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043311, 0.520930, -0.852500,
		0.998957, -0.010248, 0.044490,
		0.014440, -0.853538, -0.520830,
		34.684654, 27.510986, 36.021416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280247, 28.188602, 35.962616>,  <34.674545, 28.108463, 36.385998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280247, 28.188602, 35.962616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052986, 27.911552, 35.784863>,  <34.916630, 27.745323, 35.678211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052986, 27.911552, 35.784863>,  <35.280247, 28.188602, 35.962616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052986, 27.911552, 35.784863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242881, 0.374818, -0.894718,
		0.786266, -0.616267, -0.044728,
		-0.568150, -0.692623, -0.444386,
		34.882542, 27.703766, 35.651546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668175, 28.048592, 35.394726>,  <35.280247, 28.188602, 35.962616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668175, 28.048592, 35.394726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297798, 27.916351, 35.321701>,  <35.075573, 27.837008, 35.277885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297798, 27.916351, 35.321701>,  <35.668175, 28.048592, 35.394726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297798, 27.916351, 35.321701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045454, 0.382344, -0.922901,
		0.374894, -0.862861, -0.339007,
		-0.925953, -0.330581, -0.182559,
		35.020016, 27.817171, 35.266930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728645, 27.771690, 34.724297>,  <35.668175, 28.048592, 35.394726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728645, 27.771690, 34.724297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346664, 27.860462, 34.803104>,  <35.117477, 27.913725, 34.850388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346664, 27.860462, 34.803104>,  <35.728645, 27.771690, 34.724297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346664, 27.860462, 34.803104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048038, 0.539532, -0.840594,
		-0.292852, -0.812190, -0.504565,
		-0.954950, 0.221931, 0.197018,
		35.060181, 27.927042, 34.862209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434433, 27.611937, 34.116119>,  <35.728645, 27.771690, 34.724297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434433, 27.611937, 34.116119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209156, 27.869965, 34.322693>,  <35.073990, 28.024782, 34.446636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209156, 27.869965, 34.322693>,  <35.434433, 27.611937, 34.116119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209156, 27.869965, 34.322693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023574, 0.612175, -0.790371,
		-0.825992, -0.457302, -0.329564,
		-0.563189, 0.645071, 0.516432,
		35.040199, 28.063486, 34.477623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847286, 27.725271, 33.712875>,  <35.434433, 27.611937, 34.116119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847286, 27.725271, 33.712875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841774, 28.029751, 33.972225>,  <34.838467, 28.212439, 34.127834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841774, 28.029751, 33.972225>,  <34.847286, 27.725271, 33.712875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841774, 28.029751, 33.972225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173456, 0.636784, -0.751278,
		-0.984745, -0.122820, 0.123257,
		-0.013784, 0.761197, 0.648374,
		34.837639, 28.258110, 34.166737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348801, 28.164759, 33.530151>,  <34.847286, 27.725271, 33.712875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348801, 28.164759, 33.530151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544720, 28.411728, 33.776367>,  <34.662270, 28.559910, 33.924095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544720, 28.411728, 33.776367>,  <34.348801, 28.164759, 33.530151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544720, 28.411728, 33.776367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198342, 0.766422, -0.610948,
		-0.848975, 0.177154, 0.497853,
		0.489798, 0.617425, 0.615536,
		34.691658, 28.596956, 33.961029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899681, 28.705315, 33.765903>,  <34.348801, 28.164759, 33.530151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899681, 28.705315, 33.765903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269272, 28.855598, 33.794491>,  <34.491028, 28.945768, 33.811642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269272, 28.855598, 33.794491>,  <33.899681, 28.705315, 33.765903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269272, 28.855598, 33.794491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210459, 0.655532, -0.725248,
		-0.319328, 0.655073, 0.684769,
		0.923979, 0.375707, 0.071464,
		34.546467, 28.968311, 33.815929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818901, 29.365477, 33.625069>,  <33.899681, 28.705315, 33.765903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818901, 29.365477, 33.625069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214195, 29.341892, 33.568615>,  <34.451370, 29.327742, 33.534744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214195, 29.341892, 33.568615>,  <33.818901, 29.365477, 33.625069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214195, 29.341892, 33.568615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057931, 0.709700, -0.702118,
		0.141560, 0.702033, 0.697933,
		0.988233, -0.058960, -0.141135,
		34.510666, 29.324203, 33.526276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080093, 30.064489, 33.672203>,  <33.818901, 29.365477, 33.625069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080093, 30.064489, 33.672203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351833, 29.854794, 33.466812>,  <34.514877, 29.728975, 33.343578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351833, 29.854794, 33.466812>,  <34.080093, 30.064489, 33.672203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351833, 29.854794, 33.466812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045208, 0.728305, -0.683760,
		0.732423, 0.441298, 0.518472,
		0.679347, -0.524241, -0.513478,
		34.555637, 29.697521, 33.312767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479034, 30.562969, 33.417152>,  <34.080093, 30.064489, 33.672203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479034, 30.562969, 33.417152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577724, 30.243050, 33.198265>,  <34.636936, 30.051098, 33.066933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577724, 30.243050, 33.198265>,  <34.479034, 30.562969, 33.417152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577724, 30.243050, 33.198265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040586, 0.555655, -0.830422,
		0.968236, 0.227092, 0.104631,
		0.246721, -0.799798, -0.547222,
		34.651741, 30.003111, 33.034100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070858, 30.721489, 32.999329>,  <34.479034, 30.562969, 33.417152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070858, 30.721489, 32.999329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897194, 30.409016, 32.819885>,  <34.792995, 30.221531, 32.712219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897194, 30.409016, 32.819885>,  <35.070858, 30.721489, 32.999329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897194, 30.409016, 32.819885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234630, 0.382746, -0.893563,
		0.869742, -0.493210, 0.017115,
		-0.434163, -0.781185, -0.448612,
		34.766945, 30.174660, 32.685303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587238, 30.509060, 32.482784>,  <35.070858, 30.721489, 32.999329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587238, 30.509060, 32.482784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241119, 30.352409, 32.357635>,  <35.033447, 30.258419, 32.282547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241119, 30.352409, 32.357635>,  <35.587238, 30.509060, 32.482784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241119, 30.352409, 32.357635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156237, 0.382355, -0.910711,
		0.476289, -0.836917, -0.269663,
		-0.865297, -0.391630, -0.312869,
		34.981529, 30.234921, 32.263775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734001, 30.204943, 31.760759>,  <35.587238, 30.509060, 32.482784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734001, 30.204943, 31.760759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336426, 30.229462, 31.797283>,  <35.097881, 30.244173, 31.819199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336426, 30.229462, 31.797283>,  <35.734001, 30.204943, 31.760759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336426, 30.229462, 31.797283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060148, 0.392115, -0.917948,
		-0.092073, -0.917871, -0.386050,
		-0.993934, 0.061298, 0.091311,
		35.038246, 30.247850, 31.824677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464520, 29.952620, 31.105055>,  <35.734001, 30.204943, 31.760759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464520, 29.952620, 31.105055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197803, 30.180222, 31.297562>,  <35.037773, 30.316784, 31.413065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197803, 30.180222, 31.297562>,  <35.464520, 29.952620, 31.105055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197803, 30.180222, 31.297562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207486, 0.478509, -0.853217,
		-0.715776, -0.668776, -0.201006,
		-0.666795, 0.569006, 0.481267,
		34.997765, 30.350924, 31.441942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919495, 30.038097, 30.596642>,  <35.464520, 29.952620, 31.105055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919495, 30.038097, 30.596642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870033, 30.320911, 30.875156>,  <34.840359, 30.490601, 31.042265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870033, 30.320911, 30.875156>,  <34.919495, 30.038097, 30.596642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870033, 30.320911, 30.875156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046064, 0.696824, -0.715762,
		-0.991256, -0.120578, -0.053594,
		-0.123650, 0.707034, 0.696285,
		34.832939, 30.533022, 31.084042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247051, 30.426798, 30.540310>,  <34.919495, 30.038097, 30.596642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247051, 30.426798, 30.540310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494251, 30.683640, 30.721760>,  <34.642570, 30.837744, 30.830629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494251, 30.683640, 30.721760>,  <34.247051, 30.426798, 30.540310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494251, 30.683640, 30.721760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148049, 0.661729, -0.734980,
		-0.772109, 0.387063, 0.504015,
		0.618005, 0.642104, 0.453622,
		34.679653, 30.876270, 30.857847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936699, 31.038149, 30.333126>,  <34.247051, 30.426798, 30.540310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936699, 31.038149, 30.333126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271168, 31.155392, 30.518555>,  <34.471851, 31.225737, 30.629812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271168, 31.155392, 30.518555>,  <33.936699, 31.038149, 30.333126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271168, 31.155392, 30.518555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038453, 0.811813, -0.582650,
		-0.547111, 0.505024, 0.667548,
		0.836176, 0.293105, 0.463572,
		34.522022, 31.243322, 30.657627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889339, 31.783571, 30.464796>,  <33.936699, 31.038149, 30.333126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889339, 31.783571, 30.464796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283409, 31.720585, 30.437546>,  <34.519852, 31.682793, 30.421196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283409, 31.720585, 30.437546>,  <33.889339, 31.783571, 30.464796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283409, 31.720585, 30.437546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100917, 0.852955, -0.512136,
		0.138751, 0.497667, 0.856198,
		0.985172, -0.157464, -0.068125,
		34.578960, 31.673346, 30.417109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129753, 32.455200, 30.564886>,  <33.889339, 31.783571, 30.464796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129753, 32.455200, 30.564886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421886, 32.242352, 30.393559>,  <34.597168, 32.114643, 30.290762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421886, 32.242352, 30.393559>,  <34.129753, 32.455200, 30.564886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421886, 32.242352, 30.393559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252996, 0.793154, -0.553985,
		0.634509, 0.296233, 0.713894,
		0.730337, -0.532121, -0.428318,
		34.640987, 32.082714, 30.265062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643482, 32.994873, 30.536892>,  <34.129753, 32.455200, 30.564886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643482, 32.994873, 30.536892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760773, 32.700218, 30.293125>,  <34.831146, 32.523426, 30.146866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760773, 32.700218, 30.293125>,  <34.643482, 32.994873, 30.536892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760773, 32.700218, 30.293125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301958, 0.676166, -0.672027,
		0.907105, 0.013038, 0.420702,
		0.293227, -0.736633, -0.609417,
		34.848740, 32.479229, 30.110300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304192, 33.260658, 30.292332>,  <34.643482, 32.994873, 30.536892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304192, 33.260658, 30.292332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147591, 32.995243, 30.037319>,  <35.053631, 32.835995, 29.884312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147591, 32.995243, 30.037319>,  <35.304192, 33.260658, 30.292332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147591, 32.995243, 30.037319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185131, 0.621869, -0.760924,
		0.901363, -0.415927, -0.120619,
		-0.391498, -0.663539, -0.637531,
		35.030140, 32.796181, 29.846060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818329, 33.029682, 29.794455>,  <35.304192, 33.260658, 30.292332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818329, 33.029682, 29.794455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467079, 32.955444, 29.618069>,  <35.256329, 32.910900, 29.512238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467079, 32.955444, 29.618069>,  <35.818329, 33.029682, 29.794455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467079, 32.955444, 29.618069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284288, 0.538908, -0.792943,
		0.384805, -0.821665, -0.420467,
		-0.878126, -0.185595, -0.440964,
		35.203640, 32.899765, 29.485779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960979, 33.053062, 29.128357>,  <35.818329, 33.029682, 29.794455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960979, 33.053062, 29.128357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562767, 33.082222, 29.104343>,  <35.323841, 33.099720, 29.089935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562767, 33.082222, 29.104343>,  <35.960979, 33.053062, 29.128357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562767, 33.082222, 29.104343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089806, 0.534139, -0.840613,
		-0.029216, -0.842248, -0.538298,
		-0.995531, 0.072902, -0.060033,
		35.264107, 33.104092, 29.086334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867844, 33.017651, 28.517464>,  <35.960979, 33.053062, 29.128357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867844, 33.017651, 28.517464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533943, 33.216393, 28.612396>,  <35.333603, 33.335636, 28.669355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533943, 33.216393, 28.612396>,  <35.867844, 33.017651, 28.517464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533943, 33.216393, 28.612396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128863, 0.595325, -0.793084,
		-0.535337, -0.631445, -0.560974,
		-0.834751, 0.496856, 0.237329,
		35.283520, 33.365448, 28.683596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446514, 33.060181, 27.912834>,  <35.867844, 33.017651, 28.517464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446514, 33.060181, 27.912834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279110, 33.339222, 28.145454>,  <35.178669, 33.506645, 28.285027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279110, 33.339222, 28.145454>,  <35.446514, 33.060181, 27.912834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279110, 33.339222, 28.145454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090676, 0.669220, -0.737511,
		-0.903676, -0.255920, -0.343329,
		-0.418506, 0.697603, 0.581553,
		35.153557, 33.548504, 28.319920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814751, 33.328106, 27.568617>,  <35.446514, 33.060181, 27.912834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814751, 33.328106, 27.568617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944595, 33.608063, 27.823105>,  <35.022503, 33.776039, 27.975798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944595, 33.608063, 27.823105>,  <34.814751, 33.328106, 27.568617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944595, 33.608063, 27.823105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063277, 0.655068, -0.752916,
		-0.943728, 0.284664, 0.168357,
		0.324613, 0.699895, 0.636218,
		35.041981, 33.818031, 28.013969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535580, 33.931915, 27.258610>,  <34.814751, 33.328106, 27.568617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535580, 33.931915, 27.258610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836052, 34.054600, 27.492416>,  <35.016335, 34.128212, 27.632700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836052, 34.054600, 27.492416>,  <34.535580, 33.931915, 27.258610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836052, 34.054600, 27.492416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186994, 0.750353, -0.634038,
		-0.633061, 0.585576, 0.506295,
		0.751177, 0.306710, 0.584518,
		35.061405, 34.146614, 27.667772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567600, 34.652496, 27.339546>,  <34.535580, 33.931915, 27.258610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567600, 34.652496, 27.339546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955601, 34.585075, 27.409611>,  <35.188400, 34.544621, 27.451649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955601, 34.585075, 27.409611>,  <34.567600, 34.652496, 27.339546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955601, 34.585075, 27.409611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241716, 0.592329, -0.768583,
		0.025796, 0.787868, 0.615304,
		0.970004, -0.168555, 0.175160,
		35.246601, 34.534508, 27.462158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785576, 35.305943, 27.197050>,  <34.567600, 34.652496, 27.339546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785576, 35.305943, 27.197050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105274, 35.065823, 27.208626>,  <35.297092, 34.921749, 27.215570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105274, 35.065823, 27.208626>,  <34.785576, 35.305943, 27.197050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105274, 35.065823, 27.208626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338220, 0.409463, -0.847318,
		0.496799, 0.687005, 0.530297,
		0.799248, -0.600304, 0.028938,
		35.345047, 34.885731, 27.217306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496326, 35.732456, 27.105686>,  <34.785576, 35.305943, 27.197050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496326, 35.732456, 27.105686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591114, 35.366436, 26.975128>,  <35.647987, 35.146824, 26.896793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591114, 35.366436, 26.975128>,  <35.496326, 35.732456, 27.105686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591114, 35.366436, 26.975128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333841, 0.392202, -0.857163,
		0.912357, 0.094159, 0.398420,
		0.236971, -0.915047, -0.326394,
		35.662205, 35.091923, 26.877211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129402, 35.855625, 26.742107>,  <35.496326, 35.732456, 27.105686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129402, 35.855625, 26.742107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974644, 35.507915, 26.619038>,  <35.881786, 35.299290, 26.545195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974644, 35.507915, 26.619038>,  <36.129402, 35.855625, 26.742107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974644, 35.507915, 26.619038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304775, 0.194363, -0.932382,
		0.870300, -0.454509, 0.189736,
		-0.386898, -0.869278, -0.307677,
		35.858574, 35.247131, 26.526735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580360, 35.692661, 26.282125>,  <36.129402, 35.855625, 26.742107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580360, 35.692661, 26.282125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294750, 35.426651, 26.194565>,  <36.123386, 35.267044, 26.142029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294750, 35.426651, 26.194565>,  <36.580360, 35.692661, 26.282125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294750, 35.426651, 26.194565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358002, -0.078110, -0.930448,
		0.601671, -0.742726, 0.293852,
		-0.714021, -0.665023, -0.218901,
		36.080544, 35.227142, 26.128895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964874, 35.162804, 25.970819>,  <36.580360, 35.692661, 26.282125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964874, 35.162804, 25.970819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582932, 35.140316, 25.854141>,  <36.353767, 35.126823, 25.784134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582932, 35.140316, 25.854141>,  <36.964874, 35.162804, 25.970819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582932, 35.140316, 25.854141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293461, -0.026097, -0.955615,
		0.046111, -0.998077, 0.041417,
		-0.954858, -0.056218, -0.291694,
		36.296474, 35.123451, 25.766634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816257, 34.536556, 25.421146>,  <36.964874, 35.162804, 25.970819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816257, 34.536556, 25.421146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535053, 34.818890, 25.386333>,  <36.366333, 34.988289, 25.365446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535053, 34.818890, 25.386333>,  <36.816257, 34.536556, 25.421146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535053, 34.818890, 25.386333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148970, 0.026489, -0.988487,
		-0.695404, -0.707880, -0.123770,
		-0.703009, 0.705836, -0.087033,
		36.324150, 35.030640, 25.360224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456738, 34.332966, 24.853514>,  <36.816257, 34.536556, 25.421146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456738, 34.332966, 24.853514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329048, 34.711918, 24.863033>,  <36.252434, 34.939289, 24.868744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329048, 34.711918, 24.863033>,  <36.456738, 34.332966, 24.853514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329048, 34.711918, 24.863033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110243, 0.062065, -0.991965,
		-0.941244, -0.314039, -0.124255,
		-0.319228, 0.947379, 0.023797,
		36.233280, 34.996132, 24.870173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926804, 34.452145, 24.266981>,  <36.456738, 34.332966, 24.853514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926804, 34.452145, 24.266981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053326, 34.820366, 24.358658>,  <36.129238, 35.041298, 24.413664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053326, 34.820366, 24.358658>,  <35.926804, 34.452145, 24.266981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053326, 34.820366, 24.358658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000813, 0.241859, -0.970311,
		-0.948658, 0.306724, 0.077249,
		0.316301, 0.920557, 0.229193,
		36.148216, 35.096535, 24.427416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362640, 34.854378, 23.955162>,  <35.926804, 34.452145, 24.266981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362640, 34.854378, 23.955162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703587, 35.052567, 24.022068>,  <35.908154, 35.171482, 24.062212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703587, 35.052567, 24.022068>,  <35.362640, 34.854378, 23.955162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703587, 35.052567, 24.022068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011728, 0.301657, -0.953344,
		-0.522815, 0.814560, 0.251311,
		0.852366, 0.495475, 0.167264,
		35.959297, 35.201210, 24.072247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893711, 34.408424, 24.347281>,  <35.362640, 34.854378, 23.955162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893711, 34.408424, 24.347281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509487, 34.492744, 24.274746>,  <34.278954, 34.543339, 24.231226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509487, 34.492744, 24.274746>,  <34.893711, 34.408424, 24.347281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509487, 34.492744, 24.274746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257390, -0.427298, 0.866699,
		0.105217, 0.879192, 0.464705,
		-0.960562, 0.210802, -0.181336,
		34.221317, 34.555984, 24.220345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530346, 34.742363, 24.911339>,  <34.893711, 34.408424, 24.347281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530346, 34.742363, 24.911339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211407, 34.602577, 24.714516>,  <34.020042, 34.518707, 24.596422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211407, 34.602577, 24.714516>,  <34.530346, 34.742363, 24.911339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211407, 34.602577, 24.714516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281270, -0.506181, 0.815272,
		-0.533975, 0.788453, 0.305307,
		-0.797344, -0.349461, -0.492057,
		33.972202, 34.497738, 24.566898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919403, 35.060608, 25.217968>,  <34.530346, 34.742363, 24.911339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919403, 35.060608, 25.217968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816910, 34.717579, 25.039570>,  <33.755413, 34.511761, 24.932531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816910, 34.717579, 25.039570>,  <33.919403, 35.060608, 25.217968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816910, 34.717579, 25.039570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449366, -0.302827, 0.840456,
		-0.855813, 0.415764, -0.307772,
		-0.256229, -0.857575, -0.445994,
		33.740040, 34.460304, 24.905771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179939, 34.922108, 25.485340>,  <33.919403, 35.060608, 25.217968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179939, 34.922108, 25.485340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338757, 34.577080, 25.359909>,  <33.434048, 34.370064, 25.284651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338757, 34.577080, 25.359909>,  <33.179939, 34.922108, 25.485340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338757, 34.577080, 25.359909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406957, -0.471695, 0.782234,
		-0.822644, -0.182967, -0.538312,
		0.397042, -0.862570, -0.313578,
		33.457870, 34.318310, 25.265837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605476, 34.478725, 25.653173>,  <33.179939, 34.922108, 25.485340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605476, 34.478725, 25.653173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928951, 34.252121, 25.589806>,  <33.123035, 34.116158, 25.551785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928951, 34.252121, 25.589806>,  <32.605476, 34.478725, 25.653173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928951, 34.252121, 25.589806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289728, -0.617966, 0.730873,
		-0.511943, -0.545147, -0.663874,
		0.808685, -0.566508, -0.158419,
		33.171558, 34.082169, 25.542280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485378, 33.747997, 25.319105>,  <32.605476, 34.478725, 25.653173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485378, 33.747997, 25.319105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815533, 33.751808, 25.544899>,  <33.013626, 33.754097, 25.680374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815533, 33.751808, 25.544899>,  <32.485378, 33.747997, 25.319105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815533, 33.751808, 25.544899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410071, -0.677108, 0.611038,
		0.388039, -0.735822, -0.554969,
		0.825389, 0.009530, 0.564484,
		33.063148, 33.754665, 25.714245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446266, 33.062359, 25.550922>,  <32.485378, 33.747997, 25.319105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446266, 33.062359, 25.550922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686951, 33.256042, 25.805004>,  <32.831364, 33.372253, 25.957453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686951, 33.256042, 25.805004>,  <32.446266, 33.062359, 25.550922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686951, 33.256042, 25.805004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278235, -0.618397, 0.734963,
		0.748683, -0.618973, -0.237374,
		0.601713, 0.484208, 0.635204,
		32.867466, 33.401306, 25.995565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697182, 32.581741, 26.021212>,  <32.446266, 33.062359, 25.550922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697182, 32.581741, 26.021212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759312, 32.915668, 26.232475>,  <32.796589, 33.116024, 26.359234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759312, 32.915668, 26.232475>,  <32.697182, 32.581741, 26.021212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759312, 32.915668, 26.232475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344869, -0.455186, 0.820897,
		0.925710, -0.309655, 0.217199,
		0.155328, 0.834817, 0.528160,
		32.805912, 33.166115, 26.390923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907436, 32.332638, 26.619495>,  <32.697182, 32.581741, 26.021212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907436, 32.332638, 26.619495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831875, 32.708878, 26.732342>,  <32.786537, 32.934620, 26.800049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831875, 32.708878, 26.732342>,  <32.907436, 32.332638, 26.619495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831875, 32.708878, 26.732342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062658, -0.298249, 0.952430,
		0.979994, 0.162242, 0.115276,
		-0.188905, 0.940598, 0.282116,
		32.775204, 32.991058, 26.816977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200016, 32.422657, 27.236053>,  <32.907436, 32.332638, 26.619495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200016, 32.422657, 27.236053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918510, 32.706806, 27.232452>,  <32.749607, 32.877296, 27.230291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918510, 32.706806, 27.232452>,  <33.200016, 32.422657, 27.236053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918510, 32.706806, 27.232452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293101, -0.278786, 0.914532,
		0.647152, 0.646255, 0.404412,
		-0.703765, 0.710375, -0.009001,
		32.707382, 32.919918, 27.229752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175133, 32.748608, 27.951229>,  <33.200016, 32.422657, 27.236053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175133, 32.748608, 27.951229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820396, 32.830345, 27.785458>,  <32.607555, 32.879387, 27.685995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820396, 32.830345, 27.785458>,  <33.175133, 32.748608, 27.951229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820396, 32.830345, 27.785458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450837, -0.186089, 0.872993,
		0.101274, 0.961048, 0.257159,
		-0.886842, 0.204348, -0.414430,
		32.554344, 32.891651, 27.661129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835651, 33.230934, 28.425756>,  <33.175133, 32.748608, 27.951229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835651, 33.230934, 28.425756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556263, 33.057045, 28.198368>,  <32.388630, 32.952713, 28.061935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556263, 33.057045, 28.198368>,  <32.835651, 33.230934, 28.425756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556263, 33.057045, 28.198368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495245, -0.279795, 0.822464,
		-0.516600, 0.855996, -0.019867,
		-0.698468, -0.434724, -0.568470,
		32.346722, 32.926628, 28.027826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167168, 33.435246, 28.716425>,  <32.835651, 33.230934, 28.425756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167168, 33.435246, 28.716425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094719, 33.089531, 28.528721>,  <32.051250, 32.882103, 28.416100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094719, 33.089531, 28.528721>,  <32.167168, 33.435246, 28.716425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094719, 33.089531, 28.528721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535831, -0.313383, 0.784013,
		-0.824668, 0.393449, -0.406350,
		-0.181126, -0.864285, -0.469259,
		32.040382, 32.830246, 28.387943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528822, 33.259335, 29.054737>,  <32.167168, 33.435246, 28.716425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528822, 33.259335, 29.054737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617500, 32.928825, 28.847614>,  <31.670708, 32.730518, 28.723341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617500, 32.928825, 28.847614>,  <31.528822, 33.259335, 29.054737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617500, 32.928825, 28.847614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404492, -0.561105, 0.722182,
		-0.887264, 0.049344, -0.458616,
		0.221697, -0.826273, -0.517807,
		31.684010, 32.680943, 28.692272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907549, 32.787128, 29.125551>,  <31.528822, 33.259335, 29.054737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907549, 32.787128, 29.125551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229635, 32.555271, 29.075523>,  <31.422888, 32.416157, 29.045506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229635, 32.555271, 29.075523>,  <30.907549, 32.787128, 29.125551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229635, 32.555271, 29.075523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309523, -0.590756, 0.745120,
		-0.505785, -0.561273, -0.655099,
		0.805218, -0.579638, -0.125069,
		31.471201, 32.381378, 29.038002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811941, 32.076801, 29.323498>,  <30.907549, 32.787128, 29.125551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811941, 32.076801, 29.323498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210846, 32.083500, 29.352306>,  <31.450190, 32.087521, 29.369591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210846, 32.083500, 29.352306>,  <30.811941, 32.076801, 29.323498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210846, 32.083500, 29.352306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037380, -0.726223, 0.686442,
		0.063799, -0.687255, -0.723609,
		0.997262, 0.016746, 0.072022,
		31.510025, 32.088524, 29.373913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048176, 31.318083, 29.364674>,  <30.811941, 32.076801, 29.323498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048176, 31.318083, 29.364674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366440, 31.520023, 29.498569>,  <31.557398, 31.641188, 29.578907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366440, 31.520023, 29.498569>,  <31.048176, 31.318083, 29.364674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366440, 31.520023, 29.498569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120280, -0.673281, 0.729538,
		0.593680, -0.540203, -0.596426,
		0.795661, 0.504850, 0.334738,
		31.605139, 31.671478, 29.598991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716581, 30.781645, 29.327568>,  <31.048176, 31.318083, 29.364674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716581, 30.781645, 29.327568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802629, 31.078579, 29.581390>,  <31.854259, 31.256739, 29.733685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802629, 31.078579, 29.581390>,  <31.716581, 30.781645, 29.327568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802629, 31.078579, 29.581390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234976, -0.670026, 0.704167,
		0.947897, -0.002376, -0.318568,
		0.215122, 0.742334, 0.634557,
		31.867167, 31.301279, 29.771757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340977, 30.615803, 29.642157>,  <31.716581, 30.781645, 29.327568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340977, 30.615803, 29.642157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187607, 30.890179, 29.889534>,  <32.095585, 31.054804, 30.037960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187607, 30.890179, 29.889534>,  <32.340977, 30.615803, 29.642157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187607, 30.890179, 29.889534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268691, -0.557810, 0.785273,
		0.883624, 0.467263, 0.029572,
		-0.383425, 0.685940, 0.618443,
		32.072578, 31.095961, 30.075068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776226, 30.613634, 30.143093>,  <32.340977, 30.615803, 29.642157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776226, 30.613634, 30.143093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479603, 30.800781, 30.335423>,  <32.301628, 30.913071, 30.450821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479603, 30.800781, 30.335423>,  <32.776226, 30.613634, 30.143093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479603, 30.800781, 30.335423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173431, -0.558645, 0.811072,
		0.648085, 0.684846, 0.333124,
		-0.741557, 0.467869, 0.480823,
		32.257137, 30.941143, 30.479670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019047, 30.856607, 30.817902>,  <32.776226, 30.613634, 30.143093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019047, 30.856607, 30.817902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622063, 30.820961, 30.851582>,  <32.383873, 30.799574, 30.871790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622063, 30.820961, 30.851582>,  <33.019047, 30.856607, 30.817902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622063, 30.820961, 30.851582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120497, -0.582265, 0.804020,
		-0.022624, 0.808101, 0.588610,
		-0.992456, -0.089115, 0.084200,
		32.324326, 30.794226, 30.876842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839169, 31.033995, 31.478477>,  <33.019047, 30.856607, 30.817902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839169, 31.033995, 31.478477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572731, 30.768951, 31.341499>,  <32.412868, 30.609924, 31.259314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572731, 30.768951, 31.341499>,  <32.839169, 31.033995, 31.478477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572731, 30.768951, 31.341499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024026, -0.477944, 0.878061,
		-0.745480, 0.576644, 0.334276,
		-0.666094, -0.662609, -0.342444,
		32.372902, 30.570169, 31.238766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681141, 30.748362, 32.065895>,  <32.839169, 31.033995, 31.478477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681141, 30.748362, 32.065895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478493, 30.503670, 31.822872>,  <32.356903, 30.356855, 31.677059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478493, 30.503670, 31.822872>,  <32.681141, 30.748362, 32.065895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478493, 30.503670, 31.822872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138461, -0.753263, 0.642980,
		-0.850980, 0.241622, 0.466318,
		-0.506618, -0.611730, -0.607556,
		32.326508, 30.320150, 31.640606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149170, 30.294500, 32.463291>,  <32.681141, 30.748362, 32.065895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149170, 30.294500, 32.463291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222504, 30.106770, 32.117779>,  <32.266506, 29.994131, 31.910471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222504, 30.106770, 32.117779>,  <32.149170, 30.294500, 32.463291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222504, 30.106770, 32.117779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057383, -0.872068, 0.486009,
		-0.981374, -0.138671, -0.132952,
		0.183339, -0.469327, -0.863782,
		32.277504, 29.965971, 31.858644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796564, 29.709223, 32.583447>,  <32.149170, 30.294500, 32.463291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796564, 29.709223, 32.583447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027325, 29.610451, 32.272007>,  <32.165783, 29.551188, 32.085144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027325, 29.610451, 32.272007>,  <31.796564, 29.709223, 32.583447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027325, 29.610451, 32.272007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150476, -0.904766, 0.398442,
		-0.802833, -0.347022, -0.484805,
		0.576903, -0.246930, -0.778594,
		32.200394, 29.536371, 32.038429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491966, 29.111919, 32.300541>,  <31.796564, 29.709223, 32.583447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491966, 29.111919, 32.300541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872454, 29.141136, 32.180641>,  <32.100746, 29.158667, 32.108700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872454, 29.141136, 32.180641>,  <31.491966, 29.111919, 32.300541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872454, 29.141136, 32.180641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202223, -0.881368, 0.426961,
		-0.233006, -0.466750, -0.853143,
		0.951217, 0.073040, -0.299752,
		32.157818, 29.163048, 32.090717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670691, 28.530233, 31.962078>,  <31.491966, 29.111919, 32.300541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670691, 28.530233, 31.962078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010300, 28.672241, 32.118599>,  <32.214066, 28.757446, 32.212513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010300, 28.672241, 32.118599>,  <31.670691, 28.530233, 31.962078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010300, 28.672241, 32.118599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175646, -0.888140, 0.424684,
		0.498303, -0.291836, -0.816411,
		0.849025, 0.355020, 0.391302,
		32.265007, 28.778748, 32.235989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059307, 27.808004, 32.024185>,  <31.670691, 28.530233, 31.962078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059307, 27.808004, 32.024185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247284, 28.067001, 32.264153>,  <32.360069, 28.222399, 32.408134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247284, 28.067001, 32.264153>,  <32.059307, 27.808004, 32.024185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247284, 28.067001, 32.264153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310167, -0.757437, 0.574531,
		0.826406, -0.083923, -0.556785,
		0.469946, 0.647493, 0.599920,
		32.388268, 28.261250, 32.444130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808056, 27.690969, 31.951092>,  <32.059307, 27.808004, 32.024185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808056, 27.690969, 31.951092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702717, 27.859711, 32.298122>,  <32.639515, 27.960957, 32.506340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702717, 27.859711, 32.298122>,  <32.808056, 27.690969, 31.951092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702717, 27.859711, 32.298122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289964, -0.823121, 0.488255,
		0.920093, 0.380145, 0.094441,
		-0.263344, 0.421855, 0.867576,
		32.623714, 27.986267, 32.558395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209644, 27.260010, 32.421452>,  <32.808056, 27.690969, 31.951092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209644, 27.260010, 32.421452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980217, 27.442875, 32.693340>,  <32.842560, 27.552595, 32.856472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980217, 27.442875, 32.693340>,  <33.209644, 27.260010, 32.421452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980217, 27.442875, 32.693340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024720, -0.819741, 0.572200,
		0.818783, 0.345000, 0.458878,
		-0.573571, 0.457164, 0.679719,
		32.808147, 27.580025, 32.897255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519825, 27.137745, 33.052959>,  <33.209644, 27.260010, 32.421452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519825, 27.137745, 33.052959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144459, 27.222527, 33.162102>,  <32.919239, 27.273396, 33.227589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144459, 27.222527, 33.162102>,  <33.519825, 27.137745, 33.052959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144459, 27.222527, 33.162102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001957, -0.786458, 0.617641,
		0.345505, 0.580137, 0.737609,
		-0.938415, 0.211955, 0.272860,
		32.862934, 27.286114, 33.243961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498142, 26.986334, 33.857632>,  <33.519825, 27.137745, 33.052959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498142, 26.986334, 33.857632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125347, 27.000694, 33.713348>,  <32.901669, 27.009310, 33.626778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125347, 27.000694, 33.713348>,  <33.498142, 26.986334, 33.857632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125347, 27.000694, 33.713348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300338, -0.633639, 0.712950,
		-0.202962, 0.772795, 0.601327,
		-0.931989, 0.035900, -0.360704,
		32.845749, 27.011465, 33.605137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165913, 26.833838, 34.380859>,  <33.498142, 26.986334, 33.857632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165913, 26.833838, 34.380859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870522, 26.770824, 34.118610>,  <32.693287, 26.733017, 33.961262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870522, 26.770824, 34.118610>,  <33.165913, 26.833838, 34.380859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870522, 26.770824, 34.118610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388887, -0.694814, 0.604980,
		-0.550840, 0.701724, 0.451839,
		-0.738473, -0.157533, -0.655623,
		32.648979, 26.723564, 33.921925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705097, 26.640295, 34.756992>,  <33.165913, 26.833838, 34.380859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705097, 26.640295, 34.756992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575272, 26.508171, 34.402466>,  <32.497375, 26.428896, 34.189751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575272, 26.508171, 34.402466>,  <32.705097, 26.640295, 34.756992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575272, 26.508171, 34.402466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322488, -0.842254, 0.431983,
		-0.889190, 0.426032, 0.166845,
		-0.324564, -0.330310, -0.886315,
		32.477901, 26.409079, 34.136570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975441, 26.569857, 34.851658>,  <32.705097, 26.640295, 34.756992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975441, 26.569857, 34.851658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059429, 26.328999, 34.543545>,  <32.109821, 26.184484, 34.358677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059429, 26.328999, 34.543545>,  <31.975441, 26.569857, 34.851658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059429, 26.328999, 34.543545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292400, -0.790461, 0.538213,
		-0.932960, 0.112222, -0.342041,
		0.209971, -0.602144, -0.770282,
		32.122421, 26.148355, 34.312462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380798, 26.128469, 34.685970>,  <31.975441, 26.569857, 34.851658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380798, 26.128469, 34.685970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711605, 25.926994, 34.586098>,  <31.910089, 25.806108, 34.526176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711605, 25.926994, 34.586098>,  <31.380798, 26.128469, 34.685970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711605, 25.926994, 34.586098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340374, -0.802103, 0.490690,
		-0.447421, -0.320826, -0.834796,
		0.827018, -0.503688, -0.249677,
		31.959711, 25.775888, 34.511196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179842, 25.567631, 34.425121>,  <31.380798, 26.128469, 34.685970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179842, 25.567631, 34.425121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558352, 25.473881, 34.514233>,  <31.785458, 25.417631, 34.567699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558352, 25.473881, 34.514233>,  <31.179842, 25.567631, 34.425121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558352, 25.473881, 34.514233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322526, -0.733638, 0.598125,
		0.023254, -0.637843, -0.769815,
		0.946275, -0.234376, 0.222781,
		31.842234, 25.403568, 34.581066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241304, 24.752131, 34.385456>,  <31.179842, 25.567631, 34.425121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241304, 24.752131, 34.385456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555115, 24.850021, 34.613361>,  <31.743401, 24.908756, 34.750103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555115, 24.850021, 34.613361>,  <31.241304, 24.752131, 34.385456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555115, 24.850021, 34.613361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216290, -0.753128, 0.621303,
		0.581155, -0.610661, -0.537915,
		0.784524, 0.244727, 0.569764,
		31.790472, 24.923439, 34.784290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856932, 24.162422, 34.237324>,  <31.241304, 24.752131, 34.385456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856932, 24.162422, 34.237324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493591, 24.047935, 34.115356>,  <30.275587, 23.979244, 34.042175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493591, 24.047935, 34.115356>,  <30.856932, 24.162422, 34.237324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493591, 24.047935, 34.115356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032666, 0.775449, -0.630564,
		0.416930, -0.562814, -0.713730,
		-0.908351, -0.286215, -0.304923,
		30.221087, 23.962070, 34.023880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908262, 24.116053, 33.559532>,  <30.856932, 24.162422, 34.237324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908262, 24.116053, 33.559532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517435, 24.149273, 33.637955>,  <30.282938, 24.169205, 33.685009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517435, 24.149273, 33.637955>,  <30.908262, 24.116053, 33.559532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517435, 24.149273, 33.637955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064308, 0.762687, -0.643563,
		-0.202979, -0.641414, -0.739857,
		-0.977069, 0.083051, 0.196057,
		30.224314, 24.174189, 33.696774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544636, 24.101490, 32.861866>,  <30.908262, 24.116053, 33.559532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544636, 24.101490, 32.861866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295223, 24.268070, 33.126526>,  <30.145576, 24.368019, 33.285320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295223, 24.268070, 33.126526>,  <30.544636, 24.101490, 32.861866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295223, 24.268070, 33.126526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261248, 0.686674, -0.678402,
		-0.736858, -0.595858, -0.319365,
		-0.623531, 0.416452, 0.661647,
		30.108164, 24.393005, 33.325020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892033, 24.250664, 32.516235>,  <30.544636, 24.101490, 32.861866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892033, 24.250664, 32.516235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900724, 24.493225, 32.834179>,  <29.905939, 24.638762, 33.024944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900724, 24.493225, 32.834179>,  <29.892033, 24.250664, 32.516235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900724, 24.493225, 32.834179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200742, 0.781504, -0.590723,
		-0.979403, -0.146725, 0.138713,
		0.021731, 0.606401, 0.794862,
		29.907244, 24.675146, 33.072636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278193, 24.665251, 32.502892>,  <29.892033, 24.250664, 32.516235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278193, 24.665251, 32.502892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531971, 24.866840, 32.737324>,  <29.684238, 24.987795, 32.877983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531971, 24.866840, 32.737324>,  <29.278193, 24.665251, 32.502892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531971, 24.866840, 32.737324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210618, 0.842242, -0.496255,
		-0.743720, 0.191408, 0.640503,
		0.634446, 0.503976, 0.586078,
		29.722305, 25.018034, 32.913147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964298, 25.309155, 32.558655>,  <29.278193, 24.665251, 32.502892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964298, 25.309155, 32.558655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351465, 25.363087, 32.643467>,  <29.583765, 25.395445, 32.694355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351465, 25.363087, 32.643467>,  <28.964298, 25.309155, 32.558655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351465, 25.363087, 32.643467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024282, 0.890085, -0.455147,
		-0.250095, 0.435396, 0.864802,
		0.967917, 0.134829, 0.212033,
		29.641840, 25.403536, 32.707077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060362, 25.959909, 32.635864>,  <28.964298, 25.309155, 32.558655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060362, 25.959909, 32.635864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445107, 25.863117, 32.584843>,  <29.675953, 25.805042, 32.554230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445107, 25.863117, 32.584843>,  <29.060362, 25.959909, 32.635864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445107, 25.863117, 32.584843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120477, 0.793410, -0.596645,
		0.245581, 0.558521, 0.792303,
		0.961860, -0.241979, -0.127557,
		29.733665, 25.790524, 32.546574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483828, 26.527769, 32.799629>,  <29.060362, 25.959909, 32.635864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483828, 26.527769, 32.799629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739296, 26.323460, 32.569424>,  <29.892576, 26.200874, 32.431301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739296, 26.323460, 32.569424>,  <29.483828, 26.527769, 32.799629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739296, 26.323460, 32.569424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064298, 0.780730, -0.621552,
		0.766789, 0.359964, 0.531471,
		0.638672, -0.510772, -0.575509,
		29.930897, 26.170229, 32.396770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147421, 26.920368, 32.668396>,  <29.483828, 26.527769, 32.799629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147421, 26.920368, 32.668396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185604, 26.645237, 32.380569>,  <30.208515, 26.480158, 32.207874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185604, 26.645237, 32.380569>,  <30.147421, 26.920368, 32.668396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185604, 26.645237, 32.380569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196242, 0.721686, -0.663821,
		0.975898, -0.077841, 0.203873,
		0.095460, -0.687830, -0.719568,
		30.214243, 26.438889, 32.164700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695297, 27.153028, 32.322979>,  <30.147421, 26.920368, 32.668396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695297, 27.153028, 32.322979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498638, 26.910839, 32.072639>,  <30.380642, 26.765526, 31.922436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498638, 26.910839, 32.072639>,  <30.695297, 27.153028, 32.322979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498638, 26.910839, 32.072639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058629, 0.694063, -0.717523,
		0.868819, -0.389461, -0.305736,
		-0.491647, -0.605472, -0.625849,
		30.351143, 26.729198, 31.884886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187607, 27.085835, 31.638334>,  <30.695297, 27.153028, 32.322979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187607, 27.085835, 31.638334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808645, 26.993385, 31.549786>,  <30.581268, 26.937916, 31.496656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808645, 26.993385, 31.549786>,  <31.187607, 27.085835, 31.638334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808645, 26.993385, 31.549786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016924, 0.726918, -0.686516,
		0.319588, -0.646662, -0.692597,
		-0.947405, -0.231124, -0.221370,
		30.524424, 26.924047, 31.483374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224524, 26.965223, 30.809757>,  <31.187607, 27.085835, 31.638334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224524, 26.965223, 30.809757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847906, 27.035942, 30.924465>,  <30.621935, 27.078373, 30.993290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847906, 27.035942, 30.924465>,  <31.224524, 26.965223, 30.809757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847906, 27.035942, 30.924465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092871, 0.682031, -0.725402,
		-0.323836, -0.709631, -0.625743,
		-0.941544, 0.176798, 0.286770,
		30.565443, 27.088982, 31.010496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813166, 26.795338, 30.235098>,  <31.224524, 26.965223, 30.809757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813166, 26.795338, 30.235098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614574, 27.053242, 30.467579>,  <30.495420, 27.207985, 30.607067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614574, 27.053242, 30.467579>,  <30.813166, 26.795338, 30.235098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614574, 27.053242, 30.467579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099431, 0.622900, -0.775957,
		-0.862337, -0.443033, -0.245146,
		-0.496476, 0.644761, 0.581201,
		30.465631, 27.246670, 30.641939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272335, 26.942205, 29.840830>,  <30.813166, 26.795338, 30.235098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272335, 26.942205, 29.840830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288280, 27.246601, 30.099846>,  <30.297848, 27.429237, 30.255257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288280, 27.246601, 30.099846>,  <30.272335, 26.942205, 29.840830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288280, 27.246601, 30.099846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052831, 0.648755, -0.759161,
		-0.997807, -0.003946, 0.066067,
		0.039865, 0.760987, 0.647541,
		30.300240, 27.474897, 30.294107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642796, 27.261587, 29.663286>,  <30.272335, 26.942205, 29.840830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642796, 27.261587, 29.663286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865587, 27.529625, 29.859550>,  <29.999262, 27.690449, 29.977308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865587, 27.529625, 29.859550>,  <29.642796, 27.261587, 29.663286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865587, 27.529625, 29.859550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224230, 0.690170, -0.688031,
		-0.799685, 0.273197, 0.534665,
		0.556978, 0.670096, 0.490660,
		30.032681, 27.730654, 30.006748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348156, 27.985027, 29.467152>,  <29.642796, 27.261587, 29.663286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348156, 27.985027, 29.467152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674011, 28.112167, 29.661198>,  <29.869524, 28.188452, 29.777624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674011, 28.112167, 29.661198>,  <29.348156, 27.985027, 29.467152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674011, 28.112167, 29.661198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060111, 0.785670, -0.615719,
		-0.576846, 0.530749, 0.620930,
		0.814639, 0.317850, 0.485114,
		29.918404, 28.207523, 29.806732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289627, 28.713785, 29.625511>,  <29.348156, 27.985027, 29.467152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289627, 28.713785, 29.625511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681095, 28.631618, 29.624496>,  <29.915976, 28.582319, 29.623888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681095, 28.631618, 29.624496>,  <29.289627, 28.713785, 29.625511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681095, 28.631618, 29.624496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168124, 0.807986, -0.564706,
		0.118049, 0.552235, 0.825288,
		0.978672, -0.205414, -0.002538,
		29.974697, 28.569994, 29.623735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639866, 29.288975, 29.877815>,  <29.289627, 28.713785, 29.625511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639866, 29.288975, 29.877815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903774, 29.086933, 29.655258>,  <30.062119, 28.965708, 29.521725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903774, 29.086933, 29.655258>,  <29.639866, 29.288975, 29.877815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903774, 29.086933, 29.655258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162019, 0.818606, -0.551029,
		0.733793, 0.273408, 0.621930,
		0.659771, -0.505106, -0.556390,
		30.101706, 28.935402, 29.488340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288511, 29.702534, 29.898785>,  <29.639866, 29.288975, 29.877815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288511, 29.702534, 29.898785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311995, 29.454708, 29.585686>,  <30.326084, 29.306013, 29.397825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311995, 29.454708, 29.585686>,  <30.288511, 29.702534, 29.898785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311995, 29.454708, 29.585686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207942, 0.774492, -0.597430,
		0.976378, -0.127692, 0.174302,
		0.058709, -0.619562, -0.782749,
		30.329607, 29.268839, 29.350861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939453, 29.902258, 29.511259>,  <30.288511, 29.702534, 29.898785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939453, 29.902258, 29.511259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721777, 29.684910, 29.255569>,  <30.591171, 29.554501, 29.102156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721777, 29.684910, 29.255569>,  <30.939453, 29.902258, 29.511259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721777, 29.684910, 29.255569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024884, 0.772040, -0.635086,
		0.838594, -0.329699, -0.433656,
		-0.544188, -0.543371, -0.639224,
		30.558521, 29.521898, 29.063803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351841, 30.010113, 28.875599>,  <30.939453, 29.902258, 29.511259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351841, 30.010113, 28.875599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972179, 29.899933, 28.814625>,  <30.744383, 29.833824, 28.778040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972179, 29.899933, 28.814625>,  <31.351841, 30.010113, 28.875599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972179, 29.899933, 28.814625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137275, 0.797868, -0.586994,
		0.283312, -0.536221, -0.795111,
		-0.949152, -0.275451, -0.152435,
		30.687433, 29.817297, 28.768894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375546, 30.175312, 28.130358>,  <31.351841, 30.010113, 28.875599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375546, 30.175312, 28.130358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995316, 30.113052, 28.237823>,  <30.767178, 30.075697, 28.302303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995316, 30.113052, 28.237823>,  <31.375546, 30.175312, 28.130358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995316, 30.113052, 28.237823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288639, 0.761861, -0.579875,
		-0.114429, -0.628762, -0.769132,
		-0.950575, -0.155647, 0.268665,
		30.710142, 30.066359, 28.318422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073353, 30.219606, 27.582468>,  <31.375546, 30.175312, 28.130358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073353, 30.219606, 27.582468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792622, 30.296776, 27.856758>,  <30.624184, 30.343077, 28.021332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792622, 30.296776, 27.856758>,  <31.073353, 30.219606, 27.582468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792622, 30.296776, 27.856758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378235, 0.714800, -0.588217,
		-0.603637, -0.672192, -0.428696,
		-0.701827, 0.192922, 0.685726,
		30.582073, 30.354652, 28.062475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384623, 30.203833, 27.182684>,  <31.073353, 30.219606, 27.582468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384623, 30.203833, 27.182684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336489, 30.401917, 27.526844>,  <30.307608, 30.520767, 27.733339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336489, 30.401917, 27.526844>,  <30.384623, 30.203833, 27.182684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336489, 30.401917, 27.526844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472478, 0.733672, -0.488353,
		-0.873088, -0.465287, 0.145688,
		-0.120337, 0.495210, 0.860399,
		30.300388, 30.550480, 27.784964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864964, 30.638575, 27.088669>,  <30.384623, 30.203833, 27.182684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864964, 30.638575, 27.088669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004602, 30.813583, 27.420139>,  <30.088387, 30.918589, 27.619022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004602, 30.813583, 27.420139>,  <29.864964, 30.638575, 27.088669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004602, 30.813583, 27.420139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287126, 0.891720, -0.349849,
		-0.892014, -0.115802, 0.436923,
		0.349099, 0.437522, 0.828676,
		30.109333, 30.944839, 27.668741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341766, 31.072025, 27.187836>,  <29.864964, 30.638575, 27.088669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341766, 31.072025, 27.187836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635050, 31.222893, 27.414162>,  <29.811020, 31.313414, 27.549957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635050, 31.222893, 27.414162>,  <29.341766, 31.072025, 27.187836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635050, 31.222893, 27.414162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334540, 0.924492, -0.182748,
		-0.592019, -0.055296, 0.804024,
		0.733209, 0.377169, 0.565816,
		29.855013, 31.336044, 27.583906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915243, 31.412880, 27.681177>,  <29.341766, 31.072025, 27.187836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915243, 31.412880, 27.681177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280750, 31.564156, 27.621853>,  <29.500055, 31.654921, 27.586258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280750, 31.564156, 27.621853>,  <28.915243, 31.412880, 27.681177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280750, 31.564156, 27.621853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404663, 0.815357, -0.414054,
		-0.035663, 0.438367, 0.898088,
		0.913770, 0.378190, -0.148313,
		29.554882, 31.677612, 27.577358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894667, 32.143002, 27.884203>,  <28.915243, 31.412880, 27.681177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894667, 32.143002, 27.884203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239641, 32.160004, 27.682449>,  <29.446625, 32.170204, 27.561398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239641, 32.160004, 27.682449>,  <28.894667, 32.143002, 27.884203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239641, 32.160004, 27.682449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284783, 0.864536, -0.414096,
		0.418456, 0.500770, 0.757710,
		0.862434, 0.042502, -0.504382,
		29.498371, 32.172752, 27.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259401, 32.883099, 27.982937>,  <28.894667, 32.143002, 27.884203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259401, 32.883099, 27.982937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364685, 32.700687, 27.642876>,  <29.427856, 32.591240, 27.438839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364685, 32.700687, 27.642876>,  <29.259401, 32.883099, 27.982937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364685, 32.700687, 27.642876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141931, 0.853332, -0.501678,
		0.954241, 0.252710, 0.159880,
		0.263210, -0.456030, -0.850151,
		29.443647, 32.563877, 27.387831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836157, 33.244858, 27.620466>,  <29.259401, 32.883099, 27.982937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836157, 33.244858, 27.620466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676140, 33.056377, 27.306030>,  <29.580130, 32.943287, 27.117369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676140, 33.056377, 27.306030>,  <29.836157, 33.244858, 27.620466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676140, 33.056377, 27.306030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090598, 0.873839, -0.477700,
		0.912009, -0.119880, -0.392259,
		-0.400038, -0.471205, -0.786089,
		29.556128, 32.915016, 27.070204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174967, 33.424755, 26.953276>,  <29.836157, 33.244858, 27.620466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174967, 33.424755, 26.953276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814871, 33.298370, 26.833454>,  <29.598812, 33.222538, 26.761560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814871, 33.298370, 26.833454>,  <30.174967, 33.424755, 26.953276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814871, 33.298370, 26.833454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147975, 0.869096, -0.471990,
		0.409473, -0.380578, -0.829151,
		-0.900242, -0.315961, -0.299555,
		29.544798, 33.203583, 26.743587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105000, 33.763630, 26.246092>,  <30.174967, 33.424755, 26.953276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105000, 33.763630, 26.246092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731575, 33.635742, 26.310890>,  <29.507521, 33.559010, 26.349770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731575, 33.635742, 26.310890>,  <30.105000, 33.763630, 26.246092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731575, 33.635742, 26.310890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353244, 0.744194, -0.566916,
		0.060701, -0.586474, -0.807690,
		-0.933560, -0.319724, 0.161996,
		29.451508, 33.539825, 26.359489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858927, 33.810230, 25.573214>,  <30.105000, 33.763630, 26.246092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858927, 33.810230, 25.573214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536377, 33.784435, 25.808365>,  <29.342846, 33.768959, 25.949455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536377, 33.784435, 25.808365>,  <29.858927, 33.810230, 25.573214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536377, 33.784435, 25.808365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533354, 0.508785, -0.675775,
		-0.255524, -0.858475, -0.444667,
		-0.806376, -0.064488, 0.587877,
		29.294464, 33.765087, 25.984728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417433, 33.487411, 25.141531>,  <29.858927, 33.810230, 25.573214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417433, 33.487411, 25.141531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196667, 33.668648, 25.421558>,  <29.064207, 33.777390, 25.589575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196667, 33.668648, 25.421558>,  <29.417433, 33.487411, 25.141531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196667, 33.668648, 25.421558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459473, 0.535347, -0.708723,
		-0.695897, -0.712818, -0.087282,
		-0.551916, 0.453094, 0.700067,
		29.031092, 33.804577, 25.631578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683014, 33.402828, 24.944035>,  <29.417433, 33.487411, 25.141531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683014, 33.402828, 24.944035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703959, 33.732037, 25.170269>,  <28.716526, 33.929562, 25.306009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703959, 33.732037, 25.170269>,  <28.683014, 33.402828, 24.944035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703959, 33.732037, 25.170269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472213, 0.519450, -0.712171,
		-0.879928, -0.229786, 0.415843,
		0.052363, 0.823025, 0.565586,
		28.719667, 33.978943, 25.339945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053827, 33.587288, 24.873722>,  <28.683014, 33.402828, 24.944035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053827, 33.587288, 24.873722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251215, 33.911499, 24.999924>,  <28.369648, 34.106026, 25.075644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251215, 33.911499, 24.999924>,  <28.053827, 33.587288, 24.873722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251215, 33.911499, 24.999924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495740, 0.560160, -0.663673,
		-0.714655, 0.171094, 0.678230,
		0.493468, 0.810523, 0.315503,
		28.399256, 34.154655, 25.094574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521139, 34.030842, 24.867977>,  <28.053827, 33.587288, 24.873722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521139, 34.030842, 24.867977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851603, 34.255505, 24.885880>,  <28.049881, 34.390301, 24.896620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851603, 34.255505, 24.885880>,  <27.521139, 34.030842, 24.867977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851603, 34.255505, 24.885880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401931, 0.643149, -0.651774,
		-0.394856, 0.520482, 0.757091,
		0.826160, 0.561656, 0.044754,
		28.099451, 34.424000, 24.899305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376930, 34.747742, 24.973845>,  <27.521139, 34.030842, 24.867977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376930, 34.747742, 24.973845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744926, 34.786667, 24.821980>,  <27.965725, 34.810024, 24.730860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744926, 34.786667, 24.821980>,  <27.376930, 34.747742, 24.973845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744926, 34.786667, 24.821980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357869, 0.603591, -0.712466,
		0.159828, 0.791333, 0.590125,
		0.919992, 0.097315, -0.379664,
		28.020924, 34.815861, 24.708080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368580, 35.400410, 24.758312>,  <27.376930, 34.747742, 24.973845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368580, 35.400410, 24.758312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659533, 35.226337, 24.546074>,  <27.834103, 35.121895, 24.418730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659533, 35.226337, 24.546074>,  <27.368580, 35.400410, 24.758312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659533, 35.226337, 24.546074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429790, 0.313875, -0.846618,
		0.534976, 0.843859, 0.041269,
		0.727379, -0.435184, -0.530598,
		27.877747, 35.095783, 24.386894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654121, 35.929977, 24.289717>,  <27.368580, 35.400410, 24.758312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654121, 35.929977, 24.289717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769503, 35.589153, 24.114998>,  <27.838732, 35.384659, 24.010166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769503, 35.589153, 24.114998>,  <27.654121, 35.929977, 24.289717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769503, 35.589153, 24.114998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384025, 0.314940, -0.867951,
		0.877108, 0.418107, -0.236364,
		0.288455, -0.852056, -0.436799,
		27.856039, 35.333538, 23.983957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859770, 36.088493, 23.606468>,  <27.654121, 35.929977, 24.289717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859770, 36.088493, 23.606468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758198, 35.702110, 23.626278>,  <27.697254, 35.470280, 23.638165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758198, 35.702110, 23.626278>,  <27.859770, 36.088493, 23.606468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758198, 35.702110, 23.626278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559317, 0.104874, -0.822293,
		0.789103, -0.236505, -0.566905,
		-0.253930, -0.965954, 0.049525,
		27.682018, 35.412323, 23.641136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215014, 35.656200, 23.766506>,  <27.859770, 36.088493, 23.606468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215014, 35.656200, 23.766506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833515, 35.760628, 23.826122>,  <26.604616, 35.823284, 23.861893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833515, 35.760628, 23.826122>,  <27.215014, 35.656200, 23.766506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833515, 35.760628, 23.826122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281085, -0.598655, -0.750069,
		-0.106599, -0.757267, 0.644347,
		-0.953745, 0.261072, 0.149040,
		26.547392, 35.838951, 23.870834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931889, 35.089180, 23.447250>,  <27.215014, 35.656200, 23.766506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931889, 35.089180, 23.447250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614668, 35.269325, 23.611320>,  <26.424335, 35.377411, 23.709763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614668, 35.269325, 23.611320>,  <26.931889, 35.089180, 23.447250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614668, 35.269325, 23.611320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609124, -0.593252, -0.526326,
		0.006299, -0.667251, 0.744806,
		-0.793050, 0.450364, 0.410175,
		26.376753, 35.404434, 23.734373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584942, 34.548050, 23.739376>,  <26.931889, 35.089180, 23.447250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584942, 34.548050, 23.739376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334238, 34.843700, 23.640694>,  <26.183817, 35.021091, 23.581484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334238, 34.843700, 23.640694>,  <26.584942, 34.548050, 23.739376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334238, 34.843700, 23.640694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585899, -0.655752, -0.476143,
		-0.513709, -0.153881, 0.844052,
		-0.626758, 0.739128, -0.246707,
		26.146210, 35.065437, 23.566681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849533, 34.347031, 23.952696>,  <26.584942, 34.548050, 23.739376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849533, 34.347031, 23.952696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873943, 34.604660, 23.647686>,  <25.888590, 34.759239, 23.464680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873943, 34.604660, 23.647686>,  <25.849533, 34.347031, 23.952696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873943, 34.604660, 23.647686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654935, -0.550655, -0.517532,
		-0.753217, 0.530986, 0.388223,
		0.061026, 0.644075, -0.762524,
		25.892252, 34.797882, 23.418928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132227, 34.566692, 23.805468>,  <25.849533, 34.347031, 23.952696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132227, 34.566692, 23.805468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279087, 34.587387, 23.433979>,  <25.367203, 34.599804, 23.211086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279087, 34.587387, 23.433979>,  <25.132227, 34.566692, 23.805468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279087, 34.587387, 23.433979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800201, -0.491462, -0.343722,
		-0.474215, 0.869361, -0.139039,
		0.367151, 0.051739, -0.928721,
		25.389233, 34.602909, 23.155363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.564987, 34.860001, 23.251770>,  <25.132227, 34.566692, 23.805468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.564987, 34.860001, 23.251770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825111, 34.622875, 23.061749>,  <24.981186, 34.480602, 22.947737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825111, 34.622875, 23.061749>,  <24.564987, 34.860001, 23.251770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825111, 34.622875, 23.061749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725121, -0.297950, -0.620826,
		0.226489, 0.748200, -0.623618,
		0.650310, -0.592809, -0.475053,
		25.020205, 34.445034, 22.919233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781534, 35.456108, 23.625923>,  <24.564987, 34.860001, 23.251770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781534, 35.456108, 23.625923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418900, 35.477245, 23.458443>,  <24.201319, 35.489925, 23.357954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418900, 35.477245, 23.458443>,  <24.781534, 35.456108, 23.625923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.418900, 35.477245, 23.458443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130647, 0.978532, -0.159392,
		0.401292, -0.199204, -0.894026,
		-0.906585, 0.052839, -0.418702,
		24.146925, 35.493095, 23.332832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831799, 35.726479, 22.963852>,  <24.781534, 35.456108, 23.625923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831799, 35.726479, 22.963852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467783, 35.807217, 23.108677>,  <24.249374, 35.855659, 23.195572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467783, 35.807217, 23.108677>,  <24.831799, 35.726479, 22.963852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.467783, 35.807217, 23.108677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099803, 0.954436, -0.281230,
		-0.402333, -0.219795, -0.888717,
		-0.910037, 0.201845, 0.362065,
		24.194773, 35.867771, 23.217297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508791, 36.202644, 22.551819>,  <24.831799, 35.726479, 22.963852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508791, 36.202644, 22.551819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279037, 36.258186, 22.874508>,  <24.141186, 36.291512, 23.068121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279037, 36.258186, 22.874508>,  <24.508791, 36.202644, 22.551819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279037, 36.258186, 22.874508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007102, 0.984626, -0.174530,
		-0.818555, -0.105977, -0.564568,
		-0.574384, 0.138853, 0.806723,
		24.106722, 36.299843, 23.116526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016367, 36.659126, 22.327971>,  <24.508791, 36.202644, 22.551819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016367, 36.659126, 22.327971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.968889, 36.708321, 22.722084>,  <23.940403, 36.737839, 22.958553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.968889, 36.708321, 22.722084>,  <24.016367, 36.659126, 22.327971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.968889, 36.708321, 22.722084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089374, 0.986948, -0.133963,
		-0.988901, -0.103959, -0.106152,
		-0.118693, 0.122989, 0.985285,
		23.933281, 36.745216, 23.017670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.595648, 37.296406, 22.359489>,  <24.016367, 36.659126, 22.327971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.595648, 37.296406, 22.359489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.755173, 37.226082, 22.719498>,  <23.850887, 37.183887, 22.935503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.755173, 37.226082, 22.719498>,  <23.595648, 37.296406, 22.359489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.755173, 37.226082, 22.719498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068423, 0.984420, 0.161976,
		-0.914477, -0.003015, 0.404627,
		0.398811, -0.175809, 0.900023,
		23.874817, 37.173340, 22.989504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.221306, 37.813217, 22.875530>,  <23.595648, 37.296406, 22.359489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.221306, 37.813217, 22.875530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.584925, 37.707863, 23.004684>,  <23.803097, 37.644650, 23.082178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.584925, 37.707863, 23.004684>,  <23.221306, 37.813217, 22.875530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.584925, 37.707863, 23.004684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302081, 0.950305, -0.075275,
		-0.287015, 0.165967, 0.943439,
		0.909048, -0.263390, 0.322888,
		23.857639, 37.628845, 23.101551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.369061, 38.412430, 23.446651>,  <23.221306, 37.813217, 22.875530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.369061, 38.412430, 23.446651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.708200, 38.248055, 23.312618>,  <23.911684, 38.149429, 23.232199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.708200, 38.248055, 23.312618>,  <23.369061, 38.412430, 23.446651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.708200, 38.248055, 23.312618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383705, 0.911655, -0.147159,
		0.365954, -0.003805, 0.930625,
		0.847849, -0.410939, -0.335084,
		23.962555, 38.124771, 23.212093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.882586, 38.651756, 23.923700>,  <23.369061, 38.412430, 23.446651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.882586, 38.651756, 23.923700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.108835, 38.521843, 23.620495>,  <24.244585, 38.443893, 23.438572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.108835, 38.521843, 23.620495>,  <23.882586, 38.651756, 23.923700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.108835, 38.521843, 23.620495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402289, 0.911061, -0.090176,
		0.719883, -0.253934, 0.645977,
		0.565625, -0.324785, -0.758012,
		24.278522, 38.424408, 23.393091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529005, 38.989822, 24.041582>,  <23.882586, 38.651756, 23.923700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529005, 38.989822, 24.041582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.535826, 38.871014, 23.659695>,  <24.539919, 38.799728, 23.430563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.535826, 38.871014, 23.659695>,  <24.529005, 38.989822, 24.041582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.535826, 38.871014, 23.659695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599851, 0.766969, -0.227899,
		0.799930, -0.568802, 0.191248,
		0.017052, -0.297024, -0.954718,
		24.540941, 38.781906, 23.373280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204082, 38.982262, 23.838926>,  <24.529005, 38.989822, 24.041582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204082, 38.982262, 23.838926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010595, 38.998692, 23.489223>,  <24.894503, 39.008549, 23.279402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010595, 38.998692, 23.489223>,  <25.204082, 38.982262, 23.838926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.010595, 38.998692, 23.489223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667247, 0.663731, -0.337998,
		0.566390, -0.746843, -0.348465,
		-0.483719, 0.041074, -0.874259,
		24.865480, 39.011013, 23.226946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788166, 39.062202, 23.390270>,  <25.204082, 38.982262, 23.838926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788166, 39.062202, 23.390270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464367, 39.175976, 23.184818>,  <25.270088, 39.244240, 23.061546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464367, 39.175976, 23.184818>,  <25.788166, 39.062202, 23.390270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464367, 39.175976, 23.184818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536254, 0.714373, -0.449558,
		0.239056, -0.639352, -0.730808,
		-0.809496, 0.284429, -0.513631,
		25.221518, 39.261303, 23.030729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839006, 39.023285, 22.553818>,  <25.788166, 39.062202, 23.390270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839006, 39.023285, 22.553818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571533, 39.311005, 22.629162>,  <25.411049, 39.483635, 22.674368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571533, 39.311005, 22.629162>,  <25.839006, 39.023285, 22.553818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571533, 39.311005, 22.629162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466675, 0.603213, -0.646799,
		-0.578861, -0.344599, -0.739034,
		-0.668681, 0.719295, 0.188360,
		25.370930, 39.526794, 22.685669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489946, 39.311485, 21.895348>,  <25.839006, 39.023285, 22.553818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489946, 39.311485, 21.895348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431625, 39.591587, 22.174885>,  <25.396633, 39.759647, 22.342607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431625, 39.591587, 22.174885>,  <25.489946, 39.311485, 21.895348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431625, 39.591587, 22.174885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398409, 0.688141, -0.606409,
		-0.905545, 0.190011, -0.379321,
		-0.145802, 0.700256, 0.698845,
		25.387884, 39.801662, 22.384539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446157, 39.931152, 21.535879>,  <25.489946, 39.311485, 21.895348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446157, 39.931152, 21.535879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446861, 40.091805, 21.902199>,  <25.447283, 40.188194, 22.121990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446861, 40.091805, 21.902199>,  <25.446157, 39.931152, 21.535879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446861, 40.091805, 21.902199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304880, 0.871986, -0.382999,
		-0.952389, 0.279884, -0.120914,
		0.001760, 0.401628, 0.915801,
		25.447390, 40.212292, 22.176939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.961016, 40.470528, 21.540354>,  <25.446157, 39.931152, 21.535879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.961016, 40.470528, 21.540354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266663, 40.516399, 21.794273>,  <25.450050, 40.543922, 21.946625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266663, 40.516399, 21.794273>,  <24.961016, 40.470528, 21.540354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.266663, 40.516399, 21.794273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287326, 0.820558, -0.494094,
		-0.577551, 0.559941, 0.594054,
		0.764119, 0.114677, 0.634800,
		25.495899, 40.550804, 21.984713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902645, 41.136230, 21.637564>,  <24.961016, 40.470528, 21.540354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902645, 41.136230, 21.637564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275364, 41.053352, 21.756779>,  <25.498995, 41.003624, 21.828308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275364, 41.053352, 21.756779>,  <24.902645, 41.136230, 21.637564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275364, 41.053352, 21.756779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340582, 0.783039, -0.520437,
		-0.125543, 0.586447, 0.800199,
		0.931796, -0.207196, 0.298038,
		25.554903, 40.991192, 21.846189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155668, 41.756947, 21.669489>,  <24.902645, 41.136230, 21.637564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155668, 41.756947, 21.669489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489527, 41.536789, 21.661129>,  <25.689842, 41.404694, 21.656113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489527, 41.536789, 21.661129>,  <25.155668, 41.756947, 21.669489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489527, 41.536789, 21.661129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452150, 0.706348, -0.544640,
		0.314526, 0.445133, 0.838409,
		0.834646, -0.550391, -0.020898,
		25.739920, 41.371674, 21.654860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674286, 42.250031, 21.772045>,  <25.155668, 41.756947, 21.669489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674286, 42.250031, 21.772045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859138, 41.931999, 21.614933>,  <25.970051, 41.741180, 21.520666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859138, 41.931999, 21.614933>,  <25.674286, 42.250031, 21.772045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859138, 41.931999, 21.614933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551737, 0.604533, -0.574566,
		0.694276, 0.048815, 0.718052,
		0.462134, -0.795083, -0.392779,
		25.997778, 41.693474, 21.497099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407703, 42.395725, 21.664881>,  <25.674286, 42.250031, 21.772045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407703, 42.395725, 21.664881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349617, 42.090290, 21.413216>,  <26.314766, 41.907028, 21.262217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349617, 42.090290, 21.413216>,  <26.407703, 42.395725, 21.664881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349617, 42.090290, 21.413216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502634, 0.490797, -0.711672,
		0.852215, -0.419585, 0.312534,
		-0.145216, -0.763588, -0.629162,
		26.306053, 41.861214, 21.224466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036860, 42.379009, 21.333044>,  <26.407703, 42.395725, 21.664881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036860, 42.379009, 21.333044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778574, 42.171387, 21.109032>,  <26.623604, 42.046814, 20.974625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778574, 42.171387, 21.109032>,  <27.036860, 42.379009, 21.333044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778574, 42.171387, 21.109032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421118, 0.369727, -0.828228,
		0.636958, -0.770635, -0.020151,
		-0.645712, -0.519061, -0.560029,
		26.584860, 42.015667, 20.941023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419449, 42.001797, 20.807045>,  <27.036860, 42.379009, 21.333044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419449, 42.001797, 20.807045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042517, 42.087982, 20.704605>,  <26.816357, 42.139694, 20.643141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042517, 42.087982, 20.704605>,  <27.419449, 42.001797, 20.807045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042517, 42.087982, 20.704605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320061, 0.356475, -0.877773,
		-0.097831, -0.909122, -0.404878,
		-0.942332, 0.215459, -0.256101,
		26.759817, 42.152618, 20.627775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216728, 41.846722, 20.126316>,  <27.419449, 42.001797, 20.807045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216728, 41.846722, 20.126316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944502, 42.132294, 20.192196>,  <26.781166, 42.303638, 20.231724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944502, 42.132294, 20.192196>,  <27.216728, 41.846722, 20.126316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944502, 42.132294, 20.192196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053039, 0.272205, -0.960776,
		-0.730764, -0.645137, -0.223120,
		-0.680567, 0.713935, 0.164700,
		26.740332, 42.346474, 20.241606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775944, 41.750950, 19.533289>,  <27.216728, 41.846722, 20.126316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775944, 41.750950, 19.533289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706203, 42.123638, 19.660728>,  <26.664358, 42.347252, 19.737192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706203, 42.123638, 19.660728>,  <26.775944, 41.750950, 19.533289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706203, 42.123638, 19.660728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057311, 0.332606, -0.941323,
		-0.983014, -0.145863, -0.111389,
		-0.174353, 0.931717, 0.318597,
		26.653898, 42.403152, 19.756308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407524, 41.933540, 18.962503>,  <26.775944, 41.750950, 19.533289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407524, 41.933540, 18.962503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533047, 42.241463, 19.184826>,  <26.608360, 42.426216, 19.318220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533047, 42.241463, 19.184826>,  <26.407524, 41.933540, 18.962503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533047, 42.241463, 19.184826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410275, 0.417970, -0.810540,
		-0.856271, 0.482385, -0.184673,
		0.313805, 0.769809, 0.555806,
		26.627188, 42.472404, 19.351568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258766, 42.571419, 18.529085>,  <26.407524, 41.933540, 18.962503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258766, 42.571419, 18.529085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530495, 42.621540, 18.818310>,  <26.693533, 42.651611, 18.991844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530495, 42.621540, 18.818310>,  <26.258766, 42.571419, 18.529085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530495, 42.621540, 18.818310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507594, 0.631352, -0.586296,
		-0.529971, 0.765307, 0.365289,
		0.679323, 0.125301, 0.723063,
		26.734291, 42.659130, 19.035229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390081, 41.906658, 18.018291>,  <26.258766, 42.571419, 18.529085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390081, 41.906658, 18.018291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354740, 41.559147, 17.823387>,  <26.333536, 41.350639, 17.706444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354740, 41.559147, 17.823387>,  <26.390081, 41.906658, 18.018291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354740, 41.559147, 17.823387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386357, -0.480767, 0.787141,
		-0.918108, -0.118710, 0.378135,
		-0.088353, -0.868776, -0.487260,
		26.328234, 41.298515, 17.677210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190552, 41.297504, 18.553551>,  <26.390081, 41.906658, 18.018291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190552, 41.297504, 18.553551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405676, 41.173206, 18.240067>,  <26.534750, 41.098629, 18.051977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405676, 41.173206, 18.240067>,  <26.190552, 41.297504, 18.553551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405676, 41.173206, 18.240067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607203, -0.502120, 0.615776,
		-0.584864, -0.807041, -0.081360,
		0.537809, -0.310744, -0.783709,
		26.567019, 41.079983, 18.004953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358517, 40.448185, 18.418255>,  <26.190552, 41.297504, 18.553551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358517, 40.448185, 18.418255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663210, 40.688046, 18.320126>,  <26.846025, 40.831963, 18.261248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663210, 40.688046, 18.320126>,  <26.358517, 40.448185, 18.418255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663210, 40.688046, 18.320126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623403, -0.575253, 0.529578,
		0.176439, -0.556331, -0.812013,
		0.761734, 0.599649, -0.245321,
		26.891729, 40.867939, 18.246529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873886, 40.054096, 17.984146>,  <26.358517, 40.448185, 18.418255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873886, 40.054096, 17.984146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011007, 40.335342, 18.233341>,  <27.093281, 40.504089, 18.382858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011007, 40.335342, 18.233341>,  <26.873886, 40.054096, 17.984146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011007, 40.335342, 18.233341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577710, -0.680731, 0.450396,
		0.740768, 0.205510, -0.639553,
		0.342803, 0.703116, 0.622989,
		27.113848, 40.546276, 18.420238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888138, 40.115963, 17.227724>,  <26.873886, 40.054096, 17.984146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888138, 40.115963, 17.227724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688398, 39.846527, 17.009758>,  <26.568556, 39.684864, 16.878979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688398, 39.846527, 17.009758>,  <26.888138, 40.115963, 17.227724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688398, 39.846527, 17.009758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679351, -0.085930, 0.728765,
		-0.537712, 0.734095, -0.414694,
		-0.499348, -0.673588, -0.544914,
		26.538593, 39.644451, 16.846285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088833, 40.174614, 17.059778>,  <26.888138, 40.115963, 17.227724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088833, 40.174614, 17.059778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172207, 39.783756, 17.076469>,  <26.222231, 39.549240, 17.086485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172207, 39.783756, 17.076469>,  <26.088833, 40.174614, 17.059778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172207, 39.783756, 17.076469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792955, -0.143862, 0.592052,
		-0.572517, -0.156495, -0.804819,
		0.208436, -0.977145, 0.041730,
		26.234737, 39.490612, 17.088989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500124, 39.782673, 16.940754>,  <26.088833, 40.174614, 17.059778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500124, 39.782673, 16.940754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754238, 39.525631, 17.112087>,  <25.906708, 39.371407, 17.214888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754238, 39.525631, 17.112087>,  <25.500124, 39.782673, 16.940754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754238, 39.525631, 17.112087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696049, -0.236169, 0.678042,
		-0.334556, -0.728890, -0.597320,
		0.635286, -0.642607, 0.428331,
		25.944824, 39.332851, 17.240587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206701, 39.137825, 17.155273>,  <25.500124, 39.782673, 16.940754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206701, 39.137825, 17.155273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502945, 39.147972, 17.423855>,  <25.680691, 39.154060, 17.585005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502945, 39.147972, 17.423855>,  <25.206701, 39.137825, 17.155273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502945, 39.147972, 17.423855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616873, -0.370501, 0.694404,
		0.266389, -0.928486, -0.258749,
		0.740610, 0.025367, 0.671455,
		25.725128, 39.155582, 17.625292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268072, 38.424866, 17.520687>,  <25.206701, 39.137825, 17.155273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268072, 38.424866, 17.520687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427507, 38.699577, 17.763821>,  <25.523169, 38.864403, 17.909700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427507, 38.699577, 17.763821>,  <25.268072, 38.424866, 17.520687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427507, 38.699577, 17.763821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707838, -0.191063, 0.680044,
		0.583175, -0.701305, 0.409974,
		0.398587, 0.686780, 0.607834,
		25.547083, 38.905613, 17.946171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200661, 38.134399, 18.084770>,  <25.268072, 38.424866, 17.520687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200661, 38.134399, 18.084770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285799, 38.497383, 18.229664>,  <25.336882, 38.715172, 18.316601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285799, 38.497383, 18.229664>,  <25.200661, 38.134399, 18.084770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.285799, 38.497383, 18.229664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638149, -0.151633, 0.754833,
		0.739907, -0.391824, 0.546820,
		0.212845, 0.907459, 0.362236,
		25.349653, 38.769619, 18.338335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294649, 38.076069, 18.749338>,  <25.200661, 38.134399, 18.084770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294649, 38.076069, 18.749338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178471, 38.454082, 18.689274>,  <25.108765, 38.680893, 18.653234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178471, 38.454082, 18.689274>,  <25.294649, 38.076069, 18.749338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178471, 38.454082, 18.689274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654824, -0.081867, 0.751335,
		0.697745, 0.316551, 0.642610,
		-0.290444, 0.945036, -0.150163,
		25.091337, 38.737595, 18.644224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326111, 38.386848, 19.421480>,  <25.294649, 38.076069, 18.749338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326111, 38.386848, 19.421480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075125, 38.609985, 19.204189>,  <24.924534, 38.743870, 19.073814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075125, 38.609985, 19.204189>,  <25.326111, 38.386848, 19.421480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075125, 38.609985, 19.204189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644056, 0.020240, 0.764711,
		0.437585, 0.829698, 0.346584,
		-0.627464, 0.557845, -0.543228,
		24.886885, 38.777340, 19.041222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181639, 38.839443, 19.901363>,  <25.326111, 38.386848, 19.421480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181639, 38.839443, 19.901363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894821, 38.865253, 19.623749>,  <24.722731, 38.880741, 19.457180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894821, 38.865253, 19.623749>,  <25.181639, 38.839443, 19.901363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894821, 38.865253, 19.623749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696812, -0.041578, 0.716048,
		0.017349, 0.997049, 0.074777,
		-0.717044, 0.064528, -0.694034,
		24.679708, 38.884613, 19.415539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709354, 39.237648, 20.178410>,  <25.181639, 38.839443, 19.901363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709354, 39.237648, 20.178410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508804, 39.013145, 19.915012>,  <24.388475, 38.878445, 19.756973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508804, 39.013145, 19.915012>,  <24.709354, 39.237648, 20.178410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.508804, 39.013145, 19.915012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723393, -0.145620, 0.674905,
		-0.474686, 0.814729, -0.333001,
		-0.501374, -0.561259, -0.658493,
		24.358393, 38.844769, 19.717464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.021332, 39.416790, 20.242968>,  <24.709354, 39.237648, 20.178410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.021332, 39.416790, 20.242968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.974812, 39.060589, 20.067024>,  <23.946899, 38.846867, 19.961458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.974812, 39.060589, 20.067024>,  <24.021332, 39.416790, 20.242968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.974812, 39.060589, 20.067024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746105, -0.213991, 0.630505,
		-0.655593, 0.401511, -0.639521,
		-0.116303, -0.890504, -0.439860,
		23.939920, 38.793438, 19.935066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.298985, 39.206474, 20.348148>,  <24.021332, 39.416790, 20.242968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.298985, 39.206474, 20.348148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.473997, 38.862839, 20.241913>,  <23.579004, 38.656658, 20.178171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.473997, 38.862839, 20.241913>,  <23.298985, 39.206474, 20.348148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.473997, 38.862839, 20.241913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615773, -0.501495, 0.607722,
		-0.655277, -0.102355, -0.748422,
		0.437533, -0.859085, -0.265590,
		23.605257, 38.605114, 20.162235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.798050, 38.763466, 20.118586>,  <23.298985, 39.206474, 20.348148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.798050, 38.763466, 20.118586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.102070, 38.538315, 20.248501>,  <23.284483, 38.403225, 20.326450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.102070, 38.538315, 20.248501>,  <22.798050, 38.763466, 20.118586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.102070, 38.538315, 20.248501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590140, -0.388535, 0.707655,
		-0.272131, -0.729526, -0.627484,
		0.760052, -0.562878, 0.324790,
		23.330086, 38.369450, 20.345938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.480999, 38.305096, 20.430094>,  <22.798050, 38.763466, 20.118586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.480999, 38.305096, 20.430094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.843185, 38.198990, 20.562618>,  <23.060497, 38.135326, 20.642134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.843185, 38.198990, 20.562618>,  <22.480999, 38.305096, 20.430094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.843185, 38.198990, 20.562618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421383, -0.655077, 0.627145,
		0.050677, -0.707468, -0.704926,
		0.905466, -0.265262, 0.331312,
		23.114824, 38.119411, 20.662012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.492123, 37.609726, 20.517208>,  <22.480999, 38.305096, 20.430094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.492123, 37.609726, 20.517208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.775276, 37.738430, 20.768723>,  <22.945168, 37.815651, 20.919632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.775276, 37.738430, 20.768723>,  <22.492123, 37.609726, 20.517208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.775276, 37.738430, 20.768723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276564, -0.692876, 0.665910,
		0.649933, -0.645286, -0.401488,
		0.707884, 0.321759, 0.628786,
		22.987640, 37.834957, 20.957357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.805685, 36.990978, 20.784851>,  <22.492123, 37.609726, 20.517208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.805685, 36.990978, 20.784851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.947151, 37.255199, 21.049755>,  <23.032030, 37.413731, 21.208698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.947151, 37.255199, 21.049755>,  <22.805685, 36.990978, 20.784851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.947151, 37.255199, 21.049755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462283, -0.492071, 0.737672,
		0.813151, -0.567042, 0.131333,
		0.353666, 0.660552, 0.662262,
		23.053251, 37.453365, 21.248434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.150700, 36.609154, 21.252422>,  <22.805685, 36.990978, 20.784851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.150700, 36.609154, 21.252422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.043528, 36.953423, 21.425610>,  <22.979225, 37.159985, 21.529522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.043528, 36.953423, 21.425610>,  <23.150700, 36.609154, 21.252422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.043528, 36.953423, 21.425610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331368, -0.504304, 0.797416,
		0.904660, 0.070179, 0.420316,
		-0.267929, 0.860670, 0.432968,
		22.963148, 37.211624, 21.555500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.236982, 36.557098, 21.935114>,  <23.150700, 36.609154, 21.252422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.236982, 36.557098, 21.935114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971783, 36.854557, 21.900661>,  <22.812664, 37.033031, 21.879990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971783, 36.854557, 21.900661>,  <23.236982, 36.557098, 21.935114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.971783, 36.854557, 21.900661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575809, -0.433038, 0.693485,
		0.478412, 0.509374, 0.715304,
		-0.662997, 0.743650, -0.086132,
		22.772884, 37.077652, 21.874823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.016275, 36.743462, 22.654663>,  <23.236982, 36.557098, 21.935114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.016275, 36.743462, 22.654663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.710014, 36.894741, 22.446529>,  <22.526258, 36.985508, 22.321650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.710014, 36.894741, 22.446529>,  <23.016275, 36.743462, 22.654663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.710014, 36.894741, 22.446529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636010, -0.324010, 0.700363,
		0.096280, 0.867171, 0.488614,
		-0.765651, 0.378195, -0.520334,
		22.480318, 37.008198, 22.290430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.672056, 37.070187, 23.188574>,  <23.016275, 36.743462, 22.654663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.672056, 37.070187, 23.188574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.426868, 37.036770, 22.874302>,  <22.279757, 37.016720, 22.685740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.426868, 37.036770, 22.874302>,  <22.672056, 37.070187, 23.188574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.426868, 37.036770, 22.874302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745613, -0.267832, 0.610187,
		-0.261404, 0.959837, 0.101885,
		-0.612968, -0.083538, -0.785679,
		22.242977, 37.011707, 22.638597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.005960, 37.437469, 23.254011>,  <22.672056, 37.070187, 23.188574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.005960, 37.437469, 23.254011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956989, 37.143528, 22.987179>,  <21.927607, 36.967163, 22.827080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956989, 37.143528, 22.987179>,  <22.005960, 37.437469, 23.254011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.956989, 37.143528, 22.987179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839480, -0.281866, 0.464570,
		-0.529420, 0.616880, -0.582387,
		-0.122429, -0.734855, -0.667083,
		21.920261, 36.923073, 22.787054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.268921, 37.525692, 23.093292>,  <22.005960, 37.437469, 23.254011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.268921, 37.525692, 23.093292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.364798, 37.148727, 22.999996>,  <21.422325, 36.922546, 22.944019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.364798, 37.148727, 22.999996>,  <21.268921, 37.525692, 23.093292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.364798, 37.148727, 22.999996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748093, -0.332413, 0.574333,
		-0.618792, 0.036821, -0.784691,
		0.239694, -0.942414, -0.233240,
		21.436707, 36.866001, 22.930023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.687962, 37.612442, 23.453711>,  <21.268921, 37.525692, 23.093292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.687962, 37.612442, 23.453711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.718828, 37.489761, 23.074242>,  <20.737349, 37.416153, 22.846560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.718828, 37.489761, 23.074242>,  <20.687962, 37.612442, 23.453711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.718828, 37.489761, 23.074242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993039, 0.108571, 0.045675,
		0.088990, -0.945593, 0.312945,
		0.077166, -0.306702, -0.948673,
		20.741978, 37.397751, 22.789640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.330561, 37.153965, 23.886454>,  <20.687962, 37.612442, 23.453711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.330561, 37.153965, 23.886454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.091997, 37.473701, 23.857182>,  <19.948858, 37.665543, 23.839619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.091997, 37.473701, 23.857182>,  <20.330561, 37.153965, 23.886454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.091997, 37.473701, 23.857182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595597, -0.501816, -0.627251,
		-0.538107, -0.330514, 0.775372,
		-0.596410, 0.799338, -0.073177,
		19.913074, 37.713501, 23.835228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859655, 36.735531, 23.578814>,  <20.330561, 37.153965, 23.886454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859655, 36.735531, 23.578814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.723944, 37.105446, 23.647705>,  <19.642517, 37.327393, 23.689039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.723944, 37.105446, 23.647705>,  <19.859655, 36.735531, 23.578814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.723944, 37.105446, 23.647705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888705, -0.255096, -0.380959,
		-0.308370, -0.282311, 0.908410,
		-0.339280, 0.924785, 0.172228,
		19.622160, 37.382881, 23.699373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.179775, 36.690956, 23.834763>,  <19.859655, 36.735531, 23.578814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.179775, 36.690956, 23.834763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.219744, 37.038422, 23.640675>,  <19.243725, 37.246902, 23.524221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.219744, 37.038422, 23.640675>,  <19.179775, 36.690956, 23.834763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.219744, 37.038422, 23.640675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875684, -0.154771, -0.457410,
		-0.472434, 0.470603, 0.745210,
		0.099922, 0.868665, -0.485219,
		19.249720, 37.299023, 23.495110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.564213, 37.089684, 23.775663>,  <19.179775, 36.690956, 23.834763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.564213, 37.089684, 23.775663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.769054, 37.273624, 23.485481>,  <18.891960, 37.383987, 23.311373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.769054, 37.273624, 23.485481>,  <18.564213, 37.089684, 23.775663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.769054, 37.273624, 23.485481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786708, -0.087866, -0.611040,
		-0.344732, 0.883637, 0.316774,
		0.512104, 0.459853, -0.725455,
		18.922686, 37.411579, 23.267845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228634, 37.703018, 23.492901>,  <18.564213, 37.089684, 23.775663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.228634, 37.703018, 23.492901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.431095, 37.460941, 23.247120>,  <18.552572, 37.315697, 23.099651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.431095, 37.460941, 23.247120>,  <18.228634, 37.703018, 23.492901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431095, 37.460941, 23.247120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817192, -0.108795, -0.566005,
		0.275692, 0.788610, -0.549626,
		0.506153, -0.605193, -0.614451,
		18.582941, 37.279385, 23.062784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.798504, 26.687460, 27.632231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.152573, 26.802856, 27.778244>,  <33.365013, 26.872093, 27.865852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.152573, 26.802856, 27.778244>,  <32.798504, 26.687460, 27.632231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152573, 26.802856, 27.778244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017910, 0.762853, -0.646324,
		-0.464922, 0.578645, 0.670088,
		0.885170, 0.288489, 0.365031,
		33.418125, 26.889402, 27.887753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754223, 27.374353, 27.794136>,  <32.798504, 26.687460, 27.632231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754223, 27.374353, 27.794136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.145775, 27.316475, 27.736362>,  <33.380707, 27.281748, 27.701698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.145775, 27.316475, 27.736362>,  <32.754223, 27.374353, 27.794136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145775, 27.316475, 27.736362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038411, 0.824047, -0.565217,
		0.200806, 0.547731, 0.812200,
		0.978878, -0.144696, -0.144435,
		33.439438, 27.273066, 27.693031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098522, 28.089888, 27.875275>,  <32.754223, 27.374353, 27.794136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098522, 28.089888, 27.875275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.347610, 27.851692, 27.672253>,  <33.497063, 27.708775, 27.550440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.347610, 27.851692, 27.672253>,  <33.098522, 28.089888, 27.875275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347610, 27.851692, 27.672253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141269, 0.723585, -0.675624,
		0.769585, 0.349025, 0.534716,
		0.622722, -0.595489, -0.507554,
		33.534428, 27.673046, 27.519987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672718, 28.485996, 27.684057>,  <33.098522, 28.089888, 27.875275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672718, 28.485996, 27.684057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.662888, 28.164639, 27.446083>,  <33.656990, 27.971823, 27.303299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.662888, 28.164639, 27.446083>,  <33.672718, 28.485996, 27.684057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662888, 28.164639, 27.446083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026511, 0.595431, -0.802969,
		0.999346, -0.003965, -0.035934,
		-0.024580, -0.803396, -0.594937,
		33.655514, 27.923620, 27.267601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392139, 28.520641, 27.311373>,  <33.672718, 28.485996, 27.684057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392139, 28.520641, 27.311373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.135792, 28.303665, 27.094101>,  <33.981983, 28.173479, 26.963737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.135792, 28.303665, 27.094101>,  <34.392139, 28.520641, 27.311373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135792, 28.303665, 27.094101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097447, 0.759353, -0.643340,
		0.761468, -0.359341, -0.539481,
		-0.640835, -0.542454, -0.543207,
		33.943531, 28.140934, 26.931147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607388, 28.424797, 26.657173>,  <34.392139, 28.520641, 27.311373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607388, 28.424797, 26.657173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214855, 28.359325, 26.616768>,  <33.979336, 28.320042, 26.592524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214855, 28.359325, 26.616768>,  <34.607388, 28.424797, 26.657173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214855, 28.359325, 26.616768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051395, 0.729234, -0.682332,
		0.185346, -0.664400, -0.724030,
		-0.981328, -0.163679, -0.101014,
		33.920456, 28.310221, 26.586464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477013, 28.404902, 26.009821>,  <34.607388, 28.424797, 26.657173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477013, 28.404902, 26.009821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.111725, 28.490349, 26.148613>,  <33.892551, 28.541618, 26.231888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.111725, 28.490349, 26.148613>,  <34.477013, 28.404902, 26.009821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111725, 28.490349, 26.148613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004536, 0.846172, -0.532890,
		-0.407440, -0.488220, -0.771773,
		-0.913221, 0.213620, 0.346980,
		33.837757, 28.554436, 26.252707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096794, 28.473116, 25.438805>,  <34.477013, 28.404902, 26.009821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096794, 28.473116, 25.438805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.910912, 28.675095, 25.729755>,  <33.799381, 28.796282, 25.904325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.910912, 28.675095, 25.729755>,  <34.096794, 28.473116, 25.438805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910912, 28.675095, 25.729755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266214, 0.703785, -0.658648,
		-0.844500, -0.499714, -0.192628,
		-0.464704, 0.504948, 0.727377,
		33.771500, 28.826578, 25.947969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672565, 28.937714, 24.884970>,  <34.096794, 28.473116, 25.438805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672565, 28.937714, 24.884970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.645134, 29.078304, 25.258442>,  <33.628674, 29.162659, 25.482525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.645134, 29.078304, 25.258442>,  <33.672565, 28.937714, 24.884970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645134, 29.078304, 25.258442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240063, 0.902571, -0.357400,
		-0.968332, -0.248653, 0.022477,
		-0.068582, 0.351478, 0.933681,
		33.624561, 29.183748, 25.538546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978382, 29.217167, 25.048012>,  <33.672565, 28.937714, 24.884970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978382, 29.217167, 25.048012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.235424, 29.407406, 25.288300>,  <33.389648, 29.521549, 25.432472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.235424, 29.407406, 25.288300>,  <32.978382, 29.217167, 25.048012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235424, 29.407406, 25.288300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351698, 0.879646, -0.320204,
		-0.680708, -0.005507, 0.732534,
		0.642608, 0.475596, 0.600719,
		33.428207, 29.550085, 25.468515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549854, 29.723419, 25.353161>,  <32.978382, 29.217167, 25.048012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549854, 29.723419, 25.353161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.922428, 29.862431, 25.396328>,  <33.145973, 29.945837, 25.422228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.922428, 29.862431, 25.396328>,  <32.549854, 29.723419, 25.353161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922428, 29.862431, 25.396328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317752, 0.921273, -0.224256,
		-0.177357, 0.174590, 0.968537,
		0.931439, 0.347528, 0.107918,
		33.201859, 29.966688, 25.428703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457771, 30.259224, 25.802992>,  <32.549854, 29.723419, 25.353161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457771, 30.259224, 25.802992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.821739, 30.322121, 25.649464>,  <33.040119, 30.359859, 25.557346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.821739, 30.322121, 25.649464>,  <32.457771, 30.259224, 25.802992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821739, 30.322121, 25.649464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246977, 0.948828, -0.196794,
		0.333237, 0.273863, 0.902193,
		0.909920, 0.157242, -0.383823,
		33.094715, 30.369293, 25.534317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676632, 30.992098, 25.976467>,  <32.457771, 30.259224, 25.802992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676632, 30.992098, 25.976467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.898525, 30.899937, 25.656670>,  <33.031662, 30.844639, 25.464790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.898525, 30.899937, 25.656670>,  <32.676632, 30.992098, 25.976467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898525, 30.899937, 25.656670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178222, 0.905686, -0.384668,
		0.812719, 0.355874, 0.461348,
		0.554729, -0.230405, -0.799493,
		33.064945, 30.830814, 25.416822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784248, 31.705349, 25.867939>,  <32.676632, 30.992098, 25.976467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784248, 31.705349, 25.867939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.858913, 31.478447, 25.547096>,  <32.903713, 31.342306, 25.354589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.858913, 31.478447, 25.547096>,  <32.784248, 31.705349, 25.867939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858913, 31.478447, 25.547096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252753, 0.761246, -0.597178,
		0.949354, 0.314206, -0.001279,
		0.186664, -0.567256, -0.802108,
		32.914913, 31.308270, 25.306463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077797, 32.222576, 25.418034>,  <32.784248, 31.705349, 25.867939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077797, 32.222576, 25.418034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.997322, 31.918304, 25.171165>,  <32.949036, 31.735743, 25.023045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.997322, 31.918304, 25.171165>,  <33.077797, 32.222576, 25.418034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997322, 31.918304, 25.171165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208450, 0.648868, -0.731792,
		0.957117, -0.018577, -0.289106,
		-0.201186, -0.760675, -0.617170,
		32.936966, 31.690102, 24.986015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434856, 32.362293, 24.813499>,  <33.077797, 32.222576, 25.418034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434856, 32.362293, 24.813499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.139835, 32.107712, 24.723217>,  <32.962822, 31.954964, 24.669048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.139835, 32.107712, 24.723217>,  <33.434856, 32.362293, 24.813499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139835, 32.107712, 24.723217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235787, 0.555919, -0.797094,
		0.632786, -0.534682, -0.560087,
		-0.737555, -0.636451, -0.225706,
		32.918568, 31.916777, 24.655506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328396, 32.336994, 24.088671>,  <33.434856, 32.362293, 24.813499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328396, 32.336994, 24.088671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.973186, 32.187431, 24.195713>,  <32.760063, 32.097694, 24.259937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.973186, 32.187431, 24.195713>,  <33.328396, 32.336994, 24.088671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973186, 32.187431, 24.195713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432695, 0.482683, -0.761441,
		0.155538, -0.791967, -0.590420,
		-0.888022, -0.373905, 0.267604,
		32.706779, 32.075260, 24.275993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040253, 32.155746, 23.382742>,  <33.328396, 32.336994, 24.088671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040253, 32.155746, 23.382742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.758514, 32.174950, 23.666035>,  <32.589470, 32.186474, 23.836010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.758514, 32.174950, 23.666035>,  <33.040253, 32.155746, 23.382742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758514, 32.174950, 23.666035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625008, 0.431070, -0.650802,
		-0.336543, -0.901040, -0.273616,
		-0.704346, 0.048010, 0.708231,
		32.547211, 32.189354, 23.878504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350903, 31.959644, 23.077398>,  <33.040253, 32.155746, 23.382742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350903, 31.959644, 23.077398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.260452, 32.164547, 23.408810>,  <32.206181, 32.287487, 23.607656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.260452, 32.164547, 23.408810>,  <32.350903, 31.959644, 23.077398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260452, 32.164547, 23.408810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625244, 0.575894, -0.526703,
		-0.746952, -0.637133, 0.190062,
		-0.226124, 0.512257, 0.828529,
		32.192616, 32.318226, 23.657368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641954, 31.945850, 23.016743>,  <32.350903, 31.959644, 23.077398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641954, 31.945850, 23.016743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.733583, 32.239201, 23.272770>,  <31.788561, 32.415211, 23.426386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.733583, 32.239201, 23.272770>,  <31.641954, 31.945850, 23.016743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733583, 32.239201, 23.272770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560084, 0.637104, -0.529533,
		-0.796135, -0.237189, 0.556696,
		0.229074, 0.733376, 0.640066,
		31.802305, 32.459213, 23.464790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995880, 32.366444, 23.064087>,  <31.641954, 31.945850, 23.016743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995880, 32.366444, 23.064087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.287703, 32.616268, 23.175560>,  <31.462797, 32.766163, 23.242443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.287703, 32.616268, 23.175560>,  <30.995880, 32.366444, 23.064087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287703, 32.616268, 23.175560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372497, 0.704608, -0.603966,
		-0.573578, 0.336819, 0.746700,
		0.729558, 0.624564, 0.278683,
		31.506571, 32.803638, 23.259165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672192, 32.940228, 23.295708>,  <30.995880, 32.366444, 23.064087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672192, 32.940228, 23.295708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.039396, 33.072460, 23.208103>,  <31.259720, 33.151802, 23.155540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.039396, 33.072460, 23.208103>,  <30.672192, 32.940228, 23.295708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039396, 33.072460, 23.208103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393641, 0.692878, -0.604125,
		-0.047966, 0.640806, 0.766202,
		0.918012, 0.330586, -0.219013,
		31.314800, 33.171635, 23.142399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232058, 32.931019, 22.810863>,  <30.672192, 32.940228, 23.295708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232058, 32.931019, 22.810863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.855328, 32.898403, 22.680439>,  <29.629290, 32.878834, 22.602184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.855328, 32.898403, 22.680439>,  <30.232058, 32.931019, 22.810863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855328, 32.898403, 22.680439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022623, -0.952547, 0.303549,
		-0.335337, 0.293267, 0.895290,
		-0.941827, -0.081537, -0.326059,
		29.572781, 32.873943, 22.582621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766106, 32.768818, 23.395929>,  <30.232058, 32.931019, 22.810863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766106, 32.768818, 23.395929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.563164, 32.643574, 23.074795>,  <29.441399, 32.568428, 22.882114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.563164, 32.643574, 23.074795>,  <29.766106, 32.768818, 23.395929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563164, 32.643574, 23.074795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097857, -0.904692, 0.414677,
		-0.856162, 0.288953, 0.428361,
		-0.507357, -0.313112, -0.802838,
		29.410957, 32.549641, 22.833942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277683, 32.450150, 23.727148>,  <29.766106, 32.768818, 23.395929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277683, 32.450150, 23.727148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.303864, 32.323280, 23.348705>,  <29.319571, 32.247158, 23.121639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.303864, 32.323280, 23.348705>,  <29.277683, 32.450150, 23.727148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303864, 32.323280, 23.348705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037265, -0.948256, 0.315312,
		-0.997160, 0.014619, -0.073881,
		0.065449, -0.317169, -0.946108,
		29.323498, 32.228130, 23.064873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794300, 31.870905, 23.718359>,  <29.277683, 32.450150, 23.727148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794300, 31.870905, 23.718359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.020267, 31.826225, 23.391338>,  <29.155848, 31.799417, 23.195126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.020267, 31.826225, 23.391338>,  <28.794300, 31.870905, 23.718359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020267, 31.826225, 23.391338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072690, -0.993680, 0.085534,
		-0.821939, 0.011108, -0.569467,
		0.564918, -0.111699, -0.817552,
		29.189743, 31.792715, 23.146072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530735, 31.300203, 23.392393>,  <28.794300, 31.870905, 23.718359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530735, 31.300203, 23.392393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.883739, 31.357689, 23.213276>,  <29.095543, 31.392179, 23.105806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.883739, 31.357689, 23.213276>,  <28.530735, 31.300203, 23.392393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883739, 31.357689, 23.213276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215789, -0.969756, 0.114049,
		-0.417859, -0.197279, -0.886834,
		0.882513, 0.143713, -0.447792,
		29.148493, 31.400803, 23.078938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568508, 30.726671, 22.986864>,  <28.530735, 31.300203, 23.392393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568508, 30.726671, 22.986864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.943190, 30.860931, 23.026718>,  <29.167997, 30.941488, 23.050631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.943190, 30.860931, 23.026718>,  <28.568508, 30.726671, 22.986864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943190, 30.860931, 23.026718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301495, -0.917935, 0.257868,
		0.178014, -0.211505, -0.961029,
		0.936703, 0.335650, 0.099638,
		29.224201, 30.961626, 23.056610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977985, 30.243065, 22.697451>,  <28.568508, 30.726671, 22.986864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977985, 30.243065, 22.697451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.237852, 30.430782, 22.936684>,  <29.393772, 30.543413, 23.080223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.237852, 30.430782, 22.936684>,  <28.977985, 30.243065, 22.697451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237852, 30.430782, 22.936684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472691, -0.865514, 0.165676,
		0.595398, 0.175074, -0.784124,
		0.649665, 0.469292, 0.598081,
		29.432751, 30.571569, 23.116108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666719, 29.837337, 22.619202>,  <28.977985, 30.243065, 22.697451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666719, 29.837337, 22.619202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.684765, 30.040421, 22.963341>,  <29.695593, 30.162270, 23.169825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.684765, 30.040421, 22.963341>,  <29.666719, 29.837337, 22.619202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684765, 30.040421, 22.963341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337599, -0.818305, 0.465192,
		0.940208, 0.269467, -0.208318,
		0.045114, 0.507705, 0.860349,
		29.698299, 30.192732, 23.221445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286575, 29.756214, 22.871778>,  <29.666719, 29.837337, 22.619202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286575, 29.756214, 22.871778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.087681, 29.870491, 23.199471>,  <29.968344, 29.939056, 23.396086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.087681, 29.870491, 23.199471>,  <30.286575, 29.756214, 22.871778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087681, 29.870491, 23.199471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334604, -0.808041, 0.484881,
		0.800497, 0.515218, 0.306194,
		-0.497237, 0.285692, 0.819229,
		29.938509, 29.956198, 23.445240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765306, 29.612284, 23.426785>,  <30.286575, 29.756214, 22.871778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765306, 29.612284, 23.426785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.411139, 29.650574, 23.608715>,  <30.198637, 29.673548, 23.717873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.411139, 29.650574, 23.608715>,  <30.765306, 29.612284, 23.426785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411139, 29.650574, 23.608715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278220, -0.674719, 0.683628,
		0.372321, 0.731840, 0.570778,
		-0.885421, 0.095727, 0.454824,
		30.145512, 29.679293, 23.745163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930187, 29.489416, 24.050747>,  <30.765306, 29.612284, 23.426785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930187, 29.489416, 24.050747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.534929, 29.447144, 24.095295>,  <30.297775, 29.421780, 24.122023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.534929, 29.447144, 24.095295>,  <30.930187, 29.489416, 24.050747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534929, 29.447144, 24.095295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151916, -0.568094, 0.808821,
		-0.022209, 0.816150, 0.577413,
		-0.988144, -0.105681, 0.111369,
		30.238485, 29.415440, 24.128706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706610, 29.666410, 24.741323>,  <30.930187, 29.489416, 24.050747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706610, 29.666410, 24.741323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.448946, 29.400093, 24.590710>,  <30.294348, 29.240303, 24.500341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.448946, 29.400093, 24.590710>,  <30.706610, 29.666410, 24.741323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448946, 29.400093, 24.590710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089222, -0.554317, 0.827509,
		-0.759671, 0.499451, 0.416472,
		-0.644158, -0.665793, -0.376537,
		30.255699, 29.200356, 24.477749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109228, 29.492685, 25.188559>,  <30.706610, 29.666410, 24.741323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109228, 29.492685, 25.188559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.169140, 29.172668, 24.956181>,  <30.205088, 28.980658, 24.816753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.169140, 29.172668, 24.956181>,  <30.109228, 29.492685, 25.188559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169140, 29.172668, 24.956181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221259, -0.599793, 0.768956,
		-0.963644, 0.013365, -0.266854,
		0.149780, -0.800044, -0.580945,
		30.214073, 28.932655, 24.781897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665518, 29.008989, 25.485477>,  <30.109228, 29.492685, 25.188559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665518, 29.008989, 25.485477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.931355, 28.803596, 25.268349>,  <30.090857, 28.680361, 25.138071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.931355, 28.803596, 25.268349>,  <29.665518, 29.008989, 25.485477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931355, 28.803596, 25.268349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055407, -0.690598, 0.721113,
		-0.745153, -0.509319, -0.430512,
		0.664588, -0.513486, -0.542822,
		30.130732, 28.649551, 25.105503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396034, 28.234009, 25.481844>,  <29.665518, 29.008989, 25.485477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396034, 28.234009, 25.481844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.787334, 28.252716, 25.401012>,  <30.022116, 28.263941, 25.352514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.787334, 28.252716, 25.401012>,  <29.396034, 28.234009, 25.481844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787334, 28.252716, 25.401012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174204, -0.714055, 0.678069,
		-0.112583, -0.698525, -0.706673,
		0.978252, 0.046766, -0.202077,
		30.080811, 28.266747, 25.340389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623941, 27.549828, 25.478384>,  <29.396034, 28.234009, 25.481844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623941, 27.549828, 25.478384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.964897, 27.756859, 25.508175>,  <30.169470, 27.881077, 25.526049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.964897, 27.756859, 25.508175>,  <29.623941, 27.549828, 25.478384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964897, 27.756859, 25.508175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395190, -0.730898, 0.556429,
		0.342429, -0.444862, -0.827551,
		0.852389, 0.517577, 0.074476,
		30.220613, 27.912132, 25.530518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171068, 27.044302, 25.401125>,  <29.623941, 27.549828, 25.478384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171068, 27.044302, 25.401125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.320173, 27.353905, 25.605854>,  <30.409636, 27.539667, 25.728691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.320173, 27.353905, 25.605854>,  <30.171068, 27.044302, 25.401125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320173, 27.353905, 25.605854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522511, -0.630901, 0.573538,
		0.766832, 0.053640, -0.639602,
		0.372761, 0.774006, 0.511823,
		30.432001, 27.586107, 25.759401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816633, 26.891098, 25.512630>,  <30.171068, 27.044302, 25.401125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816633, 26.891098, 25.512630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.776625, 27.164089, 25.802242>,  <30.752619, 27.327885, 25.976009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.776625, 27.164089, 25.802242>,  <30.816633, 26.891098, 25.512630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776625, 27.164089, 25.802242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473883, -0.607170, 0.637792,
		0.874889, 0.406899, -0.262685,
		-0.100023, 0.682479, 0.724029,
		30.746618, 27.368834, 26.019451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.555130, 27.041199, 25.997759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.253695, 27.168377, 26.227894>,  <31.072832, 27.244684, 26.365974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.253695, 27.168377, 26.227894>,  <31.555130, 27.041199, 25.997759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253695, 27.168377, 26.227894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450625, -0.387347, 0.804301,
		0.478579, 0.865374, 0.148627,
		-0.753591, 0.317947, 0.575335,
		31.027617, 27.263762, 26.400494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951586, 27.246754, 26.703999>,  <31.555130, 27.041199, 25.997759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951586, 27.246754, 26.703999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558819, 27.232349, 26.778339>,  <31.323158, 27.223707, 26.822945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558819, 27.232349, 26.778339>,  <31.951586, 27.246754, 26.703999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558819, 27.232349, 26.778339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180150, -0.479402, 0.858906,
		0.058170, 0.876856, 0.477220,
		-0.981918, -0.036009, 0.185853,
		31.264244, 27.221546, 26.834095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927694, 27.475323, 27.425554>,  <31.951586, 27.246754, 26.703999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927694, 27.475323, 27.425554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603811, 27.252083, 27.353008>,  <31.409481, 27.118139, 27.309481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603811, 27.252083, 27.353008>,  <31.927694, 27.475323, 27.425554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603811, 27.252083, 27.353008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153642, -0.499894, 0.852350,
		-0.566360, 0.662291, 0.490517,
		-0.809710, -0.558101, -0.181364,
		31.360899, 27.084652, 27.298599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697334, 27.290907, 28.010889>,  <31.927694, 27.475323, 27.425554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697334, 27.290907, 28.010889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.466368, 27.044510, 27.796547>,  <31.327787, 26.896671, 27.667942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.466368, 27.044510, 27.796547>,  <31.697334, 27.290907, 28.010889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466368, 27.044510, 27.796547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169184, -0.551805, 0.816632,
		-0.798729, 0.562195, 0.214404,
		-0.577416, -0.615993, -0.535857,
		31.293142, 26.859713, 27.635790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231249, 27.226837, 28.467800>,  <31.697334, 27.290907, 28.010889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231249, 27.226837, 28.467800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.204477, 26.922783, 28.209278>,  <31.188414, 26.740351, 28.054165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.204477, 26.922783, 28.209278>,  <31.231249, 27.226837, 28.467800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204477, 26.922783, 28.209278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102343, -0.639113, 0.762273,
		-0.992495, 0.117164, -0.035020,
		-0.066929, -0.760136, -0.646307,
		31.184399, 26.694742, 28.015387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633053, 26.778532, 28.630112>,  <31.231249, 27.226837, 28.467800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633053, 26.778532, 28.630112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.893227, 26.552910, 28.426632>,  <31.049330, 26.417536, 28.304544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.893227, 26.552910, 28.426632>,  <30.633053, 26.778532, 28.630112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893227, 26.552910, 28.426632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034713, -0.646954, 0.761739,
		-0.758770, -0.513119, -0.401220,
		0.650433, -0.564056, -0.508701,
		31.088356, 26.383692, 28.274021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479790, 26.061302, 28.814278>,  <30.633053, 26.778532, 28.630112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479790, 26.061302, 28.814278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.853611, 26.026882, 28.676174>,  <31.077904, 26.006229, 28.593311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.853611, 26.026882, 28.676174>,  <30.479790, 26.061302, 28.814278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853611, 26.026882, 28.676174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196228, -0.684789, 0.701825,
		-0.296821, -0.723643, -0.623087,
		0.934554, -0.086050, -0.345259,
		31.133978, 26.001066, 28.572596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585129, 25.370642, 28.736633>,  <30.479790, 26.061302, 28.814278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585129, 25.370642, 28.736633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957747, 25.514614, 28.757317>,  <31.181316, 25.600998, 28.769728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957747, 25.514614, 28.757317>,  <30.585129, 25.370642, 28.736633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957747, 25.514614, 28.757317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246065, -0.728667, 0.639137,
		0.267725, -0.582661, -0.767352,
		0.931545, 0.359931, 0.051710,
		31.237209, 25.622593, 28.772829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927298, 24.947903, 28.334667>,  <30.585129, 25.370642, 28.736633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927298, 24.947903, 28.334667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.147520, 25.110641, 28.626247>,  <31.279654, 25.208284, 28.801195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.147520, 25.110641, 28.626247>,  <30.927298, 24.947903, 28.334667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147520, 25.110641, 28.626247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159204, -0.908346, 0.386731,
		0.819478, -0.096865, -0.564866,
		0.550555, 0.406847, 0.728948,
		31.312687, 25.232695, 28.844933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466984, 24.422663, 28.504341>,  <30.927298, 24.947903, 28.334667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466984, 24.422663, 28.504341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.473465, 24.677616, 28.812492>,  <31.477354, 24.830587, 28.997383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.473465, 24.677616, 28.812492>,  <31.466984, 24.422663, 28.504341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473465, 24.677616, 28.812492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100484, -0.767616, 0.632984,
		0.994807, 0.067154, -0.076484,
		0.016203, 0.637382, 0.770377,
		31.478327, 24.868832, 29.043606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835848, 24.133665, 28.944366>,  <31.466984, 24.422663, 28.504341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835848, 24.133665, 28.944366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.688692, 24.395866, 29.208176>,  <31.600399, 24.553186, 29.366461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.688692, 24.395866, 29.208176>,  <31.835848, 24.133665, 28.944366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688692, 24.395866, 29.208176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061643, -0.690513, 0.720688,
		0.927824, 0.305789, 0.213626,
		-0.367890, 0.655503, 0.659525,
		31.578325, 24.592518, 29.406033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312939, 24.145966, 29.558538>,  <31.835848, 24.133665, 28.944366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312939, 24.145966, 29.558538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.955587, 24.294258, 29.660069>,  <31.741177, 24.383234, 29.720987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.955587, 24.294258, 29.660069>,  <32.312939, 24.145966, 29.558538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955587, 24.294258, 29.660069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091438, -0.703138, 0.705150,
		0.439895, 0.606759, 0.662069,
		-0.893382, 0.370730, 0.253826,
		31.687572, 24.405478, 29.736216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384483, 23.938971, 30.208122>,  <32.312939, 24.145966, 29.558538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384483, 23.938971, 30.208122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999468, 24.046753, 30.196053>,  <31.768459, 24.111423, 30.188810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999468, 24.046753, 30.196053>,  <32.384483, 23.938971, 30.208122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999468, 24.046753, 30.196053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191056, -0.595067, 0.780636,
		0.192394, 0.757158, 0.624257,
		-0.962539, 0.269458, -0.030172,
		31.710707, 24.127590, 30.187000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101917, 24.166557, 30.964705>,  <32.384483, 23.938971, 30.208122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101917, 24.166557, 30.964705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.826914, 24.022266, 30.712608>,  <31.661911, 23.935692, 30.561350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.826914, 24.022266, 30.712608>,  <32.101917, 24.166557, 30.964705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826914, 24.022266, 30.712608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333683, -0.613908, 0.715383,
		-0.644969, 0.702134, 0.301700,
		-0.687511, -0.360728, -0.630241,
		31.620661, 23.914047, 30.523537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451984, 24.162489, 31.365427>,  <32.101917, 24.166557, 30.964705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451984, 24.162489, 31.365427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.404354, 23.911915, 31.057297>,  <31.375776, 23.761570, 30.872419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.404354, 23.911915, 31.057297>,  <31.451984, 24.162489, 31.365427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404354, 23.911915, 31.057297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419119, -0.671622, 0.610953,
		-0.900089, 0.395607, -0.182577,
		-0.119074, -0.626434, -0.770326,
		31.368631, 23.723984, 30.826199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747623, 23.926321, 31.462471>,  <31.451984, 24.162489, 31.365427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747623, 23.926321, 31.462471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.989840, 23.689896, 31.249317>,  <31.135170, 23.548040, 31.121426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.989840, 23.689896, 31.249317>,  <30.747623, 23.926321, 31.462471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989840, 23.689896, 31.249317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316502, -0.793240, 0.520188,
		-0.730168, -0.146336, -0.667412,
		0.605541, -0.591063, -0.532883,
		31.171501, 23.512577, 31.089453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324850, 23.297775, 31.420683>,  <30.747623, 23.926321, 31.462471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324850, 23.297775, 31.420683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.696373, 23.172466, 31.341511>,  <30.919287, 23.097281, 31.294006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.696373, 23.172466, 31.341511>,  <30.324850, 23.297775, 31.420683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696373, 23.172466, 31.341511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146175, -0.800566, 0.581143,
		-0.340514, -0.510837, -0.789364,
		0.928807, -0.313273, -0.197932,
		30.975016, 23.078484, 31.282131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254007, 22.651144, 31.629622>,  <30.324850, 23.297775, 31.420683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254007, 22.651144, 31.629622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.650524, 22.694660, 31.599941>,  <30.888433, 22.720770, 31.582132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.650524, 22.694660, 31.599941>,  <30.254007, 22.651144, 31.629622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650524, 22.694660, 31.599941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126080, -0.621422, 0.773265,
		0.038014, -0.775887, -0.629726,
		0.991292, 0.108791, -0.074201,
		30.947912, 22.727297, 31.577681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493080, 22.002159, 31.678488>,  <30.254007, 22.651144, 31.629622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493080, 22.002159, 31.678488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.813999, 22.222446, 31.770599>,  <31.006552, 22.354618, 31.825867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.813999, 22.222446, 31.770599>,  <30.493080, 22.002159, 31.678488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813999, 22.222446, 31.770599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153301, -0.562935, 0.812160,
		0.576902, -0.616292, -0.536067,
		0.802298, 0.550716, 0.230280,
		31.054689, 22.387661, 31.839684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055077, 21.508673, 31.712612>,  <30.493080, 22.002159, 31.678488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055077, 21.508673, 31.712612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.136103, 21.836388, 31.927177>,  <31.184717, 22.033016, 32.055916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.136103, 21.836388, 31.927177>,  <31.055077, 21.508673, 31.712612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136103, 21.836388, 31.927177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035939, -0.553620, 0.831994,
		0.978609, -0.149253, -0.141587,
		0.202563, 0.819285, 0.536413,
		31.196871, 22.082172, 32.088100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496014, 21.291204, 32.135197>,  <31.055077, 21.508673, 31.712612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496014, 21.291204, 32.135197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338047, 21.617554, 32.304142>,  <31.243267, 21.813364, 32.405510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338047, 21.617554, 32.304142>,  <31.496014, 21.291204, 32.135197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338047, 21.617554, 32.304142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163169, -0.514711, 0.841694,
		0.904112, 0.263481, 0.336392,
		-0.394915, 0.815874, 0.422365,
		31.219572, 21.862316, 32.430851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844973, 21.404388, 32.780079>,  <31.496014, 21.291204, 32.135197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844973, 21.404388, 32.780079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.468456, 21.537735, 32.758755>,  <31.242546, 21.617743, 32.745960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.468456, 21.537735, 32.758755>,  <31.844973, 21.404388, 32.780079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468456, 21.537735, 32.758755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254431, -0.596693, 0.761066,
		0.221903, 0.729948, 0.646479,
		-0.941289, 0.333367, -0.053313,
		31.186069, 21.637745, 32.742760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889423, 21.365471, 33.500931>,  <31.844973, 21.404388, 32.780079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889423, 21.365471, 33.500931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.804953, 21.593369, 33.818623>,  <31.754271, 21.730106, 34.009239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.804953, 21.593369, 33.818623>,  <31.889423, 21.365471, 33.500931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804953, 21.593369, 33.818623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719741, 0.640415, -0.268031,
		-0.661344, 0.515037, -0.545308,
		-0.211178, 0.569742, 0.794228,
		31.741600, 21.764292, 34.056892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650768, 22.082644, 33.370346>,  <31.889423, 21.365471, 33.500931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650768, 22.082644, 33.370346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872965, 22.071152, 33.702759>,  <32.006283, 22.064257, 33.902206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872965, 22.071152, 33.702759>,  <31.650768, 22.082644, 33.370346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872965, 22.071152, 33.702759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654236, 0.631949, -0.415470,
		-0.513232, 0.774477, 0.369836,
		0.555489, -0.028727, 0.831028,
		32.039612, 22.062534, 33.952068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847229, 22.778673, 33.430016>,  <31.650768, 22.082644, 33.370346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847229, 22.778673, 33.430016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.133003, 22.590431, 33.637135>,  <32.304466, 22.477486, 33.761406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.133003, 22.590431, 33.637135>,  <31.847229, 22.778673, 33.430016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133003, 22.590431, 33.637135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684173, 0.624895, -0.376050,
		-0.146597, 0.622925, 0.768423,
		0.714434, -0.470606, 0.517797,
		32.347332, 22.449249, 33.792473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189301, 23.280960, 33.794975>,  <31.847229, 22.778673, 33.430016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189301, 23.280960, 33.794975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.447300, 22.975414, 33.803856>,  <32.602100, 22.792088, 33.809185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.447300, 22.975414, 33.803856>,  <32.189301, 23.280960, 33.794975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447300, 22.975414, 33.803856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716643, 0.594524, -0.364642,
		0.265336, 0.251104, 0.930883,
		0.644995, -0.763864, 0.022204,
		32.640800, 22.746256, 33.810516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807297, 23.520683, 34.091618>,  <32.189301, 23.280960, 33.794975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807297, 23.520683, 34.091618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915413, 23.211029, 33.862656>,  <32.980282, 23.025236, 33.725277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915413, 23.211029, 33.862656>,  <32.807297, 23.520683, 34.091618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915413, 23.211029, 33.862656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647439, 0.586184, -0.487043,
		0.712575, -0.238954, 0.659649,
		0.270295, -0.774138, -0.572408,
		32.996502, 22.978788, 33.690933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574028, 23.593868, 34.015404>,  <32.807297, 23.520683, 34.091618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574028, 23.593868, 34.015404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.476410, 23.344425, 33.718338>,  <33.417839, 23.194759, 33.540096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.476410, 23.344425, 33.718338>,  <33.574028, 23.593868, 34.015404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476410, 23.344425, 33.718338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654547, 0.459145, -0.600628,
		0.715548, -0.632693, 0.296127,
		-0.244049, -0.623607, -0.742667,
		33.403194, 23.157343, 33.495537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206463, 23.489279, 33.665310>,  <33.574028, 23.593868, 34.015404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206463, 23.489279, 33.665310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935974, 23.353058, 33.404007>,  <33.773682, 23.271326, 33.247227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935974, 23.353058, 33.404007>,  <34.206463, 23.489279, 33.665310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935974, 23.353058, 33.404007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548809, 0.358680, -0.755088,
		0.491458, -0.869121, -0.055650,
		-0.676223, -0.340553, -0.653257,
		33.733109, 23.250893, 33.208031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569145, 23.284883, 33.060127>,  <34.206463, 23.489279, 33.665310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569145, 23.284883, 33.060127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199760, 23.350986, 32.921616>,  <33.978130, 23.390648, 32.838509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199760, 23.350986, 32.921616>,  <34.569145, 23.284883, 33.060127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199760, 23.350986, 32.921616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380502, 0.510611, -0.771035,
		0.049396, -0.843781, -0.534409,
		-0.923460, 0.165258, -0.346283,
		33.922722, 23.400564, 32.817730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603535, 23.153181, 32.357418>,  <34.569145, 23.284883, 33.060127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603535, 23.153181, 32.357418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288372, 23.390858, 32.422085>,  <34.099274, 23.533464, 32.460884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288372, 23.390858, 32.422085>,  <34.603535, 23.153181, 32.357418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288372, 23.390858, 32.422085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345655, 0.644023, -0.682464,
		-0.509629, -0.481841, -0.712817,
		-0.787909, 0.594192, 0.161662,
		34.051998, 23.569115, 32.470585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378292, 23.206978, 31.725908>,  <34.603535, 23.153181, 32.357418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378292, 23.206978, 31.725908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222263, 23.511330, 31.933334>,  <34.128647, 23.693941, 32.057789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222263, 23.511330, 31.933334>,  <34.378292, 23.206978, 31.725908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222263, 23.511330, 31.933334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141670, 0.606063, -0.782699,
		-0.909822, -0.231842, -0.344201,
		-0.390070, 0.760879, 0.518564,
		34.105244, 23.739594, 32.088905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963284, 23.592297, 31.287697>,  <34.378292, 23.206978, 31.725908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963284, 23.592297, 31.287697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.044422, 23.858273, 31.575226>,  <34.093105, 24.017859, 31.747744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.044422, 23.858273, 31.575226>,  <33.963284, 23.592297, 31.287697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044422, 23.858273, 31.575226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306366, 0.740328, -0.598376,
		-0.930049, -0.098842, 0.353891,
		0.202851, 0.664939, 0.718824,
		34.105278, 24.057755, 31.790873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335209, 24.074873, 31.286133>,  <33.963284, 23.592297, 31.287697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335209, 24.074873, 31.286133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.656204, 24.243320, 31.455212>,  <33.848801, 24.344389, 31.556660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.656204, 24.243320, 31.455212>,  <33.335209, 24.074873, 31.286133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656204, 24.243320, 31.455212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258836, 0.883997, -0.389297,
		-0.537604, 0.202997, 0.818397,
		0.802487, 0.421119, 0.422698,
		33.896950, 24.369656, 31.582022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111645, 24.756035, 31.578600>,  <33.335209, 24.074873, 31.286133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111645, 24.756035, 31.578600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501087, 24.776711, 31.489685>,  <33.734753, 24.789116, 31.436337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501087, 24.776711, 31.489685>,  <33.111645, 24.756035, 31.578600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501087, 24.776711, 31.489685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179413, 0.775340, -0.605524,
		0.141049, 0.629425, 0.764152,
		0.973610, 0.051691, -0.222288,
		33.793171, 24.792217, 31.422998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109234, 25.357212, 31.407206>,  <33.111645, 24.756035, 31.578600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109234, 25.357212, 31.407206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480350, 25.250118, 31.303265>,  <33.703022, 25.185862, 31.240900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480350, 25.250118, 31.303265>,  <33.109234, 25.357212, 31.407206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480350, 25.250118, 31.303265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033920, 0.754105, -0.655877,
		0.371556, 0.599703, 0.708733,
		0.927791, -0.267735, -0.259850,
		33.758686, 25.169798, 31.225309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595192, 26.020203, 31.387598>,  <33.109234, 25.357212, 31.407206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595192, 26.020203, 31.387598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733250, 25.726791, 31.153397>,  <33.816082, 25.550745, 31.012875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733250, 25.726791, 31.153397>,  <33.595192, 26.020203, 31.387598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733250, 25.726791, 31.153397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096143, 0.592926, -0.799497,
		0.933614, 0.332231, 0.134119,
		0.345140, -0.733527, -0.585505,
		33.836792, 25.506733, 30.977745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168003, 26.333151, 30.997847>,  <33.595192, 26.020203, 31.387598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168003, 26.333151, 30.997847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.049446, 26.009228, 30.795315>,  <33.978313, 25.814875, 30.673796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.049446, 26.009228, 30.795315>,  <34.168003, 26.333151, 30.997847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049446, 26.009228, 30.795315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036438, 0.539351, -0.841293,
		0.954372, -0.230901, -0.189365,
		-0.296390, -0.809806, -0.506327,
		33.960529, 25.766287, 30.643417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279369, 26.556105, 30.353434>,  <34.168003, 26.333151, 30.997847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279369, 26.556105, 30.353434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.086857, 26.223598, 30.242172>,  <33.971352, 26.024094, 30.175415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.086857, 26.223598, 30.242172>,  <34.279369, 26.556105, 30.353434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086857, 26.223598, 30.242172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140095, 0.386184, -0.911721,
		0.865301, -0.399823, -0.302318,
		-0.481277, -0.831267, -0.278152,
		33.942474, 25.974218, 30.158726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543461, 26.343946, 29.726995>,  <34.279369, 26.556105, 30.353434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543461, 26.343946, 29.726995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199615, 26.139572, 29.725422>,  <33.993309, 26.016947, 29.724478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199615, 26.139572, 29.725422>,  <34.543461, 26.343946, 29.726995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199615, 26.139572, 29.725422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183387, 0.315706, -0.930967,
		0.476908, -0.799546, -0.365083,
		-0.859609, -0.510937, -0.003937,
		33.941734, 25.986292, 29.724241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702606, 25.924202, 29.149529>,  <34.543461, 26.343946, 29.726995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702606, 25.924202, 29.149529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315727, 25.990902, 29.226185>,  <34.083599, 26.030922, 29.272179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315727, 25.990902, 29.226185>,  <34.702606, 25.924202, 29.149529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315727, 25.990902, 29.226185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125047, 0.344142, -0.930553,
		-0.221123, -0.923992, -0.312001,
		-0.967196, 0.166752, 0.191640,
		34.025570, 26.040928, 29.283676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307568, 25.707399, 28.575157>,  <34.702606, 25.924202, 29.149529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307568, 25.707399, 28.575157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077755, 25.983341, 28.751347>,  <33.939869, 26.148907, 28.857059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077755, 25.983341, 28.751347>,  <34.307568, 25.707399, 28.575157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077755, 25.983341, 28.751347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123919, 0.458638, -0.879940,
		-0.809047, -0.560137, -0.178017,
		-0.574533, 0.689853, 0.440472,
		33.905396, 26.190296, 28.883488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936157, 25.873045, 27.970160>,  <34.307568, 25.707399, 28.575157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936157, 25.873045, 27.970160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835735, 26.151447, 28.239246>,  <33.775482, 26.318489, 28.400698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835735, 26.151447, 28.239246>,  <33.936157, 25.873045, 27.970160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835735, 26.151447, 28.239246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347380, 0.583896, -0.733752,
		-0.903492, -0.417901, 0.095188,
		-0.251056, 0.696006, 0.672716,
		33.760418, 26.360249, 28.441061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221222, 26.093683, 27.782026>,  <33.936157, 25.873045, 27.970160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221222, 26.093683, 27.782026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427063, 26.372143, 27.982250>,  <33.550568, 26.539219, 28.102385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427063, 26.372143, 27.982250>,  <33.221222, 26.093683, 27.782026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427063, 26.372143, 27.982250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176291, 0.657220, -0.732792,
		-0.839110, 0.288853, 0.460932,
		0.514603, 0.696151, 0.500557,
		33.581444, 26.580988, 28.132418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.577162, 42.315189, 20.193014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.958696, 42.259464, 20.299438>,  <26.187616, 42.226028, 20.363293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.958696, 42.259464, 20.299438>,  <25.577162, 42.315189, 20.193014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958696, 42.259464, 20.299438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279201, -0.737720, 0.614667,
		0.110646, -0.660576, -0.742561,
		0.953837, -0.139313, 0.266059,
		26.244848, 42.217670, 20.379257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730095, 41.535103, 20.086828>,  <25.577162, 42.315189, 20.193014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730095, 41.535103, 20.086828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.993881, 41.675652, 20.352654>,  <26.152153, 41.759979, 20.512148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.993881, 41.675652, 20.352654>,  <25.730095, 41.535103, 20.086828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993881, 41.675652, 20.352654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203975, -0.767234, 0.608067,
		0.723533, -0.536553, -0.434293,
		0.659465, 0.351372, 0.664563,
		26.191721, 41.781063, 20.552023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998600, 40.955715, 20.366888>,  <25.730095, 41.535103, 20.086828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998600, 40.955715, 20.366888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.085829, 41.235474, 20.639149>,  <26.138166, 41.403328, 20.802505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.085829, 41.235474, 20.639149>,  <25.998600, 40.955715, 20.366888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085829, 41.235474, 20.639149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280503, -0.623088, 0.730123,
		0.934752, -0.350144, 0.060305,
		0.218073, 0.699400, 0.680650,
		26.151251, 41.445293, 20.843344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394333, 40.573578, 20.892427>,  <25.998600, 40.955715, 20.366888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394333, 40.573578, 20.892427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.292841, 40.918137, 21.068439>,  <26.231945, 41.124870, 21.174046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.292841, 40.918137, 21.068439>,  <26.394333, 40.573578, 20.892427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292841, 40.918137, 21.068439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286902, -0.501464, 0.816224,
		0.923747, 0.080856, 0.374371,
		-0.253730, 0.861392, 0.440028,
		26.216722, 41.176556, 21.200447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730207, 40.599667, 21.486593>,  <26.394333, 40.573578, 20.892427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730207, 40.599667, 21.486593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.427820, 40.851822, 21.557167>,  <26.246387, 41.003113, 21.599512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.427820, 40.851822, 21.557167>,  <26.730207, 40.599667, 21.486593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427820, 40.851822, 21.557167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339444, -0.607956, 0.717752,
		0.559725, 0.482706, 0.673574,
		-0.755966, 0.630385, 0.176436,
		26.201031, 41.040936, 21.610098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725653, 40.732964, 22.240597>,  <26.730207, 40.599667, 21.486593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725653, 40.732964, 22.240597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.353821, 40.820896, 22.122242>,  <26.130722, 40.873657, 22.051229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.353821, 40.820896, 22.122242>,  <26.725653, 40.732964, 22.240597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353821, 40.820896, 22.122242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368037, -0.508554, 0.778409,
		0.020646, 0.832493, 0.553650,
		-0.929582, 0.219835, -0.295889,
		26.074945, 40.886848, 22.033476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407557, 40.892242, 22.836210>,  <26.725653, 40.732964, 22.240597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407557, 40.892242, 22.836210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.139399, 40.764847, 22.568142>,  <25.978504, 40.688408, 22.407301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.139399, 40.764847, 22.568142>,  <26.407557, 40.892242, 22.836210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139399, 40.764847, 22.568142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362625, -0.647357, 0.670396,
		-0.647357, 0.692453, 0.318493,
		-0.670396, -0.318493, -0.670172,
		25.938280, 40.669300, 22.367090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769428, 40.804089, 23.272898>,  <26.407557, 40.892242, 22.836210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769428, 40.804089, 23.272898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.690504, 40.603592, 22.935894>,  <25.643148, 40.483292, 22.733692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.690504, 40.603592, 22.935894>,  <25.769428, 40.804089, 23.272898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690504, 40.603592, 22.935894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440829, -0.722251, 0.532939,
		-0.875636, 0.476558, -0.078454,
		-0.197313, -0.501245, -0.842509,
		25.631310, 40.453220, 22.683142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.065861, 40.685165, 23.312340>,  <25.769428, 40.804089, 23.272898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.065861, 40.685165, 23.312340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.192173, 40.417358, 23.043407>,  <25.267960, 40.256676, 22.882048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.192173, 40.417358, 23.043407>,  <25.065861, 40.685165, 23.312340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.192173, 40.417358, 23.043407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703273, -0.640821, 0.307825,
		-0.636937, 0.375624, -0.673215,
		0.315785, -0.669518, -0.672328,
		25.286907, 40.216503, 22.841707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.407360, 40.412952, 22.950428>,  <25.065861, 40.685165, 23.312340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.407360, 40.412952, 22.950428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.712376, 40.167038, 22.869858>,  <24.895386, 40.019489, 22.821516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.712376, 40.167038, 22.869858>,  <24.407360, 40.412952, 22.950428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.712376, 40.167038, 22.869858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545998, -0.778577, 0.309361,
		-0.347016, -0.125923, -0.929367,
		0.762540, -0.614786, -0.201425,
		24.941137, 39.982601, 22.809431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.231514, 39.878536, 22.458832>,  <24.407360, 40.412952, 22.950428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.231514, 39.878536, 22.458832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.517479, 39.661324, 22.635021>,  <24.689058, 39.530994, 22.740734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.517479, 39.661324, 22.635021>,  <24.231514, 39.878536, 22.458832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.517479, 39.661324, 22.635021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670123, -0.711944, 0.209930,
		0.199593, -0.445252, -0.872877,
		0.714911, -0.543034, 0.440472,
		24.731953, 39.498413, 22.767162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.192160, 39.217361, 22.139811>,  <24.231514, 39.878536, 22.458832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.192160, 39.217361, 22.139811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.376148, 39.165421, 22.491165>,  <24.486542, 39.134258, 22.701979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.376148, 39.165421, 22.491165>,  <24.192160, 39.217361, 22.139811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.376148, 39.165421, 22.491165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517979, -0.842726, 0.146664,
		0.721197, -0.522448, -0.454889,
		0.459971, -0.129849, 0.878388,
		24.514139, 39.126465, 22.754683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.432192, 38.586903, 22.083925>,  <24.192160, 39.217361, 22.139811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.432192, 38.586903, 22.083925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.456095, 38.650177, 22.478165>,  <24.470436, 38.688141, 22.714708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.456095, 38.650177, 22.478165>,  <24.432192, 38.586903, 22.083925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456095, 38.650177, 22.478165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248903, -0.953815, 0.168179,
		0.966683, -0.255368, -0.017622,
		0.059756, 0.158190, 0.985599,
		24.474022, 38.697636, 22.773844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.894491, 38.077507, 22.319637>,  <24.432192, 38.586903, 22.083925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.894491, 38.077507, 22.319637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.730452, 38.191708, 22.666119>,  <24.632029, 38.260227, 22.874008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.730452, 38.191708, 22.666119>,  <24.894491, 38.077507, 22.319637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730452, 38.191708, 22.666119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099488, -0.958077, 0.268682,
		0.906599, 0.024009, 0.421309,
		-0.410097, 0.285502, 0.866204,
		24.607422, 38.277359, 22.925980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218136, 37.711487, 22.919298>,  <24.894491, 38.077507, 22.319637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218136, 37.711487, 22.919298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.844858, 37.829399, 23.001526>,  <24.620892, 37.900146, 23.050861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.844858, 37.829399, 23.001526>,  <25.218136, 37.711487, 22.919298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.844858, 37.829399, 23.001526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220881, -0.921673, 0.318952,
		0.283486, 0.252238, 0.925209,
		-0.933192, 0.294779, 0.205567,
		24.564901, 37.917831, 23.063196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067768, 37.342651, 23.532026>,  <25.218136, 37.711487, 22.919298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067768, 37.342651, 23.532026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.699169, 37.436699, 23.408375>,  <24.478010, 37.493130, 23.334185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.699169, 37.436699, 23.408375>,  <25.067768, 37.342651, 23.532026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699169, 37.436699, 23.408375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269686, -0.960127, 0.073653,
		-0.279484, 0.151239, 0.948164,
		-0.921498, 0.235122, -0.309127,
		24.422720, 37.507236, 23.315638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.502491, 37.262024, 24.088161>,  <25.067768, 37.342651, 23.532026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.502491, 37.262024, 24.088161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.348499, 37.215954, 23.721878>,  <24.256105, 37.188313, 23.502108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.348499, 37.215954, 23.721878>,  <24.502491, 37.262024, 24.088161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348499, 37.215954, 23.721878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239845, -0.945608, 0.219771,
		-0.891216, 0.304236, 0.336414,
		-0.384978, -0.115176, -0.915711,
		24.233006, 37.181400, 23.447165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.882095, 36.934929, 24.292349>,  <24.502491, 37.262024, 24.088161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.882095, 36.934929, 24.292349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.884718, 36.870537, 23.897575>,  <23.886292, 36.831902, 23.660711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.884718, 36.870537, 23.897575>,  <23.882095, 36.934929, 24.292349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.884718, 36.870537, 23.897575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399265, -0.905295, 0.145013,
		-0.916812, 0.393099, -0.070208,
		0.006555, -0.160982, -0.986936,
		23.886684, 36.822243, 23.601494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.257042, 36.531212, 24.154026>,  <23.882095, 36.934929, 24.292349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.257042, 36.531212, 24.154026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.526630, 36.456383, 23.868153>,  <23.688383, 36.411488, 23.696629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.526630, 36.456383, 23.868153>,  <23.257042, 36.531212, 24.154026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.526630, 36.456383, 23.868153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161439, -0.981321, 0.104622,
		-0.720904, 0.044866, -0.691582,
		0.673970, -0.187070, -0.714681,
		23.728821, 36.400261, 23.653748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.988117, 36.090996, 23.626743>,  <23.257042, 36.531212, 24.154026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.988117, 36.090996, 23.626743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.358612, 36.013157, 23.497612>,  <23.580910, 35.966454, 23.420134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.358612, 36.013157, 23.497612>,  <22.988117, 36.090996, 23.626743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.358612, 36.013157, 23.497612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248153, -0.959461, -0.133622,
		-0.283736, 0.203875, -0.936978,
		0.926236, -0.194601, -0.322826,
		23.636482, 35.954777, 23.400764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.807888, 35.623901, 23.122574>,  <22.988117, 36.090996, 23.626743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.807888, 35.623901, 23.122574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.196920, 35.575703, 23.202141>,  <23.430340, 35.546783, 23.249880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.196920, 35.575703, 23.202141>,  <22.807888, 35.623901, 23.122574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.196920, 35.575703, 23.202141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131691, -0.990315, 0.043984,
		0.191689, -0.068973, -0.979029,
		0.972581, -0.120498, 0.198916,
		23.488695, 35.539555, 23.261816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.048048, 35.836376, 23.223227>,  <22.807888, 35.623901, 23.122574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.048048, 35.836376, 23.223227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.697052, 35.991417, 23.110249>,  <21.486454, 36.084442, 23.042461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.697052, 35.991417, 23.110249>,  <22.048048, 35.836376, 23.223227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.697052, 35.991417, 23.110249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459308, 0.509705, -0.727487,
		-0.138011, -0.768092, -0.625290,
		-0.877491, 0.387601, -0.282446,
		21.433805, 36.107697, 23.025515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.912403, 35.749451, 22.459751>,  <22.048048, 35.836376, 23.223227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.912403, 35.749451, 22.459751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.744675, 36.075974, 22.618656>,  <21.644037, 36.271889, 22.713999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.744675, 36.075974, 22.618656>,  <21.912403, 35.749451, 22.459751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.744675, 36.075974, 22.618656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450839, 0.567059, -0.689340,
		-0.787982, -0.109954, -0.605801,
		-0.419320, 0.816306, 0.397260,
		21.618879, 36.320866, 22.737835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.619299, 36.000099, 21.926968>,  <21.912403, 35.749451, 22.459751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.619299, 36.000099, 21.926968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.703821, 36.291187, 22.187973>,  <21.754536, 36.465839, 22.344576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.703821, 36.291187, 22.187973>,  <21.619299, 36.000099, 21.926968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.703821, 36.291187, 22.187973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559109, 0.457587, -0.691384,
		-0.801715, 0.510921, -0.310183,
		0.211307, 0.727719, 0.652514,
		21.767214, 36.509502, 22.383728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.452080, 36.720367, 21.608780>,  <21.619299, 36.000099, 21.926968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.452080, 36.720367, 21.608780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.716133, 36.791115, 21.900791>,  <21.874565, 36.833565, 22.075998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.716133, 36.791115, 21.900791>,  <21.452080, 36.720367, 21.608780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.716133, 36.791115, 21.900791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513820, 0.602597, -0.610627,
		-0.547914, 0.778199, 0.306916,
		0.660135, 0.176871, 0.730026,
		21.914173, 36.844177, 22.119799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.463514, 37.439789, 21.625841>,  <21.452080, 36.720367, 21.608780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.463514, 37.439789, 21.625841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.786701, 37.310997, 21.823231>,  <21.980614, 37.233723, 21.941666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.786701, 37.310997, 21.823231>,  <21.463514, 37.439789, 21.625841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.786701, 37.310997, 21.823231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581108, 0.573986, -0.576935,
		-0.097486, 0.752907, 0.650867,
		0.807967, -0.321981, 0.493476,
		22.029091, 37.214401, 21.971273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.855885, 37.994324, 21.806263>,  <21.463514, 37.439789, 21.625841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.855885, 37.994324, 21.806263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.138866, 37.713081, 21.834972>,  <22.308655, 37.544334, 21.852198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.138866, 37.713081, 21.834972>,  <21.855885, 37.994324, 21.806263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.138866, 37.713081, 21.834972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660556, 0.621670, -0.420941,
		0.251346, 0.345208, 0.904244,
		0.707454, -0.703106, 0.071775,
		22.351103, 37.502151, 21.856504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.459433, 38.355766, 22.029903>,  <21.855885, 37.994324, 21.806263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.459433, 38.355766, 22.029903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.625641, 38.010872, 21.914047>,  <22.725367, 37.803936, 21.844534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.625641, 38.010872, 21.914047>,  <22.459433, 38.355766, 22.029903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.625641, 38.010872, 21.914047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697589, 0.506436, -0.506845,
		0.583704, 0.008556, 0.811922,
		0.415523, -0.862235, -0.289640,
		22.750298, 37.752201, 21.827156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.106403, 38.362556, 22.116478>,  <22.459433, 38.355766, 22.029903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.106403, 38.362556, 22.116478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.100748, 38.075249, 21.838230>,  <23.097355, 37.902863, 21.671282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.100748, 38.075249, 21.838230>,  <23.106403, 38.362556, 22.116478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.100748, 38.075249, 21.838230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772130, 0.434180, -0.464008,
		0.635307, -0.543670, 0.548459,
		-0.014138, -0.718269, -0.695622,
		23.096506, 37.859768, 21.629543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.769464, 38.377266, 21.825989>,  <23.106403, 38.362556, 22.116478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.769464, 38.377266, 21.825989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.544664, 38.204090, 21.544075>,  <23.409784, 38.100185, 21.374926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.544664, 38.204090, 21.544075>,  <23.769464, 38.377266, 21.825989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.544664, 38.204090, 21.544075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688346, 0.227653, -0.688733,
		0.458625, -0.872203, 0.170070,
		-0.561999, -0.432938, -0.704785,
		23.376064, 38.074207, 21.332640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.207020, 38.033878, 21.361170>,  <23.769464, 38.377266, 21.825989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.207020, 38.033878, 21.361170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.873436, 38.055218, 21.141472>,  <23.673286, 38.068024, 21.009653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.873436, 38.055218, 21.141472>,  <24.207020, 38.033878, 21.361170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.873436, 38.055218, 21.141472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546161, 0.222086, -0.807704,
		0.078886, -0.973566, -0.214350,
		-0.833957, 0.053353, -0.549243,
		23.623249, 38.071224, 20.976698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.470617, 37.810429, 20.679327>,  <24.207020, 38.033878, 21.361170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.470617, 37.810429, 20.679327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.106506, 37.951298, 20.592266>,  <23.888041, 38.035820, 20.540030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.106506, 37.951298, 20.592266>,  <24.470617, 37.810429, 20.679327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.106506, 37.951298, 20.592266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291998, 0.173448, -0.940560,
		-0.293487, -0.919723, -0.260719,
		-0.910276, 0.352172, -0.217653,
		23.833424, 38.056950, 20.526970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.297304, 37.464626, 20.062346>,  <24.470617, 37.810429, 20.679327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.297304, 37.464626, 20.062346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.095259, 37.808853, 20.088551>,  <23.974031, 38.015388, 20.104275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.095259, 37.808853, 20.088551>,  <24.297304, 37.464626, 20.062346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.095259, 37.808853, 20.088551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334489, 0.265176, -0.904322,
		-0.795600, -0.434870, -0.421793,
		-0.505112, 0.860564, 0.065515,
		23.943726, 38.067020, 20.108206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.004267, 37.628922, 19.376907>,  <24.297304, 37.464626, 20.062346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.004267, 37.628922, 19.376907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.007088, 37.983704, 19.561626>,  <24.008781, 38.196575, 19.672457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.007088, 37.983704, 19.561626>,  <24.004267, 37.628922, 19.376907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.007088, 37.983704, 19.561626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439731, 0.412009, -0.798051,
		-0.898102, 0.208696, -0.387117,
		0.007055, 0.886958, 0.461796,
		24.009205, 38.249790, 19.700165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.708723, 38.108017, 18.838451>,  <24.004267, 37.628922, 19.376907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.708723, 38.108017, 18.838451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.908321, 38.323814, 19.109730>,  <24.028080, 38.453293, 19.272497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.908321, 38.323814, 19.109730>,  <23.708723, 38.108017, 18.838451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.908321, 38.323814, 19.109730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379249, 0.567724, -0.730657,
		-0.779213, 0.621800, 0.078688,
		0.498996, 0.539495, 0.678195,
		24.058020, 38.485664, 19.313189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.664852, 38.869461, 18.646664>,  <23.708723, 38.108017, 18.838451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.664852, 38.869461, 18.646664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.994280, 38.853920, 18.873016>,  <24.191936, 38.844597, 19.008827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.994280, 38.853920, 18.873016>,  <23.664852, 38.869461, 18.646664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.994280, 38.853920, 18.873016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487636, 0.558084, -0.671382,
		-0.289725, 0.828875, 0.478567,
		0.823572, -0.038850, 0.565880,
		24.241352, 38.842266, 19.042780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016085, 39.481613, 18.430904>,  <23.664852, 38.869461, 18.646664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016085, 39.481613, 18.430904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.305273, 39.274124, 18.613438>,  <24.478786, 39.149632, 18.722958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.305273, 39.274124, 18.613438>,  <24.016085, 39.481613, 18.430904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.305273, 39.274124, 18.613438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665785, 0.346713, -0.660696,
		0.184499, 0.781486, 0.596020,
		0.722973, -0.518719, 0.456334,
		24.522165, 39.118507, 18.750338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694292, 39.957390, 18.459335>,  <24.016085, 39.481613, 18.430904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694292, 39.957390, 18.459335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.824419, 39.587009, 18.536060>,  <24.902494, 39.364780, 18.582096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.824419, 39.587009, 18.536060>,  <24.694292, 39.957390, 18.459335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.824419, 39.587009, 18.536060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870703, 0.214197, -0.442715,
		0.368845, 0.311034, 0.875906,
		0.325315, -0.925947, 0.191813,
		24.922014, 39.309227, 18.593605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369059, 40.019051, 18.626444>,  <24.694292, 39.957390, 18.459335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369059, 40.019051, 18.626444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.364567, 39.628719, 18.539150>,  <25.361872, 39.394520, 18.486774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.364567, 39.628719, 18.539150>,  <25.369059, 40.019051, 18.626444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364567, 39.628719, 18.539150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942155, 0.062791, -0.329243,
		0.334989, -0.209306, 0.918681,
		-0.011228, -0.975832, -0.218233,
		25.361198, 39.335968, 18.473680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006634, 39.811737, 18.722548>,  <25.369059, 40.019051, 18.626444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006634, 39.811737, 18.722548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.859306, 39.548866, 18.459499>,  <25.770910, 39.391144, 18.301670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.859306, 39.548866, 18.459499>,  <26.006634, 39.811737, 18.722548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859306, 39.548866, 18.459499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847183, 0.054086, -0.528541,
		0.382911, -0.751796, 0.536825,
		-0.368320, -0.657174, -0.657619,
		25.748810, 39.351715, 18.262213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649788, 39.444912, 18.440399>,  <26.006634, 39.811737, 18.722548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649788, 39.444912, 18.440399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.363503, 39.336449, 18.182957>,  <26.191730, 39.271370, 18.028492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.363503, 39.336449, 18.182957>,  <26.649788, 39.444912, 18.440399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363503, 39.336449, 18.182957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695938, -0.199703, -0.689774,
		0.058507, -0.941591, 0.331638,
		-0.715714, -0.271156, -0.643605,
		26.148788, 39.255100, 17.989876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946228, 38.813545, 18.227367>,  <26.649788, 39.444912, 18.440399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946228, 38.813545, 18.227367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.680845, 38.989357, 17.985165>,  <26.521616, 39.094845, 17.839844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.680845, 38.989357, 17.985165>,  <26.946228, 38.813545, 18.227367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680845, 38.989357, 17.985165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611526, -0.147755, -0.777306,
		-0.431113, -0.885994, -0.170752,
		-0.663458, 0.439526, -0.605507,
		26.481808, 39.121216, 17.803513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.323095, 28.535463, 23.703938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584330, 28.727249, 23.938404>,  <29.741070, 28.842321, 24.079084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584330, 28.727249, 23.938404>,  <29.323095, 28.535463, 23.703938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584330, 28.727249, 23.938404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272054, 0.870912, -0.409265,
		-0.706729, 0.107816, 0.699221,
		0.653085, 0.479466, 0.586168,
		29.780254, 28.871088, 24.114254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985348, 29.138885, 23.967815>,  <29.323095, 28.535463, 23.703938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985348, 29.138885, 23.967815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374247, 29.217228, 24.019005>,  <29.607586, 29.264233, 24.049719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374247, 29.217228, 24.019005>,  <28.985348, 29.138885, 23.967815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374247, 29.217228, 24.019005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155145, 0.949154, -0.273930,
		-0.175118, 0.246473, 0.953197,
		0.972247, 0.195854, 0.127975,
		29.665920, 29.275984, 24.057398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011501, 29.748034, 24.349045>,  <28.985348, 29.138885, 23.967815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011501, 29.748034, 24.349045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355289, 29.721581, 24.146290>,  <29.561562, 29.705709, 24.024635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355289, 29.721581, 24.146290>,  <29.011501, 29.748034, 24.349045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355289, 29.721581, 24.146290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092449, 0.955136, -0.281367,
		0.502756, 0.288688, 0.814798,
		0.859470, -0.066132, -0.506890,
		29.613131, 29.701740, 23.994223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346636, 30.331099, 24.491737>,  <29.011501, 29.748034, 24.349045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346636, 30.331099, 24.491737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541183, 30.217457, 24.161228>,  <29.657911, 30.149271, 23.962923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541183, 30.217457, 24.161228>,  <29.346636, 30.331099, 24.491737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541183, 30.217457, 24.161228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072019, 0.929408, -0.361959,
		0.870780, 0.235553, 0.431574,
		0.486369, -0.284106, -0.826275,
		29.687094, 30.132225, 23.913345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761456, 30.871675, 24.341911>,  <29.346636, 30.331099, 24.491737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761456, 30.871675, 24.341911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721088, 30.674801, 23.996063>,  <29.696869, 30.556677, 23.788555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721088, 30.674801, 23.996063>,  <29.761456, 30.871675, 24.341911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721088, 30.674801, 23.996063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197576, 0.861663, -0.467441,
		0.975079, 0.123655, -0.184202,
		-0.100918, -0.492186, -0.864621,
		29.690813, 30.527145, 23.736677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256844, 31.191324, 23.935534>,  <29.761456, 30.871675, 24.341911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256844, 31.191324, 23.935534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007933, 30.998299, 23.688988>,  <29.858585, 30.882484, 23.541061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007933, 30.998299, 23.688988>,  <30.256844, 31.191324, 23.935534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007933, 30.998299, 23.688988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136347, 0.842167, -0.521694,
		0.770831, -0.240599, -0.589858,
		-0.622278, -0.482563, -0.616363,
		29.821249, 30.853529, 23.504078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447142, 31.401154, 23.272562>,  <30.256844, 31.191324, 23.935534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447142, 31.401154, 23.272562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074684, 31.269478, 23.209816>,  <29.851210, 31.190474, 23.172169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074684, 31.269478, 23.209816>,  <30.447142, 31.401154, 23.272562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074684, 31.269478, 23.209816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232326, 0.867116, -0.440606,
		0.281060, -0.373825, -0.883889,
		-0.931145, -0.329188, -0.156863,
		29.795341, 31.170721, 23.162758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349018, 31.488720, 22.560192>,  <30.447142, 31.401154, 23.272562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349018, 31.488720, 22.560192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987549, 31.452103, 22.727524>,  <29.770668, 31.430132, 22.827923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987549, 31.452103, 22.727524>,  <30.349018, 31.488720, 22.560192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987549, 31.452103, 22.727524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362552, 0.683426, -0.633628,
		-0.227891, -0.724257, -0.650782,
		-0.903671, -0.091545, 0.418328,
		29.716448, 31.424639, 22.853022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884325, 31.647789, 22.026789>,  <30.349018, 31.488720, 22.560192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884325, 31.647789, 22.026789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683842, 31.710163, 22.367252>,  <29.563551, 31.747587, 22.571531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683842, 31.710163, 22.367252>,  <29.884325, 31.647789, 22.026789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683842, 31.710163, 22.367252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441194, 0.800125, -0.406383,
		-0.744404, -0.579210, -0.332233,
		-0.501210, 0.155934, 0.851160,
		29.533480, 31.756943, 22.622601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306778, 31.938404, 21.737814>,  <29.884325, 31.647789, 22.026789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306778, 31.938404, 21.737814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318790, 32.025585, 22.128014>,  <29.325998, 32.077892, 22.362133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318790, 32.025585, 22.128014>,  <29.306778, 31.938404, 21.737814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318790, 32.025585, 22.128014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387614, 0.902108, -0.189624,
		-0.921333, -0.372422, 0.111572,
		0.030030, 0.217954, 0.975497,
		29.327799, 32.090973, 22.420662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719912, 32.306343, 21.725111>,  <29.306778, 31.938404, 21.737814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719912, 32.306343, 21.725111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928282, 32.369873, 22.060589>,  <29.053305, 32.407993, 22.261875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928282, 32.369873, 22.060589>,  <28.719912, 32.306343, 21.725111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928282, 32.369873, 22.060589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051514, 0.986596, -0.154840,
		-0.852046, 0.037456, 0.522125,
		0.520926, 0.158827, 0.838696,
		29.084560, 32.417522, 22.312197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395811, 32.817005, 22.034489>,  <28.719912, 32.306343, 21.725111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395811, 32.817005, 22.034489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753979, 32.844398, 22.210457>,  <28.968880, 32.860836, 22.316038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753979, 32.844398, 22.210457>,  <28.395811, 32.817005, 22.034489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753979, 32.844398, 22.210457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036233, 0.996030, -0.081315,
		-0.443744, 0.056872, 0.894347,
		0.895421, 0.068488, 0.439921,
		29.022606, 32.864944, 22.342434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291998, 33.319313, 22.525139>,  <28.395811, 32.817005, 22.034489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291998, 33.319313, 22.525139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679132, 33.284355, 22.430779>,  <28.911413, 33.263378, 22.374163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679132, 33.284355, 22.430779>,  <28.291998, 33.319313, 22.525139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679132, 33.284355, 22.430779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094068, 0.995418, 0.017151,
		0.233323, -0.038791, 0.971626,
		0.967839, -0.087397, -0.235903,
		28.969484, 33.258137, 22.360008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629507, 33.873798, 22.863914>,  <28.291998, 33.319313, 22.525139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629507, 33.873798, 22.863914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840805, 33.786877, 22.535587>,  <28.967583, 33.734726, 22.338591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840805, 33.786877, 22.535587>,  <28.629507, 33.873798, 22.863914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840805, 33.786877, 22.535587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066495, 0.974316, -0.215143,
		0.846486, 0.059068, 0.529125,
		0.528243, -0.217300, -0.820817,
		28.999277, 33.721687, 22.289343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224823, 34.267326, 23.424362>,  <28.629507, 33.873798, 22.863914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224823, 34.267326, 23.424362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126863, 34.606247, 23.612877>,  <28.068089, 34.809597, 23.725986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126863, 34.606247, 23.612877>,  <28.224823, 34.267326, 23.424362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126863, 34.606247, 23.612877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606664, -0.245258, 0.756179,
		0.756296, 0.471099, -0.453962,
		-0.244898, 0.847298, 0.471287,
		28.053394, 34.860435, 23.754263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888729, 34.613083, 23.671347>,  <28.224823, 34.267326, 23.424362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888729, 34.613083, 23.671347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585135, 34.762260, 23.884834>,  <28.402977, 34.851765, 24.012926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585135, 34.762260, 23.884834>,  <28.888729, 34.613083, 23.671347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585135, 34.762260, 23.884834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499336, -0.192663, 0.844716,
		0.417857, 0.907632, -0.039995,
		-0.758986, 0.372941, 0.533718,
		28.357439, 34.874142, 24.044950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266209, 34.656517, 24.230999>,  <28.888729, 34.613083, 23.671347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266209, 34.656517, 24.230999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892904, 34.723015, 24.358364>,  <28.668922, 34.762913, 24.434784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892904, 34.723015, 24.358364>,  <29.266209, 34.656517, 24.230999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892904, 34.723015, 24.358364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285210, -0.195914, 0.938228,
		0.218355, 0.966427, 0.135425,
		-0.933261, 0.166243, 0.318414,
		28.612926, 34.772888, 24.453888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131405, 35.180195, 24.691202>,  <29.266209, 34.656517, 24.230999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131405, 35.180195, 24.691202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823668, 34.938248, 24.773418>,  <28.639025, 34.793079, 24.822748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823668, 34.938248, 24.773418>,  <29.131405, 35.180195, 24.691202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823668, 34.938248, 24.773418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262722, -0.006290, 0.964851,
		-0.582314, 0.796301, 0.163751,
		-0.769342, -0.604867, 0.205543,
		28.592865, 34.756786, 24.835081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914034, 35.260597, 25.462683>,  <29.131405, 35.180195, 24.691202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914034, 35.260597, 25.462683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765823, 34.901474, 25.367481>,  <28.676897, 34.686001, 25.310360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765823, 34.901474, 25.367481>,  <28.914034, 35.260597, 25.462683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765823, 34.901474, 25.367481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106259, -0.295536, 0.949404,
		-0.922723, 0.326491, 0.204905,
		-0.370529, -0.897810, -0.238005,
		28.654665, 34.632130, 25.296080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678768, 35.039700, 26.103409>,  <28.914034, 35.260597, 25.462683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678768, 35.039700, 26.103409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667742, 34.702602, 25.888363>,  <28.661125, 34.500343, 25.759335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667742, 34.702602, 25.888363>,  <28.678768, 35.039700, 26.103409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667742, 34.702602, 25.888363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243621, -0.527267, 0.814026,
		-0.969479, -0.108533, 0.219845,
		-0.027568, -0.842740, -0.537615,
		28.659472, 34.449780, 25.727077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388481, 34.565247, 26.518721>,  <28.678768, 35.039700, 26.103409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388481, 34.565247, 26.518721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570223, 34.333622, 26.247944>,  <28.679268, 34.194649, 26.085478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570223, 34.333622, 26.247944>,  <28.388481, 34.565247, 26.518721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570223, 34.333622, 26.247944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323614, -0.600702, 0.731048,
		-0.829962, -0.551222, -0.085539,
		0.454353, -0.579060, -0.676944,
		28.706530, 34.159904, 26.044861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274916, 33.858143, 26.833849>,  <28.388481, 34.565247, 26.518721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274916, 33.858143, 26.833849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562811, 33.823883, 26.558273>,  <28.735548, 33.803326, 26.392927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562811, 33.823883, 26.558273>,  <28.274916, 33.858143, 26.833849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562811, 33.823883, 26.558273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316551, -0.842711, 0.435469,
		-0.617875, -0.531509, -0.579421,
		0.719740, -0.085649, -0.688940,
		28.778732, 33.798187, 26.351591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285219, 33.064865, 26.595137>,  <28.274916, 33.858143, 26.833849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285219, 33.064865, 26.595137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651617, 33.205833, 26.518452>,  <28.871456, 33.290413, 26.472441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651617, 33.205833, 26.518452>,  <28.285219, 33.064865, 26.595137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651617, 33.205833, 26.518452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400153, -0.836926, 0.373406,
		-0.028853, -0.418752, -0.907642,
		0.915994, 0.352422, -0.191713,
		28.926414, 33.311562, 26.460938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635628, 32.583893, 26.131971>,  <28.285219, 33.064865, 26.595137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635628, 32.583893, 26.131971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899645, 32.777660, 26.361641>,  <29.058056, 32.893921, 26.499443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899645, 32.777660, 26.361641>,  <28.635628, 32.583893, 26.131971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899645, 32.777660, 26.361641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342168, -0.874293, 0.344286,
		0.668778, -0.030779, -0.742825,
		0.660043, 0.484422, 0.574176,
		29.097658, 32.922985, 26.533894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990831, 32.019249, 26.378241>,  <28.635628, 32.583893, 26.131971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990831, 32.019249, 26.378241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179701, 32.313004, 26.573269>,  <29.293022, 32.489258, 26.690287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179701, 32.313004, 26.573269>,  <28.990831, 32.019249, 26.378241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179701, 32.313004, 26.573269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588721, -0.674392, 0.445649,
		0.656094, 0.076621, -0.750779,
		0.472174, 0.734387, 0.487573,
		29.321352, 32.533321, 26.719542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795187, 31.998518, 26.259544>,  <28.990831, 32.019249, 26.378241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795187, 31.998518, 26.259544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686451, 32.162880, 26.607628>,  <29.621208, 32.261497, 26.816477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686451, 32.162880, 26.607628>,  <29.795187, 31.998518, 26.259544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686451, 32.162880, 26.607628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533605, -0.688159, 0.491633,
		0.800855, 0.597993, -0.032189,
		-0.271842, 0.410903, 0.870207,
		29.604898, 32.286152, 26.868690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460207, 31.979473, 26.697767>,  <29.795187, 31.998518, 26.259544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460207, 31.979473, 26.697767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166666, 32.051792, 26.959690>,  <29.990541, 32.095184, 27.116844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166666, 32.051792, 26.959690>,  <30.460207, 31.979473, 26.697767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166666, 32.051792, 26.959690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440799, -0.606695, 0.661526,
		0.516869, 0.774102, 0.365531,
		-0.733854, 0.180797, 0.654806,
		29.946510, 32.106030, 27.156132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778910, 32.062996, 27.359558>,  <30.460207, 31.979473, 26.697767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778910, 32.062996, 27.359558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400881, 31.949627, 27.424690>,  <30.174065, 31.881607, 27.463770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400881, 31.949627, 27.424690>,  <30.778910, 32.062996, 27.359558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400881, 31.949627, 27.424690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324307, -0.750832, 0.575392,
		-0.040818, 0.596594, 0.801504,
		-0.945071, -0.283420, 0.162833,
		30.117359, 31.864601, 27.473539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429287, 32.361393, 27.241663>,  <30.778910, 32.062996, 27.359558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429287, 32.361393, 27.241663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701473, 32.534317, 27.478333>,  <31.864784, 32.638069, 27.620335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701473, 32.534317, 27.478333>,  <31.429287, 32.361393, 27.241663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701473, 32.534317, 27.478333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274171, 0.598590, -0.752676,
		-0.679557, 0.674389, 0.288793,
		0.680464, 0.432308, 0.591674,
		31.905613, 32.664009, 27.655834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387249, 33.135509, 27.146030>,  <31.429287, 32.361393, 27.241663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387249, 33.135509, 27.146030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756899, 33.074776, 27.286282>,  <31.978689, 33.038334, 27.370432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756899, 33.074776, 27.286282>,  <31.387249, 33.135509, 27.146030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756899, 33.074776, 27.286282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374151, 0.545716, -0.749803,
		-0.077496, 0.824099, 0.561120,
		0.924124, -0.151837, 0.350628,
		32.034138, 33.029224, 27.391470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714195, 33.784313, 27.077211>,  <31.387249, 33.135509, 27.146030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714195, 33.784313, 27.077211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028366, 33.542431, 27.130039>,  <32.216869, 33.397301, 27.161736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028366, 33.542431, 27.130039>,  <31.714195, 33.784313, 27.077211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028366, 33.542431, 27.130039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400227, 0.333408, -0.853614,
		0.472150, 0.723307, 0.503886,
		0.785425, -0.604703, 0.132068,
		32.263992, 33.361019, 27.169661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403809, 34.243290, 27.038589>,  <31.714195, 33.784313, 27.077211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403809, 34.243290, 27.038589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524662, 33.867558, 26.973629>,  <32.597176, 33.642117, 26.934652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524662, 33.867558, 26.973629>,  <32.403809, 34.243290, 27.038589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524662, 33.867558, 26.973629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640743, 0.326249, -0.694989,
		0.705808, 0.105922, 0.700440,
		0.302133, -0.939331, -0.162400,
		32.615303, 33.585758, 26.924910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070518, 34.283279, 26.940596>,  <32.403809, 34.243290, 27.038589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070518, 34.283279, 26.940596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002464, 33.920940, 26.785423>,  <32.961632, 33.703537, 26.692320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002464, 33.920940, 26.785423>,  <33.070518, 34.283279, 26.940596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002464, 33.920940, 26.785423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581555, 0.225507, -0.781627,
		0.795517, -0.358588, 0.488433,
		-0.170137, -0.905848, -0.387933,
		32.951424, 33.649185, 26.669043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787182, 34.003391, 26.650814>,  <33.070518, 34.283279, 26.940596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787182, 34.003391, 26.650814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512100, 33.801861, 26.441730>,  <33.347050, 33.680943, 26.316280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512100, 33.801861, 26.441730>,  <33.787182, 34.003391, 26.650814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512100, 33.801861, 26.441730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477681, 0.228164, -0.848388,
		0.546702, -0.833128, 0.083758,
		-0.687705, -0.503825, -0.522707,
		33.305790, 33.650715, 26.284918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237206, 33.641068, 26.159178>,  <33.787182, 34.003391, 26.650814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237206, 33.641068, 26.159178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859982, 33.654850, 26.026844>,  <33.633648, 33.663120, 25.947443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859982, 33.654850, 26.026844>,  <34.237206, 33.641068, 26.159178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859982, 33.654850, 26.026844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323308, 0.328717, -0.887365,
		0.078173, -0.943799, -0.321141,
		-0.943059, 0.034459, -0.330835,
		33.577065, 33.665188, 25.927593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231709, 33.359192, 25.481384>,  <34.237206, 33.641068, 26.159178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231709, 33.359192, 25.481384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892040, 33.570137, 25.470104>,  <33.688240, 33.696705, 25.463337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892040, 33.570137, 25.470104>,  <34.231709, 33.359192, 25.481384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892040, 33.570137, 25.470104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177450, 0.234633, -0.955751,
		-0.497408, -0.816603, -0.292824,
		-0.849174, 0.527359, -0.028198,
		33.637287, 33.728344, 25.461645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869781, 33.113819, 24.877979>,  <34.231709, 33.359192, 25.481384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869781, 33.113819, 24.877979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749966, 33.479046, 24.988678>,  <33.678078, 33.698181, 25.055098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749966, 33.479046, 24.988678>,  <33.869781, 33.113819, 24.877979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749966, 33.479046, 24.988678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308781, 0.367228, -0.877381,
		-0.902736, -0.177354, -0.391936,
		-0.299537, 0.913066, 0.276746,
		33.660103, 33.752964, 25.071701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464119, 33.339703, 24.314169>,  <33.869781, 33.113819, 24.877979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464119, 33.339703, 24.314169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531887, 33.690712, 24.493614>,  <33.572548, 33.901318, 24.601282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531887, 33.690712, 24.493614>,  <33.464119, 33.339703, 24.314169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531887, 33.690712, 24.493614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099595, 0.437621, -0.893627,
		-0.980500, 0.196074, -0.013257,
		0.169415, 0.877521, 0.448615,
		33.582710, 33.953968, 24.628199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006172, 33.859764, 24.015368>,  <33.464119, 33.339703, 24.314169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006172, 33.859764, 24.015368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321987, 34.058811, 24.159039>,  <33.511478, 34.178238, 24.245241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321987, 34.058811, 24.159039>,  <33.006172, 33.859764, 24.015368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321987, 34.058811, 24.159039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036119, 0.621927, -0.782242,
		-0.612635, 0.604639, 0.509009,
		0.789540, 0.497614, 0.359175,
		33.558849, 34.208096, 24.266790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922371, 34.613060, 23.878895>,  <33.006172, 33.859764, 24.015368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922371, 34.613060, 23.878895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315159, 34.576912, 23.945305>,  <33.550831, 34.555222, 23.985151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315159, 34.576912, 23.945305>,  <32.922371, 34.613060, 23.878895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315159, 34.576912, 23.945305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171152, 0.797916, -0.577959,
		-0.080245, 0.595955, 0.798998,
		0.981971, -0.090372, 0.166028,
		33.609749, 34.549801, 23.995113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.066776, 30.587997, 30.973919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.456766, 30.673351, 30.948975>,  <31.690760, 30.724564, 30.934008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.456766, 30.673351, 30.948975>,  <31.066776, 30.587997, 30.973919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456766, 30.673351, 30.948975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177081, 0.575839, -0.798155,
		-0.134402, 0.789225, 0.599216,
		0.974976, 0.213383, -0.062363,
		31.749260, 30.737366, 30.930265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150291, 31.402107, 30.951487>,  <31.066776, 30.587997, 30.973919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150291, 31.402107, 30.951487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.500366, 31.268230, 30.811756>,  <31.710411, 31.187904, 30.727917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.500366, 31.268230, 30.811756>,  <31.150291, 31.402107, 30.951487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500366, 31.268230, 30.811756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013543, 0.738738, -0.673857,
		0.483595, 0.585020, 0.651066,
		0.875187, -0.334691, -0.349327,
		31.762922, 31.167824, 30.706959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545883, 31.971260, 30.892345>,  <31.150291, 31.402107, 30.951487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545883, 31.971260, 30.892345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.721817, 31.704834, 30.651379>,  <31.827377, 31.544979, 30.506800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.721817, 31.704834, 30.651379>,  <31.545883, 31.971260, 30.892345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721817, 31.704834, 30.651379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037592, 0.683849, -0.728655,
		0.897291, 0.297843, 0.325820,
		0.439837, -0.666063, -0.602415,
		31.853767, 31.505014, 30.470654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126671, 32.302448, 30.534212>,  <31.545883, 31.971260, 30.892345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126671, 32.302448, 30.534212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.035156, 31.985405, 30.308140>,  <31.980246, 31.795179, 30.172497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.035156, 31.985405, 30.308140>,  <32.126671, 32.302448, 30.534212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035156, 31.985405, 30.308140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082908, 0.562606, -0.822557,
		0.969939, -0.235051, -0.063005,
		-0.228790, -0.792607, -0.565181,
		31.966518, 31.747623, 30.138586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562195, 32.420105, 29.962622>,  <32.126671, 32.302448, 30.534212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562195, 32.420105, 29.962622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.275616, 32.167313, 29.844433>,  <32.103668, 32.015636, 29.773520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.275616, 32.167313, 29.844433>,  <32.562195, 32.420105, 29.962622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275616, 32.167313, 29.844433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118241, 0.527399, -0.841350,
		0.687550, -0.567844, -0.452579,
		-0.716446, -0.631983, -0.295470,
		32.060680, 31.977718, 29.755793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797649, 32.011227, 29.271992>,  <32.562195, 32.420105, 29.962622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797649, 32.011227, 29.271992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.402534, 32.033615, 29.330166>,  <32.165466, 32.047050, 29.365070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.402534, 32.033615, 29.330166>,  <32.797649, 32.011227, 29.271992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402534, 32.033615, 29.330166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110367, 0.407594, -0.906469,
		-0.110019, -0.911446, -0.396437,
		-0.987783, 0.055976, 0.145437,
		32.106201, 32.050407, 29.373796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555244, 31.668976, 28.635147>,  <32.797649, 32.011227, 29.271992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555244, 31.668976, 28.635147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.240685, 31.879681, 28.764202>,  <32.051949, 32.006104, 28.841635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.240685, 31.879681, 28.764202>,  <32.555244, 31.668976, 28.635147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240685, 31.879681, 28.764202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122778, 0.378596, -0.917382,
		-0.605390, -0.761044, -0.233055,
		-0.786402, 0.526760, 0.322638,
		32.004765, 32.037708, 28.860994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033108, 31.563105, 28.198154>,  <32.555244, 31.668976, 28.635147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033108, 31.563105, 28.198154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.948095, 31.914772, 28.368752>,  <31.897089, 32.125771, 28.471109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.948095, 31.914772, 28.368752>,  <32.033108, 31.563105, 28.198154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948095, 31.914772, 28.368752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100252, 0.414542, -0.904491,
		-0.971999, -0.234987, 0.000037,
		-0.212528, 0.879168, 0.426492,
		31.884336, 32.178524, 28.496698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458633, 31.899925, 27.787443>,  <32.033108, 31.563105, 28.198154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458633, 31.899925, 27.787443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.677105, 32.191700, 27.952179>,  <31.808187, 32.366764, 28.051022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.677105, 32.191700, 27.952179>,  <31.458633, 31.899925, 27.787443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677105, 32.191700, 27.952179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179640, 0.378218, -0.908119,
		-0.818179, 0.569979, 0.075539,
		0.546180, 0.729435, 0.411841,
		31.840960, 32.410530, 28.075731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787189, 31.995087, 28.142933>,  <31.458633, 31.899925, 27.787443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787189, 31.995087, 28.142933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.506315, 31.763405, 27.977303>,  <30.337791, 31.624395, 27.877924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.506315, 31.763405, 27.977303>,  <30.787189, 31.995087, 28.142933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506315, 31.763405, 27.977303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382649, -0.797439, 0.466552,
		-0.600430, 0.169159, 0.781581,
		-0.702185, -0.579203, -0.414078,
		30.295660, 31.589643, 27.853079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549887, 31.600912, 28.693607>,  <30.787189, 31.995087, 28.142933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549887, 31.600912, 28.693607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.417749, 31.386517, 28.382843>,  <30.338467, 31.257879, 28.196384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.417749, 31.386517, 28.382843>,  <30.549887, 31.600912, 28.693607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417749, 31.386517, 28.382843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065373, -0.834136, 0.547672,
		-0.941595, 0.130130, 0.310589,
		-0.330342, -0.535989, -0.776911,
		30.318647, 31.225719, 28.149771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107183, 31.105974, 28.986118>,  <30.549887, 31.600912, 28.693607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107183, 31.105974, 28.986118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.161495, 30.947155, 28.623039>,  <30.194082, 30.851864, 28.405191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.161495, 30.947155, 28.623039>,  <30.107183, 31.105974, 28.986118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161495, 30.947155, 28.623039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112431, -0.904090, 0.412286,
		-0.984339, -0.158033, -0.078117,
		0.135780, -0.397047, -0.907699,
		30.202229, 30.828041, 28.350729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671019, 30.534767, 28.938934>,  <30.107183, 31.105974, 28.986118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671019, 30.534767, 28.938934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.960556, 30.467957, 28.671158>,  <30.134279, 30.427870, 28.510492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.960556, 30.467957, 28.671158>,  <29.671019, 30.534767, 28.938934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960556, 30.467957, 28.671158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177794, -0.892336, 0.414880,
		-0.666661, -0.419331, -0.616217,
		0.723845, -0.167025, -0.669441,
		30.177710, 30.417849, 28.470325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447382, 29.956854, 28.638725>,  <29.671019, 30.534767, 28.938934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447382, 29.956854, 28.638725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.836401, 29.993462, 28.553146>,  <30.069813, 30.015427, 28.501799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.836401, 29.993462, 28.553146>,  <29.447382, 29.956854, 28.638725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836401, 29.993462, 28.553146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147797, -0.953093, 0.264139,
		-0.179738, -0.288509, -0.940456,
		0.972548, 0.091521, -0.213947,
		30.128166, 30.020918, 28.488962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571348, 29.371418, 28.265408>,  <29.447382, 29.956854, 28.638725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571348, 29.371418, 28.265408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.925714, 29.498322, 28.400761>,  <30.138334, 29.574463, 28.481972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.925714, 29.498322, 28.400761>,  <29.571348, 29.371418, 28.265408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925714, 29.498322, 28.400761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183057, -0.909430, 0.373400,
		0.426199, -0.268858, -0.863753,
		0.885914, 0.317259, 0.338382,
		30.191488, 29.593500, 28.502275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924696, 28.868469, 28.177969>,  <29.571348, 29.371418, 28.265408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924696, 28.868469, 28.177969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.132349, 29.074299, 28.450943>,  <30.256941, 29.197798, 28.614727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.132349, 29.074299, 28.450943>,  <29.924696, 28.868469, 28.177969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132349, 29.074299, 28.450943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210749, -0.850866, 0.481260,
		0.828304, -0.106015, -0.550158,
		0.519132, 0.514575, 0.682433,
		30.288088, 29.228672, 28.655672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560049, 28.487375, 28.349894>,  <29.924696, 28.868469, 28.177969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560049, 28.487375, 28.349894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.499043, 28.723480, 28.666962>,  <30.462439, 28.865143, 28.857203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.499043, 28.723480, 28.666962>,  <30.560049, 28.487375, 28.349894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499043, 28.723480, 28.666962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221814, -0.761148, 0.609469,
		0.963087, 0.268780, -0.014841,
		-0.152517, 0.590264, 0.792671,
		30.453287, 28.900558, 28.904762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075699, 28.310802, 28.892204>,  <30.560049, 28.487375, 28.349894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075699, 28.310802, 28.892204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.777466, 28.512962, 29.065952>,  <30.598526, 28.634258, 29.170202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.777466, 28.512962, 29.065952>,  <31.075699, 28.310802, 28.892204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777466, 28.512962, 29.065952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043214, -0.687097, 0.725279,
		0.665012, 0.521984, 0.534127,
		-0.745581, 0.505402, 0.434371,
		30.553791, 28.664583, 29.196264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237875, 28.334724, 29.640408>,  <31.075699, 28.310802, 28.892204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237875, 28.334724, 29.640408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.846760, 28.418465, 29.644493>,  <30.612091, 28.468708, 29.646944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.846760, 28.418465, 29.644493>,  <31.237875, 28.334724, 29.640408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846760, 28.418465, 29.644493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095154, -0.486787, 0.868323,
		0.186755, 0.848063, 0.495895,
		-0.977787, 0.209350, 0.010213,
		30.553423, 28.481270, 29.647556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095030, 28.546244, 30.334444>,  <31.237875, 28.334724, 29.640408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095030, 28.546244, 30.334444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.746500, 28.423615, 30.181183>,  <30.537382, 28.350037, 30.089226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.746500, 28.423615, 30.181183>,  <31.095030, 28.546244, 30.334444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746500, 28.423615, 30.181183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150275, -0.576596, 0.803091,
		-0.467130, 0.757331, 0.456332,
		-0.871325, -0.306572, -0.383153,
		30.485102, 28.331642, 30.066236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715427, 28.580828, 30.809155>,  <31.095030, 28.546244, 30.334444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715427, 28.580828, 30.809155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.496519, 28.348560, 30.568050>,  <30.365173, 28.209200, 30.423388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.496519, 28.348560, 30.568050>,  <30.715427, 28.580828, 30.809155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496519, 28.348560, 30.568050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218448, -0.596118, 0.772609,
		-0.807945, 0.554498, 0.199392,
		-0.547271, -0.580668, -0.602759,
		30.332338, 28.174360, 30.387222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104986, 28.501581, 31.148104>,  <30.715427, 28.580828, 30.809155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104986, 28.501581, 31.148104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.156132, 28.188362, 30.904633>,  <30.186819, 28.000431, 30.758551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.156132, 28.188362, 30.904633>,  <30.104986, 28.501581, 31.148104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156132, 28.188362, 30.904633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056451, -0.618466, 0.783782,
		-0.990184, -0.065856, -0.123282,
		0.127862, -0.783047, -0.608677,
		30.194490, 27.953447, 30.722029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610865, 28.008678, 31.314857>,  <30.104986, 28.501581, 31.148104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610865, 28.008678, 31.314857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.869287, 27.784916, 31.107136>,  <30.024342, 27.650658, 30.982504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.869287, 27.784916, 31.107136>,  <29.610865, 28.008678, 31.314857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869287, 27.784916, 31.107136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098190, -0.613786, 0.783343,
		-0.756948, -0.557074, -0.341612,
		0.646057, -0.559406, -0.519303,
		30.063105, 27.617094, 30.951345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.861103, 25.771080, 29.822481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.669632, 26.095814, 29.956223>,  <36.554749, 26.290653, 30.036467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.669632, 26.095814, 29.956223>,  <36.861103, 25.771080, 29.822481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669632, 26.095814, 29.956223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114811, 0.435423, -0.892875,
		-0.870451, -0.389013, -0.301636,
		-0.478679, 0.811835, 0.334352,
		36.526028, 26.339365, 30.056528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409576, 25.946110, 29.286360>,  <36.861103, 25.771080, 29.822481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409576, 25.946110, 29.286360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392189, 26.267963, 29.523232>,  <36.381756, 26.461075, 29.665354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392189, 26.267963, 29.523232>,  <36.409576, 25.946110, 29.286360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392189, 26.267963, 29.523232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191594, 0.575022, -0.795387,
		-0.980511, -0.148031, 0.129168,
		-0.043467, 0.804634, 0.592178,
		36.379150, 26.509354, 29.700886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766678, 26.317003, 29.238699>,  <36.409576, 25.946110, 29.286360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766678, 26.317003, 29.238699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.017586, 26.602875, 29.362484>,  <36.168129, 26.774397, 29.436756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.017586, 26.602875, 29.362484>,  <35.766678, 26.317003, 29.238699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017586, 26.602875, 29.362484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282424, 0.579053, -0.764810,
		-0.725789, 0.392342, 0.565064,
		0.627269, 0.714678, 0.309464,
		36.205765, 26.817278, 29.455322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380280, 26.928007, 29.030533>,  <35.766678, 26.317003, 29.238699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380280, 26.928007, 29.030533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758774, 27.036369, 29.101234>,  <35.985870, 27.101387, 29.143656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758774, 27.036369, 29.101234>,  <35.380280, 26.928007, 29.030533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758774, 27.036369, 29.101234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087422, 0.740280, -0.666591,
		-0.311431, 0.615302, 0.724165,
		0.946239, 0.270905, 0.176755,
		36.042645, 27.117641, 29.154261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360878, 27.658398, 29.278828>,  <35.380280, 26.928007, 29.030533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360878, 27.658398, 29.278828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.718151, 27.608936, 29.105885>,  <35.932514, 27.579260, 29.002119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.718151, 27.608936, 29.105885>,  <35.360878, 27.658398, 29.278828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718151, 27.608936, 29.105885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111019, 0.871059, -0.478467,
		0.435773, 0.475359, 0.764288,
		0.893184, -0.123652, -0.432358,
		35.986107, 27.571840, 28.976177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648514, 28.380833, 29.196791>,  <35.360878, 27.658398, 29.278828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648514, 28.380833, 29.196791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880833, 28.163059, 28.954712>,  <36.020226, 28.032396, 28.809465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880833, 28.163059, 28.954712>,  <35.648514, 28.380833, 29.196791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880833, 28.163059, 28.954712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010612, 0.738316, -0.674371,
		0.813976, 0.398098, 0.423038,
		0.580802, -0.544432, -0.605196,
		36.055073, 27.999729, 28.773153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294060, 28.782408, 28.994963>,  <35.648514, 28.380833, 29.196791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294060, 28.782408, 28.994963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235989, 28.508812, 28.709003>,  <36.201145, 28.344654, 28.537428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235989, 28.508812, 28.709003>,  <36.294060, 28.782408, 28.994963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235989, 28.508812, 28.709003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092715, 0.709971, -0.698101,
		0.985052, -0.167629, -0.039655,
		-0.145176, -0.683990, -0.714900,
		36.192436, 28.303616, 28.494534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758537, 28.978157, 28.496910>,  <36.294060, 28.782408, 28.994963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758537, 28.978157, 28.496910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.508434, 28.731209, 28.305954>,  <36.358372, 28.583040, 28.191380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.508434, 28.731209, 28.305954>,  <36.758537, 28.978157, 28.496910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508434, 28.731209, 28.305954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070032, 0.564858, -0.822211,
		0.777268, -0.547528, -0.309947,
		-0.625260, -0.617372, -0.477391,
		36.320858, 28.545998, 28.162737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104042, 28.694860, 27.904655>,  <36.758537, 28.978157, 28.496910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104042, 28.694860, 27.904655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.710522, 28.671009, 27.837029>,  <36.474411, 28.656698, 27.796452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.710522, 28.671009, 27.837029>,  <37.104042, 28.694860, 27.904655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710522, 28.671009, 27.837029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108793, 0.550999, -0.827384,
		0.142490, -0.832373, -0.535585,
		-0.983799, -0.059626, -0.169068,
		36.415382, 28.653122, 27.786308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071854, 28.790335, 27.204216>,  <37.104042, 28.694860, 27.904655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071854, 28.790335, 27.204216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690571, 28.843731, 27.312714>,  <36.461800, 28.875769, 27.377811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690571, 28.843731, 27.312714>,  <37.071854, 28.790335, 27.204216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690571, 28.843731, 27.312714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170227, 0.504458, -0.846490,
		-0.249830, -0.853055, -0.458130,
		-0.953209, 0.133492, 0.271242,
		36.404610, 28.883780, 27.394087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690022, 28.692600, 26.566635>,  <37.071854, 28.790335, 27.204216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690022, 28.692600, 26.566635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.463955, 28.906940, 26.817539>,  <36.328316, 29.035543, 26.968082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.463955, 28.906940, 26.817539>,  <36.690022, 28.692600, 26.566635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463955, 28.906940, 26.817539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392146, 0.494453, -0.775717,
		-0.725819, -0.684385, -0.069316,
		-0.565162, 0.535848, 0.627262,
		36.294407, 29.067696, 27.005718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155159, 28.883039, 26.186823>,  <36.690022, 28.692600, 26.566635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155159, 28.883039, 26.186823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102264, 29.129086, 26.497730>,  <36.070526, 29.276712, 26.684275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102264, 29.129086, 26.497730>,  <36.155159, 28.883039, 26.186823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102264, 29.129086, 26.497730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403641, 0.682776, -0.609008,
		-0.905310, -0.394273, 0.157995,
		-0.132240, 0.615115, 0.777269,
		36.062592, 29.313620, 26.730911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426682, 29.143538, 26.181070>,  <36.155159, 28.883039, 26.186823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426682, 29.143538, 26.181070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657825, 29.408211, 26.372173>,  <35.796513, 29.567015, 26.486835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657825, 29.408211, 26.372173>,  <35.426682, 29.143538, 26.181070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657825, 29.408211, 26.372173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299230, 0.716399, -0.630265,
		-0.759299, 0.221248, 0.611976,
		0.577864, 0.661681, 0.477757,
		35.831184, 29.606714, 26.515501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885887, 29.664076, 26.336647>,  <35.426682, 29.143538, 26.181070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885887, 29.664076, 26.336647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.263180, 29.793858, 26.365067>,  <35.489555, 29.871727, 26.382118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.263180, 29.793858, 26.365067>,  <34.885887, 29.664076, 26.336647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263180, 29.793858, 26.365067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123966, 0.542344, -0.830960,
		-0.308141, 0.774978, 0.551777,
		0.943229, 0.324455, 0.071047,
		35.546150, 29.891193, 26.386381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226837, 30.031321, 26.301805>,  <34.885887, 29.664076, 26.336647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226837, 30.031321, 26.301805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940945, 29.905685, 26.051842>,  <33.769409, 29.830303, 25.901863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940945, 29.905685, 26.051842>,  <34.226837, 30.031321, 26.301805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940945, 29.905685, 26.051842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169745, -0.788875, 0.590646,
		-0.678490, 0.528227, 0.510518,
		-0.714730, -0.314090, -0.624907,
		33.726524, 29.811459, 25.864370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583950, 29.851561, 26.720478>,  <34.226837, 30.031321, 26.301805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583950, 29.851561, 26.720478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546524, 29.650768, 26.376556>,  <33.524067, 29.530293, 26.170204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546524, 29.650768, 26.376556>,  <33.583950, 29.851561, 26.720478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546524, 29.650768, 26.376556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060709, -0.864860, 0.498328,
		-0.993760, -0.005571, 0.111396,
		-0.093566, -0.501981, -0.859802,
		33.518456, 29.500174, 26.118616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063782, 29.318346, 26.868513>,  <33.583950, 29.851561, 26.720478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063782, 29.318346, 26.868513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278805, 29.172935, 26.564178>,  <33.407818, 29.085690, 26.381577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278805, 29.172935, 26.564178>,  <33.063782, 29.318346, 26.868513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278805, 29.172935, 26.564178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010538, -0.905122, 0.425021,
		-0.843158, -0.220458, -0.490391,
		0.537563, -0.363527, -0.760838,
		33.440075, 29.063877, 26.335926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717041, 28.689123, 26.753714>,  <33.063782, 29.318346, 26.868513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717041, 28.689123, 26.753714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.057350, 28.633453, 26.551003>,  <33.261536, 28.600052, 26.429377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.057350, 28.633453, 26.551003>,  <32.717041, 28.689123, 26.753714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057350, 28.633453, 26.551003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038758, -0.945056, 0.324604,
		-0.524108, -0.295805, -0.798631,
		0.850770, -0.139175, -0.506776,
		33.312580, 28.591702, 26.398970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722706, 28.091835, 26.293642>,  <32.717041, 28.689123, 26.753714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722706, 28.091835, 26.293642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091755, 28.168915, 26.427288>,  <33.313187, 28.215162, 26.507475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091755, 28.168915, 26.427288>,  <32.722706, 28.091835, 26.293642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091755, 28.168915, 26.427288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074814, -0.939209, 0.335095,
		0.378374, -0.284170, -0.880954,
		0.922624, 0.192699, 0.334113,
		33.368542, 28.226725, 26.527521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064579, 27.381348, 26.287218>,  <32.722706, 28.091835, 26.293642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064579, 27.381348, 26.287218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.317444, 27.618225, 26.487091>,  <33.469162, 27.760351, 26.607014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.317444, 27.618225, 26.487091>,  <33.064579, 27.381348, 26.287218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317444, 27.618225, 26.487091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246974, -0.765246, 0.594477,
		0.734425, -0.252395, -0.630014,
		0.632158, 0.592195, 0.499680,
		33.507092, 27.795883, 26.636995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703625, 27.037134, 26.325703>,  <33.064579, 27.381348, 26.287218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703625, 27.037134, 26.325703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685410, 27.296585, 26.629601>,  <33.674480, 27.452255, 26.811939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685410, 27.296585, 26.629601>,  <33.703625, 27.037134, 26.325703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685410, 27.296585, 26.629601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160762, -0.745861, 0.646411,
		0.985942, 0.151574, -0.070310,
		-0.045537, 0.648627, 0.759743,
		33.671749, 27.491173, 26.857523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389248, 26.981192, 26.796587>,  <33.703625, 27.037134, 26.325703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389248, 26.981192, 26.796587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128407, 27.177616, 27.027626>,  <33.971901, 27.295471, 27.166248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128407, 27.177616, 27.027626>,  <34.389248, 26.981192, 26.796587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128407, 27.177616, 27.027626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338965, -0.492626, 0.801512,
		0.678132, 0.718454, 0.154790,
		-0.652104, 0.491063, 0.577597,
		33.932774, 27.324936, 27.200905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672588, 26.998230, 27.490330>,  <34.389248, 26.981192, 26.796587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672588, 26.998230, 27.490330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.292500, 27.098408, 27.564468>,  <34.064445, 27.158514, 27.608952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.292500, 27.098408, 27.564468>,  <34.672588, 26.998230, 27.490330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292500, 27.098408, 27.564468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053859, -0.453883, 0.889432,
		0.306879, 0.855142, 0.417802,
		-0.950223, 0.250446, 0.185344,
		34.007431, 27.173542, 27.620071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568359, 27.350300, 28.254076>,  <34.672588, 26.998230, 27.490330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568359, 27.350300, 28.254076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209812, 27.205364, 28.151913>,  <33.994682, 27.118402, 28.090614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209812, 27.205364, 28.151913>,  <34.568359, 27.350300, 28.254076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209812, 27.205364, 28.151913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111253, -0.373834, 0.920799,
		-0.429123, 0.853790, 0.294781,
		-0.896368, -0.362341, -0.255407,
		33.940903, 27.096663, 28.075291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143162, 27.532692, 28.831982>,  <34.568359, 27.350300, 28.254076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143162, 27.532692, 28.831982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975868, 27.234154, 28.624889>,  <33.875492, 27.055031, 28.500635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975868, 27.234154, 28.624889>,  <34.143162, 27.532692, 28.831982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975868, 27.234154, 28.624889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083757, -0.535858, 0.840143,
		-0.904468, 0.394742, 0.161605,
		-0.418237, -0.746347, -0.517729,
		33.850395, 27.010250, 28.469570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561790, 27.294788, 29.323599>,  <34.143162, 27.532692, 28.831982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561790, 27.294788, 29.323599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619244, 27.008503, 29.050213>,  <33.653713, 26.836731, 28.886181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619244, 27.008503, 29.050213>,  <33.561790, 27.294788, 29.323599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619244, 27.008503, 29.050213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077479, -0.696637, 0.713228,
		-0.986594, -0.049487, -0.155512,
		0.143631, -0.715715, -0.683463,
		33.662334, 26.793789, 28.845175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003429, 26.870314, 29.497818>,  <33.561790, 27.294788, 29.323599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003429, 26.870314, 29.497818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.280575, 26.659924, 29.300518>,  <33.446861, 26.533689, 29.182138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.280575, 26.659924, 29.300518>,  <33.003429, 26.870314, 29.497818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280575, 26.659924, 29.300518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024913, -0.701105, 0.712623,
		-0.720650, -0.481453, -0.498865,
		0.692851, -0.525980, -0.493256,
		33.488434, 26.502131, 29.152542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775002, 26.267553, 29.526983>,  <33.003429, 26.870314, 29.497818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775002, 26.267553, 29.526983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163441, 26.200966, 29.458557>,  <33.396503, 26.161013, 29.417501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163441, 26.200966, 29.458557>,  <32.775002, 26.267553, 29.526983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163441, 26.200966, 29.458557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028581, -0.792608, 0.609061,
		-0.236980, -0.586566, -0.774455,
		0.971094, -0.166470, -0.171067,
		33.454769, 26.151026, 29.407236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396030, 26.121155, 28.910519>,  <32.775002, 26.267553, 29.526983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396030, 26.121155, 28.910519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039490, 25.953121, 28.842377>,  <31.825565, 25.852301, 28.801491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039490, 25.953121, 28.842377>,  <32.396030, 26.121155, 28.910519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039490, 25.953121, 28.842377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111423, 0.567308, -0.815933,
		0.439404, -0.708302, -0.552478,
		-0.891352, -0.420083, -0.170356,
		31.772083, 25.827097, 28.791269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359146, 26.146721, 28.176973>,  <32.396030, 26.121155, 28.910519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359146, 26.146721, 28.176973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982054, 26.075672, 28.289909>,  <31.755798, 26.033043, 28.357670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982054, 26.075672, 28.289909>,  <32.359146, 26.146721, 28.176973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982054, 26.075672, 28.289909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331831, 0.413228, -0.848016,
		0.033957, -0.893137, -0.448502,
		-0.942728, -0.177623, 0.282339,
		31.699236, 26.022385, 28.374611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001030, 25.776361, 27.603321>,  <32.359146, 26.146721, 28.176973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001030, 25.776361, 27.603321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.709997, 25.944553, 27.820141>,  <31.535378, 26.045469, 27.950233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.709997, 25.944553, 27.820141>,  <32.001030, 25.776361, 27.603321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709997, 25.944553, 27.820141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291577, 0.525673, -0.799157,
		-0.620970, -0.739503, -0.259868,
		-0.727584, 0.420481, 0.542049,
		31.491722, 26.070698, 27.982756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467758, 25.718069, 27.141970>,  <32.001030, 25.776361, 27.603321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467758, 25.718069, 27.141970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.340036, 25.988281, 27.407814>,  <31.263403, 26.150408, 27.567320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.340036, 25.988281, 27.407814>,  <31.467758, 25.718069, 27.141970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340036, 25.988281, 27.407814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347886, 0.568798, -0.745281,
		-0.881487, -0.469181, 0.053387,
		-0.319306, 0.675528, 0.664609,
		31.244246, 26.190939, 27.607197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752714, 25.982662, 26.945890>,  <31.467758, 25.718069, 27.141970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752714, 25.982662, 26.945890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.928499, 26.257683, 27.177113>,  <31.033970, 26.422695, 27.315845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.928499, 26.257683, 27.177113>,  <30.752714, 25.982662, 26.945890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928499, 26.257683, 27.177113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241357, 0.710244, -0.661287,
		-0.865229, 0.151092, 0.478069,
		0.439461, 0.687549, 0.578057,
		31.060337, 26.463947, 27.350529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188545, 26.456957, 27.119223>,  <30.752714, 25.982662, 26.945890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188545, 26.456957, 27.119223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.534575, 26.654968, 27.151703>,  <30.742193, 26.773775, 27.171190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.534575, 26.654968, 27.151703>,  <30.188545, 26.456957, 27.119223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534575, 26.654968, 27.151703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322904, 0.673372, -0.665059,
		-0.383900, 0.549106, 0.742363,
		0.865075, 0.495028, 0.081199,
		30.794096, 26.803476, 27.176062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041332, 27.218342, 27.201450>,  <30.188545, 26.456957, 27.119223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041332, 27.218342, 27.201450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.420286, 27.217369, 27.073414>,  <30.647659, 27.216785, 26.996592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.420286, 27.217369, 27.073414>,  <30.041332, 27.218342, 27.201450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420286, 27.217369, 27.073414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222176, 0.714877, -0.663014,
		0.230436, 0.699246, 0.676724,
		0.947384, -0.002430, -0.320089,
		30.704502, 27.216640, 26.977386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127779, 27.902733, 27.048670>,  <30.041332, 27.218342, 27.201450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127779, 27.902733, 27.048670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.427620, 27.709145, 26.868061>,  <30.607525, 27.592993, 26.759697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.427620, 27.709145, 26.868061>,  <30.127779, 27.902733, 27.048670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427620, 27.709145, 26.868061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125239, 0.566137, -0.814742,
		0.649933, 0.667280, 0.363765,
		0.749602, -0.483969, -0.451520,
		30.652500, 27.563953, 26.732605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596777, 28.294271, 26.844912>,  <30.127779, 27.902733, 27.048670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596777, 28.294271, 26.844912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.627748, 27.991020, 26.585915>,  <30.646332, 27.809069, 26.430517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.627748, 27.991020, 26.585915>,  <30.596777, 28.294271, 26.844912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627748, 27.991020, 26.585915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017958, 0.650396, -0.759383,
		0.996836, 0.047170, 0.063974,
		0.077428, -0.758130, -0.647491,
		30.650976, 27.763582, 26.391666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935455, 28.624962, 26.314432>,  <30.596777, 28.294271, 26.844912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935455, 28.624962, 26.314432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.793528, 28.293297, 26.141647>,  <30.708370, 28.094297, 26.037977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.793528, 28.293297, 26.141647>,  <30.935455, 28.624962, 26.314432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793528, 28.293297, 26.141647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318788, 0.541632, -0.777823,
		0.878907, -0.138282, -0.456509,
		-0.354819, -0.829164, -0.431961,
		30.687082, 28.044548, 26.012058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393345, 28.461006, 25.691795>,  <30.935455, 28.624962, 26.314432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393345, 28.461006, 25.691795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.024601, 28.308346, 25.664898>,  <30.803354, 28.216749, 25.648760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.024601, 28.308346, 25.664898>,  <31.393345, 28.461006, 25.691795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024601, 28.308346, 25.664898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091332, 0.382594, -0.919391,
		0.376567, -0.841425, -0.387557,
		-0.921876, -0.381609, -0.067224,
		30.748043, 28.193851, 25.644726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315243, 28.337700, 24.969650>,  <31.393345, 28.461006, 25.691795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315243, 28.337700, 24.969650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.936258, 28.298794, 25.091541>,  <30.708868, 28.275450, 25.164677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.936258, 28.298794, 25.091541>,  <31.315243, 28.337700, 24.969650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936258, 28.298794, 25.091541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319782, 0.265007, -0.909676,
		0.007722, -0.959328, -0.282187,
		-0.947460, -0.097263, 0.304729,
		30.652020, 28.269615, 25.182961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952709, 27.854607, 24.463163>,  <31.315243, 28.337700, 24.969650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952709, 27.854607, 24.463163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.700001, 28.102539, 24.649357>,  <30.548376, 28.251299, 24.761072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.700001, 28.102539, 24.649357>,  <30.952709, 27.854607, 24.463163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700001, 28.102539, 24.649357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327333, 0.331007, -0.885035,
		-0.702653, -0.711506, -0.006228,
		-0.631770, 0.619833, 0.465482,
		30.510469, 28.288488, 24.789001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234016, 27.779358, 24.168472>,  <30.952709, 27.854607, 24.463163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234016, 27.779358, 24.168472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.240110, 28.144833, 24.330925>,  <30.243767, 28.364119, 24.428396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.240110, 28.144833, 24.330925>,  <30.234016, 27.779358, 24.168472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240110, 28.144833, 24.330925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114686, 0.405093, -0.907054,
		-0.993285, -0.032759, 0.110959,
		0.015235, 0.913688, 0.406129,
		30.244680, 28.418940, 24.452765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.152775, 36.401031, 14.684845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.500088, 36.599342, 14.677985>,  <42.708473, 36.718330, 14.673869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.500088, 36.599342, 14.677985>,  <42.152775, 36.401031, 14.684845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500088, 36.599342, 14.677985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051704, 0.124826, 0.990831,
		0.493374, -0.859431, 0.134018,
		0.868279, 0.495780, -0.017150,
		42.760571, 36.748077, 14.672840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540222, 36.096592, 15.137328>,  <42.152775, 36.401031, 14.684845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540222, 36.096592, 15.137328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.729836, 36.446030, 15.093278>,  <42.843605, 36.655693, 15.066848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.729836, 36.446030, 15.093278>,  <42.540222, 36.096592, 15.137328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729836, 36.446030, 15.093278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173324, 0.030046, 0.984406,
		0.863280, -0.485728, -0.137172,
		0.474033, 0.873593, -0.110126,
		42.872044, 36.708107, 15.060240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203175, 36.036865, 15.529832>,  <42.540222, 36.096592, 15.137328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203175, 36.036865, 15.529832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.108372, 36.423901, 15.494958>,  <43.051491, 36.656120, 15.474033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.108372, 36.423901, 15.494958>,  <43.203175, 36.036865, 15.529832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108372, 36.423901, 15.494958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284415, 0.154916, 0.946102,
		0.928943, 0.199440, -0.311913,
		-0.237011, 0.967587, -0.087185,
		43.037270, 36.714176, 15.468802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678356, 36.355408, 15.976315>,  <43.203175, 36.036865, 15.529832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678356, 36.355408, 15.976315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.431137, 36.667049, 15.934329>,  <43.282806, 36.854034, 15.909138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.431137, 36.667049, 15.934329>,  <43.678356, 36.355408, 15.976315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431137, 36.667049, 15.934329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103478, 0.051733, 0.993285,
		0.779300, 0.624760, 0.048647,
		-0.618049, 0.779101, -0.104964,
		43.245724, 36.900780, 15.902840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830467, 36.846481, 16.470552>,  <43.678356, 36.355408, 15.976315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830467, 36.846481, 16.470552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.443909, 36.912407, 16.391651>,  <43.211971, 36.951962, 16.344311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.443909, 36.912407, 16.391651>,  <43.830467, 36.846481, 16.470552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443909, 36.912407, 16.391651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193619, 0.037991, 0.980341,
		0.169069, 0.985593, -0.004803,
		-0.966399, 0.164815, -0.197253,
		43.153988, 36.961853, 16.332476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633690, 37.204357, 17.000427>,  <43.830467, 36.846481, 16.470552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633690, 37.204357, 17.000427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.264996, 37.131901, 16.863262>,  <43.043777, 37.088428, 16.780964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.264996, 37.131901, 16.863262>,  <43.633690, 37.204357, 17.000427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264996, 37.131901, 16.863262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364084, 0.099616, 0.926024,
		-0.133579, 0.978399, -0.157769,
		-0.921737, -0.181138, -0.342913,
		42.988476, 37.077560, 16.760387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192059, 37.667362, 17.340242>,  <43.633690, 37.204357, 17.000427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192059, 37.667362, 17.340242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.990177, 37.347988, 17.208923>,  <42.869049, 37.156364, 17.130133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.990177, 37.347988, 17.208923>,  <43.192059, 37.667362, 17.340242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990177, 37.347988, 17.208923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436554, -0.092032, 0.894958,
		-0.744779, 0.595007, -0.302110,
		-0.504702, -0.798434, -0.328296,
		42.838768, 37.108459, 17.110434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632168, 37.648052, 17.818729>,  <43.192059, 37.667362, 17.340242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632168, 37.648052, 17.818729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.596317, 37.293396, 17.637253>,  <42.574806, 37.080601, 17.528368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.596317, 37.293396, 17.637253>,  <42.632168, 37.648052, 17.818729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596317, 37.293396, 17.637253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679060, -0.278831, 0.679067,
		-0.728591, 0.368947, -0.577090,
		-0.089629, -0.886641, -0.453690,
		42.569427, 37.027405, 17.501146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905060, 37.456928, 17.777721>,  <42.632168, 37.648052, 17.818729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905060, 37.456928, 17.777721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.100357, 37.108250, 17.760902>,  <42.217537, 36.899044, 17.750811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.100357, 37.108250, 17.760902>,  <41.905060, 37.456928, 17.777721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100357, 37.108250, 17.760902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582481, -0.361371, 0.728098,
		-0.649874, -0.330996, -0.684182,
		0.488241, -0.871695, -0.042046,
		42.246830, 36.846741, 17.748289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435619, 36.884647, 17.664061>,  <41.905060, 37.456928, 17.777721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435619, 36.884647, 17.664061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.746708, 36.681915, 17.812798>,  <41.933361, 36.560276, 17.902040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.746708, 36.681915, 17.812798>,  <41.435619, 36.884647, 17.664061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746708, 36.681915, 17.812798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607630, -0.454605, 0.651245,
		-0.161030, -0.732432, -0.661523,
		0.777724, -0.506831, 0.371842,
		41.980026, 36.529865, 17.924351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207642, 36.191013, 17.742582>,  <41.435619, 36.884647, 17.664061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207642, 36.191013, 17.742582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.519253, 36.250465, 17.986229>,  <41.706219, 36.286137, 18.132418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.519253, 36.250465, 17.986229>,  <41.207642, 36.191013, 17.742582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519253, 36.250465, 17.986229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467894, -0.508871, 0.722583,
		0.417364, -0.847914, -0.326879,
		0.779027, 0.148635, 0.609118,
		41.752960, 36.295055, 18.168964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270016, 35.614674, 18.140963>,  <41.207642, 36.191013, 17.742582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270016, 35.614674, 18.140963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.501488, 35.867882, 18.346645>,  <41.640373, 36.019806, 18.470055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.501488, 35.867882, 18.346645>,  <41.270016, 35.614674, 18.140963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501488, 35.867882, 18.346645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367854, -0.360124, 0.857318,
		0.727880, -0.685268, 0.024463,
		0.578683, 0.633023, 0.514206,
		41.675095, 36.057789, 18.500908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589809, 35.228470, 18.611902>,  <41.270016, 35.614674, 18.140963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589809, 35.228470, 18.611902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.649124, 35.588242, 18.776360>,  <41.684711, 35.804104, 18.875034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.649124, 35.588242, 18.776360>,  <41.589809, 35.228470, 18.611902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649124, 35.588242, 18.776360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199330, -0.380026, 0.903243,
		0.968648, -0.215891, 0.122930,
		0.148285, 0.899428, 0.411145,
		41.693611, 35.858070, 18.899704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900585, 35.034428, 19.260183>,  <41.589809, 35.228470, 18.611902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900585, 35.034428, 19.260183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.727360, 35.393257, 19.295338>,  <41.623425, 35.608555, 19.316429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.727360, 35.393257, 19.295338>,  <41.900585, 35.034428, 19.260183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727360, 35.393257, 19.295338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324530, -0.246140, 0.913288,
		0.840914, 0.366991, 0.397720,
		-0.433063, 0.897069, 0.087884,
		41.597443, 35.662376, 19.321703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086517, 35.113991, 19.921177>,  <41.900585, 35.034428, 19.260183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086517, 35.113991, 19.921177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.791195, 35.353695, 19.797375>,  <41.614002, 35.497517, 19.723095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.791195, 35.353695, 19.797375>,  <42.086517, 35.113991, 19.921177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791195, 35.353695, 19.797375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554941, -0.278917, 0.783738,
		0.383340, 0.750392, 0.538482,
		-0.738302, 0.599264, -0.309503,
		41.569706, 35.533474, 19.704523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875298, 35.477821, 20.565281>,  <42.086517, 35.113991, 19.921177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875298, 35.477821, 20.565281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.580021, 35.510021, 20.297375>,  <41.402855, 35.529339, 20.136631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.580021, 35.510021, 20.297375>,  <41.875298, 35.477821, 20.565281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580021, 35.510021, 20.297375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674058, -0.048735, 0.737069,
		0.026690, 0.995563, 0.090235,
		-0.738196, 0.080496, -0.669767,
		41.358562, 35.534168, 20.096445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284645, 35.974312, 20.816204>,  <41.875298, 35.477821, 20.565281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284645, 35.974312, 20.816204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.089027, 35.732212, 20.564964>,  <40.971657, 35.586952, 20.414221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.089027, 35.732212, 20.564964>,  <41.284645, 35.974312, 20.816204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089027, 35.732212, 20.564964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592392, -0.298079, 0.748479,
		-0.640238, 0.738122, -0.212769,
		-0.489047, -0.605247, -0.628100,
		40.942314, 35.550636, 20.376534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741962, 36.067730, 21.151333>,  <41.284645, 35.974312, 20.816204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741962, 36.067730, 21.151333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.654076, 35.764317, 20.905945>,  <40.601341, 35.582268, 20.758713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.654076, 35.764317, 20.905945>,  <40.741962, 36.067730, 21.151333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654076, 35.764317, 20.905945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718392, -0.299640, 0.627797,
		-0.660027, 0.578651, -0.479090,
		-0.219721, -0.758537, -0.613469,
		40.588158, 35.536755, 20.721905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048470, 36.038589, 21.157894>,  <40.741962, 36.067730, 21.151333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048470, 36.038589, 21.157894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.130268, 35.668537, 21.029949>,  <40.179348, 35.446507, 20.953182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.130268, 35.668537, 21.029949>,  <40.048470, 36.038589, 21.157894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130268, 35.668537, 21.029949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788330, -0.349357, 0.506444,
		-0.580274, 0.148592, -0.800751,
		0.204494, -0.925132, -0.319863,
		40.191616, 35.390999, 20.933990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493702, 35.696247, 20.873558>,  <40.048470, 36.038589, 21.157894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493702, 35.696247, 20.873558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.714211, 35.382610, 20.987610>,  <39.846516, 35.194427, 21.056042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.714211, 35.382610, 20.987610>,  <39.493702, 35.696247, 20.873558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714211, 35.382610, 20.987610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822773, -0.454225, 0.341649,
		-0.138371, -0.422939, -0.895531,
		0.551270, -0.784093, 0.285132,
		39.879593, 35.147381, 21.073149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096909, 35.030594, 20.722025>,  <39.493702, 35.696247, 20.873558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096909, 35.030594, 20.722025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.355812, 34.966969, 21.020222>,  <39.511154, 34.928795, 21.199139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.355812, 34.966969, 21.020222>,  <39.096909, 35.030594, 20.722025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355812, 34.966969, 21.020222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665447, -0.594923, 0.450828,
		0.371801, -0.787887, -0.490916,
		0.647259, -0.159061, 0.745490,
		39.549992, 34.919250, 21.243868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754585, 34.889957, 20.022573>,  <39.096909, 35.030594, 20.722025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754585, 34.889957, 20.022573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.557877, 34.558441, 19.915791>,  <38.439850, 34.359531, 19.851721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.557877, 34.558441, 19.915791>,  <38.754585, 34.889957, 20.022573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557877, 34.558441, 19.915791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622509, -0.120286, -0.773314,
		0.608803, -0.546479, 0.575082,
		-0.491774, -0.828789, -0.266957,
		38.410343, 34.309803, 19.835703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203735, 34.360527, 19.995243>,  <38.754585, 34.889957, 20.022573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203735, 34.360527, 19.995243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891758, 34.315647, 19.748959>,  <38.704571, 34.288719, 19.601189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891758, 34.315647, 19.748959>,  <39.203735, 34.360527, 19.995243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891758, 34.315647, 19.748959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625846, -0.143739, -0.766587,
		-0.002492, -0.983235, 0.182326,
		-0.779943, -0.112198, -0.615712,
		38.657776, 34.281986, 19.564245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452694, 33.889675, 19.498014>,  <39.203735, 34.360527, 19.995243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452694, 33.889675, 19.498014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.127350, 34.039307, 19.319798>,  <38.932144, 34.129086, 19.212868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.127350, 34.039307, 19.319798>,  <39.452694, 33.889675, 19.498014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127350, 34.039307, 19.319798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474080, -0.017684, -0.880304,
		-0.337179, -0.927230, -0.162958,
		-0.813362, 0.374075, -0.445544,
		38.883343, 34.151527, 19.186134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509426, 33.595058, 18.865101>,  <39.452694, 33.889675, 19.498014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509426, 33.595058, 18.865101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.246681, 33.892979, 18.818108>,  <39.089035, 34.071732, 18.789911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.246681, 33.892979, 18.818108>,  <39.509426, 33.595058, 18.865101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246681, 33.892979, 18.818108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226931, 0.046695, -0.972791,
		-0.719047, -0.665654, -0.199690,
		-0.656867, 0.744798, -0.117482,
		39.049622, 34.116417, 18.782864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128830, 33.303562, 18.341387>,  <39.509426, 33.595058, 18.865101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128830, 33.303562, 18.341387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.097034, 33.702290, 18.338955>,  <39.077957, 33.941525, 18.337496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.097034, 33.702290, 18.338955>,  <39.128830, 33.303562, 18.341387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097034, 33.702290, 18.338955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353419, 0.022480, -0.935195,
		-0.932082, -0.076489, -0.354081,
		-0.079492, 0.996817, -0.006079,
		39.073189, 34.001335, 18.337132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893078, 33.411324, 17.689476>,  <39.128830, 33.303562, 18.341387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893078, 33.411324, 17.689476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034164, 33.771046, 17.792892>,  <39.118816, 33.986877, 17.854942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034164, 33.771046, 17.792892>,  <38.893078, 33.411324, 17.689476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034164, 33.771046, 17.792892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241679, 0.179370, -0.953634,
		-0.903982, 0.398844, -0.154077,
		0.352715, 0.899305, 0.258539,
		39.139980, 34.040836, 17.870455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620964, 33.933384, 17.253849>,  <38.893078, 33.411324, 17.689476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620964, 33.933384, 17.253849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.970783, 34.075157, 17.386238>,  <39.180676, 34.160221, 17.465672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.970783, 34.075157, 17.386238>,  <38.620964, 33.933384, 17.253849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970783, 34.075157, 17.386238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273888, 0.202217, -0.940262,
		-0.400184, 0.912956, 0.079776,
		0.874550, 0.354428, 0.330972,
		39.233147, 34.181484, 17.485529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642269, 34.548588, 16.969763>,  <38.620964, 33.933384, 17.253849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642269, 34.548588, 16.969763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.028198, 34.472019, 17.041843>,  <39.259754, 34.426079, 17.085091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.028198, 34.472019, 17.041843>,  <38.642269, 34.548588, 16.969763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028198, 34.472019, 17.041843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234281, 0.315065, -0.919699,
		0.119277, 0.929565, 0.348829,
		0.964824, -0.191423, 0.180200,
		39.317646, 34.414593, 17.095903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952076, 35.065887, 16.628586>,  <38.642269, 34.548588, 16.969763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952076, 35.065887, 16.628586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.254768, 34.812107, 16.691620>,  <39.436382, 34.659840, 16.729441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.254768, 34.812107, 16.691620>,  <38.952076, 35.065887, 16.628586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254768, 34.812107, 16.691620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361792, 0.205673, -0.909288,
		0.544486, 0.745099, 0.385178,
		0.756731, -0.634449, 0.157585,
		39.481789, 34.621773, 16.738895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443466, 35.389008, 16.239334>,  <38.952076, 35.065887, 16.628586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443466, 35.389008, 16.239334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.603420, 35.024147, 16.275272>,  <39.699394, 34.805229, 16.296835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.603420, 35.024147, 16.275272>,  <39.443466, 35.389008, 16.239334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603420, 35.024147, 16.275272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327654, 0.050717, -0.943435,
		0.856000, 0.406702, 0.319151,
		0.399884, -0.912152, 0.089844,
		39.723385, 34.750500, 16.302225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140038, 35.513336, 15.887688>,  <39.443466, 35.389008, 16.239334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140038, 35.513336, 15.887688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064842, 35.121758, 15.919492>,  <40.019722, 34.886810, 15.938574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064842, 35.121758, 15.919492>,  <40.140038, 35.513336, 15.887688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064842, 35.121758, 15.919492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544634, -0.171270, -0.821000,
		0.817333, -0.111039, 0.565365,
		-0.187993, -0.978947, 0.079509,
		40.008446, 34.828072, 15.943344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750168, 35.177731, 15.979618>,  <40.140038, 35.513336, 15.887688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750168, 35.177731, 15.979618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476063, 34.934338, 15.819537>,  <40.311600, 34.788300, 15.723489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476063, 34.934338, 15.819537>,  <40.750168, 35.177731, 15.979618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476063, 34.934338, 15.819537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622919, -0.204982, -0.754953,
		0.377344, -0.766633, 0.519504,
		-0.685261, -0.608486, -0.400202,
		40.270485, 34.751793, 15.699476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215229, 34.736732, 15.584022>,  <40.750168, 35.177731, 15.979618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215229, 34.736732, 15.584022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.846020, 34.665657, 15.447516>,  <40.624496, 34.623013, 15.365613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.846020, 34.665657, 15.447516>,  <41.215229, 34.736732, 15.584022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846020, 34.665657, 15.447516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374999, -0.217034, -0.901262,
		0.086081, -0.959855, 0.266960,
		-0.923020, -0.177691, -0.341262,
		40.569115, 34.612350, 15.345138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313774, 34.234013, 15.154259>,  <41.215229, 34.736732, 15.584022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313774, 34.234013, 15.154259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.956963, 34.382694, 15.051400>,  <40.742878, 34.471905, 14.989685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.956963, 34.382694, 15.051400>,  <41.313774, 34.234013, 15.154259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956963, 34.382694, 15.051400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157202, -0.278263, -0.947553,
		-0.423768, -0.885665, 0.189784,
		-0.892025, 0.371708, -0.257147,
		40.689354, 34.494205, 14.974257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055103, 33.632713, 14.868266>,  <41.313774, 34.234013, 15.154259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055103, 33.632713, 14.868266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.807217, 33.926434, 14.757453>,  <40.658485, 34.102665, 14.690966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.807217, 33.926434, 14.757453>,  <41.055103, 33.632713, 14.868266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807217, 33.926434, 14.757453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070750, -0.299279, -0.951539,
		-0.781628, -0.609287, 0.133517,
		-0.619719, 0.734303, -0.277032,
		40.621300, 34.146725, 14.674343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649574, 33.376251, 14.278456>,  <41.055103, 33.632713, 14.868266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649574, 33.376251, 14.278456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.669025, 33.766884, 14.194631>,  <40.680695, 34.001263, 14.144336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.669025, 33.766884, 14.194631>,  <40.649574, 33.376251, 14.278456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669025, 33.766884, 14.194631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485008, -0.206501, -0.849779,
		-0.873157, -0.060320, -0.483693,
		0.048625, 0.976586, -0.209563,
		40.683613, 34.059860, 14.131762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483944, 33.382874, 13.514429>,  <40.649574, 33.376251, 14.278456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483944, 33.382874, 13.514429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.656445, 33.737476, 13.581513>,  <40.759945, 33.950237, 13.621764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.656445, 33.737476, 13.581513>,  <40.483944, 33.382874, 13.514429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656445, 33.737476, 13.581513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664286, -0.186200, -0.723915,
		-0.610527, 0.423600, -0.669193,
		0.431254, 0.886506, 0.167711,
		40.785820, 34.003429, 13.631826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569439, 33.746288, 12.845678>,  <40.483944, 33.382874, 13.514429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569439, 33.746288, 12.845678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.830059, 33.888763, 13.113593>,  <40.986431, 33.974247, 13.274343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.830059, 33.888763, 13.113593>,  <40.569439, 33.746288, 12.845678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830059, 33.888763, 13.113593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717764, -0.003653, -0.696277,
		-0.245556, 0.934409, -0.258036,
		0.651551, 0.356184, 0.669787,
		41.025524, 33.995617, 13.314529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935295, 34.294621, 12.470600>,  <40.569439, 33.746288, 12.845678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935295, 34.294621, 12.470600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.181721, 34.229492, 12.778874>,  <41.329575, 34.190414, 12.963839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.181721, 34.229492, 12.778874>,  <40.935295, 34.294621, 12.470600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181721, 34.229492, 12.778874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782035, 0.009336, -0.623164,
		0.094266, 0.986612, 0.133080,
		0.616064, -0.162817, 0.770685,
		41.366539, 34.180649, 13.010080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592953, 34.608261, 12.323783>,  <40.935295, 34.294621, 12.470600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592953, 34.608261, 12.323783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.669769, 34.321991, 12.592387>,  <41.715858, 34.150227, 12.753550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.669769, 34.321991, 12.592387>,  <41.592953, 34.608261, 12.323783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669769, 34.321991, 12.592387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865919, -0.198447, -0.459133,
		0.461850, 0.669645, 0.581610,
		0.192037, -0.715678, 0.671511,
		41.727379, 34.107288, 12.793840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220474, 34.802040, 12.554491>,  <41.592953, 34.608261, 12.323783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220474, 34.802040, 12.554491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.174057, 34.413483, 12.637359>,  <42.146206, 34.180347, 12.687079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.174057, 34.413483, 12.637359>,  <42.220474, 34.802040, 12.554491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174057, 34.413483, 12.637359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873811, -0.199011, -0.443677,
		0.472216, 0.129538, 0.871913,
		-0.116048, -0.971398, 0.207168,
		42.139244, 34.122063, 12.699509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.300535, 27.208706, 31.407150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.683449, 27.186775, 31.293591>,  <29.913197, 27.173616, 31.225454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.683449, 27.186775, 31.293591>,  <29.300535, 27.208706, 31.407150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683449, 27.186775, 31.293591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113340, -0.832132, 0.542872,
		-0.266005, -0.551861, -0.790374,
		0.957285, -0.054825, -0.283899,
		29.970634, 27.170328, 31.208422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393583, 26.583187, 31.047705>,  <29.300535, 27.208706, 31.407150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393583, 26.583187, 31.047705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.752928, 26.673733, 31.198280>,  <29.968534, 26.728060, 31.288626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.752928, 26.673733, 31.198280>,  <29.393583, 26.583187, 31.047705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752928, 26.673733, 31.198280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000211, -0.856769, 0.515701,
		0.439259, -0.463365, -0.769639,
		0.898360, 0.226364, 0.376441,
		30.022436, 26.741642, 31.311213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711243, 25.978775, 30.992168>,  <29.393583, 26.583187, 31.047705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711243, 25.978775, 30.992168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.890574, 26.199127, 31.273746>,  <29.998171, 26.331339, 31.442694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.890574, 26.199127, 31.273746>,  <29.711243, 25.978775, 30.992168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890574, 26.199127, 31.273746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038894, -0.798800, 0.600338,
		0.893024, -0.241768, -0.379548,
		0.448326, 0.550879, 0.703944,
		30.025072, 26.364391, 31.484930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106880, 25.500233, 31.307074>,  <29.711243, 25.978775, 30.992168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106880, 25.500233, 31.307074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174393, 25.798744, 31.564625>,  <30.214901, 25.977852, 31.719156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174393, 25.798744, 31.564625>,  <30.106880, 25.500233, 31.307074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174393, 25.798744, 31.564625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169070, -0.665489, 0.727007,
		0.971045, -0.013845, -0.238496,
		0.168781, 0.746279, 0.643879,
		30.225027, 26.022629, 31.757788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620317, 25.252831, 31.767427>,  <30.106880, 25.500233, 31.307074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620317, 25.252831, 31.767427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.431042, 25.549957, 31.956875>,  <30.317476, 25.728233, 32.070541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.431042, 25.549957, 31.956875>,  <30.620317, 25.252831, 31.767427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431042, 25.549957, 31.956875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023805, -0.548200, 0.836008,
		0.880638, 0.384317, 0.277086,
		-0.473191, 0.742817, 0.473618,
		30.289083, 25.772802, 32.098961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985983, 25.439562, 32.426311>,  <30.620317, 25.252831, 31.767427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985983, 25.439562, 32.426311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.595703, 25.523769, 32.450626>,  <30.361536, 25.574293, 32.465214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.595703, 25.523769, 32.450626>,  <30.985983, 25.439562, 32.426311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595703, 25.523769, 32.450626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075367, -0.582910, 0.809034,
		0.205748, 0.784792, 0.584611,
		-0.975699, 0.210517, 0.060785,
		30.302994, 25.586924, 32.468861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851242, 25.500717, 33.102989>,  <30.985983, 25.439562, 32.426311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851242, 25.500717, 33.102989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.478268, 25.446964, 32.968822>,  <30.254482, 25.414713, 32.888325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.478268, 25.446964, 32.968822>,  <30.851242, 25.500717, 33.102989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478268, 25.446964, 32.968822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271880, -0.350483, 0.896238,
		-0.237995, 0.926878, 0.290268,
		-0.932437, -0.134383, -0.335413,
		30.198536, 25.406649, 32.868198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529032, 25.624580, 33.690517>,  <30.851242, 25.500717, 33.102989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529032, 25.624580, 33.690517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.301517, 25.414204, 33.437576>,  <30.165009, 25.287977, 33.285812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.301517, 25.414204, 33.437576>,  <30.529032, 25.624580, 33.690517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301517, 25.414204, 33.437576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158141, -0.684554, 0.711602,
		-0.807138, 0.504751, 0.306193,
		-0.568788, -0.525940, -0.632351,
		30.130880, 25.256422, 33.247871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878109, 25.458014, 34.084801>,  <30.529032, 25.624580, 33.690517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878109, 25.458014, 34.084801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.870052, 25.220398, 33.763126>,  <29.865219, 25.077829, 33.570122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.870052, 25.220398, 33.763126>,  <29.878109, 25.458014, 34.084801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870052, 25.220398, 33.763126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207545, -0.784342, 0.584579,
		-0.978018, 0.178678, -0.107492,
		-0.020141, -0.594038, -0.804185,
		29.864010, 25.042187, 33.521870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320093, 24.958847, 34.222477>,  <29.878109, 25.458014, 34.084801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320093, 24.958847, 34.222477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.552183, 24.785534, 33.946621>,  <29.691437, 24.681545, 33.781109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.552183, 24.785534, 33.946621>,  <29.320093, 24.958847, 34.222477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552183, 24.785534, 33.946621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196344, -0.896191, 0.397859,
		-0.790435, -0.095441, -0.605065,
		0.580225, -0.433282, -0.689641,
		29.726252, 24.655550, 33.739727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976446, 24.285168, 34.065376>,  <29.320093, 24.958847, 34.222477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976446, 24.285168, 34.065376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.356974, 24.267784, 33.943325>,  <29.585291, 24.257355, 33.870094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.356974, 24.267784, 33.943325>,  <28.976446, 24.285168, 34.065376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356974, 24.267784, 33.943325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076419, -0.925837, 0.370115,
		-0.298585, -0.375415, -0.877446,
		0.951319, -0.043457, -0.305130,
		29.642368, 24.254747, 33.851788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023909, 23.621576, 33.741081>,  <28.976446, 24.285168, 34.065376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023909, 23.621576, 33.741081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.396492, 23.732384, 33.835442>,  <29.620041, 23.798868, 33.892059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.396492, 23.732384, 33.835442>,  <29.023909, 23.621576, 33.741081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396492, 23.732384, 33.835442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161237, -0.895466, 0.414902,
		0.326177, -0.348427, -0.878753,
		0.931456, 0.277020, 0.235901,
		29.675928, 23.815489, 33.906212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584257, 23.212032, 33.436718>,  <29.023909, 23.621576, 33.741081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584257, 23.212032, 33.436718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.741547, 23.343880, 33.780048>,  <29.835920, 23.422989, 33.986046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.741547, 23.343880, 33.780048>,  <29.584257, 23.212032, 33.436718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741547, 23.343880, 33.780048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193441, -0.882977, 0.427706,
		0.898863, -0.334220, -0.283446,
		0.393224, 0.329619, 0.858327,
		29.859514, 23.442766, 34.037548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163204, 22.770750, 33.750576>,  <29.584257, 23.212032, 33.436718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163204, 22.770750, 33.750576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.949858, 22.977543, 34.018383>,  <29.821850, 23.101620, 34.179066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.949858, 22.977543, 34.018383>,  <30.163204, 22.770750, 33.750576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949858, 22.977543, 34.018383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123052, -0.830496, 0.543263,
		0.836887, 0.207373, 0.506574,
		-0.533366, 0.516984, 0.669514,
		29.789848, 23.132639, 34.219238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232403, 22.482288, 32.996349>,  <30.163204, 22.770750, 33.750576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232403, 22.482288, 32.996349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.587805, 22.299282, 32.982258>,  <30.801046, 22.189478, 32.973804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.587805, 22.299282, 32.982258>,  <30.232403, 22.482288, 32.996349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587805, 22.299282, 32.982258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264230, 0.572879, -0.775882,
		0.375157, 0.680066, 0.629894,
		0.888504, -0.457515, -0.035226,
		30.854357, 22.162027, 32.971691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759918, 23.037205, 32.846409>,  <30.232403, 22.482288, 32.996349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759918, 23.037205, 32.846409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.893417, 22.675186, 32.740952>,  <30.973516, 22.457975, 32.677677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.893417, 22.675186, 32.740952>,  <30.759918, 23.037205, 32.846409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893417, 22.675186, 32.740952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357385, 0.380278, -0.853033,
		0.872289, 0.190477, 0.450366,
		0.333747, -0.905045, -0.263639,
		30.993542, 22.403673, 32.661861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489323, 23.180828, 32.695782>,  <30.759918, 23.037205, 32.846409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489323, 23.180828, 32.695782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.412025, 22.828529, 32.522835>,  <31.365646, 22.617149, 32.419067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.412025, 22.828529, 32.522835>,  <31.489323, 23.180828, 32.695782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412025, 22.828529, 32.522835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350300, 0.349697, -0.868909,
		0.916486, -0.319369, 0.240949,
		-0.193244, -0.880747, -0.432367,
		31.354052, 22.564304, 32.393124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055672, 23.069380, 32.218060>,  <31.489323, 23.180828, 32.695782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055672, 23.069380, 32.218060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730757, 22.869240, 32.098164>,  <31.535809, 22.749155, 32.026226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730757, 22.869240, 32.098164>,  <32.055672, 23.069380, 32.218060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730757, 22.869240, 32.098164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163119, 0.298519, -0.940361,
		0.559987, -0.812734, -0.160866,
		-0.812285, -0.500350, -0.299739,
		31.487072, 22.719135, 32.008244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232952, 22.866224, 31.462269>,  <32.055672, 23.069380, 32.218060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232952, 22.866224, 31.462269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837729, 22.807201, 31.480019>,  <31.600595, 22.771788, 31.490669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837729, 22.807201, 31.480019>,  <32.232952, 22.866224, 31.462269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837729, 22.807201, 31.480019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106140, 0.443001, -0.890216,
		0.111700, -0.884295, -0.453372,
		-0.988057, -0.147558, 0.044376,
		31.541311, 22.762934, 31.493332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096928, 22.657078, 30.793610>,  <32.232952, 22.866224, 31.462269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096928, 22.657078, 30.793610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755793, 22.790466, 30.954338>,  <31.551111, 22.870499, 31.050776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755793, 22.790466, 30.954338>,  <32.096928, 22.657078, 30.793610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755793, 22.790466, 30.954338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181299, 0.532545, -0.826757,
		-0.489687, -0.777942, -0.393718,
		-0.852841, 0.333471, 0.401820,
		31.499941, 22.890507, 31.074884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603102, 22.582331, 30.333609>,  <32.096928, 22.657078, 30.793610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603102, 22.582331, 30.333609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.511827, 22.880001, 30.584728>,  <31.457064, 23.058603, 30.735401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.511827, 22.880001, 30.584728>,  <31.603102, 22.582331, 30.333609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511827, 22.880001, 30.584728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038943, 0.637319, -0.769615,
		-0.972839, -0.200063, -0.116446,
		-0.228185, 0.744177, 0.627800,
		31.443373, 23.103254, 30.773067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129128, 22.947338, 29.820808>,  <31.603102, 22.582331, 30.333609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129128, 22.947338, 29.820808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.201513, 23.183437, 30.135479>,  <31.244944, 23.325096, 30.324282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.201513, 23.183437, 30.135479>,  <31.129128, 22.947338, 29.820808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201513, 23.183437, 30.135479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080861, 0.806104, -0.586223,
		-0.980160, 0.042473, 0.193603,
		0.180963, 0.590247, 0.786677,
		31.255802, 23.360512, 30.371483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621861, 23.447655, 29.777641>,  <31.129128, 22.947338, 29.820808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621861, 23.447655, 29.777641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.911770, 23.600456, 30.006996>,  <31.085716, 23.692137, 30.144609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.911770, 23.600456, 30.006996>,  <30.621861, 23.447655, 29.777641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911770, 23.600456, 30.006996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018862, 0.842909, -0.537725,
		-0.688728, 0.378915, 0.618124,
		0.724775, 0.382005, 0.573388,
		31.129202, 23.715057, 30.179012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492760, 24.168049, 29.869371>,  <30.621861, 23.447655, 29.777641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492760, 24.168049, 29.869371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.879776, 24.174763, 29.970234>,  <31.111986, 24.178791, 30.030750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.879776, 24.174763, 29.970234>,  <30.492760, 24.168049, 29.869371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879776, 24.174763, 29.970234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110815, 0.868572, -0.483014,
		-0.227121, 0.495279, 0.838520,
		0.967541, 0.016782, 0.252155,
		31.170038, 24.179798, 30.045881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570807, 24.749836, 30.229429>,  <30.492760, 24.168049, 29.869371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570807, 24.749836, 30.229429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.931580, 24.661346, 30.081062>,  <31.148043, 24.608253, 29.992043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.931580, 24.661346, 30.081062>,  <30.570807, 24.749836, 30.229429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931580, 24.661346, 30.081062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004947, 0.853498, -0.521073,
		0.431850, 0.471808, 0.768702,
		0.901932, -0.221223, -0.370917,
		31.202160, 24.594980, 29.969788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029968, 25.308323, 30.252119>,  <30.570807, 24.749836, 30.229429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029968, 25.308323, 30.252119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202435, 25.102745, 29.955482>,  <31.305914, 24.979399, 29.777500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202435, 25.102745, 29.955482>,  <31.029968, 25.308323, 30.252119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202435, 25.102745, 29.955482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087208, 0.841803, -0.532693,
		0.898049, 0.165006, 0.407776,
		0.431165, -0.513946, -0.741591,
		31.331783, 24.948561, 29.733006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625917, 25.698891, 30.031704>,  <31.029968, 25.308323, 30.252119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625917, 25.698891, 30.031704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546215, 25.453102, 29.726360>,  <31.498394, 25.305628, 29.543154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546215, 25.453102, 29.726360>,  <31.625917, 25.698891, 30.031704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546215, 25.453102, 29.726360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214991, 0.732592, -0.645823,
		0.956073, -0.292801, -0.013868,
		-0.199257, -0.614472, -0.763361,
		31.486439, 25.268761, 29.497353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137817, 25.972519, 29.589565>,  <31.625917, 25.698891, 30.031704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137817, 25.972519, 29.589565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901667, 25.746677, 29.358852>,  <31.759975, 25.611174, 29.220425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901667, 25.746677, 29.358852>,  <32.137817, 25.972519, 29.589565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901667, 25.746677, 29.358852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055546, 0.684495, -0.726899,
		0.805213, -0.461183, -0.372750,
		-0.590379, -0.564604, -0.576781,
		31.724552, 25.577297, 29.185818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750427, 25.554110, 29.837870>,  <32.137817, 25.972519, 29.589565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750427, 25.554110, 29.837870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129478, 25.665817, 29.775898>,  <33.356911, 25.732841, 29.738714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129478, 25.665817, 29.775898>,  <32.750427, 25.554110, 29.837870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129478, 25.665817, 29.775898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310821, -0.695028, 0.648326,
		0.073376, -0.662530, -0.745432,
		0.947632, 0.279267, -0.154930,
		33.413769, 25.749598, 29.729420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170315, 24.978060, 29.784559>,  <32.750427, 25.554110, 29.837870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170315, 24.978060, 29.784559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.414093, 25.275219, 29.895325>,  <33.560360, 25.453514, 29.961784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.414093, 25.275219, 29.895325>,  <33.170315, 24.978060, 29.784559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414093, 25.275219, 29.895325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384405, -0.582350, 0.716310,
		0.693407, -0.330103, -0.640483,
		0.609442, 0.742899, 0.276913,
		33.596928, 25.498089, 29.978399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762688, 24.622541, 29.993069>,  <33.170315, 24.978060, 29.784559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762688, 24.622541, 29.993069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.820591, 24.965866, 30.189983>,  <33.855335, 25.171862, 30.308132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.820591, 24.965866, 30.189983>,  <33.762688, 24.622541, 29.993069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820591, 24.965866, 30.189983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277120, -0.512784, 0.812562,
		0.949868, 0.018794, -0.312086,
		0.144761, 0.858312, 0.492285,
		33.864021, 25.223360, 30.337669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423397, 24.593573, 30.229837>,  <33.762688, 24.622541, 29.993069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423397, 24.593573, 30.229837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243950, 24.864132, 30.463497>,  <34.136284, 25.026468, 30.603693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243950, 24.864132, 30.463497>,  <34.423397, 24.593573, 30.229837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243950, 24.864132, 30.463497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318416, -0.489754, 0.811635,
		0.835079, 0.550113, 0.004334,
		-0.448614, 0.676400, 0.584148,
		34.109367, 25.067051, 30.638742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909264, 24.724350, 30.768091>,  <34.423397, 24.593573, 30.229837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909264, 24.724350, 30.768091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586185, 24.883640, 30.942013>,  <34.392338, 24.979214, 31.046366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586185, 24.883640, 30.942013>,  <34.909264, 24.724350, 30.768091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586185, 24.883640, 30.942013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187193, -0.526096, 0.829568,
		0.559101, 0.751426, 0.350378,
		-0.807691, 0.398223, 0.434802,
		34.343880, 25.003107, 31.072453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104290, 24.784534, 31.457661>,  <34.909264, 24.724350, 30.768091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104290, 24.784534, 31.457661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705536, 24.812263, 31.442654>,  <34.466282, 24.828901, 31.433649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705536, 24.812263, 31.442654>,  <35.104290, 24.784534, 31.457661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705536, 24.812263, 31.442654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062025, -0.396122, 0.916100,
		0.048645, 0.915577, 0.399190,
		-0.996888, 0.069323, -0.037519,
		34.406471, 24.833061, 31.431398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919296, 24.989155, 32.154808>,  <35.104290, 24.784534, 31.457661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919296, 24.989155, 32.154808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633183, 24.773441, 31.977028>,  <34.461514, 24.644014, 31.870359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633183, 24.773441, 31.977028>,  <34.919296, 24.989155, 32.154808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633183, 24.773441, 31.977028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041732, -0.667825, 0.743148,
		-0.697584, 0.513015, 0.500191,
		-0.715286, -0.539282, -0.444455,
		34.418598, 24.611656, 31.843691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892696, 25.535658, 32.626095>,  <34.919296, 24.989155, 32.154808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892696, 25.535658, 32.626095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.282906, 25.558659, 32.710999>,  <35.517029, 25.572460, 32.761940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.282906, 25.558659, 32.710999>,  <34.892696, 25.535658, 32.626095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282906, 25.558659, 32.710999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174603, 0.384256, -0.906566,
		-0.133691, 0.921434, 0.364809,
		0.975521, 0.057503, 0.212256,
		35.575562, 25.575909, 32.774677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014645, 26.190672, 32.519505>,  <34.892696, 25.535658, 32.626095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014645, 26.190672, 32.519505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348480, 25.975101, 32.473854>,  <35.548782, 25.845758, 32.446465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348480, 25.975101, 32.473854>,  <35.014645, 26.190672, 32.519505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348480, 25.975101, 32.473854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142867, 0.411835, -0.899989,
		0.532031, 0.734812, 0.420706,
		0.834585, -0.538927, -0.114129,
		35.598854, 25.813423, 32.439617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507412, 26.681524, 32.262878>,  <35.014645, 26.190672, 32.519505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507412, 26.681524, 32.262878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658970, 26.332039, 32.140854>,  <35.749905, 26.122347, 32.067638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658970, 26.332039, 32.140854>,  <35.507412, 26.681524, 32.262878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658970, 26.332039, 32.140854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390496, 0.449795, -0.803242,
		0.839017, 0.185223, 0.511608,
		0.378898, -0.873714, -0.305057,
		35.772640, 26.069925, 32.049335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269505, 26.740986, 32.126030>,  <35.507412, 26.681524, 32.262878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269505, 26.740986, 32.126030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177830, 26.419991, 31.905674>,  <36.122826, 26.227394, 31.773458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177830, 26.419991, 31.905674>,  <36.269505, 26.740986, 32.126030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177830, 26.419991, 31.905674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505342, 0.385616, -0.771965,
		0.831927, -0.455315, 0.317153,
		-0.229188, -0.802489, -0.550894,
		36.109074, 26.179243, 31.740406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783661, 26.763157, 31.614264>,  <36.269505, 26.740986, 32.126030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783661, 26.763157, 31.614264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538162, 26.480759, 31.472904>,  <36.390865, 26.311319, 31.388088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538162, 26.480759, 31.472904>,  <36.783661, 26.763157, 31.614264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538162, 26.480759, 31.472904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196525, 0.296918, -0.934461,
		0.764655, -0.642971, -0.043486,
		-0.613743, -0.705994, -0.353400,
		36.354038, 26.268961, 31.366884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147324, 26.315155, 31.124058>,  <36.783661, 26.763157, 31.614264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147324, 26.315155, 31.124058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.767147, 26.256557, 31.014370>,  <36.539040, 26.221399, 30.948557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.767147, 26.256557, 31.014370>,  <37.147324, 26.315155, 31.124058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767147, 26.256557, 31.014370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227598, 0.273004, -0.934702,
		0.211789, -0.950794, -0.226134,
		-0.950445, -0.146492, -0.274218,
		36.482014, 26.212608, 30.932104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156822, 25.898602, 30.463196>,  <37.147324, 26.315155, 31.124058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156822, 25.898602, 30.463196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.822472, 26.115250, 30.498882>,  <36.621861, 26.245239, 30.520294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.822472, 26.115250, 30.498882>,  <37.156822, 25.898602, 30.463196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822472, 26.115250, 30.498882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164111, 0.401678, -0.900957,
		-0.523812, -0.738446, -0.424638,
		-0.835876, 0.541620, 0.089216,
		36.571709, 26.277735, 30.525648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.858288, 25.308369, 35.404675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.531067, 25.196575, 35.203609>,  <32.334732, 25.129499, 35.082970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.531067, 25.196575, 35.203609>,  <32.858288, 25.308369, 35.404675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531067, 25.196575, 35.203609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322602, 0.500578, -0.803337,
		0.476144, -0.819335, -0.319338,
		-0.818055, -0.279485, -0.502666,
		32.285648, 25.112730, 35.052811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100540, 25.169512, 34.744213>,  <32.858288, 25.308369, 35.404675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100540, 25.169512, 34.744213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.707832, 25.225212, 34.692471>,  <32.472206, 25.258633, 34.661427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.707832, 25.225212, 34.692471>,  <33.100540, 25.169512, 34.744213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707832, 25.225212, 34.692471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187436, 0.596612, -0.780334,
		-0.031486, -0.790357, -0.611837,
		-0.981772, 0.139251, -0.129356,
		32.413300, 25.266987, 34.653664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041378, 25.203035, 34.111702>,  <33.100540, 25.169512, 34.744213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041378, 25.203035, 34.111702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.703529, 25.374840, 34.239536>,  <32.500820, 25.477922, 34.316238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.703529, 25.374840, 34.239536>,  <33.041378, 25.203035, 34.111702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703529, 25.374840, 34.239536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008366, 0.607472, -0.794297,
		-0.535301, -0.668206, -0.516676,
		-0.844620, 0.429511, 0.319590,
		32.450142, 25.503693, 34.335415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552101, 25.308615, 33.390327>,  <33.041378, 25.203035, 34.111702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552101, 25.308615, 33.390327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.443016, 25.561913, 33.680054>,  <32.377563, 25.713890, 33.853889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.443016, 25.561913, 33.680054>,  <32.552101, 25.308615, 33.390327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443016, 25.561913, 33.680054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004408, 0.752020, -0.659126,
		-0.962084, -0.182948, -0.202297,
		-0.272717, 0.633243, 0.724313,
		32.361202, 25.751886, 33.897346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266209, 25.822794, 32.999580>,  <32.552101, 25.308615, 33.390327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266209, 25.822794, 32.999580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310413, 25.992947, 33.358879>,  <32.336937, 26.095037, 33.574459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310413, 25.992947, 33.358879>,  <32.266209, 25.822794, 32.999580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310413, 25.992947, 33.358879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097598, 0.894765, -0.435742,
		-0.989071, 0.135819, 0.057363,
		0.110508, 0.425381, 0.898242,
		32.343567, 26.120562, 33.628353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704248, 26.343697, 33.028385>,  <32.266209, 25.822794, 32.999580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704248, 26.343697, 33.028385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.010521, 26.445389, 33.264725>,  <32.194286, 26.506405, 33.406528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.010521, 26.445389, 33.264725>,  <31.704248, 26.343697, 33.028385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010521, 26.445389, 33.264725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058066, 0.887504, -0.457126,
		-0.640592, 0.384321, 0.664785,
		0.765683, 0.254230, 0.590844,
		32.240227, 26.521658, 33.441978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631052, 27.090384, 33.109879>,  <31.704248, 26.343697, 33.028385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631052, 27.090384, 33.109879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.992651, 27.025852, 33.268253>,  <32.209610, 26.987133, 33.363277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.992651, 27.025852, 33.268253>,  <31.631052, 27.090384, 33.109879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992651, 27.025852, 33.268253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323007, 0.864429, -0.385264,
		-0.280104, 0.476167, 0.833551,
		0.903996, -0.161328, 0.395936,
		32.263851, 26.977453, 33.387035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722269, 27.652298, 33.689594>,  <31.631052, 27.090384, 33.109879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722269, 27.652298, 33.689594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.075703, 27.534538, 33.543930>,  <32.287762, 27.463882, 33.456532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.075703, 27.534538, 33.543930>,  <31.722269, 27.652298, 33.689594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075703, 27.534538, 33.543930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136466, 0.905789, -0.401151,
		0.447950, 0.304755, 0.840515,
		0.883582, -0.294397, -0.364160,
		32.340778, 27.446218, 33.434681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067776, 28.212606, 33.723854>,  <31.722269, 27.652298, 33.689594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067776, 28.212606, 33.723854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.270916, 28.011055, 33.444370>,  <32.392799, 27.890123, 33.276680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.270916, 28.011055, 33.444370>,  <32.067776, 28.212606, 33.723854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270916, 28.011055, 33.444370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119702, 0.844497, -0.522011,
		0.853088, 0.181467, 0.489193,
		0.507850, -0.503879, -0.698709,
		32.423271, 27.859892, 33.234756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625401, 28.661180, 33.592609>,  <32.067776, 28.212606, 33.723854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625401, 28.661180, 33.592609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.582001, 28.433872, 33.266346>,  <32.555962, 28.297487, 33.070587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.582001, 28.433872, 33.266346>,  <32.625401, 28.661180, 33.592609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582001, 28.433872, 33.266346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161749, 0.799476, -0.578511,
		0.980849, -0.194699, 0.005175,
		-0.108498, -0.568269, -0.815659,
		32.549450, 28.263391, 33.021648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033737, 29.079712, 33.209042>,  <32.625401, 28.661180, 33.592609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033737, 29.079712, 33.209042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.839676, 28.831413, 32.962692>,  <32.723240, 28.682434, 32.814880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.839676, 28.831413, 32.962692>,  <33.033737, 29.079712, 33.209042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839676, 28.831413, 32.962692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044198, 0.686009, -0.726250,
		0.873314, -0.379560, -0.305381,
		-0.485149, -0.620746, -0.615877,
		32.694130, 28.645189, 32.777927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440178, 29.002413, 32.603779>,  <33.033737, 29.079712, 33.209042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440178, 29.002413, 32.603779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.070900, 28.922363, 32.472530>,  <32.849335, 28.874334, 32.393780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.070900, 28.922363, 32.472530>,  <33.440178, 29.002413, 32.603779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070900, 28.922363, 32.472530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105691, 0.688635, -0.717364,
		0.369520, -0.696945, -0.614591,
		-0.923193, -0.200124, -0.328125,
		32.793941, 28.862326, 32.374092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187584, 29.127565, 32.259262>,  <33.440178, 29.002413, 32.603779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187584, 29.127565, 32.259262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.353493, 29.472927, 32.374149>,  <34.453037, 29.680145, 32.443081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.353493, 29.472927, 32.374149>,  <34.187584, 29.127565, 32.259262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353493, 29.472927, 32.374149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361076, -0.445910, 0.819017,
		0.835217, -0.235997, -0.496706,
		0.414772, 0.863406, 0.287219,
		34.477924, 29.731949, 32.460316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865807, 28.969114, 32.295567>,  <34.187584, 29.127565, 32.259262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865807, 28.969114, 32.295567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.813992, 29.284451, 32.536148>,  <34.782902, 29.473652, 32.680496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.813992, 29.284451, 32.536148>,  <34.865807, 28.969114, 32.295567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813992, 29.284451, 32.536148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475245, -0.482994, 0.735431,
		0.870265, 0.381103, -0.312088,
		-0.129539, 0.788338, 0.601450,
		34.775131, 29.520952, 32.716583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558533, 29.054800, 32.670826>,  <34.865807, 28.969114, 32.295567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558533, 29.054800, 32.670826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.271694, 29.240051, 32.879162>,  <35.099590, 29.351202, 33.004166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.271694, 29.240051, 32.879162>,  <35.558533, 29.054800, 32.670826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271694, 29.240051, 32.879162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315846, -0.450221, 0.835190,
		0.621296, 0.763421, 0.176575,
		-0.717100, 0.463130, 0.520844,
		35.056564, 29.378990, 33.035416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845123, 29.210550, 33.343067>,  <35.558533, 29.054800, 32.670826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845123, 29.210550, 33.343067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.451466, 29.250080, 33.401974>,  <35.215271, 29.273798, 33.437317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.451466, 29.250080, 33.401974>,  <35.845123, 29.210550, 33.343067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451466, 29.250080, 33.401974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095517, -0.404293, 0.909628,
		0.149432, 0.909275, 0.388444,
		-0.984148, 0.098824, 0.147265,
		35.156219, 29.279728, 33.446152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780479, 29.154873, 34.087463>,  <35.845123, 29.210550, 33.343067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780479, 29.154873, 34.087463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.388420, 29.128464, 34.012680>,  <35.153187, 29.112619, 33.967808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.388420, 29.128464, 34.012680>,  <35.780479, 29.154873, 34.087463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388420, 29.128464, 34.012680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136480, -0.459356, 0.877705,
		-0.143830, 0.885796, 0.441225,
		-0.980146, -0.066022, -0.186962,
		35.094376, 29.108658, 33.956593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258968, 29.481279, 34.658558>,  <35.780479, 29.154873, 34.087463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258968, 29.481279, 34.658558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.068535, 29.198860, 34.448856>,  <34.954277, 29.029408, 34.323036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.068535, 29.198860, 34.448856>,  <35.258968, 29.481279, 34.658558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068535, 29.198860, 34.448856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056635, -0.570294, 0.819485,
		-0.877576, 0.419832, 0.231519,
		-0.476080, -0.706049, -0.524254,
		34.925713, 28.987045, 34.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742657, 29.233902, 35.012966>,  <35.258968, 29.481279, 34.658558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742657, 29.233902, 35.012966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765755, 28.923527, 34.761703>,  <34.779613, 28.737301, 34.610947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765755, 28.923527, 34.761703>,  <34.742657, 29.233902, 35.012966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765755, 28.923527, 34.761703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063278, -0.630788, 0.773371,
		-0.996324, -0.004912, -0.085526,
		0.057748, -0.775940, -0.628158,
		34.783077, 28.690744, 34.573257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259060, 28.786953, 35.273472>,  <34.742657, 29.233902, 35.012966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259060, 28.786953, 35.273472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454601, 28.556080, 35.011822>,  <34.571926, 28.417555, 34.854832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454601, 28.556080, 35.011822>,  <34.259060, 28.786953, 35.273472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454601, 28.556080, 35.011822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072621, -0.774151, 0.628821,
		-0.869337, -0.259899, -0.420364,
		0.488856, -0.577185, -0.654124,
		34.601257, 28.382925, 34.815586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789993, 28.157560, 35.090172>,  <34.259060, 28.786953, 35.273472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789993, 28.157560, 35.090172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.177502, 28.084034, 35.023602>,  <34.410007, 28.039919, 34.983662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.177502, 28.084034, 35.023602>,  <33.789993, 28.157560, 35.090172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177502, 28.084034, 35.023602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071075, -0.848854, 0.523828,
		-0.237554, -0.495640, -0.835409,
		0.968771, -0.183814, -0.166421,
		34.468132, 28.028889, 34.973675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769131, 27.446936, 34.909592>,  <33.789993, 28.157560, 35.090172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769131, 27.446936, 34.909592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.145523, 27.533031, 35.014069>,  <34.371361, 27.584688, 35.076756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.145523, 27.533031, 35.014069>,  <33.769131, 27.446936, 34.909592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145523, 27.533031, 35.014069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048479, -0.678054, 0.733411,
		0.334962, -0.702791, -0.627604,
		0.940984, 0.215239, 0.261193,
		34.427818, 27.597603, 35.092426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101818, 26.779541, 35.051655>,  <33.769131, 27.446936, 34.909592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101818, 26.779541, 35.051655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.348701, 27.035892, 35.234230>,  <34.496830, 27.189703, 35.343773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.348701, 27.035892, 35.234230>,  <34.101818, 26.779541, 35.051655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348701, 27.035892, 35.234230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083209, -0.630028, 0.772101,
		0.782391, -0.438564, -0.442182,
		0.617204, 0.640879, 0.456436,
		34.533863, 27.228155, 35.371162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725712, 26.436384, 35.231064>,  <34.101818, 26.779541, 35.051655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725712, 26.436384, 35.231064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.744129, 26.739082, 35.491898>,  <34.755180, 26.920702, 35.648399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.744129, 26.739082, 35.491898>,  <34.725712, 26.436384, 35.231064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744129, 26.739082, 35.491898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003941, -0.652635, 0.757663,
		0.998932, -0.037457, -0.027068,
		0.046045, 0.756746, 0.652085,
		34.757942, 26.966106, 35.687523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341347, 26.391834, 35.697128>,  <34.725712, 26.436384, 35.231064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341347, 26.391834, 35.697128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.096424, 26.638714, 35.894772>,  <34.949471, 26.786840, 36.013359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.096424, 26.638714, 35.894772>,  <35.341347, 26.391834, 35.697128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096424, 26.638714, 35.894772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212358, -0.473613, 0.854748,
		0.761567, 0.628298, 0.158930,
		-0.612307, 0.617198, 0.494112,
		34.912731, 26.823874, 36.043007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671818, 26.503479, 36.318317>,  <35.341347, 26.391834, 35.697128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671818, 26.503479, 36.318317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.295170, 26.616108, 36.392143>,  <35.069180, 26.683685, 36.436440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.295170, 26.616108, 36.392143>,  <35.671818, 26.503479, 36.318317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295170, 26.616108, 36.392143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043879, -0.440894, 0.896486,
		0.333798, 0.852250, 0.402800,
		-0.941623, 0.281571, 0.184566,
		35.012684, 26.700579, 36.447514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061974, 26.230421, 35.872612>,  <35.671818, 26.503479, 36.318317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061974, 26.230421, 35.872612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.943405, 25.862457, 35.769924>,  <35.872265, 25.641680, 35.708309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.943405, 25.862457, 35.769924>,  <36.061974, 26.230421, 35.872612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943405, 25.862457, 35.769924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021610, 0.262273, -0.964752,
		0.954814, -0.291516, -0.057862,
		-0.296416, -0.919909, -0.256721,
		35.854481, 25.586485, 35.692909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435658, 26.077888, 35.214863>,  <36.061974, 26.230421, 35.872612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435658, 26.077888, 35.214863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.142033, 25.806484, 35.226055>,  <35.965858, 25.643642, 35.232773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.142033, 25.806484, 35.226055>,  <36.435658, 26.077888, 35.214863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142033, 25.806484, 35.226055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154303, -0.206782, -0.966143,
		0.661325, -0.704886, 0.256486,
		-0.734058, -0.678511, 0.027984,
		35.921814, 25.602932, 35.234451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698689, 25.374201, 34.985291>,  <36.435658, 26.077888, 35.214863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698689, 25.374201, 34.985291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.302612, 25.388691, 34.931313>,  <36.064968, 25.397385, 34.898926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.302612, 25.388691, 34.931313>,  <36.698689, 25.374201, 34.985291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302612, 25.388691, 34.931313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114277, -0.345743, -0.931344,
		-0.080396, -0.937630, 0.338212,
		-0.990190, 0.036226, -0.134946,
		36.005554, 25.399559, 34.890827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450775, 24.784615, 34.534351>,  <36.698689, 25.374201, 34.985291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450775, 24.784615, 34.534351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.140820, 25.033939, 34.492325>,  <35.954845, 25.183535, 34.467110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.140820, 25.033939, 34.492325>,  <36.450775, 24.784615, 34.534351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140820, 25.033939, 34.492325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038611, -0.212575, -0.976382,
		-0.630922, -0.752527, 0.188787,
		-0.774885, 0.623310, -0.105062,
		35.908356, 25.220932, 34.460808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858097, 24.395409, 34.119930>,  <36.450775, 24.784615, 34.534351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858097, 24.395409, 34.119930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814068, 24.790325, 34.074074>,  <35.787651, 25.027275, 34.046562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814068, 24.790325, 34.074074>,  <35.858097, 24.395409, 34.119930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814068, 24.790325, 34.074074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072510, -0.107054, -0.991606,
		-0.991275, -0.117463, -0.059804,
		-0.110075, 0.987290, -0.114637,
		35.781044, 25.086512, 34.039684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504406, 24.525568, 33.525433>,  <35.858097, 24.395409, 34.119930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504406, 24.525568, 33.525433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.637676, 24.901695, 33.553131>,  <35.717636, 25.127373, 33.569748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.637676, 24.901695, 33.553131>,  <35.504406, 24.525568, 33.525433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637676, 24.901695, 33.553131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013124, 0.068808, -0.997543,
		-0.942774, 0.333264, 0.010584,
		0.333174, 0.940319, 0.069244,
		35.737629, 25.183790, 33.573906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038296, 24.910921, 33.014595>,  <35.504406, 24.525568, 33.525433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038296, 24.910921, 33.014595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.364456, 25.129330, 33.091511>,  <35.560154, 25.260376, 33.137661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.364456, 25.129330, 33.091511>,  <35.038296, 24.910921, 33.014595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364456, 25.129330, 33.091511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065043, 0.243645, -0.967681,
		-0.575226, 0.801558, 0.163154,
		0.815404, 0.546023, 0.192287,
		35.609077, 25.293137, 33.149197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330704, 25.002836, 32.664974>,  <35.038296, 24.910921, 33.014595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330704, 25.002836, 32.664974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.282715, 24.698845, 32.409462>,  <34.253922, 24.516451, 32.256157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.282715, 24.698845, 32.409462>,  <34.330704, 25.002836, 32.664974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282715, 24.698845, 32.409462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312171, -0.581910, 0.750952,
		-0.942420, 0.289503, -0.167428,
		-0.119975, -0.759979, -0.638779,
		34.246723, 24.470852, 32.217827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584606, 24.700390, 32.816978>,  <34.330704, 25.002836, 32.664974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584606, 24.700390, 32.816978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.734005, 24.408237, 32.588230>,  <33.823647, 24.232946, 32.450981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.734005, 24.408237, 32.588230>,  <33.584606, 24.700390, 32.816978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734005, 24.408237, 32.588230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460037, -0.681179, 0.569527,
		-0.805521, 0.050365, -0.590423,
		0.373499, -0.730382, -0.571874,
		33.846054, 24.189123, 32.416668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988770, 24.299295, 32.541656>,  <33.584606, 24.700390, 32.816978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988770, 24.299295, 32.541656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.308353, 24.059361, 32.524429>,  <33.500103, 23.915400, 32.514091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.308353, 24.059361, 32.524429>,  <32.988770, 24.299295, 32.541656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308353, 24.059361, 32.524429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469216, -0.666570, 0.579242,
		-0.376159, -0.442583, -0.814017,
		0.798962, -0.599837, -0.043069,
		33.548042, 23.879410, 32.511509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705727, 23.609808, 32.393074>,  <32.988770, 24.299295, 32.541656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705727, 23.609808, 32.393074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.069679, 23.553093, 32.549030>,  <33.288052, 23.519064, 32.642605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.069679, 23.553093, 32.549030>,  <32.705727, 23.609808, 32.393074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069679, 23.553093, 32.549030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364916, -0.720609, 0.589541,
		0.197369, -0.678689, -0.707408,
		0.909880, -0.141788, 0.389890,
		33.342644, 23.510557, 32.665997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899330, 22.986923, 32.241802>,  <32.705727, 23.609808, 32.393074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899330, 22.986923, 32.241802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129768, 23.077160, 32.556057>,  <33.268032, 23.131302, 32.744610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129768, 23.077160, 32.556057>,  <32.899330, 22.986923, 32.241802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129768, 23.077160, 32.556057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455772, -0.709213, 0.537856,
		0.678521, -0.667926, -0.305752,
		0.576091, 0.225594, 0.785637,
		33.302597, 23.144838, 32.791748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918633, 22.385490, 32.572327>,  <32.899330, 22.986923, 32.241802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918633, 22.385490, 32.572327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.073803, 22.612213, 32.863049>,  <33.166904, 22.748247, 33.037479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.073803, 22.612213, 32.863049>,  <32.918633, 22.385490, 32.572327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073803, 22.612213, 32.863049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441024, -0.578271, 0.686367,
		0.809326, -0.586799, 0.025647,
		0.387929, 0.566806, 0.726803,
		33.190182, 22.782255, 33.081089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204067, 21.867802, 33.072552>,  <32.918633, 22.385490, 32.572327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204067, 21.867802, 33.072552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.170132, 22.215134, 33.268024>,  <33.149769, 22.423532, 33.385307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.170132, 22.215134, 33.268024>,  <33.204067, 21.867802, 33.072552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170132, 22.215134, 33.268024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555019, -0.448498, 0.700574,
		0.827499, -0.211787, 0.519991,
		-0.084842, 0.868329, 0.488678,
		33.144680, 22.475632, 33.414627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427826, 21.715353, 33.688595>,  <33.204067, 21.867802, 33.072552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427826, 21.715353, 33.688595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.182861, 22.028332, 33.733727>,  <33.035881, 22.216118, 33.760803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.182861, 22.028332, 33.733727>,  <33.427826, 21.715353, 33.688595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182861, 22.028332, 33.733727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529209, -0.511794, 0.676761,
		0.587272, 0.354749, 0.727506,
		-0.612414, 0.782445, 0.112826,
		32.999138, 22.263065, 33.767574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267246, 21.681927, 34.407558>,  <33.427826, 21.715353, 33.688595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267246, 21.681927, 34.407558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.993412, 21.881260, 34.194767>,  <32.829109, 22.000860, 34.067093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.993412, 21.881260, 34.194767>,  <33.267246, 21.681927, 34.407558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993412, 21.881260, 34.194767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725197, -0.391857, 0.566161,
		0.073675, 0.773378, 0.629649,
		-0.684589, 0.498331, -0.531981,
		32.788036, 22.030760, 34.035172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.584534, 33.613846, 23.007568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194626, 33.536758, 23.052620>,  <31.960682, 33.490505, 23.079651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194626, 33.536758, 23.052620>,  <32.584534, 33.613846, 23.007568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194626, 33.536758, 23.052620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202093, -0.547714, 0.811892,
		-0.094778, 0.814168, 0.572841,
		-0.974769, -0.192717, 0.112627,
		31.902195, 33.478943, 23.086409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366756, 33.697701, 23.655807>,  <32.584534, 33.613846, 23.007568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366756, 33.697701, 23.655807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107208, 33.412025, 23.550812>,  <31.951479, 33.240620, 23.487814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107208, 33.412025, 23.550812>,  <32.366756, 33.697701, 23.655807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107208, 33.412025, 23.550812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371087, -0.598191, 0.710255,
		-0.664275, 0.363457, 0.653175,
		-0.648871, -0.714189, -0.262489,
		31.912546, 33.197769, 23.472065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217236, 33.427010, 24.271029>,  <32.366756, 33.697701, 23.655807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217236, 33.427010, 24.271029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091507, 33.139027, 24.023525>,  <32.016068, 32.966236, 23.875023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091507, 33.139027, 24.023525>,  <32.217236, 33.427010, 24.271029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091507, 33.139027, 24.023525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084534, -0.670433, 0.737139,
		-0.945544, 0.179395, 0.271594,
		-0.314325, -0.719956, -0.618759,
		31.997210, 32.923038, 23.837898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883080, 33.018547, 24.778448>,  <32.217236, 33.427010, 24.271029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883080, 33.018547, 24.778448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948195, 32.793594, 24.454170>,  <31.987263, 32.658623, 24.259604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948195, 32.793594, 24.454170>,  <31.883080, 33.018547, 24.778448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948195, 32.793594, 24.454170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355373, -0.733091, 0.579903,
		-0.920440, -0.382500, 0.080518,
		0.162786, -0.562380, -0.810697,
		31.997030, 32.624882, 24.210960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783342, 32.252628, 24.879765>,  <31.883080, 33.018547, 24.778448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783342, 32.252628, 24.879765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006741, 32.234138, 24.548477>,  <32.140781, 32.223045, 24.349705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006741, 32.234138, 24.548477>,  <31.783342, 32.252628, 24.879765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006741, 32.234138, 24.548477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404681, -0.856382, 0.320691,
		-0.724095, -0.514269, -0.459579,
		0.558497, -0.046228, -0.828217,
		32.174290, 32.220268, 24.300013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653746, 31.621670, 24.809752>,  <31.783342, 32.252628, 24.879765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653746, 31.621670, 24.809752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977476, 31.748135, 24.611748>,  <32.171715, 31.824015, 24.492945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977476, 31.748135, 24.611748>,  <31.653746, 31.621670, 24.809752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977476, 31.748135, 24.611748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531998, -0.751767, 0.389646,
		-0.248940, -0.578694, -0.776622,
		0.809325, 0.316163, -0.495009,
		32.220272, 31.842983, 24.463245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905403, 31.055683, 24.473604>,  <31.653746, 31.621670, 24.809752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905403, 31.055683, 24.473604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202793, 31.321476, 24.503826>,  <32.381226, 31.480951, 24.521959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202793, 31.321476, 24.503826>,  <31.905403, 31.055683, 24.473604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202793, 31.321476, 24.503826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591358, -0.705974, 0.389738,
		0.312314, -0.245080, -0.917821,
		0.743475, 0.664482, 0.075555,
		32.425835, 31.520821, 24.526493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429707, 30.740822, 24.186920>,  <31.905403, 31.055683, 24.473604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429707, 30.740822, 24.186920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588287, 31.023277, 24.421593>,  <32.683437, 31.192751, 24.562395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588287, 31.023277, 24.421593>,  <32.429707, 30.740822, 24.186920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588287, 31.023277, 24.421593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432794, -0.707335, 0.558897,
		0.809638, 0.032334, -0.586039,
		0.396454, 0.706138, 0.586679,
		32.707222, 31.235119, 24.597597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174259, 30.591253, 24.258162>,  <32.429707, 30.740822, 24.186920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174259, 30.591253, 24.258162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092598, 30.809673, 24.583160>,  <33.043602, 30.940725, 24.778160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092598, 30.809673, 24.583160>,  <33.174259, 30.591253, 24.258162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092598, 30.809673, 24.583160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405316, -0.708347, 0.577896,
		0.891090, 0.447295, -0.076715,
		-0.204149, 0.546051, 0.812497,
		33.031353, 30.973488, 24.826910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778053, 30.743738, 24.401360>,  <33.174259, 30.591253, 24.258162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778053, 30.743738, 24.401360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537647, 30.745571, 24.721050>,  <33.393402, 30.746672, 24.912865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537647, 30.745571, 24.721050>,  <33.778053, 30.743738, 24.401360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537647, 30.745571, 24.721050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525939, -0.750694, 0.399809,
		0.601806, 0.660635, 0.448767,
		-0.601014, 0.004584, 0.799225,
		33.357342, 30.746946, 24.960817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214211, 30.649342, 24.961367>,  <33.778053, 30.743738, 24.401360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214211, 30.649342, 24.961367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867496, 30.551357, 25.135117>,  <33.659470, 30.492567, 25.239367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867496, 30.551357, 25.135117>,  <34.214211, 30.649342, 24.961367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867496, 30.551357, 25.135117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426016, -0.816505, 0.389652,
		0.259219, 0.522795, 0.812091,
		-0.866785, -0.244959, 0.434373,
		33.607460, 30.477869, 25.265429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409958, 30.433182, 25.620632>,  <34.214211, 30.649342, 24.961367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409958, 30.433182, 25.620632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044212, 30.286648, 25.551659>,  <33.824764, 30.198727, 25.510275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044212, 30.286648, 25.551659>,  <34.409958, 30.433182, 25.620632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044212, 30.286648, 25.551659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261073, -0.858964, 0.440479,
		-0.309479, 0.357741, 0.881047,
		-0.914365, -0.366337, -0.172435,
		33.769901, 30.176746, 25.499928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919365, 30.418051, 26.170904>,  <34.409958, 30.433182, 25.620632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919365, 30.418051, 26.170904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314117, 30.353813, 26.177643>,  <35.550968, 30.315271, 26.181686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314117, 30.353813, 26.177643>,  <34.919365, 30.418051, 26.170904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314117, 30.353813, 26.177643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131812, 0.740926, -0.658524,
		0.093270, 0.652103, 0.752371,
		0.986877, -0.160592, 0.016848,
		35.610180, 30.305635, 26.182697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217869, 31.004669, 26.348269>,  <34.919365, 30.418051, 26.170904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217869, 31.004669, 26.348269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482944, 30.799686, 26.129826>,  <35.641991, 30.676697, 25.998760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482944, 30.799686, 26.129826>,  <35.217869, 31.004669, 26.348269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482944, 30.799686, 26.129826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079423, 0.773196, -0.629174,
		0.744673, 0.373572, 0.553088,
		0.662687, -0.512457, -0.546108,
		35.681751, 30.645950, 25.965994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678810, 31.435043, 26.108089>,  <35.217869, 31.004669, 26.348269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678810, 31.435043, 26.108089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729378, 31.124371, 25.861259>,  <35.759716, 30.937967, 25.713161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729378, 31.124371, 25.861259>,  <35.678810, 31.435043, 26.108089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729378, 31.124371, 25.861259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251803, 0.626815, -0.737359,
		0.959487, -0.062168, 0.274810,
		0.126415, -0.776684, -0.617075,
		35.767303, 30.891365, 25.676138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404301, 31.525900, 25.757408>,  <35.678810, 31.435043, 26.108089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404301, 31.525900, 25.757408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167198, 31.311771, 25.516720>,  <36.024937, 31.183294, 25.372307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167198, 31.311771, 25.516720>,  <36.404301, 31.525900, 25.757408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167198, 31.311771, 25.516720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312774, 0.535475, -0.784499,
		0.742168, -0.653219, -0.149971,
		-0.592756, -0.535323, -0.601722,
		35.989372, 31.151175, 25.336203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833195, 31.547430, 25.167521>,  <36.404301, 31.525900, 25.757408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833195, 31.547430, 25.167521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457417, 31.454086, 25.067131>,  <36.231949, 31.398079, 25.006897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457417, 31.454086, 25.067131>,  <36.833195, 31.547430, 25.167521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457417, 31.454086, 25.067131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086173, 0.547949, -0.832061,
		0.331691, -0.803302, -0.494658,
		-0.939444, -0.233361, -0.250973,
		36.175583, 31.384077, 24.991838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838886, 31.293177, 24.436525>,  <36.833195, 31.547430, 25.167521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838886, 31.293177, 24.436525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463161, 31.401470, 24.520813>,  <36.237728, 31.466446, 24.571386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463161, 31.401470, 24.520813>,  <36.838886, 31.293177, 24.436525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463161, 31.401470, 24.520813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011350, 0.589353, -0.807796,
		-0.342886, -0.761161, -0.550511,
		-0.939308, 0.270734, 0.210720,
		36.181370, 31.482691, 24.584028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543480, 31.231197, 23.846752>,  <36.838886, 31.293177, 24.436525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543480, 31.231197, 23.846752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293446, 31.460037, 24.059155>,  <36.143425, 31.597342, 24.186596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293446, 31.460037, 24.059155>,  <36.543480, 31.231197, 23.846752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293446, 31.460037, 24.059155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037130, 0.701315, -0.711884,
		-0.779669, -0.425275, -0.459627,
		-0.625090, 0.572099, 0.531003,
		36.105919, 31.631666, 24.218456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004299, 31.373787, 23.426527>,  <36.543480, 31.231197, 23.846752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004299, 31.373787, 23.426527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019985, 31.670334, 23.694508>,  <36.029396, 31.848263, 23.855297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019985, 31.670334, 23.694508>,  <36.004299, 31.373787, 23.426527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019985, 31.670334, 23.694508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007794, 0.670675, -0.741710,
		-0.999201, 0.023863, 0.032077,
		0.039213, 0.741367, 0.669953,
		36.031750, 31.892744, 23.895494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610420, 32.003792, 23.086439>,  <36.004299, 31.373787, 23.426527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610420, 32.003792, 23.086439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840366, 32.124634, 23.390614>,  <35.978336, 32.197140, 23.573118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840366, 32.124634, 23.390614>,  <35.610420, 32.003792, 23.086439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840366, 32.124634, 23.390614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332292, 0.763070, -0.554352,
		-0.747736, 0.571365, 0.338279,
		0.574868, 0.302102, 0.760435,
		36.012825, 32.215263, 23.618744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405521, 32.720562, 23.301146>,  <35.610420, 32.003792, 23.086439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405521, 32.720562, 23.301146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781197, 32.691486, 23.435390>,  <36.006603, 32.674042, 23.515938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781197, 32.691486, 23.435390>,  <35.405521, 32.720562, 23.301146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781197, 32.691486, 23.435390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285926, 0.706788, -0.647068,
		-0.190172, 0.703681, 0.684593,
		0.939192, -0.072689, 0.335612,
		36.062954, 32.669682, 23.536074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601528, 33.389801, 23.198118>,  <35.405521, 32.720562, 23.301146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601528, 33.389801, 23.198118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950089, 33.210987, 23.278938>,  <36.159225, 33.103699, 23.327431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950089, 33.210987, 23.278938>,  <35.601528, 33.389801, 23.198118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950089, 33.210987, 23.278938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489598, 0.818405, -0.300843,
		-0.030872, 0.361078, 0.932024,
		0.871401, -0.447030, 0.202049,
		36.211510, 33.076878, 23.339552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973011, 33.887695, 23.447374>,  <35.601528, 33.389801, 23.198118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973011, 33.887695, 23.447374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250336, 33.624371, 23.330105>,  <36.416729, 33.466377, 23.259743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250336, 33.624371, 23.330105>,  <35.973011, 33.887695, 23.447374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250336, 33.624371, 23.330105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517494, 0.737929, -0.433199,
		0.501520, 0.148625, 0.852284,
		0.693309, -0.658310, -0.293173,
		36.458328, 33.426876, 23.242153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624851, 34.285538, 23.508701>,  <35.973011, 33.887695, 23.447374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624851, 34.285538, 23.508701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694111, 33.969044, 23.274105>,  <36.735668, 33.779148, 23.133347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694111, 33.969044, 23.274105>,  <36.624851, 34.285538, 23.508701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694111, 33.969044, 23.274105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601332, 0.556539, -0.573292,
		0.780012, -0.253410, 0.572158,
		0.173150, -0.791232, -0.586491,
		36.746056, 33.731674, 23.098158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334126, 34.518570, 23.114883>,  <36.624851, 34.285538, 23.508701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334126, 34.518570, 23.114883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166801, 34.236713, 22.885624>,  <37.066406, 34.067600, 22.748068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166801, 34.236713, 22.885624>,  <37.334126, 34.518570, 23.114883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166801, 34.236713, 22.885624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486275, 0.359226, -0.796551,
		0.767170, -0.611915, 0.192379,
		-0.418314, -0.704639, -0.573146,
		37.041306, 34.025322, 22.713680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937721, 35.013130, 23.468733>,  <37.334126, 34.518570, 23.114883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937721, 35.013130, 23.468733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907681, 35.411587, 23.486877>,  <36.889656, 35.650661, 23.497765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907681, 35.411587, 23.486877>,  <36.937721, 35.013130, 23.468733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907681, 35.411587, 23.486877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460069, -0.074974, 0.884712,
		0.884701, 0.045575, 0.463925,
		-0.075103, 0.996143, 0.045362,
		36.885151, 35.710430, 23.500486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175190, 35.374077, 24.083509>,  <36.937721, 35.013130, 23.468733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175190, 35.374077, 24.083509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889450, 35.611618, 23.935432>,  <36.718006, 35.754143, 23.846586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889450, 35.611618, 23.935432>,  <37.175190, 35.374077, 24.083509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889450, 35.611618, 23.935432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425978, 0.050689, 0.903313,
		0.555202, 0.802973, 0.216760,
		-0.714349, 0.593856, -0.370191,
		36.675144, 35.789776, 23.824375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128040, 36.044544, 24.534721>,  <37.175190, 35.374077, 24.083509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128040, 36.044544, 24.534721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794243, 35.891724, 24.375900>,  <36.593964, 35.800030, 24.280607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794243, 35.891724, 24.375900>,  <37.128040, 36.044544, 24.534721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794243, 35.891724, 24.375900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290365, -0.307507, 0.906161,
		-0.468301, 0.871477, 0.145678,
		-0.834495, -0.382056, -0.397052,
		36.543896, 35.777107, 24.256784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531193, 36.315113, 24.811237>,  <37.128040, 36.044544, 24.534721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531193, 36.315113, 24.811237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421326, 35.955692, 24.674324>,  <36.355404, 35.740040, 24.592176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421326, 35.955692, 24.674324>,  <36.531193, 36.315113, 24.811237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421326, 35.955692, 24.674324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321332, -0.249732, 0.913444,
		-0.906257, 0.360883, -0.220140,
		-0.274670, -0.898553, -0.342285,
		36.338924, 35.686127, 24.571638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873882, 36.216389, 25.046469>,  <36.531193, 36.315113, 24.811237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873882, 36.216389, 25.046469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992702, 35.839012, 24.987572>,  <36.063995, 35.612587, 24.952232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992702, 35.839012, 24.987572>,  <35.873882, 36.216389, 25.046469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992702, 35.839012, 24.987572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341849, -0.249057, 0.906151,
		-0.891573, -0.218835, -0.396496,
		0.297048, -0.943441, -0.147244,
		36.081818, 35.555981, 24.943399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230511, 35.728233, 25.150721>,  <35.873882, 36.216389, 25.046469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230511, 35.728233, 25.150721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564449, 35.516472, 25.211060>,  <35.764812, 35.389416, 25.247263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564449, 35.516472, 25.211060>,  <35.230511, 35.728233, 25.150721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564449, 35.516472, 25.211060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385657, -0.366957, 0.846529,
		-0.392803, -0.764899, -0.510523,
		0.834850, -0.529406, 0.150847,
		35.814903, 35.357651, 25.256313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016277, 35.096661, 25.518503>,  <35.230511, 35.728233, 25.150721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016277, 35.096661, 25.518503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407375, 35.115677, 25.600243>,  <35.642033, 35.127087, 25.649286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407375, 35.115677, 25.600243>,  <35.016277, 35.096661, 25.518503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407375, 35.115677, 25.600243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177604, -0.330965, 0.926779,
		0.111692, -0.942445, -0.315156,
		0.977743, 0.047541, 0.204348,
		35.700699, 35.129940, 25.661547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186310, 34.470264, 25.720478>,  <35.016277, 35.096661, 25.518503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186310, 34.470264, 25.720478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481144, 34.695091, 25.870564>,  <35.658043, 34.829987, 25.960615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481144, 34.695091, 25.870564>,  <35.186310, 34.470264, 25.720478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481144, 34.695091, 25.870564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114500, -0.443323, 0.889019,
		0.666031, -0.698243, -0.262409,
		0.737084, 0.562068, 0.375216,
		35.702271, 34.863712, 25.983128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614902, 33.994137, 26.128254>,  <35.186310, 34.470264, 25.720478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614902, 33.994137, 26.128254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710793, 34.363895, 26.246922>,  <35.768326, 34.585751, 26.318123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710793, 34.363895, 26.246922>,  <35.614902, 33.994137, 26.128254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710793, 34.363895, 26.246922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024008, -0.311132, 0.950064,
		0.970543, -0.220636, -0.096780,
		0.239729, 0.924401, 0.296670,
		35.782711, 34.641216, 26.335922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120312, 33.936665, 26.562422>,  <35.614902, 33.994137, 26.128254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120312, 33.936665, 26.562422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961250, 34.290127, 26.661236>,  <35.865814, 34.502205, 26.720524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961250, 34.290127, 26.661236>,  <36.120312, 33.936665, 26.562422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961250, 34.290127, 26.661236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110389, -0.313357, 0.943197,
		0.910869, 0.347800, 0.222154,
		-0.397658, 0.883653, 0.247034,
		35.841953, 34.555222, 26.735346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329163, 33.910423, 27.240852>,  <36.120312, 33.936665, 26.562422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329163, 33.910423, 27.240852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055462, 34.201267, 27.218555>,  <35.891239, 34.375774, 27.205177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055462, 34.201267, 27.218555>,  <36.329163, 33.910423, 27.240852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055462, 34.201267, 27.218555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259254, -0.171102, 0.950532,
		0.681604, 0.664857, 0.305584,
		-0.684254, 0.727110, -0.055743,
		35.850185, 34.419399, 27.201832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406853, 34.337563, 27.909225>,  <36.329163, 33.910423, 27.240852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406853, 34.337563, 27.909225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054489, 34.431492, 27.744854>,  <35.843071, 34.487850, 27.646231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054489, 34.431492, 27.744854>,  <36.406853, 34.337563, 27.909225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054489, 34.431492, 27.744854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467746, -0.299435, 0.831596,
		0.072228, 0.924770, 0.373610,
		-0.880907, 0.234820, -0.410930,
		35.790218, 34.501938, 27.621574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054985, 34.459393, 28.476336>,  <36.406853, 34.337563, 27.909225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054985, 34.459393, 28.476336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739735, 34.395042, 28.238689>,  <35.550583, 34.356434, 28.096102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739735, 34.395042, 28.238689>,  <36.054985, 34.459393, 28.476336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739735, 34.395042, 28.238689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461226, -0.484806, 0.743124,
		-0.407581, 0.859699, 0.307890,
		-0.788130, -0.160877, -0.594113,
		35.503296, 34.346779, 28.060455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405087, 34.757259, 28.790878>,  <36.054985, 34.459393, 28.476336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405087, 34.757259, 28.790878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311779, 34.452255, 28.549496>,  <35.255795, 34.269253, 28.404667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311779, 34.452255, 28.549496>,  <35.405087, 34.757259, 28.790878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311779, 34.452255, 28.549496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363165, -0.507357, 0.781473,
		-0.902050, 0.401450, -0.158565,
		-0.233273, -0.762513, -0.603454,
		35.241798, 34.223503, 28.368460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645687, 34.532864, 28.963657>,  <35.405087, 34.757259, 28.790878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645687, 34.532864, 28.963657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813759, 34.218079, 28.782932>,  <34.914604, 34.029209, 28.674498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813759, 34.218079, 28.782932>,  <34.645687, 34.532864, 28.963657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813759, 34.218079, 28.782932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321904, -0.594786, 0.736619,
		-0.848424, -0.164073, -0.503246,
		0.420183, -0.786962, -0.451815,
		34.939816, 33.981991, 28.647388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249310, 34.018513, 29.123440>,  <34.645687, 34.532864, 28.963657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249310, 34.018513, 29.123440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576244, 33.815117, 29.015068>,  <34.772404, 33.693081, 28.950045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576244, 33.815117, 29.015068>,  <34.249310, 34.018513, 29.123440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576244, 33.815117, 29.015068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227742, -0.717065, 0.658750,
		-0.529240, -0.476718, -0.701887,
		0.817337, -0.508486, -0.270931,
		34.821445, 33.662571, 28.933788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957333, 33.340042, 28.945030>,  <34.249310, 34.018513, 29.123440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957333, 33.340042, 28.945030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351124, 33.299019, 29.002007>,  <34.587399, 33.274406, 29.036192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351124, 33.299019, 29.002007>,  <33.957333, 33.340042, 28.945030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351124, 33.299019, 29.002007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162281, -0.841047, 0.516047,
		0.066874, -0.531151, -0.844634,
		0.984476, -0.102558, 0.142440,
		34.646465, 33.268253, 29.044739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139362, 32.597885, 28.875921>,  <33.957333, 33.340042, 28.945030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139362, 32.597885, 28.875921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474117, 32.701366, 29.068874>,  <34.674973, 32.763454, 29.184647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474117, 32.701366, 29.068874>,  <34.139362, 32.597885, 28.875921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474117, 32.701366, 29.068874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109574, -0.784250, 0.610693,
		0.536293, -0.563938, -0.627984,
		0.836889, 0.258700, 0.482381,
		34.725185, 32.778976, 29.213589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581829, 31.991150, 28.938105>,  <34.139362, 32.597885, 28.875921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581829, 31.991150, 28.938105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753448, 32.210728, 29.225040>,  <34.856419, 32.342476, 29.397202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753448, 32.210728, 29.225040>,  <34.581829, 31.991150, 28.938105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753448, 32.210728, 29.225040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025164, -0.801105, 0.597995,
		0.902930, -0.238519, -0.357527,
		0.429050, 0.548944, 0.717340,
		34.882164, 32.375412, 29.440243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015911, 31.490902, 29.273483>,  <34.581829, 31.991150, 28.938105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015911, 31.490902, 29.273483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001598, 31.805080, 29.520641>,  <34.993011, 31.993587, 29.668936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001598, 31.805080, 29.520641>,  <35.015911, 31.490902, 29.273483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001598, 31.805080, 29.520641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023319, -0.617465, 0.786253,
		0.999088, 0.042542, 0.003778,
		-0.035782, 0.785447, 0.617894,
		34.990864, 32.040714, 29.706009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681084, 31.475779, 29.723539>,  <35.015911, 31.490902, 29.273483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681084, 31.475779, 29.723539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355122, 31.652073, 29.874104>,  <35.159546, 31.757849, 29.964441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355122, 31.652073, 29.874104>,  <35.681084, 31.475779, 29.723539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355122, 31.652073, 29.874104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015697, -0.665979, 0.745805,
		0.579382, 0.601852, 0.549628,
		-0.814905, 0.440734, 0.376409,
		35.110649, 31.784292, 29.987026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830143, 31.674019, 30.436220>,  <35.681084, 31.475779, 29.723539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830143, 31.674019, 30.436220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432396, 31.637009, 30.415524>,  <35.193748, 31.614803, 30.403107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432396, 31.637009, 30.415524>,  <35.830143, 31.674019, 30.436220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432396, 31.637009, 30.415524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015999, -0.613458, 0.789565,
		-0.104795, 0.784288, 0.611481,
		-0.994365, -0.092525, -0.051740,
		35.134087, 31.609251, 30.400002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680412, 31.610952, 31.165886>,  <35.830143, 31.674019, 30.436220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680412, 31.610952, 31.165886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336670, 31.496964, 30.996037>,  <35.130424, 31.428570, 30.894127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336670, 31.496964, 30.996037>,  <35.680412, 31.610952, 31.165886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336670, 31.496964, 30.996037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181135, -0.606883, 0.773875,
		-0.478229, 0.741946, 0.469908,
		-0.859353, -0.284973, -0.424622,
		35.078865, 31.411472, 30.868650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200294, 31.783297, 31.645800>,  <35.680412, 31.610952, 31.165886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200294, 31.783297, 31.645800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062119, 31.493942, 31.406673>,  <34.979214, 31.320330, 31.263197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062119, 31.493942, 31.406673>,  <35.200294, 31.783297, 31.645800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062119, 31.493942, 31.406673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068023, -0.654656, 0.752860,
		-0.935972, 0.219404, 0.275352,
		-0.345441, -0.723386, -0.597815,
		34.958485, 31.276926, 31.227329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690300, 31.471926, 32.043747>,  <35.200294, 31.783297, 31.645800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690300, 31.471926, 32.043747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771545, 31.192448, 31.769356>,  <34.820293, 31.024761, 31.604719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771545, 31.192448, 31.769356>,  <34.690300, 31.471926, 32.043747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771545, 31.192448, 31.769356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086981, -0.710691, 0.698107,
		-0.975284, -0.082127, -0.205124,
		0.203113, -0.698694, -0.685982,
		34.832481, 30.982840, 31.563560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072971, 31.137629, 32.045380>,  <34.690300, 31.471926, 32.043747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072971, 31.137629, 32.045380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347691, 30.907181, 31.868114>,  <34.512520, 30.768911, 31.761755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347691, 30.907181, 31.868114>,  <34.072971, 31.137629, 32.045380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347691, 30.907181, 31.868114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116893, -0.689319, 0.714965,
		-0.717393, -0.439228, -0.540763,
		0.686792, -0.576123, -0.443170,
		34.553730, 30.734344, 31.735165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793320, 30.421345, 32.065807>,  <34.072971, 31.137629, 32.045380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793320, 30.421345, 32.065807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180267, 30.366913, 31.980316>,  <34.412437, 30.334253, 31.929020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180267, 30.366913, 31.980316>,  <33.793320, 30.421345, 32.065807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180267, 30.366913, 31.980316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046229, -0.734591, 0.676934,
		-0.249121, -0.664725, -0.704329,
		0.967369, -0.136078, -0.213731,
		34.470478, 30.326090, 31.916197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826817, 29.742954, 32.007343>,  <33.793320, 30.421345, 32.065807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826817, 29.742954, 32.007343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191601, 29.891235, 32.077675>,  <34.410469, 29.980204, 32.119873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191601, 29.891235, 32.077675>,  <33.826817, 29.742954, 32.007343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191601, 29.891235, 32.077675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085948, -0.591658, 0.801594,
		0.401185, -0.715906, -0.571427,
		0.911956, 0.370701, 0.175834,
		34.465187, 30.002445, 32.130424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428391, 29.159430, 31.739082>,  <33.826817, 29.742954, 32.007343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428391, 29.159430, 31.739082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044308, 29.167667, 31.850494>,  <32.813858, 29.172609, 31.917341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044308, 29.167667, 31.850494>,  <33.428391, 29.159430, 31.739082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044308, 29.167667, 31.850494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184211, 0.702902, -0.687019,
		-0.209929, -0.710988, -0.671138,
		-0.960207, 0.020594, 0.278531,
		32.756245, 29.173845, 31.934053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128258, 29.254787, 31.199106>,  <33.428391, 29.159430, 31.739082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128258, 29.254787, 31.199106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830902, 29.313862, 31.460049>,  <32.652489, 29.349306, 31.616613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830902, 29.313862, 31.460049>,  <33.128258, 29.254787, 31.199106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830902, 29.313862, 31.460049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359878, 0.733798, -0.576219,
		-0.563794, -0.663121, -0.492347,
		-0.743387, 0.147684, 0.652354,
		32.607887, 29.358168, 31.655754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645271, 29.408915, 30.753681>,  <33.128258, 29.254787, 31.199106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645271, 29.408915, 30.753681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526688, 29.576488, 31.096985>,  <32.455536, 29.677032, 31.302967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526688, 29.576488, 31.096985>,  <32.645271, 29.408915, 30.753681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526688, 29.576488, 31.096985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468418, 0.719360, -0.512938,
		-0.832282, -0.554090, -0.017028,
		-0.296463, 0.418933, 0.858257,
		32.437748, 29.702168, 31.354462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849356, 29.559101, 30.760460>,  <32.645271, 29.408915, 30.753681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849356, 29.559101, 30.760460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018620, 29.795441, 31.035221>,  <32.120178, 29.937244, 31.200077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018620, 29.795441, 31.035221>,  <31.849356, 29.559101, 30.760460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018620, 29.795441, 31.035221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475813, 0.790084, -0.386484,
		-0.771064, -0.163294, 0.615464,
		0.423158, 0.590849, 0.686902,
		32.145565, 29.972696, 31.241291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307302, 29.899508, 30.954998>,  <31.849356, 29.559101, 30.760460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307302, 29.899508, 30.954998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643192, 30.103138, 31.030579>,  <31.844727, 30.225315, 31.075928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643192, 30.103138, 31.030579>,  <31.307302, 29.899508, 30.954998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643192, 30.103138, 31.030579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380073, 0.799548, -0.465045,
		-0.387820, 0.318694, 0.864887,
		0.839726, 0.509075, 0.188954,
		31.895109, 30.255861, 31.087265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
