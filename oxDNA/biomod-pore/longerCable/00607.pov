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
	<24.511562, 35.174534, 34.678604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287910, 35.031044, 34.977589>,  <24.153719, 34.944950, 35.156979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287910, 35.031044, 34.977589>,  <24.511562, 35.174534, 34.678604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287910, 35.031044, 34.977589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114824, -0.926368, -0.358690,
		0.821091, -0.114727, 0.559148,
		-0.559128, -0.358721, 0.747459,
		24.120173, 34.923428, 35.201828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.598352, 34.564579, 35.186508>,  <24.511562, 35.174534, 34.678604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.598352, 34.564579, 35.186508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656864, 34.952717, 35.263493>,  <24.691971, 35.185600, 35.309681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656864, 34.952717, 35.263493>,  <24.598352, 34.564579, 35.186508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656864, 34.952717, 35.263493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626021, -0.241441, 0.741488,
		0.765963, 0.012017, -0.642772,
		0.146281, 0.970341, 0.192458,
		24.700748, 35.243820, 35.321232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280508, 34.817604, 35.260025>,  <24.598352, 34.564579, 35.186508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280508, 34.817604, 35.260025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054169, 34.988438, 35.542137>,  <24.918365, 35.090939, 35.711403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054169, 34.988438, 35.542137>,  <25.280508, 34.817604, 35.260025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.054169, 34.988438, 35.542137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650670, -0.294068, 0.700109,
		0.506406, 0.855057, -0.111495,
		-0.565846, 0.427086, 0.705277,
		24.884415, 35.116562, 35.753719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645336, 35.304562, 35.595200>,  <25.280508, 34.817604, 35.260025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645336, 35.304562, 35.595200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379459, 35.124477, 35.833691>,  <25.219933, 35.016426, 35.976788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379459, 35.124477, 35.833691>,  <25.645336, 35.304562, 35.595200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379459, 35.124477, 35.833691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731083, -0.227494, 0.643245,
		-0.153959, 0.863454, 0.480357,
		-0.664691, -0.450214, 0.596232,
		25.180052, 34.989414, 36.012562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568399, 35.717945, 36.230270>,  <25.645336, 35.304562, 35.595200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568399, 35.717945, 36.230270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453690, 35.337635, 36.277229>,  <25.384863, 35.109447, 36.305405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453690, 35.337635, 36.277229>,  <25.568399, 35.717945, 36.230270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453690, 35.337635, 36.277229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741897, -0.142883, 0.655113,
		-0.606093, 0.274967, 0.746354,
		-0.286776, -0.950777, 0.117396,
		25.367657, 35.052402, 36.312447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565010, 35.659927, 36.969425>,  <25.568399, 35.717945, 36.230270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565010, 35.659927, 36.969425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671154, 35.345016, 36.746792>,  <25.734840, 35.156071, 36.613213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671154, 35.345016, 36.746792>,  <25.565010, 35.659927, 36.969425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671154, 35.345016, 36.746792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888585, -0.024331, 0.458065,
		-0.374165, -0.616124, 0.693103,
		0.265361, -0.787273, -0.556583,
		25.750763, 35.108833, 36.579819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782999, 35.001183, 37.327953>,  <25.565010, 35.659927, 36.969425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782999, 35.001183, 37.327953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960028, 35.101334, 36.983524>,  <26.066244, 35.161423, 36.776867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960028, 35.101334, 36.983524>,  <25.782999, 35.001183, 37.327953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960028, 35.101334, 36.983524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896706, -0.130992, 0.422799,
		-0.006934, -0.959246, -0.282488,
		0.442572, 0.250377, -0.861070,
		26.092800, 35.176445, 36.725204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057718, 34.359356, 36.862156>,  <25.782999, 35.001183, 37.327953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057718, 34.359356, 36.862156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240570, 34.715096, 36.858250>,  <26.350281, 34.928539, 36.855907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240570, 34.715096, 36.858250>,  <26.057718, 34.359356, 36.862156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240570, 34.715096, 36.858250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884154, -0.453217, 0.113427,
		0.096451, -0.060481, -0.993498,
		0.457131, 0.889346, -0.009761,
		26.377708, 34.981899, 36.855320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703001, 34.421955, 36.514374>,  <26.057718, 34.359356, 36.862156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703001, 34.421955, 36.514374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766195, 34.649967, 36.836891>,  <26.804111, 34.786774, 37.030399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766195, 34.649967, 36.836891>,  <26.703001, 34.421955, 36.514374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766195, 34.649967, 36.836891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866980, -0.470913, 0.163051,
		0.472637, 0.673278, -0.568604,
		0.157984, 0.570033, 0.806290,
		26.813591, 34.820976, 37.078777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416628, 34.807636, 36.656067>,  <26.703001, 34.421955, 36.514374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416628, 34.807636, 36.656067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225428, 34.712212, 36.994202>,  <27.110706, 34.654957, 37.197083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225428, 34.712212, 36.994202>,  <27.416628, 34.807636, 36.656067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225428, 34.712212, 36.994202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758031, -0.598240, 0.259804,
		0.443737, 0.764982, 0.466798,
		-0.478002, -0.238562, 0.845341,
		27.082027, 34.640644, 37.247803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802578, 35.049408, 37.193798>,  <27.416628, 34.807636, 36.656067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802578, 35.049408, 37.193798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572130, 34.761402, 37.348545>,  <27.433861, 34.588600, 37.441395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572130, 34.761402, 37.348545>,  <27.802578, 35.049408, 37.193798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572130, 34.761402, 37.348545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813673, -0.460269, 0.355091,
		-0.077606, 0.519360, 0.851024,
		-0.576120, -0.720012, 0.386870,
		27.399294, 34.545399, 37.464607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946932, 34.954037, 37.915859>,  <27.802578, 35.049408, 37.193798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946932, 34.954037, 37.915859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825514, 34.610611, 37.750587>,  <27.752663, 34.404556, 37.651424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825514, 34.610611, 37.750587>,  <27.946932, 34.954037, 37.915859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825514, 34.610611, 37.750587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687938, -0.497516, 0.528411,
		-0.659242, -0.123845, 0.741662,
		-0.303548, -0.858569, -0.413181,
		27.734449, 34.353039, 37.626633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733213, 34.404682, 38.419594>,  <27.946932, 34.954037, 37.915859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733213, 34.404682, 38.419594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842108, 34.196358, 38.095955>,  <27.907444, 34.071362, 37.901772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842108, 34.196358, 38.095955>,  <27.733213, 34.404682, 38.419594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842108, 34.196358, 38.095955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718722, -0.449026, 0.530862,
		-0.639787, -0.726037, 0.252080,
		0.272235, -0.520814, -0.809099,
		27.923779, 34.040115, 37.853226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886204, 33.612667, 38.649498>,  <27.733213, 34.404682, 38.419594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886204, 33.612667, 38.649498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067982, 33.668453, 38.297581>,  <28.177048, 33.701927, 38.086430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067982, 33.668453, 38.297581>,  <27.886204, 33.612667, 38.649498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067982, 33.668453, 38.297581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755173, -0.584144, 0.297472,
		-0.472436, -0.799578, -0.370783,
		0.454443, 0.139469, -0.879790,
		28.204315, 33.710293, 38.033646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026611, 32.995277, 38.497688>,  <27.886204, 33.612667, 38.649498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026611, 32.995277, 38.497688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283247, 33.252468, 38.330383>,  <28.437227, 33.406784, 38.230000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283247, 33.252468, 38.330383>,  <28.026611, 32.995277, 38.497688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283247, 33.252468, 38.330383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765728, -0.504887, 0.398433,
		0.045010, -0.575904, -0.816277,
		0.641587, 0.642980, -0.418261,
		28.475723, 33.445362, 38.204906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626614, 33.334377, 38.939735>,  <28.026611, 32.995277, 38.497688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626614, 33.334377, 38.939735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286627, 33.382027, 39.145012>,  <28.082634, 33.410618, 39.268177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286627, 33.382027, 39.145012>,  <28.626614, 33.334377, 38.939735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286627, 33.382027, 39.145012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000306, 0.974211, -0.225637,
		-0.526833, -0.191627, -0.828086,
		-0.849969, 0.119127, 0.513188,
		28.031635, 33.417763, 39.298969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680433, 32.704525, 39.519718>,  <28.626614, 33.334377, 38.939735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680433, 32.704525, 39.519718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848988, 32.524590, 39.204739>,  <28.950119, 32.416626, 39.015751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848988, 32.524590, 39.204739>,  <28.680433, 32.704525, 39.519718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848988, 32.524590, 39.204739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809903, -0.577344, -0.103584,
		-0.408033, 0.681408, -0.607612,
		0.421385, -0.449841, -0.787450,
		28.975403, 32.389637, 38.968502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777456, 33.405186, 39.756210>,  <28.680433, 32.704525, 39.519718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777456, 33.405186, 39.756210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065443, 33.570805, 39.979000>,  <29.238235, 33.670177, 40.112675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065443, 33.570805, 39.979000>,  <28.777456, 33.405186, 39.756210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065443, 33.570805, 39.979000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584191, -0.794814, -0.164293,
		0.374663, 0.443662, -0.814121,
		0.719965, 0.414047, 0.556970,
		29.281433, 33.695019, 40.146091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394722, 33.420448, 39.379765>,  <28.777456, 33.405186, 39.756210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394722, 33.420448, 39.379765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469986, 33.367432, 39.769028>,  <29.515144, 33.335621, 40.002586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469986, 33.367432, 39.769028>,  <29.394722, 33.420448, 39.379765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469986, 33.367432, 39.769028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363512, -0.911086, -0.194375,
		0.912389, 0.390327, -0.123251,
		0.188162, -0.132543, 0.973153,
		29.526434, 33.327667, 40.060974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051441, 33.668095, 39.564983>,  <29.394722, 33.420448, 39.379765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051441, 33.668095, 39.564983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040794, 33.402573, 39.266010>,  <30.034407, 33.243259, 39.086624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040794, 33.402573, 39.266010>,  <30.051441, 33.668095, 39.564983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040794, 33.402573, 39.266010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994523, -0.093181, 0.047339,
		-0.101071, -0.742081, 0.662646,
		-0.026616, -0.663802, -0.747435,
		30.032810, 33.203434, 39.041779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467382, 32.981049, 39.680222>,  <30.051441, 33.668095, 39.564983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467382, 32.981049, 39.680222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444344, 33.100624, 39.299210>,  <30.430519, 33.172371, 39.070602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444344, 33.100624, 39.299210>,  <30.467382, 32.981049, 39.680222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444344, 33.100624, 39.299210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997634, 0.053113, -0.043657,
		0.037541, -0.952793, -0.301292,
		-0.057598, 0.298940, -0.952532,
		30.427065, 33.190308, 39.013451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665939, 32.516060, 39.126320>,  <30.467382, 32.981049, 39.680222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665939, 32.516060, 39.126320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728981, 32.892948, 39.008072>,  <30.766806, 33.119080, 38.937122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728981, 32.892948, 39.008072>,  <30.665939, 32.516060, 39.126320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728981, 32.892948, 39.008072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966553, -0.208521, -0.149311,
		-0.202326, -0.262197, -0.943566,
		0.157605, 0.942216, -0.295616,
		30.776262, 33.175613, 38.919388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148094, 32.460308, 38.435032>,  <30.665939, 32.516060, 39.126320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148094, 32.460308, 38.435032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172251, 32.832279, 38.580135>,  <31.186745, 33.055462, 38.667198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172251, 32.832279, 38.580135>,  <31.148094, 32.460308, 38.435032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172251, 32.832279, 38.580135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971643, 0.028465, -0.234733,
		-0.228611, 0.366644, -0.901837,
		0.060392, 0.929926, 0.362755,
		31.190369, 33.111256, 38.688961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432854, 32.820030, 37.875126>,  <31.148094, 32.460308, 38.435032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432854, 32.820030, 37.875126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482346, 32.947613, 38.250988>,  <31.512041, 33.024162, 38.476505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482346, 32.947613, 38.250988>,  <31.432854, 32.820030, 37.875126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482346, 32.947613, 38.250988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990948, -0.089430, -0.100126,
		0.052098, 0.943541, -0.327132,
		0.123728, 0.318955, 0.939659,
		31.519464, 33.043301, 38.532887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828560, 33.445408, 37.969128>,  <31.432854, 32.820030, 37.875126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828560, 33.445408, 37.969128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885336, 33.189793, 38.271515>,  <31.919401, 33.036423, 38.452946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885336, 33.189793, 38.271515>,  <31.828560, 33.445408, 37.969128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885336, 33.189793, 38.271515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952931, -0.118483, -0.279079,
		0.267911, 0.759994, 0.592143,
		0.141939, -0.639039, 0.755964,
		31.927917, 32.998081, 38.498302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406990, 33.558674, 38.357616>,  <31.828560, 33.445408, 37.969128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406990, 33.558674, 38.357616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362389, 33.162041, 38.383965>,  <32.335629, 32.924061, 38.399773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362389, 33.162041, 38.383965>,  <32.406990, 33.558674, 38.357616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362389, 33.162041, 38.383965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926788, -0.127681, -0.353215,
		0.358651, 0.021667, 0.933220,
		-0.111501, -0.991579, 0.065874,
		32.328938, 32.864567, 38.403728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928093, 33.290485, 38.693157>,  <32.406990, 33.558674, 38.357616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928093, 33.290485, 38.693157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784245, 33.018810, 38.437229>,  <32.697933, 32.855804, 38.283672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784245, 33.018810, 38.437229>,  <32.928093, 33.290485, 38.693157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784245, 33.018810, 38.437229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925612, -0.172985, -0.336628,
		0.117954, -0.713287, 0.690875,
		-0.359624, -0.679189, -0.639822,
		32.676357, 32.815052, 38.245281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589825, 33.441254, 39.065647>,  <32.928093, 33.290485, 38.693157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589825, 33.441254, 39.065647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837242, 33.199951, 38.864262>,  <33.985695, 33.055168, 38.743431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837242, 33.199951, 38.864262>,  <33.589825, 33.441254, 39.065647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837242, 33.199951, 38.864262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780247, 0.395876, 0.484249,
		-0.092816, -0.692360, 0.715558,
		0.618547, -0.603257, -0.503468,
		34.022808, 33.018974, 38.713223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995926, 33.078468, 39.462254>,  <33.589825, 33.441254, 39.065647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995926, 33.078468, 39.462254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181473, 33.139103, 39.113117>,  <34.292801, 33.175484, 38.903637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181473, 33.139103, 39.113117>,  <33.995926, 33.078468, 39.462254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181473, 33.139103, 39.113117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697521, 0.544917, 0.465328,
		0.546198, -0.824663, 0.146969,
		0.463825, 0.151648, -0.872852,
		34.320633, 33.184578, 38.851265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775936, 32.919811, 39.573711>,  <33.995926, 33.078468, 39.462254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775936, 32.919811, 39.573711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745289, 33.161884, 39.256756>,  <34.726898, 33.307129, 39.066582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745289, 33.161884, 39.256756>,  <34.775936, 32.919811, 39.573711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745289, 33.161884, 39.256756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707599, 0.592906, 0.384404,
		0.702448, -0.531243, -0.473654,
		-0.076620, 0.605181, -0.792392,
		34.722301, 33.343437, 39.019039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427601, 33.046143, 39.151325>,  <34.775936, 32.919811, 39.573711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427601, 33.046143, 39.151325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258270, 33.408047, 39.132557>,  <35.156670, 33.625191, 39.121296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258270, 33.408047, 39.132557>,  <35.427601, 33.046143, 39.151325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258270, 33.408047, 39.132557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864095, 0.418782, 0.279215,
		0.272273, 0.077654, -0.959081,
		-0.423329, 0.904760, -0.046923,
		35.131271, 33.679474, 39.118481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796867, 33.434448, 38.626823>,  <35.427601, 33.046143, 39.151325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796867, 33.434448, 38.626823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639858, 33.649139, 38.925579>,  <35.545650, 33.777954, 39.104832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639858, 33.649139, 38.925579>,  <35.796867, 33.434448, 38.626823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639858, 33.649139, 38.925579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919696, 0.221043, 0.324499,
		0.009074, 0.814285, -0.580395,
		-0.392526, 0.536731, 0.746889,
		35.522099, 33.810158, 39.149647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990238, 34.031677, 38.789745>,  <35.796867, 33.434448, 38.626823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990238, 34.031677, 38.789745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883011, 33.931484, 39.161854>,  <35.818676, 33.871368, 39.385120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883011, 33.931484, 39.161854>,  <35.990238, 34.031677, 38.789745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883011, 33.931484, 39.161854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956225, 0.048459, 0.288591,
		-0.117366, 0.966909, 0.226523,
		-0.268064, -0.250478, 0.930270,
		35.802593, 33.856342, 39.440933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359779, 34.516476, 39.183609>,  <35.990238, 34.031677, 38.789745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359779, 34.516476, 39.183609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272709, 34.183632, 39.387653>,  <36.220467, 33.983925, 39.510078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272709, 34.183632, 39.387653>,  <36.359779, 34.516476, 39.183609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272709, 34.183632, 39.387653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902834, 0.026908, 0.429146,
		-0.370822, 0.553960, 0.745398,
		-0.217673, -0.832108, 0.510112,
		36.207405, 33.933998, 39.540688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461014, 34.603832, 39.945835>,  <36.359779, 34.516476, 39.183609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461014, 34.603832, 39.945835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535500, 34.230740, 39.822323>,  <36.580189, 34.006886, 39.748215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535500, 34.230740, 39.822323>,  <36.461014, 34.603832, 39.945835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535500, 34.230740, 39.822323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878960, 0.017710, 0.476567,
		-0.439038, -0.360148, 0.823127,
		0.186212, -0.932727, -0.308780,
		36.591362, 33.950920, 39.729691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845749, 34.294357, 40.469479>,  <36.461014, 34.603832, 39.945835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845749, 34.294357, 40.469479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927361, 34.095089, 40.132385>,  <36.976326, 33.975529, 39.930130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927361, 34.095089, 40.132385>,  <36.845749, 34.294357, 40.469479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927361, 34.095089, 40.132385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957300, -0.078577, 0.278214,
		-0.204817, -0.863513, 0.460864,
		0.204028, -0.498168, -0.842734,
		36.988567, 33.945637, 39.879566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251511, 33.755417, 40.609257>,  <36.845749, 34.294357, 40.469479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251511, 33.755417, 40.609257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350471, 33.827610, 40.228474>,  <37.409847, 33.870926, 40.000004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350471, 33.827610, 40.228474>,  <37.251511, 33.755417, 40.609257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350471, 33.827610, 40.228474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963656, -0.148036, 0.222379,
		-0.100789, -0.972375, -0.210546,
		0.247404, 0.180480, -0.951955,
		37.424694, 33.881756, 39.942886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633541, 33.232834, 40.215950>,  <37.251511, 33.755417, 40.609257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633541, 33.232834, 40.215950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737812, 33.602283, 40.103542>,  <37.800373, 33.823952, 40.036098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737812, 33.602283, 40.103542>,  <37.633541, 33.232834, 40.215950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737812, 33.602283, 40.103542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950269, -0.194092, 0.243551,
		0.170404, -0.330535, -0.928283,
		0.260675, 0.923620, -0.281023,
		37.816013, 33.879368, 40.019234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223499, 33.281178, 39.794373>,  <37.633541, 33.232834, 40.215950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223499, 33.281178, 39.794373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172112, 33.587364, 40.046581>,  <38.141277, 33.771076, 40.197906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172112, 33.587364, 40.046581>,  <38.223499, 33.281178, 39.794373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172112, 33.587364, 40.046581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908668, -0.163831, 0.384034,
		0.397263, 0.622275, -0.674504,
		-0.128470, 0.765463, 0.630525,
		38.133572, 33.817001, 40.235741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871880, 33.683796, 39.702572>,  <38.223499, 33.281178, 39.794373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871880, 33.683796, 39.702572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684299, 33.745319, 40.050465>,  <38.571751, 33.782234, 40.259201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684299, 33.745319, 40.050465>,  <38.871880, 33.683796, 39.702572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684299, 33.745319, 40.050465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869746, -0.090955, 0.485045,
		0.153710, 0.983906, -0.091121,
		-0.468951, 0.153808, 0.869729,
		38.543613, 33.791462, 40.311382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778931, 33.563473, 38.896992>,  <38.871880, 33.683796, 39.702572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778931, 33.563473, 38.896992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843136, 33.695923, 38.525059>,  <38.881657, 33.775394, 38.301899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843136, 33.695923, 38.525059>,  <38.778931, 33.563473, 38.896992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843136, 33.695923, 38.525059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754250, 0.566500, 0.331940,
		0.636666, -0.754606, -0.158826,
		0.160509, 0.331130, -0.929834,
		38.891289, 33.795261, 38.246109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528187, 33.445812, 38.680897>,  <38.778931, 33.563473, 38.896992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528187, 33.445812, 38.680897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373425, 33.755768, 38.480961>,  <39.280567, 33.941742, 38.361000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373425, 33.755768, 38.480961>,  <39.528187, 33.445812, 38.680897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373425, 33.755768, 38.480961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828262, 0.530304, 0.180996,
		0.405321, -0.343973, -0.846993,
		-0.386906, 0.774894, -0.499844,
		39.257351, 33.988235, 38.331009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975292, 33.728458, 38.119503>,  <39.528187, 33.445812, 38.680897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975292, 33.728458, 38.119503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733273, 34.028526, 38.226215>,  <39.588062, 34.208565, 38.290241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733273, 34.028526, 38.226215>,  <39.975292, 33.728458, 38.119503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733273, 34.028526, 38.226215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795849, 0.560004, 0.230262,
		0.023338, 0.351634, -0.935847,
		-0.605045, 0.750166, 0.266779,
		39.551758, 34.253574, 38.306248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120747, 34.272907, 37.725269>,  <39.975292, 33.728458, 38.119503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120747, 34.272907, 37.725269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986340, 34.404743, 38.078190>,  <39.905697, 34.483845, 38.289944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986340, 34.404743, 38.078190>,  <40.120747, 34.272907, 37.725269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986340, 34.404743, 38.078190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683644, 0.729713, -0.012233,
		-0.647861, 0.599072, -0.470521,
		-0.336017, 0.329594, 0.882304,
		39.885536, 34.503620, 38.342880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576191, 34.561203, 37.117584>,  <40.120747, 34.272907, 37.725269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576191, 34.561203, 37.117584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795280, 34.312149, 37.341125>,  <40.926735, 34.162716, 37.475250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795280, 34.312149, 37.341125>,  <40.576191, 34.561203, 37.117584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795280, 34.312149, 37.341125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566318, -0.215772, -0.795441,
		0.615857, 0.752173, 0.234427,
		0.547727, -0.622638, 0.558854,
		40.959599, 34.125359, 37.508781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193501, 34.930180, 37.155712>,  <40.576191, 34.561203, 37.117584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193501, 34.930180, 37.155712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196991, 34.530193, 37.155354>,  <41.199085, 34.290203, 37.155140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196991, 34.530193, 37.155354>,  <41.193501, 34.930180, 37.155712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196991, 34.530193, 37.155354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632603, 0.006214, -0.774451,
		0.774427, 0.006192, 0.632633,
		0.008727, -0.999962, -0.000895,
		41.199608, 34.230206, 37.155087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808388, 35.323654, 37.699074>,  <41.193501, 34.930180, 37.155712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808388, 35.323654, 37.699074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946587, 35.609154, 37.942776>,  <41.029507, 35.780453, 38.088997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946587, 35.609154, 37.942776>,  <40.808388, 35.323654, 37.699074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946587, 35.609154, 37.942776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907066, 0.087581, 0.411779,
		0.240549, -0.694900, 0.677680,
		0.345497, 0.713753, 0.609252,
		41.050236, 35.823280, 38.125553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689423, 35.076008, 38.429699>,  <40.808388, 35.323654, 37.699074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689423, 35.076008, 38.429699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674667, 35.464493, 38.335560>,  <40.665813, 35.697582, 38.279076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674667, 35.464493, 38.335560>,  <40.689423, 35.076008, 38.429699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674667, 35.464493, 38.335560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882334, 0.078916, 0.463960,
		0.469175, 0.224770, 0.854022,
		-0.036888, 0.971211, -0.235348,
		40.663601, 35.755856, 38.264957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191040, 35.460011, 38.815788>,  <40.689423, 35.076008, 38.429699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191040, 35.460011, 38.815788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125343, 35.649246, 38.469559>,  <40.085926, 35.762787, 38.261822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125343, 35.649246, 38.469559>,  <40.191040, 35.460011, 38.815788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125343, 35.649246, 38.469559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986190, -0.059801, 0.154442,
		0.021302, 0.878983, 0.476376,
		-0.164240, 0.473088, -0.865571,
		40.076073, 35.791172, 38.209888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500664, 35.728889, 38.953079>,  <40.191040, 35.460011, 38.815788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500664, 35.728889, 38.953079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549961, 35.757343, 38.557148>,  <39.579540, 35.774414, 38.319592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549961, 35.757343, 38.557148>,  <39.500664, 35.728889, 38.953079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549961, 35.757343, 38.557148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977395, -0.163963, -0.133477,
		-0.171789, 0.983899, 0.049321,
		0.123241, 0.071136, -0.989824,
		39.586933, 35.778683, 38.260201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198471, 36.369102, 38.579273>,  <39.500664, 35.728889, 38.953079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198471, 36.369102, 38.579273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223763, 36.079391, 38.304634>,  <39.238937, 35.905563, 38.139851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223763, 36.079391, 38.304634>,  <39.198471, 36.369102, 38.579273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223763, 36.079391, 38.304634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995621, 0.001688, -0.093465,
		0.068854, 0.689505, -0.721001,
		0.063227, -0.724279, -0.686602,
		39.242729, 35.862106, 38.098652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709972, 36.593895, 38.113060>,  <39.198471, 36.369102, 38.579273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709972, 36.593895, 38.113060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760109, 36.209255, 38.015396>,  <38.790192, 35.978470, 37.956799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760109, 36.209255, 38.015396>,  <38.709972, 36.593895, 38.113060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760109, 36.209255, 38.015396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990703, -0.108189, -0.082482,
		0.052899, 0.252225, -0.966222,
		0.125339, -0.961601, -0.244157,
		38.797710, 35.920776, 37.942150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319576, 36.598091, 37.608681>,  <38.709972, 36.593895, 38.113060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319576, 36.598091, 37.608681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366039, 36.231037, 37.760712>,  <38.393917, 36.010807, 37.851929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366039, 36.231037, 37.760712>,  <38.319576, 36.598091, 37.608681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366039, 36.231037, 37.760712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917804, -0.245443, -0.312079,
		0.379661, -0.312585, -0.870717,
		0.116160, -0.917632, 0.380077,
		38.400887, 35.955746, 37.874733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877625, 37.140980, 37.309788>,  <38.319576, 36.598091, 37.608681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877625, 37.140980, 37.309788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992352, 36.780659, 37.179382>,  <38.061188, 36.564465, 37.101139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992352, 36.780659, 37.179382>,  <37.877625, 37.140980, 37.309788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992352, 36.780659, 37.179382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917759, -0.160800, -0.363127,
		0.274684, 0.403354, -0.872843,
		0.286822, -0.900804, -0.326012,
		38.078400, 36.510418, 37.081577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648670, 37.152275, 36.639580>,  <37.877625, 37.140980, 37.309788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648670, 37.152275, 36.639580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655781, 36.810730, 36.847656>,  <37.660046, 36.605804, 36.972504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655781, 36.810730, 36.847656>,  <37.648670, 37.152275, 36.639580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655781, 36.810730, 36.847656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999817, -0.018830, 0.003261,
		0.007011, -0.520156, -0.854042,
		0.017778, -0.853863, 0.520193,
		37.661114, 36.554569, 37.003716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410057, 36.497112, 36.199821>,  <37.648670, 37.152275, 36.639580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410057, 36.497112, 36.199821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338173, 36.456848, 36.591244>,  <37.295040, 36.432690, 36.826096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338173, 36.456848, 36.591244>,  <37.410057, 36.497112, 36.199821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338173, 36.456848, 36.591244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967808, -0.160096, -0.194209,
		0.176213, -0.981955, -0.068652,
		-0.179714, -0.100664, 0.978555,
		37.284260, 36.426647, 36.884811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267933, 35.800632, 36.436310>,  <37.410057, 36.497112, 36.199821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267933, 35.800632, 36.436310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102661, 36.055145, 36.696899>,  <37.003498, 36.207855, 36.853252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102661, 36.055145, 36.696899>,  <37.267933, 35.800632, 36.436310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102661, 36.055145, 36.696899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904264, -0.371235, -0.210929,
		0.107639, -0.676257, 0.728759,
		-0.413183, 0.636287, 0.651474,
		36.978706, 36.246033, 36.892342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719997, 35.557308, 36.652676>,  <37.267933, 35.800632, 36.436310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719997, 35.557308, 36.652676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624802, 35.935726, 36.740643>,  <36.567684, 36.162777, 36.793423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624802, 35.935726, 36.740643>,  <36.719997, 35.557308, 36.652676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624802, 35.935726, 36.740643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929985, -0.156647, -0.332550,
		-0.280156, -0.283667, 0.917086,
		-0.237992, 0.946042, 0.219920,
		36.553406, 36.219540, 36.806618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051411, 35.519588, 36.705105>,  <36.719997, 35.557308, 36.652676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051411, 35.519588, 36.705105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066353, 35.919273, 36.710548>,  <36.075317, 36.159084, 36.713814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066353, 35.919273, 36.710548>,  <36.051411, 35.519588, 36.705105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066353, 35.919273, 36.710548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946566, 0.039748, -0.320051,
		-0.320339, -0.000927, 0.947303,
		0.037357, 0.999210, 0.013611,
		36.077560, 36.219036, 36.714630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502251, 35.592579, 37.042046>,  <36.051411, 35.519588, 36.705105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502251, 35.592579, 37.042046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612160, 35.925724, 36.849865>,  <35.678104, 36.125610, 36.734554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612160, 35.925724, 36.849865>,  <35.502251, 35.592579, 37.042046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612160, 35.925724, 36.849865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922025, 0.086516, -0.377340,
		-0.272705, 0.546676, 0.791692,
		0.274777, 0.832863, -0.480455,
		35.694592, 36.175583, 36.705727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955353, 36.066006, 37.139137>,  <35.502251, 35.592579, 37.042046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955353, 36.066006, 37.139137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145828, 36.220440, 36.823116>,  <35.260113, 36.313099, 36.633503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145828, 36.220440, 36.823116>,  <34.955353, 36.066006, 37.139137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145828, 36.220440, 36.823116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876180, 0.132160, -0.463511,
		-0.074541, 0.912947, 0.401212,
		0.476185, 0.386085, -0.790055,
		35.288685, 36.336266, 36.586102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558762, 36.644066, 36.959858>,  <34.955353, 36.066006, 37.139137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558762, 36.644066, 36.959858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779110, 36.546017, 36.640743>,  <34.911320, 36.487186, 36.449276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779110, 36.546017, 36.640743>,  <34.558762, 36.644066, 36.959858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779110, 36.546017, 36.640743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800130, 0.116744, -0.588356,
		0.237354, 0.962438, -0.131816,
		0.550868, -0.245118, -0.797786,
		34.944370, 36.472481, 36.401409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410912, 37.180256, 36.521465>,  <34.558762, 36.644066, 36.959858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410912, 37.180256, 36.521465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521687, 36.834476, 36.353645>,  <34.588154, 36.627007, 36.252953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521687, 36.834476, 36.353645>,  <34.410912, 37.180256, 36.521465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521687, 36.834476, 36.353645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767155, 0.064004, -0.638260,
		0.578599, 0.498623, -0.645444,
		0.276940, -0.864453, -0.419555,
		34.604767, 36.575142, 36.227779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819473, 37.080505, 36.096653>,  <34.410912, 37.180256, 36.521465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819473, 37.080505, 36.096653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892792, 36.698528, 36.003281>,  <33.936783, 36.469341, 35.947258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892792, 36.698528, 36.003281>,  <33.819473, 37.080505, 36.096653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892792, 36.698528, 36.003281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982838, -0.183036, -0.022981,
		-0.020780, 0.233634, -0.972103,
		0.183298, -0.954941, -0.233427,
		33.947781, 36.412045, 35.933254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491302, 36.996056, 35.501003>,  <33.819473, 37.080505, 36.096653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491302, 36.996056, 35.501003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543674, 36.627502, 35.647385>,  <33.575096, 36.406372, 35.735214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543674, 36.627502, 35.647385>,  <33.491302, 36.996056, 35.501003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543674, 36.627502, 35.647385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949420, -0.222797, -0.221275,
		0.285411, -0.318469, -0.903946,
		0.130928, -0.921378, 0.365950,
		33.582954, 36.351089, 35.757168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325493, 36.528221, 35.000996>,  <33.491302, 36.996056, 35.501003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325493, 36.528221, 35.000996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284321, 36.341106, 35.352127>,  <33.259617, 36.228836, 35.562805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284321, 36.341106, 35.352127>,  <33.325493, 36.528221, 35.000996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284321, 36.341106, 35.352127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957165, -0.193530, -0.215362,
		0.270630, -0.862391, -0.427833,
		-0.102928, -0.467790, 0.877826,
		33.253441, 36.200768, 35.615475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679058, 36.110504, 34.582760>,  <33.325493, 36.528221, 35.000996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679058, 36.110504, 34.582760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040379, 36.273563, 34.529305>,  <34.257172, 36.371399, 34.497231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040379, 36.273563, 34.529305>,  <33.679058, 36.110504, 34.582760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040379, 36.273563, 34.529305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344438, 0.503467, -0.792391,
		-0.255736, 0.761802, 0.595195,
		0.903306, 0.407651, -0.133639,
		34.311371, 36.395859, 34.489212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754570, 36.946854, 34.456909>,  <33.679058, 36.110504, 34.582760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754570, 36.946854, 34.456909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939716, 36.649574, 34.263660>,  <34.050804, 36.471207, 34.147709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939716, 36.649574, 34.263660>,  <33.754570, 36.946854, 34.456909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939716, 36.649574, 34.263660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467474, 0.258415, -0.845393,
		0.753143, 0.617151, -0.227816,
		0.462864, -0.743200, -0.483126,
		34.078575, 36.426613, 34.118721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991058, 37.327393, 33.752197>,  <33.754570, 36.946854, 34.456909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991058, 37.327393, 33.752197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018295, 36.935062, 33.679153>,  <34.034637, 36.699665, 33.635326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018295, 36.935062, 33.679153>,  <33.991058, 37.327393, 33.752197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018295, 36.935062, 33.679153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276300, 0.157333, -0.948106,
		0.958656, 0.115012, -0.260289,
		0.068092, -0.980825, -0.182606,
		34.038723, 36.640816, 33.624371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527184, 37.209389, 33.191589>,  <33.991058, 37.327393, 33.752197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527184, 37.209389, 33.191589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272079, 36.901405, 33.183392>,  <34.119019, 36.716614, 33.178471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272079, 36.901405, 33.183392>,  <34.527184, 37.209389, 33.191589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272079, 36.901405, 33.183392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159078, 0.157710, -0.974588,
		0.753627, -0.618294, -0.223066,
		-0.637761, -0.769961, -0.020498,
		34.080750, 36.670418, 33.177242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570869, 37.065781, 32.538551>,  <34.527184, 37.209389, 33.191589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570869, 37.065781, 32.538551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258987, 36.857304, 32.677353>,  <34.071857, 36.732216, 32.760635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258987, 36.857304, 32.677353>,  <34.570869, 37.065781, 32.538551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258987, 36.857304, 32.677353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409014, 0.004341, -0.912518,
		0.474096, -0.853425, -0.216562,
		-0.779706, -0.521198, 0.347004,
		34.025074, 36.700943, 32.781456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485085, 36.416214, 32.196312>,  <34.570869, 37.065781, 32.538551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485085, 36.416214, 32.196312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113270, 36.487381, 32.325497>,  <33.890179, 36.530083, 32.403008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113270, 36.487381, 32.325497>,  <34.485085, 36.416214, 32.196312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113270, 36.487381, 32.325497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349258, -0.144003, -0.925895,
		-0.118229, -0.973451, 0.195996,
		-0.929538, 0.177921, 0.322960,
		33.834408, 36.540756, 32.422386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142517, 35.985497, 31.753269>,  <34.485085, 36.416214, 32.196312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142517, 35.985497, 31.753269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878963, 36.233814, 31.923201>,  <33.720829, 36.382805, 32.025158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878963, 36.233814, 31.923201>,  <34.142517, 35.985497, 31.753269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878963, 36.233814, 31.923201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569445, -0.042602, -0.820925,
		-0.491531, -0.782812, 0.381581,
		-0.658885, 0.620799, 0.424828,
		33.681297, 36.420055, 32.050648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493809, 35.769920, 31.526836>,  <34.142517, 35.985497, 31.753269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493809, 35.769920, 31.526836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422672, 36.146568, 31.641180>,  <33.379990, 36.372559, 31.709785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422672, 36.146568, 31.641180>,  <33.493809, 35.769920, 31.526836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422672, 36.146568, 31.641180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665190, 0.099041, -0.740076,
		-0.725186, -0.321767, 0.608746,
		-0.177841, 0.941625, 0.285860,
		33.369320, 36.429054, 31.726938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801540, 35.806599, 31.724291>,  <33.493809, 35.769920, 31.526836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801540, 35.806599, 31.724291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924778, 36.175510, 31.630924>,  <32.998722, 36.396858, 31.574903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924778, 36.175510, 31.630924>,  <32.801540, 35.806599, 31.724291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924778, 36.175510, 31.630924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831200, 0.141602, -0.537639,
		-0.462799, 0.359661, 0.810223,
		0.308097, 0.922276, -0.233417,
		33.017208, 36.452194, 31.560900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280098, 36.265484, 31.820477>,  <32.801540, 35.806599, 31.724291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280098, 36.265484, 31.820477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506062, 36.464989, 31.557533>,  <32.641640, 36.584690, 31.399767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506062, 36.464989, 31.557533>,  <32.280098, 36.265484, 31.820477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506062, 36.464989, 31.557533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783285, 0.073587, -0.617292,
		-0.259507, 0.863611, 0.432240,
		0.564907, 0.498759, -0.657357,
		32.675533, 36.614616, 31.360327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846264, 36.852375, 31.609779>,  <32.280098, 36.265484, 31.820477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846264, 36.852375, 31.609779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128880, 36.817406, 31.328878>,  <32.298450, 36.796425, 31.160337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128880, 36.817406, 31.328878>,  <31.846264, 36.852375, 31.609779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128880, 36.817406, 31.328878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702541, -0.205956, -0.681189,
		-0.085078, 0.974648, -0.206937,
		0.706540, -0.087427, -0.702252,
		32.340843, 36.791176, 31.118202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597961, 37.234081, 31.072615>,  <31.846264, 36.852375, 31.609779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597961, 37.234081, 31.072615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875122, 36.997902, 30.907085>,  <32.041420, 36.856194, 30.807768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875122, 36.997902, 30.907085>,  <31.597961, 37.234081, 31.072615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875122, 36.997902, 30.907085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651866, -0.267707, -0.709509,
		0.308147, 0.761380, -0.570391,
		0.692904, -0.590452, -0.413825,
		32.082993, 36.820766, 30.782938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427374, 37.404869, 30.388731>,  <31.597961, 37.234081, 31.072615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427374, 37.404869, 30.388731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681261, 37.096760, 30.364044>,  <31.833593, 36.911892, 30.349232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681261, 37.096760, 30.364044>,  <31.427374, 37.404869, 30.388731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681261, 37.096760, 30.364044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457211, -0.309958, -0.833597,
		0.622970, 0.557317, -0.548914,
		0.634718, -0.770275, -0.061717,
		31.871677, 36.865677, 30.345530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839306, 37.484505, 29.822001>,  <31.427374, 37.404869, 30.388731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839306, 37.484505, 29.822001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885145, 37.091694, 29.881987>,  <31.912649, 36.856007, 29.917978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885145, 37.091694, 29.881987>,  <31.839306, 37.484505, 29.822001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885145, 37.091694, 29.881987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153920, -0.166689, -0.973922,
		0.981415, 0.088528, -0.170256,
		0.114599, -0.982027, 0.149964,
		31.919525, 36.797085, 29.926975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390347, 37.239452, 29.325956>,  <31.839306, 37.484505, 29.822001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390347, 37.239452, 29.325956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162537, 36.929359, 29.435257>,  <32.025852, 36.743305, 29.500837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162537, 36.929359, 29.435257>,  <32.390347, 37.239452, 29.325956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162537, 36.929359, 29.435257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100629, -0.264173, -0.959211,
		0.815794, -0.573787, 0.072441,
		-0.569520, -0.775229, 0.273251,
		31.991680, 36.696789, 29.517233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658905, 36.696648, 28.947149>,  <32.390347, 37.239452, 29.325956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658905, 36.696648, 28.947149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283302, 36.621738, 29.062517>,  <32.057941, 36.576794, 29.131739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283302, 36.621738, 29.062517>,  <32.658905, 36.696648, 28.947149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283302, 36.621738, 29.062517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221932, -0.310651, -0.924252,
		0.262690, -0.931892, 0.250142,
		-0.939010, -0.187277, 0.288422,
		32.001598, 36.565556, 29.149044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492821, 36.010487, 28.769043>,  <32.658905, 36.696648, 28.947149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492821, 36.010487, 28.769043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143852, 36.202274, 28.806978>,  <31.934471, 36.317348, 28.829739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143852, 36.202274, 28.806978>,  <32.492821, 36.010487, 28.769043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143852, 36.202274, 28.806978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255348, -0.281677, -0.924908,
		-0.416753, -0.831124, 0.368172,
		-0.872419, 0.479470, 0.094837,
		31.882126, 36.346115, 28.835430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990755, 35.585506, 28.402998>,  <32.492821, 36.010487, 28.769043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990755, 35.585506, 28.402998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791378, 35.929340, 28.448025>,  <31.671751, 36.135639, 28.475040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791378, 35.929340, 28.448025>,  <31.990755, 35.585506, 28.402998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791378, 35.929340, 28.448025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410238, -0.119482, -0.904118,
		-0.763714, -0.496831, 0.412188,
		-0.498443, 0.859583, 0.112569,
		31.641846, 36.187214, 28.481796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429474, 35.525719, 28.042410>,  <31.990755, 35.585506, 28.402998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429474, 35.525719, 28.042410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410231, 35.925129, 28.052523>,  <31.398684, 36.164776, 28.058590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410231, 35.925129, 28.052523>,  <31.429474, 35.525719, 28.042410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410231, 35.925129, 28.052523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412204, 0.003209, -0.911086,
		-0.909820, -0.054253, 0.411441,
		-0.048109, 0.998522, 0.025283,
		31.395798, 36.224686, 28.060108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794733, 35.624699, 27.622694>,  <31.429474, 35.525719, 28.042410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794733, 35.624699, 27.622694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995373, 35.969353, 27.653645>,  <31.115757, 36.176144, 27.672215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995373, 35.969353, 27.653645>,  <30.794733, 35.624699, 27.622694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995373, 35.969353, 27.653645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185713, 0.194602, -0.963141,
		-0.844932, 0.468741, 0.257629,
		0.501598, 0.861633, 0.077375,
		31.145853, 36.227844, 27.676857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280096, 36.156559, 27.425911>,  <30.794733, 35.624699, 27.622694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280096, 36.156559, 27.425911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668095, 36.246201, 27.388212>,  <30.900894, 36.299988, 27.365593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668095, 36.246201, 27.388212>,  <30.280096, 36.156559, 27.425911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668095, 36.246201, 27.388212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158185, 0.287403, -0.944657,
		-0.184620, 0.931222, 0.314230,
		0.969996, 0.224109, -0.094245,
		30.959093, 36.313435, 27.359940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323936, 36.709579, 26.952511>,  <30.280096, 36.156559, 27.425911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323936, 36.709579, 26.952511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706022, 36.593346, 26.930157>,  <30.935274, 36.523605, 26.916744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706022, 36.593346, 26.930157>,  <30.323936, 36.709579, 26.952511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706022, 36.593346, 26.930157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051288, 0.023414, -0.998410,
		0.291428, 0.956564, 0.007462,
		0.955217, -0.290582, -0.055884,
		30.992588, 36.506172, 26.913391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536749, 36.879761, 26.252163>,  <30.323936, 36.709579, 26.952511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536749, 36.879761, 26.252163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825096, 36.633579, 26.379642>,  <30.998104, 36.485870, 26.456131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825096, 36.633579, 26.379642>,  <30.536749, 36.879761, 26.252163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825096, 36.633579, 26.379642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192755, -0.263663, -0.945160,
		0.665729, 0.742766, -0.071434,
		0.720867, -0.615451, 0.318700,
		31.041357, 36.448944, 26.475252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118357, 36.977863, 25.835472>,  <30.536749, 36.879761, 26.252163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118357, 36.977863, 25.835472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165199, 36.606438, 25.976357>,  <31.193304, 36.383583, 26.060888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165199, 36.606438, 25.976357>,  <31.118357, 36.977863, 25.835472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165199, 36.606438, 25.976357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127162, -0.337713, -0.932620,
		0.984945, 0.154004, 0.078529,
		0.117106, -0.928565, 0.352212,
		31.200331, 36.327869, 26.082020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735867, 36.777832, 25.529934>,  <31.118357, 36.977863, 25.835472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735867, 36.777832, 25.529934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526548, 36.455482, 25.640736>,  <31.400957, 36.262074, 25.707216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526548, 36.455482, 25.640736>,  <31.735867, 36.777832, 25.529934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526548, 36.455482, 25.640736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030043, -0.307413, -0.951102,
		0.851622, -0.506029, 0.136657,
		-0.523295, -0.805874, 0.277003,
		31.369560, 36.213722, 25.723837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984858, 36.254341, 25.194901>,  <31.735867, 36.777832, 25.529934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984858, 36.254341, 25.194901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639097, 36.070892, 25.277336>,  <31.431641, 35.960823, 25.326797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639097, 36.070892, 25.277336>,  <31.984858, 36.254341, 25.194901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639097, 36.070892, 25.277336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011862, -0.428366, -0.903527,
		0.502662, -0.778565, 0.375721,
		-0.864401, -0.458626, 0.206088,
		31.379776, 35.933304, 25.339163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016510, 35.599903, 24.830719>,  <31.984858, 36.254341, 25.194901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016510, 35.599903, 24.830719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632219, 35.689667, 24.896013>,  <31.401646, 35.743523, 24.935190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632219, 35.689667, 24.896013>,  <32.016510, 35.599903, 24.830719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632219, 35.689667, 24.896013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249045, -0.437796, -0.863893,
		-0.122397, -0.870618, 0.476490,
		-0.960727, 0.224406, 0.163238,
		31.344002, 35.756989, 24.944984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532011, 34.966175, 25.020418>,  <32.016510, 35.599903, 24.830719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532011, 34.966175, 25.020418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322268, 35.260239, 24.848560>,  <31.196423, 35.436676, 24.745445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322268, 35.260239, 24.848560>,  <31.532011, 34.966175, 25.020418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322268, 35.260239, 24.848560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252950, -0.616284, -0.745795,
		-0.813060, -0.282383, 0.509110,
		-0.524356, 0.735156, -0.429647,
		31.164961, 35.480785, 24.719666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882736, 34.654659, 24.628372>,  <31.532011, 34.966175, 25.020418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882736, 34.654659, 24.628372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904764, 34.999672, 24.427176>,  <30.917982, 35.206680, 24.306458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904764, 34.999672, 24.427176>,  <30.882736, 34.654659, 24.628372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904764, 34.999672, 24.427176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395038, -0.443830, -0.804338,
		-0.917013, 0.242997, 0.316291,
		0.055072, 0.862535, -0.502991,
		30.921286, 35.258434, 24.276278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520523, 34.574749, 24.143568>,  <30.882736, 34.654659, 24.628372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520523, 34.574749, 24.143568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609280, 34.932030, 23.987127>,  <30.662533, 35.146397, 23.893263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609280, 34.932030, 23.987127>,  <30.520523, 34.574749, 24.143568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609280, 34.932030, 23.987127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330105, -0.308604, -0.892073,
		-0.917494, 0.327047, 0.226373,
		0.221891, 0.893198, -0.391102,
		30.675846, 35.199989, 23.869797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948740, 34.902859, 23.785450>,  <30.520523, 34.574749, 24.143568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948740, 34.902859, 23.785450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275585, 35.066418, 23.622902>,  <30.471691, 35.164551, 23.525373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275585, 35.066418, 23.622902>,  <29.948740, 34.902859, 23.785450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275585, 35.066418, 23.622902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302956, -0.295146, -0.906149,
		-0.490457, 0.863537, -0.117290,
		0.817111, 0.408893, -0.406370,
		30.520718, 35.189087, 23.500990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757902, 35.095291, 23.148560>,  <29.948740, 34.902859, 23.785450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757902, 35.095291, 23.148560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157555, 35.092026, 23.132191>,  <30.397346, 35.090065, 23.122370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157555, 35.092026, 23.132191>,  <29.757902, 35.095291, 23.148560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157555, 35.092026, 23.132191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039918, -0.472935, -0.880193,
		-0.012165, 0.881059, -0.472849,
		0.999129, -0.008168, -0.040924,
		30.457293, 35.089577, 23.119913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892675, 35.331680, 22.424444>,  <29.757902, 35.095291, 23.148560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892675, 35.331680, 22.424444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216463, 35.139366, 22.559261>,  <30.410736, 35.023975, 22.640152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216463, 35.139366, 22.559261>,  <29.892675, 35.331680, 22.424444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216463, 35.139366, 22.559261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053529, -0.632060, -0.773068,
		0.584714, 0.607735, -0.537371,
		0.809471, -0.480789, 0.337043,
		30.459305, 34.995129, 22.660374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322535, 35.273930, 21.821194>,  <29.892675, 35.331680, 22.424444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322535, 35.273930, 21.821194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458921, 34.996597, 22.075132>,  <30.540754, 34.830196, 22.227495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458921, 34.996597, 22.075132>,  <30.322535, 35.273930, 21.821194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458921, 34.996597, 22.075132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148377, -0.627161, -0.764627,
		0.928292, 0.354910, -0.110966,
		0.340967, -0.693332, 0.634848,
		30.561211, 34.788597, 22.265587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816349, 34.903667, 21.404951>,  <30.322535, 35.273930, 21.821194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816349, 34.903667, 21.404951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714668, 34.658886, 21.704523>,  <30.653660, 34.512016, 21.884266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714668, 34.658886, 21.704523>,  <30.816349, 34.903667, 21.404951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714668, 34.658886, 21.704523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079338, -0.784950, -0.614459,
		0.963892, -0.096778, 0.248086,
		-0.254201, -0.611954, 0.748928,
		30.638409, 34.475300, 21.929201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310404, 34.313652, 21.526236>,  <30.816349, 34.903667, 21.404951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310404, 34.313652, 21.526236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953638, 34.195507, 21.663202>,  <30.739578, 34.124619, 21.745382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953638, 34.195507, 21.663202>,  <31.310404, 34.313652, 21.526236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953638, 34.195507, 21.663202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009899, -0.744277, -0.667798,
		0.452097, -0.599008, 0.660907,
		-0.891914, -0.295367, 0.342415,
		30.686064, 34.106895, 21.765926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290245, 33.637585, 21.343624>,  <31.310404, 34.313652, 21.526236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290245, 33.637585, 21.343624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904373, 33.704918, 21.424675>,  <30.672850, 33.745319, 21.473305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904373, 33.704918, 21.424675>,  <31.290245, 33.637585, 21.343624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904373, 33.704918, 21.424675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261864, -0.696442, -0.668129,
		0.028651, -0.697591, 0.715923,
		-0.964679, 0.168331, 0.202628,
		30.614969, 33.755417, 21.485464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006992, 32.958839, 21.280910>,  <31.290245, 33.637585, 21.343624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006992, 32.958839, 21.280910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686253, 33.193760, 21.236868>,  <30.493809, 33.334709, 21.210442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686253, 33.193760, 21.236868>,  <31.006992, 32.958839, 21.280910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686253, 33.193760, 21.236868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337369, -0.597067, -0.727801,
		-0.493175, -0.546439, 0.676892,
		-0.801848, 0.587295, -0.110107,
		30.445698, 33.369949, 21.203835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496548, 32.547356, 21.275980>,  <31.006992, 32.958839, 21.280910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496548, 32.547356, 21.275980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360416, 32.877094, 21.095037>,  <30.278738, 33.074936, 20.986471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360416, 32.877094, 21.095037>,  <30.496548, 32.547356, 21.275980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360416, 32.877094, 21.095037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280141, -0.548118, -0.788092,
		-0.897607, -0.141485, 0.417473,
		-0.340327, 0.824348, -0.452358,
		30.258318, 33.124397, 20.959330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719919, 32.485641, 21.169186>,  <30.496548, 32.547356, 21.275980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719919, 32.485641, 21.169186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853680, 32.755783, 20.906258>,  <29.933937, 32.917870, 20.748501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853680, 32.755783, 20.906258>,  <29.719919, 32.485641, 21.169186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853680, 32.755783, 20.906258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346178, -0.560689, -0.752190,
		-0.876548, 0.479083, 0.046297,
		0.334403, 0.675357, -0.657318,
		29.954000, 32.958389, 20.709063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104553, 32.724953, 20.719215>,  <29.719919, 32.485641, 21.169186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104553, 32.724953, 20.719215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429531, 32.828209, 20.510103>,  <29.624517, 32.890163, 20.384636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429531, 32.828209, 20.510103>,  <29.104553, 32.724953, 20.719215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429531, 32.828209, 20.510103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444382, -0.306291, -0.841849,
		-0.377436, 0.916270, -0.134133,
		0.812445, 0.258138, -0.522779,
		29.673265, 32.905651, 20.353270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905645, 32.597622, 20.042149>,  <29.104553, 32.724953, 20.719215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905645, 32.597622, 20.042149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291615, 32.683121, 19.981182>,  <29.523197, 32.734421, 19.944601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291615, 32.683121, 19.981182>,  <28.905645, 32.597622, 20.042149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291615, 32.683121, 19.981182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083296, -0.301312, -0.949880,
		-0.248960, 0.929259, -0.272940,
		0.964925, 0.213748, -0.152419,
		29.581093, 32.747246, 19.935457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971378, 32.972588, 19.429453>,  <28.905645, 32.597622, 20.042149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971378, 32.972588, 19.429453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309158, 32.762318, 19.470573>,  <29.511826, 32.636154, 19.495245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309158, 32.762318, 19.470573>,  <28.971378, 32.972588, 19.429453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309158, 32.762318, 19.470573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087979, -0.325442, -0.941460,
		0.528359, 0.785972, -0.321068,
		0.844450, -0.525676, 0.102801,
		29.562494, 32.604614, 19.501413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364992, 33.101070, 18.853693>,  <28.971378, 32.972588, 19.429453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364992, 33.101070, 18.853693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449892, 32.747543, 19.020458>,  <29.500832, 32.535427, 19.120518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449892, 32.747543, 19.020458>,  <29.364992, 33.101070, 18.853693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449892, 32.747543, 19.020458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112636, -0.445917, -0.887959,
		0.970702, 0.141511, -0.194197,
		0.212252, -0.883817, 0.416913,
		29.513567, 32.482399, 19.145533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783749, 32.710403, 18.370525>,  <29.364992, 33.101070, 18.853693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783749, 32.710403, 18.370525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644669, 32.420155, 18.608038>,  <29.561220, 32.246006, 18.750546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644669, 32.420155, 18.608038>,  <29.783749, 32.710403, 18.370525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644669, 32.420155, 18.608038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059831, -0.614835, -0.786383,
		0.935696, -0.308951, 0.170362,
		-0.347698, -0.725622, 0.593783,
		29.540359, 32.202469, 18.786173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956728, 32.114422, 17.983480>,  <29.783749, 32.710403, 18.370525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956728, 32.114422, 17.983480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731268, 31.927164, 18.255697>,  <29.595991, 31.814810, 18.419027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731268, 31.927164, 18.255697>,  <29.956728, 32.114422, 17.983480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731268, 31.927164, 18.255697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250150, -0.881942, -0.399503,
		0.787225, -0.054943, 0.614214,
		-0.563651, -0.468145, 0.680543,
		29.562172, 31.786720, 18.459860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507008, 31.898077, 18.270359>,  <29.956728, 32.114422, 17.983480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507008, 31.898077, 18.270359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490248, 32.101986, 18.614075>,  <30.480192, 32.224331, 18.820303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490248, 32.101986, 18.614075>,  <30.507008, 31.898077, 18.270359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490248, 32.101986, 18.614075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676668, -0.647247, 0.350986,
		0.735095, -0.566746, 0.372067,
		-0.041899, 0.509774, 0.859288,
		30.477678, 32.254917, 18.871861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759583, 31.509645, 18.729464>,  <30.507008, 31.898077, 18.270359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759583, 31.509645, 18.729464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552427, 31.759878, 18.962852>,  <30.428135, 31.910017, 19.102886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552427, 31.759878, 18.962852>,  <30.759583, 31.509645, 18.729464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552427, 31.759878, 18.962852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568754, -0.761281, 0.311399,
		0.638992, -0.170582, 0.750061,
		-0.517888, 0.625582, 0.583471,
		30.397060, 31.947554, 19.137894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175566, 31.132652, 18.291742>,  <30.759583, 31.509645, 18.729464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175566, 31.132652, 18.291742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845518, 31.040604, 18.498129>,  <30.647490, 30.985374, 18.621960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845518, 31.040604, 18.498129>,  <31.175566, 31.132652, 18.291742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845518, 31.040604, 18.498129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557341, 0.481010, -0.676758,
		-0.092447, -0.845975, -0.525147,
		-0.825121, -0.230121, 0.515964,
		30.597982, 30.971567, 18.652918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572531, 30.727465, 17.871069>,  <31.175566, 31.132652, 18.291742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572531, 30.727465, 17.871069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441498, 30.962465, 18.167049>,  <30.362879, 31.103466, 18.344639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441498, 30.962465, 18.167049>,  <30.572531, 30.727465, 17.871069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441498, 30.962465, 18.167049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468767, 0.578914, -0.667170,
		-0.820334, -0.565418, 0.085760,
		-0.327582, 0.587504, 0.739952,
		30.343224, 31.138716, 18.389034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048620, 30.668705, 18.317532>,  <30.572531, 30.727465, 17.871069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048620, 30.668705, 18.317532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340351, 30.397211, 18.351934>,  <30.515390, 30.234314, 18.372576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340351, 30.397211, 18.351934>,  <30.048620, 30.668705, 18.317532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340351, 30.397211, 18.351934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253322, -0.151123, 0.955505,
		-0.635537, -0.718666, -0.282157,
		0.729330, -0.678735, 0.086009,
		30.559151, 30.193590, 18.377737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912859, 30.143009, 18.860262>,  <30.048620, 30.668705, 18.317532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912859, 30.143009, 18.860262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311153, 30.178167, 18.849064>,  <30.550131, 30.199263, 18.842346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311153, 30.178167, 18.849064>,  <29.912859, 30.143009, 18.860262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311153, 30.178167, 18.849064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042840, -0.171868, 0.984188,
		0.081696, -0.981191, -0.174900,
		0.995736, 0.087897, -0.027993,
		30.609875, 30.204536, 18.840666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134975, 29.653980, 19.365147>,  <29.912859, 30.143009, 18.860262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134975, 29.653980, 19.365147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443132, 29.902046, 19.305965>,  <30.628027, 30.050886, 19.270456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443132, 29.902046, 19.305965>,  <30.134975, 29.653980, 19.365147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443132, 29.902046, 19.305965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331920, -0.191991, 0.923563,
		0.544355, -0.760616, -0.353754,
		0.770394, 0.620164, -0.147952,
		30.674252, 30.088095, 19.261580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800606, 29.266998, 19.516176>,  <30.134975, 29.653980, 19.365147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800606, 29.266998, 19.516176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813553, 29.663597, 19.566597>,  <30.821321, 29.901556, 19.596849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813553, 29.663597, 19.566597>,  <30.800606, 29.266998, 19.516176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813553, 29.663597, 19.566597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301930, -0.129924, 0.944435,
		0.952781, 0.007489, -0.303568,
		0.032368, 0.991496, 0.126051,
		30.823263, 29.961046, 19.604412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400637, 29.397400, 19.661489>,  <30.800606, 29.266998, 19.516176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400637, 29.397400, 19.661489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201883, 29.706942, 19.818594>,  <31.082632, 29.892666, 19.912857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201883, 29.706942, 19.818594>,  <31.400637, 29.397400, 19.661489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201883, 29.706942, 19.818594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453604, -0.154242, 0.877755,
		0.739833, 0.614298, -0.274382,
		-0.496882, 0.773852, 0.392761,
		31.052818, 29.939096, 19.936422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944456, 29.857328, 20.026722>,  <31.400637, 29.397400, 19.661489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944456, 29.857328, 20.026722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589964, 29.933010, 20.195858>,  <31.377268, 29.978418, 20.297340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589964, 29.933010, 20.195858>,  <31.944456, 29.857328, 20.026722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589964, 29.933010, 20.195858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393357, -0.174742, 0.902627,
		0.244668, 0.966265, 0.080437,
		-0.886232, 0.189203, 0.422840,
		31.324095, 29.989771, 20.322710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064751, 30.458300, 20.380192>,  <31.944456, 29.857328, 20.026722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064751, 30.458300, 20.380192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749138, 30.273384, 20.542044>,  <31.559771, 30.162436, 20.639154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749138, 30.273384, 20.542044>,  <32.064751, 30.458300, 20.380192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749138, 30.273384, 20.542044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543678, -0.218706, 0.810297,
		-0.286095, 0.859336, 0.423901,
		-0.789027, -0.462287, 0.404631,
		31.512430, 30.134699, 20.663433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873255, 30.828451, 21.001139>,  <32.064751, 30.458300, 20.380192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873255, 30.828451, 21.001139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731733, 30.459864, 21.065281>,  <31.646820, 30.238710, 21.103767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731733, 30.459864, 21.065281>,  <31.873255, 30.828451, 21.001139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731733, 30.459864, 21.065281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355626, 0.026038, 0.934265,
		-0.865073, 0.387575, 0.318486,
		-0.353805, -0.921470, 0.160357,
		31.625591, 30.183422, 21.113388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388206, 30.891716, 21.619793>,  <31.873255, 30.828451, 21.001139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388206, 30.891716, 21.619793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448225, 30.497507, 21.588217>,  <31.484236, 30.260983, 21.569271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448225, 30.497507, 21.588217>,  <31.388206, 30.891716, 21.619793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448225, 30.497507, 21.588217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324105, -0.026400, 0.945653,
		-0.934046, -0.167475, 0.315451,
		0.150045, -0.985523, -0.078938,
		31.493238, 30.201851, 21.564535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068144, 30.607552, 22.192282>,  <31.388206, 30.891716, 21.619793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068144, 30.607552, 22.192282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324854, 30.325600, 22.071438>,  <31.478880, 30.156429, 21.998932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324854, 30.325600, 22.071438>,  <31.068144, 30.607552, 22.192282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324854, 30.325600, 22.071438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352627, -0.078593, 0.932458,
		-0.681013, -0.704960, 0.198120,
		0.641775, -0.704879, -0.302111,
		31.517385, 30.114136, 21.980804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982386, 30.148943, 22.686638>,  <31.068144, 30.607552, 22.192282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982386, 30.148943, 22.686638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323523, 30.058229, 22.498499>,  <31.528206, 30.003801, 22.385614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323523, 30.058229, 22.498499>,  <30.982386, 30.148943, 22.686638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323523, 30.058229, 22.498499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457667, -0.109023, 0.882414,
		-0.251397, -0.967824, 0.010812,
		0.852843, -0.226785, -0.470348,
		31.579376, 29.990194, 22.357395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187944, 29.485821, 22.884727>,  <30.982386, 30.148943, 22.686638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187944, 29.485821, 22.884727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516224, 29.686691, 22.775713>,  <31.713192, 29.807213, 22.710304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516224, 29.686691, 22.775713>,  <31.187944, 29.485821, 22.884727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516224, 29.686691, 22.775713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338721, -0.043487, 0.939882,
		0.460134, -0.863672, -0.205787,
		0.820698, 0.502175, -0.272534,
		31.762434, 29.837343, 22.693953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719311, 29.210072, 23.248817>,  <31.187944, 29.485821, 22.884727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719311, 29.210072, 23.248817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875139, 29.564526, 23.148418>,  <31.968636, 29.777199, 23.088179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875139, 29.564526, 23.148418>,  <31.719311, 29.210072, 23.248817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875139, 29.564526, 23.148418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433273, 0.064158, 0.898976,
		0.812718, -0.458966, -0.358944,
		0.389570, 0.886135, -0.251000,
		31.992010, 29.830366, 23.073118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416439, 29.048254, 23.476488>,  <31.719311, 29.210072, 23.248817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416439, 29.048254, 23.476488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363216, 29.440762, 23.420763>,  <32.331284, 29.676266, 23.387327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363216, 29.440762, 23.420763>,  <32.416439, 29.048254, 23.476488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363216, 29.440762, 23.420763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310565, 0.174764, 0.934349,
		0.941193, 0.081058, -0.328001,
		-0.133059, 0.981268, -0.139313,
		32.323299, 29.735142, 23.378969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781067, 29.271482, 23.965519>,  <32.416439, 29.048254, 23.476488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781067, 29.271482, 23.965519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685303, 29.635475, 23.830097>,  <32.627846, 29.853870, 23.748844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685303, 29.635475, 23.830097>,  <32.781067, 29.271482, 23.965519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685303, 29.635475, 23.830097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410220, 0.410846, 0.814202,
		0.880002, 0.056043, -0.471652,
		-0.239407, 0.909980, -0.338555,
		32.613480, 29.908470, 23.728531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369820, 29.807726, 23.817032>,  <32.781067, 29.271482, 23.965519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369820, 29.807726, 23.817032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047039, 30.040159, 23.859299>,  <32.853371, 30.179619, 23.884659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047039, 30.040159, 23.859299>,  <33.369820, 29.807726, 23.817032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047039, 30.040159, 23.859299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471837, 0.526661, 0.707106,
		0.355237, 0.620460, -0.699168,
		-0.806955, 0.581083, 0.105666,
		32.804951, 30.214485, 23.890999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528145, 30.496632, 23.730480>,  <33.369820, 29.807726, 23.817032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528145, 30.496632, 23.730480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187424, 30.533337, 23.936783>,  <32.982990, 30.555361, 24.060564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187424, 30.533337, 23.936783>,  <33.528145, 30.496632, 23.730480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187424, 30.533337, 23.936783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386048, 0.775472, 0.499611,
		-0.354108, 0.624678, -0.695977,
		-0.851807, 0.091765, 0.515756,
		32.931881, 30.560865, 24.091509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373405, 31.226315, 23.733429>,  <33.528145, 30.496632, 23.730480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373405, 31.226315, 23.733429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182331, 31.083139, 24.054350>,  <33.067684, 30.997234, 24.246902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182331, 31.083139, 24.054350>,  <33.373405, 31.226315, 23.733429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182331, 31.083139, 24.054350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246293, 0.822052, 0.513391,
		-0.843298, 0.442844, -0.304528,
		-0.477690, -0.357938, 0.802304,
		33.039024, 30.975758, 24.295042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966713, 31.770073, 24.028967>,  <33.373405, 31.226315, 23.733429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966713, 31.770073, 24.028967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981068, 31.501526, 24.325069>,  <32.989681, 31.340399, 24.502731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981068, 31.501526, 24.325069>,  <32.966713, 31.770073, 24.028967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981068, 31.501526, 24.325069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089721, 0.739907, 0.666699,
		-0.995320, 0.042490, 0.086789,
		0.035888, -0.671365, 0.740257,
		32.991833, 31.300116, 24.547146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472340, 32.030346, 24.464491>,  <32.966713, 31.770073, 24.028967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472340, 32.030346, 24.464491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687702, 31.787981, 24.698751>,  <32.816917, 31.642561, 24.839308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687702, 31.787981, 24.698751>,  <32.472340, 32.030346, 24.464491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687702, 31.787981, 24.698751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172086, 0.759391, 0.627464,
		-0.824929, -0.237046, 0.513128,
		0.538403, -0.605916, 0.585652,
		32.849224, 31.606207, 24.874447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127380, 32.217579, 25.018291>,  <32.472340, 32.030346, 24.464491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127380, 32.217579, 25.018291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481419, 32.047115, 25.093122>,  <32.693840, 31.944838, 25.138021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481419, 32.047115, 25.093122>,  <32.127380, 32.217579, 25.018291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481419, 32.047115, 25.093122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198592, 0.709349, 0.676303,
		-0.420915, -0.561440, 0.712472,
		0.885094, -0.426157, 0.187078,
		32.746948, 31.919268, 25.149246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146828, 32.258511, 25.740351>,  <32.127380, 32.217579, 25.018291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146828, 32.258511, 25.740351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520241, 32.205700, 25.607029>,  <32.744289, 32.174011, 25.527037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520241, 32.205700, 25.607029>,  <32.146828, 32.258511, 25.740351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520241, 32.205700, 25.607029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356132, 0.448232, 0.819914,
		0.041143, -0.884113, 0.465458,
		0.933529, -0.132031, -0.333303,
		32.800301, 32.166092, 25.507038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489403, 31.967903, 26.250277>,  <32.146828, 32.258511, 25.740351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489403, 31.967903, 26.250277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810562, 32.090160, 26.045557>,  <33.003258, 32.163513, 25.922726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810562, 32.090160, 26.045557>,  <32.489403, 31.967903, 26.250277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810562, 32.090160, 26.045557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356518, 0.441882, 0.823186,
		0.477764, -0.843397, 0.245813,
		0.802893, 0.305652, -0.511801,
		33.051430, 32.181854, 25.892017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029522, 31.782465, 26.611507>,  <32.489403, 31.967903, 26.250277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029522, 31.782465, 26.611507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193321, 32.067493, 26.383631>,  <33.291603, 32.238510, 26.246904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193321, 32.067493, 26.383631>,  <33.029522, 31.782465, 26.611507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193321, 32.067493, 26.383631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430892, 0.399345, 0.809232,
		0.804140, -0.576856, -0.143510,
		0.409500, 0.712573, -0.569692,
		33.316170, 32.281265, 26.212723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736206, 31.881884, 26.819952>,  <33.029522, 31.782465, 26.611507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736206, 31.881884, 26.819952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617088, 32.231850, 26.667196>,  <33.545616, 32.441830, 26.575542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617088, 32.231850, 26.667196>,  <33.736206, 31.881884, 26.819952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617088, 32.231850, 26.667196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219204, 0.452019, 0.864655,
		0.929122, 0.173779, -0.326395,
		-0.297795, 0.874917, -0.381887,
		33.527748, 32.494324, 26.552629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289364, 32.230740, 26.837219>,  <33.736206, 31.881884, 26.819952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289364, 32.230740, 26.837219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005394, 32.512413, 26.832607>,  <33.835011, 32.681416, 26.829840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005394, 32.512413, 26.832607>,  <34.289364, 32.230740, 26.837219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005394, 32.512413, 26.832607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418962, 0.435427, 0.796789,
		0.566105, 0.560831, -0.604147,
		-0.709926, 0.704181, -0.011531,
		33.792416, 32.723667, 26.829147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641674, 32.806118, 26.961073>,  <34.289364, 32.230740, 26.837219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641674, 32.806118, 26.961073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271614, 32.927364, 27.052479>,  <34.049580, 33.000111, 27.107323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271614, 32.927364, 27.052479>,  <34.641674, 32.806118, 26.961073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271614, 32.927364, 27.052479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355076, 0.478144, 0.803305,
		0.134230, 0.824318, -0.549984,
		-0.925151, 0.303113, 0.228514,
		33.994068, 33.018299, 27.121033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724991, 33.580547, 27.060946>,  <34.641674, 32.806118, 26.961073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724991, 33.580547, 27.060946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381672, 33.478832, 27.239233>,  <34.175682, 33.417801, 27.346205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381672, 33.478832, 27.239233>,  <34.724991, 33.580547, 27.060946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381672, 33.478832, 27.239233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290551, 0.475122, 0.830566,
		-0.422976, 0.842375, -0.333911,
		-0.858296, -0.254291, 0.445718,
		34.124184, 33.402546, 27.372948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594524, 34.239357, 27.426579>,  <34.724991, 33.580547, 27.060946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594524, 34.239357, 27.426579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380920, 33.944946, 27.592993>,  <34.252758, 33.768299, 27.692842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380920, 33.944946, 27.592993>,  <34.594524, 34.239357, 27.426579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380920, 33.944946, 27.592993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186717, 0.377258, 0.907091,
		-0.824600, 0.562081, -0.064031,
		-0.534014, -0.736031, 0.416036,
		34.220715, 33.724136, 27.717804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232250, 34.448505, 28.066515>,  <34.594524, 34.239357, 27.426579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232250, 34.448505, 28.066515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225201, 34.054745, 28.136530>,  <34.220970, 33.818489, 28.178539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225201, 34.054745, 28.136530>,  <34.232250, 34.448505, 28.066515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225201, 34.054745, 28.136530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011128, 0.174859, 0.984531,
		-0.999783, 0.019302, 0.007872,
		-0.017627, -0.984404, 0.175036,
		34.219913, 33.759422, 28.189041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779625, 34.416832, 28.615807>,  <34.232250, 34.448505, 28.066515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779625, 34.416832, 28.615807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969296, 34.064743, 28.623392>,  <34.083099, 33.853489, 28.627943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969296, 34.064743, 28.623392>,  <33.779625, 34.416832, 28.615807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969296, 34.064743, 28.623392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089132, -0.026564, 0.995666,
		-0.875907, -0.473811, -0.091052,
		0.474176, -0.880226, 0.018964,
		34.111549, 33.800674, 28.629082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410416, 33.966892, 29.099556>,  <33.779625, 34.416832, 28.615807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410416, 33.966892, 29.099556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778023, 33.814148, 29.060369>,  <33.998585, 33.722504, 29.036858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778023, 33.814148, 29.060369>,  <33.410416, 33.966892, 29.099556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778023, 33.814148, 29.060369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071791, -0.082238, 0.994024,
		-0.387633, -0.920555, -0.048163,
		0.919014, -0.381859, -0.097966,
		34.053726, 33.699589, 29.030979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387180, 33.445461, 29.552229>,  <33.410416, 33.966892, 29.099556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387180, 33.445461, 29.552229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776714, 33.518169, 29.497658>,  <34.010433, 33.561794, 29.464914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776714, 33.518169, 29.497658>,  <33.387180, 33.445461, 29.552229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776714, 33.518169, 29.497658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117461, 0.111362, 0.986814,
		0.194569, -0.977014, 0.087096,
		0.973831, 0.181773, -0.136429,
		34.068863, 33.572701, 29.456730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691811, 33.099144, 30.102961>,  <33.387180, 33.445461, 29.552229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691811, 33.099144, 30.102961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964161, 33.369438, 29.989971>,  <34.127571, 33.531612, 29.922178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964161, 33.369438, 29.989971>,  <33.691811, 33.099144, 30.102961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964161, 33.369438, 29.989971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190990, 0.208522, 0.959188,
		0.707055, -0.707040, 0.012921,
		0.680878, 0.675731, -0.282474,
		34.168423, 33.572159, 29.905230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478973, 32.922134, 30.336725>,  <33.691811, 33.099144, 30.102961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478973, 32.922134, 30.336725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417274, 33.315323, 30.296789>,  <34.380257, 33.551235, 30.272827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417274, 33.315323, 30.296789>,  <34.478973, 32.922134, 30.336725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417274, 33.315323, 30.296789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283739, 0.140861, 0.948499,
		0.946414, 0.117974, -0.300636,
		-0.154246, 0.982975, -0.099839,
		34.371002, 33.610214, 30.266838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130829, 33.176846, 30.697420>,  <34.478973, 32.922134, 30.336725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130829, 33.176846, 30.697420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894348, 33.494160, 30.639204>,  <34.752460, 33.684547, 30.604275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894348, 33.494160, 30.639204>,  <35.130829, 33.176846, 30.697420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894348, 33.494160, 30.639204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131258, 0.272686, 0.953107,
		0.795770, 0.544377, -0.265338,
		-0.591203, 0.793282, -0.145542,
		34.716988, 33.732143, 30.595541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622169, 33.694126, 30.772366>,  <35.130829, 33.176846, 30.697420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622169, 33.694126, 30.772366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263111, 33.847713, 30.858894>,  <35.047676, 33.939865, 30.910812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263111, 33.847713, 30.858894>,  <35.622169, 33.694126, 30.772366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263111, 33.847713, 30.858894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355177, 0.339680, 0.870900,
		0.260917, 0.858595, -0.441290,
		-0.897648, 0.383969, 0.216324,
		34.993816, 33.962906, 30.923792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728405, 34.357754, 31.084270>,  <35.622169, 33.694126, 30.772366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728405, 34.357754, 31.084270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363869, 34.229027, 31.186941>,  <35.145145, 34.151791, 31.248543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363869, 34.229027, 31.186941>,  <35.728405, 34.357754, 31.084270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363869, 34.229027, 31.186941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138663, 0.347094, 0.927523,
		-0.387587, 0.880884, -0.271697,
		-0.911344, -0.321822, 0.256675,
		35.090466, 34.132481, 31.263943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482647, 34.939384, 31.473700>,  <35.728405, 34.357754, 31.084270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482647, 34.939384, 31.473700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234570, 34.637863, 31.560537>,  <35.085724, 34.456951, 31.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234570, 34.637863, 31.560537>,  <35.482647, 34.939384, 31.473700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234570, 34.637863, 31.560537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048539, 0.313097, 0.948480,
		-0.782943, 0.577707, -0.230771,
		-0.620197, -0.753807, 0.217096,
		35.048512, 34.411720, 31.625666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928020, 35.219429, 31.825148>,  <35.482647, 34.939384, 31.473700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928020, 35.219429, 31.825148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942425, 34.832443, 31.925316>,  <34.951065, 34.600250, 31.985416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942425, 34.832443, 31.925316>,  <34.928020, 35.219429, 31.825148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942425, 34.832443, 31.925316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018258, 0.249904, 0.968099,
		-0.999185, -0.039431, -0.008666,
		0.036008, -0.967468, 0.250420,
		34.953228, 34.542202, 32.000443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391418, 35.102993, 32.261887>,  <34.928020, 35.219429, 31.825148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391418, 35.102993, 32.261887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624870, 34.790020, 32.348774>,  <34.764942, 34.602238, 32.400906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624870, 34.790020, 32.348774>,  <34.391418, 35.102993, 32.261887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624870, 34.790020, 32.348774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181213, 0.135262, 0.974098,
		-0.791544, -0.607872, -0.062844,
		0.583626, -0.782430, 0.217220,
		34.799957, 34.555290, 32.413940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068451, 34.704041, 32.754417>,  <34.391418, 35.102993, 32.261887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068451, 34.704041, 32.754417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455029, 34.609135, 32.793781>,  <34.686977, 34.552189, 32.817398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455029, 34.609135, 32.793781>,  <34.068451, 34.704041, 32.754417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455029, 34.609135, 32.793781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114873, -0.056570, 0.991768,
		-0.229750, -0.969795, -0.081928,
		0.966447, -0.237270, 0.098406,
		34.744961, 34.537952, 32.823303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023228, 34.201538, 33.193089>,  <34.068451, 34.704041, 32.754417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023228, 34.201538, 33.193089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395935, 34.345703, 33.210560>,  <34.619560, 34.432201, 33.221043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395935, 34.345703, 33.210560>,  <34.023228, 34.201538, 33.193089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395935, 34.345703, 33.210560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130555, 0.220380, 0.966637,
		0.338767, -0.906384, 0.252398,
		0.931768, 0.360417, 0.043676,
		34.675465, 34.453827, 33.223663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375481, 33.943600, 33.754299>,  <34.023228, 34.201538, 33.193089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375481, 33.943600, 33.754299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505638, 34.316284, 33.689762>,  <34.583733, 34.539894, 33.651039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505638, 34.316284, 33.689762>,  <34.375481, 33.943600, 33.754299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505638, 34.316284, 33.689762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073698, 0.145125, 0.986665,
		0.942703, -0.332942, -0.021443,
		0.325391, 0.931712, -0.161347,
		34.603256, 34.595798, 33.641357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094681, 33.483829, 33.336102>,  <34.375481, 33.943600, 33.754299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094681, 33.483829, 33.336102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799839, 33.415161, 33.597546>,  <33.622932, 33.373962, 33.754414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799839, 33.415161, 33.597546>,  <34.094681, 33.483829, 33.336102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799839, 33.415161, 33.597546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428182, -0.629628, -0.648251,
		0.522816, -0.757693, 0.390596,
		-0.737105, -0.171669, 0.653610,
		33.578709, 33.363659, 33.793629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024055, 32.818619, 33.511692>,  <34.094681, 33.483829, 33.336102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024055, 32.818619, 33.511692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661110, 32.940784, 33.627220>,  <33.443344, 33.014084, 33.696537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661110, 32.940784, 33.627220>,  <34.024055, 32.818619, 33.511692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661110, 32.940784, 33.627220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413973, -0.529968, -0.740108,
		-0.072973, -0.791110, 0.607306,
		-0.907359, 0.305417, 0.288825,
		33.388901, 33.032410, 33.713867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633385, 32.211548, 33.566441>,  <34.024055, 32.818619, 33.511692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633385, 32.211548, 33.566441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350815, 32.492081, 33.528286>,  <33.181274, 32.660400, 33.505394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350815, 32.492081, 33.528286>,  <33.633385, 32.211548, 33.566441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350815, 32.492081, 33.528286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351737, -0.464803, -0.812551,
		-0.614206, -0.540452, 0.575032,
		-0.706422, 0.701334, -0.095388,
		33.138889, 32.702480, 33.499668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017010, 31.804762, 33.656223>,  <33.633385, 32.211548, 33.566441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017010, 31.804762, 33.656223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928246, 32.147030, 33.469212>,  <32.874985, 32.352390, 33.357002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928246, 32.147030, 33.469212>,  <33.017010, 31.804762, 33.656223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928246, 32.147030, 33.469212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545973, -0.506315, -0.667502,
		-0.807879, 0.107132, 0.579530,
		-0.221914, 0.855668, -0.467532,
		32.861671, 32.403728, 33.328953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336891, 31.699362, 33.427219>,  <33.017010, 31.804762, 33.656223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336891, 31.699362, 33.427219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486492, 31.985653, 33.191303>,  <32.576252, 32.157429, 33.049751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486492, 31.985653, 33.191303>,  <32.336891, 31.699362, 33.427219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486492, 31.985653, 33.191303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498241, -0.381321, -0.778685,
		-0.782227, 0.585089, 0.213990,
		0.374001, 0.715727, -0.589795,
		32.598694, 32.200371, 33.014366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716677, 31.939772, 32.985901>,  <32.336891, 31.699362, 33.427219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716677, 31.939772, 32.985901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026234, 32.091591, 32.783108>,  <32.211967, 32.182682, 32.661434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026234, 32.091591, 32.783108>,  <31.716677, 31.939772, 32.985901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026234, 32.091591, 32.783108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366710, -0.384110, -0.847339,
		-0.516344, 0.841666, -0.158076,
		0.773894, 0.379550, -0.506980,
		32.258404, 32.205456, 32.631012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397211, 32.341980, 32.404667>,  <31.716677, 31.939772, 32.985901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397211, 32.341980, 32.404667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779081, 32.272774, 32.307789>,  <32.008205, 32.231251, 32.249660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779081, 32.272774, 32.307789>,  <31.397211, 32.341980, 32.404667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779081, 32.272774, 32.307789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284619, -0.292528, -0.912918,
		0.087099, 0.940475, -0.328512,
		0.954676, -0.173015, -0.242198,
		32.065483, 32.220871, 32.235130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369261, 32.618034, 31.767918>,  <31.397211, 32.341980, 32.404667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369261, 32.618034, 31.767918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678167, 32.366737, 31.805681>,  <31.863512, 32.215958, 31.828339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678167, 32.366737, 31.805681>,  <31.369261, 32.618034, 31.767918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678167, 32.366737, 31.805681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122391, -0.292948, -0.948262,
		0.623397, 0.720757, -0.303126,
		0.772267, -0.628244, 0.094409,
		31.909847, 32.178265, 31.834003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740925, 32.684383, 31.171490>,  <31.369261, 32.618034, 31.767918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740925, 32.684383, 31.171490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843204, 32.329838, 31.325882>,  <31.904572, 32.117111, 31.418518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843204, 32.329838, 31.325882>,  <31.740925, 32.684383, 31.171490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843204, 32.329838, 31.325882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087928, -0.418920, -0.903756,
		0.962750, 0.197151, -0.185053,
		0.255698, -0.886362, 0.385980,
		31.919914, 32.063931, 31.441675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297127, 32.454258, 30.723988>,  <31.740925, 32.684383, 31.171490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297127, 32.454258, 30.723988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135807, 32.146027, 30.921391>,  <32.039013, 31.961086, 31.039833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135807, 32.146027, 30.921391>,  <32.297127, 32.454258, 30.723988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135807, 32.146027, 30.921391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079771, -0.507654, -0.857860,
		0.911584, -0.385344, 0.143267,
		-0.403301, -0.770583, 0.493508,
		32.014816, 31.914852, 31.069443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642483, 31.876379, 30.560999>,  <32.297127, 32.454258, 30.723988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642483, 31.876379, 30.560999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300182, 31.717873, 30.694067>,  <32.094803, 31.622768, 30.773909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300182, 31.717873, 30.694067>,  <32.642483, 31.876379, 30.560999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300182, 31.717873, 30.694067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066303, -0.553684, -0.830083,
		0.513130, -0.732398, 0.447539,
		-0.855746, -0.396267, 0.332672,
		32.043457, 31.598993, 30.793869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786213, 31.228731, 30.612177>,  <32.642483, 31.876379, 30.560999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786213, 31.228731, 30.612177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392315, 31.270710, 30.556656>,  <32.155975, 31.295897, 30.523344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392315, 31.270710, 30.556656>,  <32.786213, 31.228731, 30.612177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392315, 31.270710, 30.556656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031477, -0.677071, -0.735244,
		-0.171139, -0.728397, 0.663438,
		-0.984744, 0.104946, -0.138801,
		32.096893, 31.302195, 30.515015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577236, 30.562616, 30.436472>,  <32.786213, 31.228731, 30.612177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577236, 30.562616, 30.436472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269436, 30.793327, 30.326782>,  <32.084755, 30.931755, 30.260967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269436, 30.793327, 30.326782>,  <32.577236, 30.562616, 30.436472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269436, 30.793327, 30.326782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133583, -0.565244, -0.814036,
		-0.624525, -0.589766, 0.512001,
		-0.769496, 0.576780, -0.274226,
		32.038586, 30.966362, 30.244514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161533, 30.056665, 30.238888>,  <32.577236, 30.562616, 30.436472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161533, 30.056665, 30.238888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022976, 30.391415, 30.069342>,  <31.939842, 30.592264, 29.967615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022976, 30.391415, 30.069342>,  <32.161533, 30.056665, 30.238888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022976, 30.391415, 30.069342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226736, -0.513129, -0.827823,
		-0.910278, -0.190643, 0.367491,
		-0.346389, 0.836872, -0.423864,
		31.919060, 30.642477, 29.942183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504229, 29.783590, 30.064529>,  <32.161533, 30.056665, 30.238888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504229, 29.783590, 30.064529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624142, 30.106749, 29.861578>,  <31.696089, 30.300644, 29.739807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624142, 30.106749, 29.861578>,  <31.504229, 29.783590, 30.064529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624142, 30.106749, 29.861578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146175, -0.486663, -0.861274,
		-0.942743, 0.332360, -0.027798,
		0.299781, 0.807896, -0.507380,
		31.714075, 30.349117, 29.709364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983919, 29.905186, 29.473059>,  <31.504229, 29.783590, 30.064529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983919, 29.905186, 29.473059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304079, 30.120363, 29.367243>,  <31.496174, 30.249470, 29.303753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304079, 30.120363, 29.367243>,  <30.983919, 29.905186, 29.473059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304079, 30.120363, 29.367243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144526, -0.255109, -0.956050,
		-0.581786, 0.803453, -0.126442,
		0.800398, 0.537942, -0.264539,
		31.544199, 30.281746, 29.287882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840958, 30.089756, 28.786306>,  <30.983919, 29.905186, 29.473059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840958, 30.089756, 28.786306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234943, 30.155163, 28.808617>,  <31.471334, 30.194407, 28.822002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234943, 30.155163, 28.808617>,  <30.840958, 30.089756, 28.786306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234943, 30.155163, 28.808617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093659, -0.234075, -0.967697,
		-0.145181, 0.958369, -0.245870,
		0.984962, 0.163519, 0.055777,
		31.530432, 30.204218, 28.825350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136044, 30.572596, 28.217302>,  <30.840958, 30.089756, 28.786306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136044, 30.572596, 28.217302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443001, 30.337463, 28.319725>,  <31.627174, 30.196384, 28.381178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443001, 30.337463, 28.319725>,  <31.136044, 30.572596, 28.217302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443001, 30.337463, 28.319725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186755, -0.177116, -0.966309,
		0.613377, 0.789358, -0.026137,
		0.767393, -0.587830, 0.256056,
		31.673218, 30.161114, 28.396542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625525, 30.651100, 27.686861>,  <31.136044, 30.572596, 28.217302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625525, 30.651100, 27.686861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733402, 30.318367, 27.880901>,  <31.798130, 30.118727, 27.997326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733402, 30.318367, 27.880901>,  <31.625525, 30.651100, 27.686861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733402, 30.318367, 27.880901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212872, -0.439800, -0.872503,
		0.939122, 0.338574, 0.058462,
		0.269695, -0.831831, 0.485099,
		31.814310, 30.068817, 28.026432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202164, 30.484152, 27.383009>,  <31.625525, 30.651100, 27.686861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202164, 30.484152, 27.383009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058262, 30.145546, 27.539974>,  <31.971920, 29.942383, 27.634153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058262, 30.145546, 27.539974>,  <32.202164, 30.484152, 27.383009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058262, 30.145546, 27.539974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022438, -0.412602, -0.910635,
		0.932777, -0.336411, 0.129441,
		-0.359755, -0.846515, 0.392414,
		31.950335, 29.891592, 27.657698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592350, 30.044270, 27.082447>,  <32.202164, 30.484152, 27.383009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592350, 30.044270, 27.082447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257744, 29.868244, 27.213039>,  <32.056980, 29.762629, 27.291395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257744, 29.868244, 27.213039>,  <32.592350, 30.044270, 27.082447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257744, 29.868244, 27.213039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088941, -0.478881, -0.873363,
		0.540680, -0.759617, 0.361451,
		-0.836513, -0.440062, 0.326482,
		32.006790, 29.736225, 27.310984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531898, 29.347967, 26.843075>,  <32.592350, 30.044270, 27.082447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531898, 29.347967, 26.843075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156403, 29.466990, 26.912626>,  <31.931105, 29.538403, 26.954357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156403, 29.466990, 26.912626>,  <32.531898, 29.347967, 26.843075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156403, 29.466990, 26.912626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286559, -0.393636, -0.873461,
		-0.191456, -0.869778, 0.454788,
		-0.938738, 0.297553, 0.173879,
		31.874781, 29.556255, 26.964790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076591, 28.784861, 26.485710>,  <32.531898, 29.347967, 26.843075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076591, 28.784861, 26.485710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832079, 29.090273, 26.569004>,  <31.685371, 29.273520, 26.618980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832079, 29.090273, 26.569004>,  <32.076591, 28.784861, 26.485710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832079, 29.090273, 26.569004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583563, -0.257121, -0.770288,
		-0.534596, -0.592378, 0.602740,
		-0.611278, 0.763530, 0.208234,
		31.648695, 29.319332, 26.631474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371063, 28.605528, 26.337643>,  <32.076591, 28.784861, 26.485710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371063, 28.605528, 26.337643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347055, 29.004568, 26.323814>,  <31.332651, 29.243992, 26.315517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347055, 29.004568, 26.323814>,  <31.371063, 28.605528, 26.337643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347055, 29.004568, 26.323814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645921, -0.065219, -0.760614,
		-0.761041, -0.023323, 0.648284,
		-0.060020, 0.997598, -0.034569,
		31.329050, 29.303848, 26.313444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709526, 28.763824, 26.252804>,  <31.371063, 28.605528, 26.337643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709526, 28.763824, 26.252804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876183, 29.106777, 26.131931>,  <30.976175, 29.312548, 26.059408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876183, 29.106777, 26.131931>,  <30.709526, 28.763824, 26.252804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876183, 29.106777, 26.131931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643838, 0.043631, -0.763916,
		-0.641782, 0.512832, 0.570192,
		0.416639, 0.857379, -0.302179,
		31.001175, 29.363991, 26.041277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155493, 29.307634, 26.133980>,  <30.709526, 28.763824, 26.252804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155493, 29.307634, 26.133980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486259, 29.406319, 25.931854>,  <30.684719, 29.465528, 25.810579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486259, 29.406319, 25.931854>,  <30.155493, 29.307634, 26.133980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486259, 29.406319, 25.931854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558130, 0.250527, -0.791029,
		-0.068560, 0.936146, 0.344861,
		0.826916, 0.246711, -0.505315,
		30.734335, 29.480331, 25.780260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098490, 30.004396, 25.893890>,  <30.155493, 29.307634, 26.133980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098490, 30.004396, 25.893890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358210, 29.838699, 25.638763>,  <30.514042, 29.739281, 25.485687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358210, 29.838699, 25.638763>,  <30.098490, 30.004396, 25.893890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358210, 29.838699, 25.638763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523814, 0.364441, -0.769936,
		0.551389, 0.834017, 0.019643,
		0.649298, -0.414245, -0.637819,
		30.552999, 29.714426, 25.447418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223293, 30.482635, 25.355774>,  <30.098490, 30.004396, 25.893890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223293, 30.482635, 25.355774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334530, 30.130856, 25.201248>,  <30.401272, 29.919788, 25.108534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334530, 30.130856, 25.201248>,  <30.223293, 30.482635, 25.355774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334530, 30.130856, 25.201248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637937, 0.131579, -0.758764,
		0.718124, 0.457448, -0.524442,
		0.278089, -0.879448, -0.386313,
		30.417957, 29.867022, 25.085354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253935, 30.695066, 24.623896>,  <30.223293, 30.482635, 25.355774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253935, 30.695066, 24.623896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257301, 30.296413, 24.656515>,  <30.259321, 30.057220, 24.676086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257301, 30.296413, 24.656515>,  <30.253935, 30.695066, 24.623896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257301, 30.296413, 24.656515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559371, -0.072290, -0.825759,
		0.828875, -0.038665, -0.558096,
		0.008417, -0.996634, 0.081548,
		30.259827, 29.997423, 24.680979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533068, 30.485703, 23.973124>,  <30.253935, 30.695066, 24.623896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533068, 30.485703, 23.973124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335140, 30.181095, 24.140572>,  <30.216385, 29.998331, 24.241041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335140, 30.181095, 24.140572>,  <30.533068, 30.485703, 23.973124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335140, 30.181095, 24.140572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492884, -0.150802, -0.856927,
		0.715696, -0.630354, -0.300722,
		-0.494818, -0.761520, 0.418620,
		30.186695, 29.952639, 24.266157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665895, 29.964230, 23.519064>,  <30.533068, 30.485703, 23.973124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665895, 29.964230, 23.519064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347038, 29.843620, 23.728310>,  <30.155724, 29.771255, 23.853857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347038, 29.843620, 23.728310>,  <30.665895, 29.964230, 23.519064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347038, 29.843620, 23.728310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541776, -0.025271, -0.840143,
		0.266543, -0.953124, -0.143214,
		-0.797141, -0.301525, 0.523115,
		30.107897, 29.753162, 23.885244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504114, 29.258429, 23.271231>,  <30.665895, 29.964230, 23.519064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504114, 29.258429, 23.271231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172716, 29.422707, 23.423508>,  <29.973877, 29.521273, 23.514874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172716, 29.422707, 23.423508>,  <30.504114, 29.258429, 23.271231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172716, 29.422707, 23.423508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445356, -0.071092, -0.892527,
		-0.339493, -0.908997, 0.241804,
		-0.828494, 0.410695, 0.380692,
		29.924168, 29.545916, 23.537716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965351, 28.901337, 22.975687>,  <30.504114, 29.258429, 23.271231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965351, 28.901337, 22.975687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799286, 29.243711, 23.098984>,  <29.699646, 29.449137, 23.172962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799286, 29.243711, 23.098984>,  <29.965351, 28.901337, 22.975687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799286, 29.243711, 23.098984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576807, 0.014357, -0.816755,
		-0.703515, -0.516881, 0.487749,
		-0.415163, 0.855936, 0.308241,
		29.674736, 29.500492, 23.191456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222179, 28.742899, 22.957710>,  <29.965351, 28.901337, 22.975687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222179, 28.742899, 22.957710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280313, 29.138651, 22.957527>,  <29.315195, 29.376102, 22.957417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280313, 29.138651, 22.957527>,  <29.222179, 28.742899, 22.957710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280313, 29.138651, 22.957527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622377, 0.091064, -0.777402,
		-0.769106, 0.113271, 0.629004,
		0.145336, 0.989382, -0.000460,
		29.323914, 29.435465, 22.957390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568737, 29.057123, 23.005930>,  <29.222179, 28.742899, 22.957710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568737, 29.057123, 23.005930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795200, 29.357979, 22.871019>,  <28.931078, 29.538492, 22.790073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795200, 29.357979, 22.871019>,  <28.568737, 29.057123, 23.005930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795200, 29.357979, 22.871019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616356, 0.114591, -0.779085,
		-0.547331, 0.648966, 0.528462,
		0.566157, 0.752138, -0.337275,
		28.965048, 29.583620, 22.769836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015821, 29.436804, 22.775066>,  <28.568737, 29.057123, 23.005930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015821, 29.436804, 22.775066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343613, 29.579224, 22.595430>,  <28.540287, 29.664677, 22.487648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343613, 29.579224, 22.595430>,  <28.015821, 29.436804, 22.775066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343613, 29.579224, 22.595430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568282, 0.403324, -0.717206,
		-0.074233, 0.842946, 0.532853,
		0.819478, 0.356051, -0.449091,
		28.589457, 29.686039, 22.460703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957142, 30.221859, 22.597637>,  <28.015821, 29.436804, 22.775066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957142, 30.221859, 22.597637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242533, 30.077307, 22.357519>,  <28.413767, 29.990576, 22.213448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242533, 30.077307, 22.357519>,  <27.957142, 30.221859, 22.597637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242533, 30.077307, 22.357519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372844, 0.529564, -0.761938,
		0.593245, 0.767441, 0.243093,
		0.713476, -0.361380, -0.600297,
		28.456575, 29.968893, 22.177429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452547, 30.121248, 21.982271>,  <27.957142, 30.221859, 22.597637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452547, 30.121248, 21.982271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114500, 29.922813, 21.902596>,  <26.911673, 29.803753, 21.854790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114500, 29.922813, 21.902596>,  <27.452547, 30.121248, 21.982271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114500, 29.922813, 21.902596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351425, 0.234774, 0.906301,
		-0.402840, 0.835929, -0.372749,
		-0.845115, -0.496088, -0.199190,
		26.860966, 29.773987, 21.842838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947495, 30.554317, 22.094393>,  <27.452547, 30.121248, 21.982271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947495, 30.554317, 22.094393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777929, 30.192392, 22.110430>,  <26.676189, 29.975237, 22.120052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777929, 30.192392, 22.110430>,  <26.947495, 30.554317, 22.094393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777929, 30.192392, 22.110430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442923, 0.245719, 0.862230,
		-0.790009, 0.347755, -0.504927,
		-0.423915, -0.904814, 0.040091,
		26.650755, 29.920948, 22.122458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192598, 30.653553, 22.251690>,  <26.947495, 30.554317, 22.094393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192598, 30.653553, 22.251690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302277, 30.290155, 22.377834>,  <26.368084, 30.072117, 22.453522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302277, 30.290155, 22.377834>,  <26.192598, 30.653553, 22.251690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302277, 30.290155, 22.377834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415220, 0.183945, 0.890930,
		-0.867414, -0.375236, -0.326788,
		0.274197, -0.908495, 0.315362,
		26.384537, 30.017607, 22.472443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725697, 30.529034, 22.667410>,  <26.192598, 30.653553, 22.251690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725697, 30.529034, 22.667410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974504, 30.238258, 22.783789>,  <26.123789, 30.063793, 22.853617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974504, 30.238258, 22.783789>,  <25.725697, 30.529034, 22.667410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974504, 30.238258, 22.783789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370318, 0.054277, 0.927318,
		-0.689896, -0.684553, -0.235437,
		0.622019, -0.726940, 0.290948,
		26.161110, 30.020176, 22.871073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392656, 30.109331, 23.228525>,  <25.725697, 30.529034, 22.667410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392656, 30.109331, 23.228525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769625, 29.993452, 23.295364>,  <25.995806, 29.923925, 23.335468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769625, 29.993452, 23.295364>,  <25.392656, 30.109331, 23.228525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769625, 29.993452, 23.295364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189688, -0.051530, 0.980491,
		-0.275434, -0.955730, -0.103515,
		0.942419, -0.289696, 0.167098,
		26.052351, 29.906544, 23.345493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444710, 29.460598, 23.615814>,  <25.392656, 30.109331, 23.228525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444710, 29.460598, 23.615814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789919, 29.652798, 23.678185>,  <25.997044, 29.768118, 23.715607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789919, 29.652798, 23.678185>,  <25.444710, 29.460598, 23.615814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789919, 29.652798, 23.678185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166566, -0.020735, 0.985812,
		0.476916, -0.876749, 0.062140,
		0.863022, 0.480500, 0.155925,
		26.048826, 29.796947, 23.724962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896692, 29.061056, 24.089375>,  <25.444710, 29.460598, 23.615814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896692, 29.061056, 24.089375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027987, 29.437366, 24.123323>,  <26.106762, 29.663153, 24.143694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027987, 29.437366, 24.123323>,  <25.896692, 29.061056, 24.089375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027987, 29.437366, 24.123323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109628, -0.127184, 0.985802,
		0.938213, -0.314270, -0.144881,
		0.328235, 0.940776, 0.084873,
		26.126457, 29.719599, 24.148785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493830, 29.006401, 24.537754>,  <25.896692, 29.061056, 24.089375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493830, 29.006401, 24.537754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426992, 29.400686, 24.529228>,  <26.386890, 29.637257, 24.524113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426992, 29.400686, 24.529228>,  <26.493830, 29.006401, 24.537754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426992, 29.400686, 24.529228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327566, 0.075892, 0.941775,
		0.929936, 0.150381, -0.335566,
		-0.167092, 0.985711, -0.021315,
		26.376865, 29.696400, 24.522833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154140, 29.250067, 24.785404>,  <26.493830, 29.006401, 24.537754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154140, 29.250067, 24.785404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895620, 29.547905, 24.852190>,  <26.740509, 29.726608, 24.892262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895620, 29.547905, 24.852190>,  <27.154140, 29.250067, 24.785404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895620, 29.547905, 24.852190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406194, 0.150463, 0.901314,
		0.645991, 0.650339, -0.399694,
		-0.646299, 0.744594, 0.166966,
		26.701731, 29.771282, 24.902281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485710, 29.798687, 24.941959>,  <27.154140, 29.250067, 24.785404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485710, 29.798687, 24.941959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123625, 29.887264, 25.087040>,  <26.906374, 29.940411, 25.174088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123625, 29.887264, 25.087040>,  <27.485710, 29.798687, 24.941959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123625, 29.887264, 25.087040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415295, 0.280008, 0.865520,
		0.090105, 0.934108, -0.345432,
		-0.905213, 0.221443, 0.362700,
		26.852060, 29.953697, 25.195850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645308, 30.400913, 25.250090>,  <27.485710, 29.798687, 24.941959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645308, 30.400913, 25.250090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285357, 30.305588, 25.396198>,  <27.069386, 30.248392, 25.483864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285357, 30.305588, 25.396198>,  <27.645308, 30.400913, 25.250090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285357, 30.305588, 25.396198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324731, 0.192978, 0.925910,
		-0.291148, 0.951822, -0.096268,
		-0.899879, -0.238316, 0.365272,
		27.015392, 30.234093, 25.505779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404871, 30.938280, 25.671671>,  <27.645308, 30.400913, 25.250090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404871, 30.938280, 25.671671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231728, 30.593296, 25.776587>,  <27.127842, 30.386305, 25.839537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231728, 30.593296, 25.776587>,  <27.404871, 30.938280, 25.671671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231728, 30.593296, 25.776587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260888, 0.158657, 0.952242,
		-0.862886, 0.480613, 0.156330,
		-0.432857, -0.862461, 0.262289,
		27.101871, 30.334558, 25.855274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016588, 31.090111, 26.251123>,  <27.404871, 30.938280, 25.671671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016588, 31.090111, 26.251123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067230, 30.693924, 26.272825>,  <27.097614, 30.456211, 26.285847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067230, 30.693924, 26.272825>,  <27.016588, 31.090111, 26.251123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067230, 30.693924, 26.272825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118495, 0.069405, 0.990526,
		-0.984851, -0.118975, 0.126152,
		0.126603, -0.990469, 0.054256,
		27.105211, 30.396784, 26.289103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492416, 30.871552, 26.794214>,  <27.016588, 31.090111, 26.251123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492416, 30.871552, 26.794214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776297, 30.595407, 26.738026>,  <26.946625, 30.429722, 26.704311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776297, 30.595407, 26.738026>,  <26.492416, 30.871552, 26.794214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776297, 30.595407, 26.738026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163508, -0.032541, 0.986005,
		-0.685267, -0.722736, 0.089785,
		0.709699, -0.690358, -0.140473,
		26.989206, 30.388300, 26.695885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439869, 30.491343, 27.319632>,  <26.492416, 30.871552, 26.794214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439869, 30.491343, 27.319632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808304, 30.423901, 27.179249>,  <27.029366, 30.383434, 27.095018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808304, 30.423901, 27.179249>,  <26.439869, 30.491343, 27.319632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808304, 30.423901, 27.179249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378017, 0.171302, 0.909812,
		-0.093280, -0.970684, 0.221520,
		0.921087, -0.168606, -0.350956,
		27.084629, 30.373320, 27.073961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814896, 30.280043, 27.884396>,  <26.439869, 30.491343, 27.319632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814896, 30.280043, 27.884396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124035, 30.344330, 27.638834>,  <27.309519, 30.382902, 27.491497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124035, 30.344330, 27.638834>,  <26.814896, 30.280043, 27.884396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124035, 30.344330, 27.638834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611440, 0.070339, 0.788159,
		0.169854, -0.984490, -0.043909,
		0.772846, 0.160720, -0.613904,
		27.355888, 30.392546, 27.454662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272940, 29.736019, 27.898706>,  <26.814896, 30.280043, 27.884396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272940, 29.736019, 27.898706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513674, 30.033993, 27.783560>,  <27.658115, 30.212776, 27.714472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513674, 30.033993, 27.783560>,  <27.272940, 29.736019, 27.898706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513674, 30.033993, 27.783560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581348, -0.161511, 0.797464,
		0.547564, -0.647293, -0.530269,
		0.601837, 0.744934, -0.287865,
		27.694225, 30.257473, 27.697201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938725, 29.525085, 28.044451>,  <27.272940, 29.736019, 27.898706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938725, 29.525085, 28.044451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986483, 29.919607, 27.998932>,  <28.015137, 30.156321, 27.971621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986483, 29.919607, 27.998932>,  <27.938725, 29.525085, 28.044451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986483, 29.919607, 27.998932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661713, 0.006399, 0.749730,
		0.740190, -0.164813, -0.651886,
		0.119394, 0.986304, -0.113795,
		28.022301, 30.215498, 27.964794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677851, 29.645613, 28.024729>,  <27.938725, 29.525085, 28.044451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677851, 29.645613, 28.024729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514999, 29.997805, 28.121889>,  <28.417290, 30.209120, 28.180185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514999, 29.997805, 28.121889>,  <28.677851, 29.645613, 28.024729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514999, 29.997805, 28.121889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669997, 0.107146, 0.734591,
		0.620767, 0.461816, -0.633541,
		-0.407127, 0.880480, 0.242903,
		28.392860, 30.261950, 28.194759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227022, 30.055946, 28.286844>,  <28.677851, 29.645613, 28.024729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227022, 30.055946, 28.286844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906616, 30.243559, 28.435644>,  <28.714373, 30.356127, 28.524923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906616, 30.243559, 28.435644>,  <29.227022, 30.055946, 28.286844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906616, 30.243559, 28.435644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496147, 0.172417, 0.850947,
		0.334981, 0.866189, -0.370817,
		-0.801016, 0.469031, 0.372000,
		28.666311, 30.384268, 28.547245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476824, 30.675783, 28.588152>,  <29.227022, 30.055946, 28.286844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476824, 30.675783, 28.588152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122526, 30.656591, 28.772827>,  <28.909948, 30.645077, 28.883633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122526, 30.656591, 28.772827>,  <29.476824, 30.675783, 28.588152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122526, 30.656591, 28.772827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438313, 0.240905, 0.865937,
		-0.152769, 0.969362, -0.192351,
		-0.885744, -0.047978, 0.461687,
		28.856802, 30.642199, 28.911333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387779, 31.294561, 29.008858>,  <29.476824, 30.675783, 28.588152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387779, 31.294561, 29.008858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122889, 31.040777, 29.168314>,  <28.963955, 30.888506, 29.263988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122889, 31.040777, 29.168314>,  <29.387779, 31.294561, 29.008858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122889, 31.040777, 29.168314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342841, 0.216504, 0.914104,
		-0.666272, 0.742013, 0.074145,
		-0.662225, -0.634462, 0.398643,
		28.924221, 30.850439, 29.287907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193819, 31.723410, 29.501379>,  <29.387779, 31.294561, 29.008858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193819, 31.723410, 29.501379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070816, 31.354855, 29.596445>,  <28.997015, 31.133722, 29.653484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070816, 31.354855, 29.596445>,  <29.193819, 31.723410, 29.501379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070816, 31.354855, 29.596445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167274, 0.193533, 0.966729,
		-0.936728, 0.337031, 0.094611,
		-0.307507, -0.921388, 0.237664,
		28.978563, 31.078438, 29.667744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678425, 31.756624, 30.058804>,  <29.193819, 31.723410, 29.501379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678425, 31.756624, 30.058804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819965, 31.382977, 30.077612>,  <28.904890, 31.158789, 30.088896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819965, 31.382977, 30.077612>,  <28.678425, 31.756624, 30.058804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819965, 31.382977, 30.077612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108200, 0.090818, 0.989972,
		-0.929023, -0.345213, 0.133208,
		0.353849, -0.934120, 0.047020,
		28.926121, 31.102741, 30.091719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531784, 31.624586, 30.698835>,  <28.678425, 31.756624, 30.058804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531784, 31.624586, 30.698835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809879, 31.343912, 30.636503>,  <28.976736, 31.175508, 30.599104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809879, 31.343912, 30.636503>,  <28.531784, 31.624586, 30.698835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809879, 31.343912, 30.636503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164473, -0.055746, 0.984805,
		-0.699708, -0.710305, 0.076651,
		0.695239, -0.701683, -0.155832,
		29.018452, 31.133408, 30.589754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344883, 31.114759, 31.082840>,  <28.531784, 31.624586, 30.698835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344883, 31.114759, 31.082840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736631, 31.060589, 31.022852>,  <28.971680, 31.028086, 30.986858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736631, 31.060589, 31.022852>,  <28.344883, 31.114759, 31.082840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736631, 31.060589, 31.022852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099477, -0.322889, 0.941195,
		-0.175886, -0.936698, -0.302756,
		0.979372, -0.135426, -0.149971,
		29.030443, 31.019960, 30.977861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535456, 30.642958, 31.424789>,  <28.344883, 31.114759, 31.082840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535456, 30.642958, 31.424789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903944, 30.789398, 31.372141>,  <29.125036, 30.877262, 31.340551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903944, 30.789398, 31.372141>,  <28.535456, 30.642958, 31.424789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903944, 30.789398, 31.372141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259249, -0.325414, 0.909338,
		0.290078, -0.871823, -0.394689,
		0.921219, 0.366101, -0.131624,
		29.180309, 30.899229, 31.332653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008650, 30.157703, 31.814901>,  <28.535456, 30.642958, 31.424789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008650, 30.157703, 31.814901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202803, 30.502373, 31.755682>,  <29.319294, 30.709175, 31.720150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202803, 30.502373, 31.755682>,  <29.008650, 30.157703, 31.814901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202803, 30.502373, 31.755682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125156, 0.099111, 0.987174,
		0.865297, -0.497687, -0.059737,
		0.485384, 0.861675, -0.148049,
		29.348417, 30.760876, 31.711267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594267, 30.116171, 32.185982>,  <29.008650, 30.157703, 31.814901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594267, 30.116171, 32.185982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535191, 30.509247, 32.141243>,  <29.499744, 30.745092, 32.114399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535191, 30.509247, 32.141243>,  <29.594267, 30.116171, 32.185982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535191, 30.509247, 32.141243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024458, 0.116682, 0.992868,
		0.988731, 0.143901, -0.041268,
		-0.147690, 0.982689, -0.111848,
		29.490883, 30.804054, 32.107689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025795, 30.447094, 32.636787>,  <29.594267, 30.116171, 32.185982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025795, 30.447094, 32.636787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776133, 30.752684, 32.571339>,  <29.626335, 30.936037, 32.532070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776133, 30.752684, 32.571339>,  <30.025795, 30.447094, 32.636787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776133, 30.752684, 32.571339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109874, 0.293173, 0.949725,
		0.773537, 0.574797, -0.266926,
		-0.624155, 0.763975, -0.163625,
		29.588886, 30.981876, 32.522251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351236, 30.925331, 32.891201>,  <30.025795, 30.447094, 32.636787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351236, 30.925331, 32.891201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978012, 31.069103, 32.885502>,  <29.754078, 31.155367, 32.882084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978012, 31.069103, 32.885502>,  <30.351236, 30.925331, 32.891201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978012, 31.069103, 32.885502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125383, 0.362099, 0.923669,
		0.337156, 0.860054, -0.382928,
		-0.933062, 0.359433, -0.014248,
		29.698093, 31.176933, 32.881226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368364, 31.581005, 33.088390>,  <30.351236, 30.925331, 32.891201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368364, 31.581005, 33.088390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983412, 31.497185, 33.157570>,  <29.752439, 31.446892, 33.199078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983412, 31.497185, 33.157570>,  <30.368364, 31.581005, 33.088390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983412, 31.497185, 33.157570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096298, 0.332141, 0.938301,
		-0.254065, 0.919658, -0.299467,
		-0.962381, -0.209552, 0.172947,
		29.694698, 31.434319, 33.209454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951399, 32.194523, 33.297329>,  <30.368364, 31.581005, 33.088390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951399, 32.194523, 33.297329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751715, 31.879253, 33.441311>,  <29.631905, 31.690092, 33.527699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751715, 31.879253, 33.441311>,  <29.951399, 32.194523, 33.297329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751715, 31.879253, 33.441311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053906, 0.386366, 0.920769,
		-0.864801, 0.479063, -0.150391,
		-0.499213, -0.788175, 0.359954,
		29.601952, 31.642801, 33.549297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701735, 32.526192, 33.775696>,  <29.951399, 32.194523, 33.297329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701735, 32.526192, 33.775696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631245, 32.142590, 33.864475>,  <29.588951, 31.912430, 33.917744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631245, 32.142590, 33.864475>,  <29.701735, 32.526192, 33.775696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631245, 32.142590, 33.864475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030261, 0.230647, 0.972567,
		-0.983885, 0.164674, -0.069666,
		-0.176225, -0.959002, 0.221947,
		29.578377, 31.854889, 33.931061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082870, 32.577103, 34.222198>,  <29.701735, 32.526192, 33.775696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082870, 32.577103, 34.222198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278898, 32.234566, 34.287315>,  <29.396515, 32.029041, 34.326385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278898, 32.234566, 34.287315>,  <29.082870, 32.577103, 34.222198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278898, 32.234566, 34.287315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039973, 0.208639, 0.977175,
		-0.870766, -0.472376, 0.136479,
		0.490069, -0.856347, 0.162793,
		29.425919, 31.977661, 34.336155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836639, 32.361992, 34.852703>,  <29.082870, 32.577103, 34.222198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836639, 32.361992, 34.852703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168003, 32.138962, 34.831356>,  <29.366821, 32.005142, 34.818546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168003, 32.138962, 34.831356>,  <28.836639, 32.361992, 34.852703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168003, 32.138962, 34.831356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132828, 0.102988, 0.985774,
		-0.544149, -0.823711, 0.159378,
		0.828407, -0.557578, -0.053371,
		29.416525, 31.971689, 34.815346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770931, 31.837084, 35.416164>,  <28.836639, 32.361992, 34.852703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770931, 31.837084, 35.416164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160881, 31.847750, 35.327702>,  <29.394852, 31.854149, 35.274624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160881, 31.847750, 35.327702>,  <28.770931, 31.837084, 35.416164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160881, 31.847750, 35.327702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219863, 0.044256, 0.974526,
		0.035747, -0.998665, 0.037287,
		0.974876, 0.026638, -0.221151,
		29.453344, 31.855749, 35.261356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075644, 31.422014, 35.914661>,  <28.770931, 31.837084, 35.416164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075644, 31.422014, 35.914661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383692, 31.650427, 35.800934>,  <29.568521, 31.787476, 35.732697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383692, 31.650427, 35.800934>,  <29.075644, 31.422014, 35.914661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383692, 31.650427, 35.800934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138999, 0.284778, 0.948462,
		0.622571, -0.769950, 0.139940,
		0.770120, 0.571033, -0.284317,
		29.614729, 31.821737, 35.715637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544498, 31.202984, 36.397343>,  <29.075644, 31.422014, 35.914661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544498, 31.202984, 36.397343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653597, 31.557343, 36.247250>,  <29.719055, 31.769958, 36.157196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653597, 31.557343, 36.247250>,  <29.544498, 31.202984, 36.397343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653597, 31.557343, 36.247250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013748, 0.393566, 0.919193,
		0.961988, -0.245546, 0.119522,
		0.272745, 0.885896, -0.375230,
		29.735420, 31.823111, 36.134682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205177, 31.385506, 36.754364>,  <29.544498, 31.202984, 36.397343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205177, 31.385506, 36.754364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081114, 31.738420, 36.612732>,  <30.006676, 31.950169, 36.527752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081114, 31.738420, 36.612732>,  <30.205177, 31.385506, 36.754364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081114, 31.738420, 36.612732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065719, 0.391454, 0.917848,
		0.948410, 0.261410, -0.179396,
		-0.310160, 0.882286, -0.354079,
		29.988066, 32.003105, 36.506508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884960, 31.691172, 36.915325>,  <30.205177, 31.385506, 36.754364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884960, 31.691172, 36.915325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939091, 31.614321, 36.526527>,  <30.971569, 31.568211, 36.293247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939091, 31.614321, 36.526527>,  <30.884960, 31.691172, 36.915325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939091, 31.614321, 36.526527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254002, 0.954962, -0.153399,
		0.957690, -0.226130, 0.178032,
		0.135325, -0.192129, -0.971995,
		30.979689, 31.556683, 36.234928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546503, 31.949421, 36.702385>,  <30.884960, 31.691172, 36.915325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546503, 31.949421, 36.702385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293283, 31.912632, 36.394932>,  <31.141352, 31.890558, 36.210461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293283, 31.912632, 36.394932>,  <31.546503, 31.949421, 36.702385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293283, 31.912632, 36.394932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269427, 0.904660, -0.330150,
		0.725712, -0.416091, -0.547915,
		-0.633049, -0.091971, -0.768629,
		31.103369, 31.885040, 36.164345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932055, 31.719406, 36.081867>,  <31.546503, 31.949421, 36.702385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932055, 31.719406, 36.081867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609341, 31.952785, 36.044590>,  <31.415712, 32.092812, 36.022224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609341, 31.952785, 36.044590>,  <31.932055, 31.719406, 36.081867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609341, 31.952785, 36.044590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589594, 0.784743, -0.191200,
		-0.038422, -0.209204, -0.977117,
		-0.806786, 0.583448, -0.093195,
		31.367306, 32.127819, 36.016632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119095, 32.172401, 35.490620>,  <31.932055, 31.719406, 36.081867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119095, 32.172401, 35.490620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842476, 32.323128, 35.737125>,  <31.676506, 32.413563, 35.885029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842476, 32.323128, 35.737125>,  <32.119095, 32.172401, 35.490620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842476, 32.323128, 35.737125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472354, 0.881364, -0.008860,
		-0.546488, 0.284966, -0.787493,
		-0.691543, 0.376818, 0.616260,
		31.635014, 32.436172, 35.922005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843761, 32.723866, 35.072655>,  <32.119095, 32.172401, 35.490620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843761, 32.723866, 35.072655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826797, 32.729515, 35.472256>,  <31.816620, 32.732903, 35.712017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826797, 32.729515, 35.472256>,  <31.843761, 32.723866, 35.072655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826797, 32.729515, 35.472256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337851, 0.941199, 0.001038,
		-0.940244, 0.337557, -0.044685,
		-0.042407, 0.014121, 0.999000,
		31.814075, 32.733753, 35.771957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639938, 33.468796, 35.278694>,  <31.843761, 32.723866, 35.072655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639938, 33.468796, 35.278694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838123, 33.243103, 35.542862>,  <31.957035, 33.107689, 35.701363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838123, 33.243103, 35.542862>,  <31.639938, 33.468796, 35.278694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838123, 33.243103, 35.542862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629737, 0.757001, 0.174301,
		-0.598286, 0.329533, 0.730385,
		0.495464, -0.564232, 0.660422,
		31.986763, 33.073833, 35.740990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816898, 33.992340, 35.767178>,  <31.639938, 33.468796, 35.278694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816898, 33.992340, 35.767178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048786, 33.671299, 35.823399>,  <32.187920, 33.478676, 35.857132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048786, 33.671299, 35.823399>,  <31.816898, 33.992340, 35.767178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048786, 33.671299, 35.823399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683065, 0.572741, 0.453200,
		-0.444239, -0.166723, 0.880259,
		0.579719, -0.802603, 0.140551,
		32.222702, 33.430519, 35.865562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033047, 33.956375, 36.425697>,  <31.816898, 33.992340, 35.767178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033047, 33.956375, 36.425697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310665, 33.742191, 36.233204>,  <32.477238, 33.613682, 36.117706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310665, 33.742191, 36.233204>,  <32.033047, 33.956375, 36.425697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310665, 33.742191, 36.233204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706577, 0.378493, 0.597907,
		-0.138009, -0.755004, 0.641033,
		0.694048, -0.535456, -0.481233,
		32.518879, 33.581554, 36.088833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404697, 33.661034, 36.960831>,  <32.033047, 33.956375, 36.425697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404697, 33.661034, 36.960831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601646, 33.716621, 36.617146>,  <32.719818, 33.749973, 36.410934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601646, 33.716621, 36.617146>,  <32.404697, 33.661034, 36.960831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601646, 33.716621, 36.617146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749041, 0.435112, 0.499615,
		0.443293, -0.889585, 0.110135,
		0.492371, 0.138980, -0.859217,
		32.749359, 33.758312, 36.359379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102432, 33.476315, 36.991600>,  <32.404697, 33.661034, 36.960831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102432, 33.476315, 36.991600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122597, 33.748505, 36.699184>,  <33.134697, 33.911819, 36.523735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122597, 33.748505, 36.699184>,  <33.102432, 33.476315, 36.991600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122597, 33.748505, 36.699184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798851, 0.411836, 0.438439,
		0.599413, -0.606094, -0.522832,
		0.050415, 0.680471, -0.731039,
		33.137722, 33.952644, 36.479874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935081, 34.157310, 37.006035>,  <33.102432, 33.476315, 36.991600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935081, 34.157310, 37.006035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078346, 34.402313, 37.287899>,  <33.164307, 34.549316, 37.457020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078346, 34.402313, 37.287899>,  <32.935081, 34.157310, 37.006035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078346, 34.402313, 37.287899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219317, -0.678421, 0.701174,
		0.907534, -0.405681, -0.108652,
		0.358165, 0.612510, 0.704663,
		33.185795, 34.586067, 37.499298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583752, 33.951431, 37.476883>,  <32.935081, 34.157310, 37.006035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583752, 33.951431, 37.476883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298534, 34.161133, 37.663097>,  <33.127403, 34.286953, 37.774826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298534, 34.161133, 37.663097>,  <33.583752, 33.951431, 37.476883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298534, 34.161133, 37.663097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119466, -0.745130, 0.656132,
		0.690869, 0.412233, 0.593939,
		-0.713041, 0.524257, 0.465540,
		33.084621, 34.318409, 37.802761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642658, 34.376671, 37.976902>,  <33.583752, 33.951431, 37.476883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642658, 34.376671, 37.976902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986176, 34.401901, 38.180271>,  <34.192284, 34.417042, 38.302292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986176, 34.401901, 38.180271>,  <33.642658, 34.376671, 37.976902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986176, 34.401901, 38.180271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502500, -0.297138, -0.811913,
		0.099858, 0.952749, -0.286877,
		0.858791, 0.063079, 0.508428,
		34.243813, 34.420826, 38.332798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171181, 34.674644, 37.488331>,  <33.642658, 34.376671, 37.976902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171181, 34.674644, 37.488331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331638, 34.470924, 37.792885>,  <34.427914, 34.348694, 37.975616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331638, 34.470924, 37.792885>,  <34.171181, 34.674644, 37.488331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331638, 34.470924, 37.792885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782094, -0.242298, -0.574126,
		0.476882, 0.825778, 0.301122,
		0.401139, -0.509296, 0.761383,
		34.451981, 34.318134, 38.021301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159958, 35.289349, 36.908031>,  <34.171181, 34.674644, 37.488331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159958, 35.289349, 36.908031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452122, 35.163620, 37.150581>,  <34.627422, 35.088181, 37.296112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452122, 35.163620, 37.150581>,  <34.159958, 35.289349, 36.908031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452122, 35.163620, 37.150581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647898, 0.037891, -0.760784,
		0.216157, 0.948559, 0.231327,
		0.730413, -0.314325, 0.606379,
		34.671246, 35.069321, 37.332497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801105, 35.176888, 36.189278>,  <34.159958, 35.289349, 36.908031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801105, 35.176888, 36.189278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738869, 35.533337, 36.018780>,  <33.701527, 35.747208, 35.916481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738869, 35.533337, 36.018780>,  <33.801105, 35.176888, 36.189278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738869, 35.533337, 36.018780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986463, 0.162793, -0.019744,
		0.051796, -0.423550, -0.904391,
		-0.155591, 0.891125, -0.426248,
		33.692192, 35.800674, 35.890903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228638, 35.182262, 35.572628>,  <33.801105, 35.176888, 36.189278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228638, 35.182262, 35.572628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146961, 35.551460, 35.703098>,  <34.097958, 35.772980, 35.781380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146961, 35.551460, 35.703098>,  <34.228638, 35.182262, 35.572628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146961, 35.551460, 35.703098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970321, 0.234923, -0.057343,
		-0.129552, 0.304782, -0.943570,
		-0.204189, 0.922994, 0.326172,
		34.085705, 35.828358, 35.800949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594700, 35.540348, 35.156822>,  <34.228638, 35.182262, 35.572628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594700, 35.540348, 35.156822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552818, 35.784092, 35.471203>,  <34.527687, 35.930336, 35.659832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552818, 35.784092, 35.471203>,  <34.594700, 35.540348, 35.156822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552818, 35.784092, 35.471203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976214, 0.213844, -0.035741,
		-0.189850, 0.763516, -0.617252,
		-0.104707, 0.609355, 0.785954,
		34.521408, 35.966900, 35.706989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856262, 36.208416, 35.044502>,  <34.594700, 35.540348, 35.156822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856262, 36.208416, 35.044502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998505, 36.540218, 34.872242>,  <35.083851, 36.739300, 34.768887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998505, 36.540218, 34.872242>,  <34.856262, 36.208416, 35.044502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998505, 36.540218, 34.872242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486073, -0.229414, -0.843269,
		-0.798296, 0.509198, 0.321622,
		0.355606, 0.829510, -0.430647,
		35.105186, 36.789070, 34.743050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569366, 36.139400, 35.423889>,  <34.856262, 36.208416, 35.044502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569366, 36.139400, 35.423889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366150, 36.342018, 35.702549>,  <35.244221, 36.463589, 35.869743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366150, 36.342018, 35.702549>,  <35.569366, 36.139400, 35.423889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366150, 36.342018, 35.702549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802819, -0.014551, 0.596046,
		0.312058, 0.862094, -0.399267,
		-0.508038, 0.506540, 0.696646,
		35.213737, 36.493980, 35.911541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966660, 36.747429, 35.595070>,  <35.569366, 36.139400, 35.423889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966660, 36.747429, 35.595070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738777, 36.659637, 35.911869>,  <35.602047, 36.606960, 36.101948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738777, 36.659637, 35.911869>,  <35.966660, 36.747429, 35.595070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738777, 36.659637, 35.911869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777170, 0.169540, 0.606022,
		-0.267287, 0.960773, 0.073987,
		-0.569706, -0.219482, 0.792000,
		35.567867, 36.593792, 36.149467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884476, 37.323883, 36.143433>,  <35.966660, 36.747429, 35.595070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884476, 37.323883, 36.143433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838825, 36.962818, 36.309410>,  <35.811436, 36.746178, 36.408997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838825, 36.962818, 36.309410>,  <35.884476, 37.323883, 36.143433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838825, 36.962818, 36.309410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765517, 0.186311, 0.615850,
		-0.633212, 0.387930, 0.669740,
		-0.114127, -0.902662, 0.414942,
		35.804588, 36.692020, 36.433891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172005, 37.503872, 36.686634>,  <35.884476, 37.323883, 36.143433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172005, 37.503872, 36.686634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164555, 37.104118, 36.698490>,  <36.160084, 36.864265, 36.705605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164555, 37.104118, 36.698490>,  <36.172005, 37.503872, 36.686634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164555, 37.104118, 36.698490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733283, 0.006498, 0.679892,
		-0.679668, 0.034403, 0.732713,
		-0.018629, -0.999387, 0.029643,
		36.158966, 36.804302, 36.707382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051865, 37.195915, 37.409550>,  <36.172005, 37.503872, 36.686634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051865, 37.195915, 37.409550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272766, 36.953926, 37.180107>,  <36.405308, 36.808731, 37.042442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272766, 36.953926, 37.180107>,  <36.051865, 37.195915, 37.409550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272766, 36.953926, 37.180107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699697, -0.037723, 0.713443,
		-0.453253, -0.795350, 0.402467,
		0.552255, -0.604975, -0.573603,
		36.438442, 36.772434, 37.008026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599880, 37.137238, 37.828407>,  <36.051865, 37.195915, 37.409550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599880, 37.137238, 37.828407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709427, 36.898575, 37.526680>,  <36.775154, 36.755379, 37.345642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709427, 36.898575, 37.526680>,  <36.599880, 37.137238, 37.828407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709427, 36.898575, 37.526680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893710, -0.131916, 0.428814,
		-0.355362, -0.791579, 0.497112,
		0.273863, -0.596658, -0.754320,
		36.791584, 36.719578, 37.300385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506149, 36.374172, 37.710812>,  <36.599880, 37.137238, 37.828407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506149, 36.374172, 37.710812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620140, 36.036777, 37.528683>,  <36.688534, 35.834339, 37.419407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620140, 36.036777, 37.528683>,  <36.506149, 36.374172, 37.710812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620140, 36.036777, 37.528683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955115, 0.209788, 0.209151,
		-0.080896, -0.494486, 0.865413,
		0.284975, -0.843488, -0.455320,
		36.705631, 35.783730, 37.392086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055378, 35.931046, 38.184498>,  <36.506149, 36.374172, 37.710812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055378, 35.931046, 38.184498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095184, 35.893242, 37.788284>,  <37.119068, 35.870560, 37.550556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095184, 35.893242, 37.788284>,  <37.055378, 35.931046, 38.184498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095184, 35.893242, 37.788284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967876, 0.240192, 0.074319,
		0.230895, -0.966113, 0.115380,
		0.099514, -0.094513, -0.990537,
		37.125038, 35.864887, 37.491123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572750, 35.486217, 37.994133>,  <37.055378, 35.931046, 38.184498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572750, 35.486217, 37.994133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229912, 35.446869, 38.196404>,  <37.024208, 35.423260, 38.317768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229912, 35.446869, 38.196404>,  <37.572750, 35.486217, 37.994133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229912, 35.446869, 38.196404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297381, 0.896014, -0.329732,
		-0.420661, -0.432991, -0.797222,
		-0.857093, -0.098373, 0.505681,
		36.972782, 35.417358, 38.348106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994648, 34.951408, 38.361282>,  <37.572750, 35.486217, 37.994133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994648, 34.951408, 38.361282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071236, 34.963692, 37.968876>,  <38.117188, 34.971062, 37.733433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071236, 34.963692, 37.968876>,  <37.994648, 34.951408, 38.361282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071236, 34.963692, 37.968876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973004, 0.125272, 0.193828,
		0.128846, -0.991647, -0.005895,
		0.191471, 0.030710, -0.981017,
		38.128677, 34.972904, 37.674572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730083, 34.651035, 38.256088>,  <37.994648, 34.951408, 38.361282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730083, 34.651035, 38.256088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633919, 34.936543, 37.992954>,  <38.576221, 35.107845, 37.835075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633919, 34.936543, 37.992954>,  <38.730083, 34.651035, 38.256088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633919, 34.936543, 37.992954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934150, 0.354280, 0.043008,
		0.263754, -0.604173, -0.751937,
		-0.240412, 0.713765, -0.657831,
		38.561794, 35.150673, 37.795605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160179, 34.740929, 37.539429>,  <38.730083, 34.651035, 38.256088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160179, 34.740929, 37.539429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030453, 35.101933, 37.652775>,  <38.952618, 35.318535, 37.720783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030453, 35.101933, 37.652775>,  <39.160179, 34.740929, 37.539429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030453, 35.101933, 37.652775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945944, 0.308473, 0.100172,
		0.002994, 0.300538, -0.953765,
		-0.324316, 0.902508, 0.283369,
		38.933159, 35.372684, 37.737785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433640, 35.216171, 37.075306>,  <39.160179, 34.740929, 37.539429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433640, 35.216171, 37.075306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338306, 35.440331, 37.392582>,  <39.281109, 35.574825, 37.582947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338306, 35.440331, 37.392582>,  <39.433640, 35.216171, 37.075306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338306, 35.440331, 37.392582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967408, 0.208938, 0.143059,
		-0.085558, 0.801436, -0.591929,
		-0.238329, 0.560398, 0.793192,
		39.266808, 35.608448, 37.630539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754650, 35.842609, 36.965279>,  <39.433640, 35.216171, 37.075306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754650, 35.842609, 36.965279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682613, 35.848808, 37.358688>,  <39.639393, 35.852528, 37.594734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682613, 35.848808, 37.358688>,  <39.754650, 35.842609, 36.965279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682613, 35.848808, 37.358688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891731, 0.424611, 0.156593,
		-0.415190, 0.905243, -0.090286,
		-0.180092, 0.015495, 0.983528,
		39.628586, 35.853458, 37.653748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815540, 36.634022, 37.240887>,  <39.754650, 35.842609, 36.965279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815540, 36.634022, 37.240887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878902, 36.351574, 37.516945>,  <39.916920, 36.182106, 37.682579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878902, 36.351574, 37.516945>,  <39.815540, 36.634022, 37.240887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878902, 36.351574, 37.516945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937051, 0.327809, 0.120318,
		-0.311196, 0.627646, 0.713595,
		0.158405, -0.706117, 0.690149,
		39.926426, 36.139740, 37.723991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037880, 36.975510, 37.858173>,  <39.815540, 36.634022, 37.240887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037880, 36.975510, 37.858173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202042, 36.611107, 37.842018>,  <40.300541, 36.392464, 37.832325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202042, 36.611107, 37.842018>,  <40.037880, 36.975510, 37.858173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202042, 36.611107, 37.842018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895759, 0.394448, 0.205004,
		-0.170828, -0.120317, 0.977927,
		0.410407, -0.911008, -0.040393,
		40.325165, 36.337803, 37.829899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497974, 36.905586, 38.394634>,  <40.037880, 36.975510, 37.858173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497974, 36.905586, 38.394634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612640, 36.681812, 38.083542>,  <40.681438, 36.547546, 37.896889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612640, 36.681812, 38.083542>,  <40.497974, 36.905586, 38.394634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612640, 36.681812, 38.083542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931198, 0.353495, 0.088953,
		0.225159, -0.749716, 0.622277,
		0.286662, -0.559434, -0.777726,
		40.698639, 36.513981, 37.850224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189945, 36.480457, 38.563881>,  <40.497974, 36.905586, 38.394634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189945, 36.480457, 38.563881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138668, 36.542671, 38.172089>,  <41.107903, 36.579998, 37.937016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138668, 36.542671, 38.172089>,  <41.189945, 36.480457, 38.563881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138668, 36.542671, 38.172089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874571, 0.483429, -0.037698,
		0.467644, -0.861455, -0.198001,
		-0.128195, 0.155536, -0.979477,
		41.100208, 36.589333, 37.878246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728722, 36.173740, 38.146790>,  <41.189945, 36.480457, 38.563881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728722, 36.173740, 38.146790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557129, 36.506237, 38.005356>,  <41.454174, 36.705734, 37.920498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557129, 36.506237, 38.005356>,  <41.728722, 36.173740, 38.146790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557129, 36.506237, 38.005356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887933, 0.459954, 0.004040,
		0.165989, -0.312222, -0.935396,
		-0.428978, 0.831240, -0.353580,
		41.428436, 36.755608, 37.899281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195370, 36.757107, 37.887272>,  <41.728722, 36.173740, 38.146790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195370, 36.757107, 37.887272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477322, 36.474434, 37.911781>,  <42.646492, 36.304832, 37.926487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477322, 36.474434, 37.911781>,  <42.195370, 36.757107, 37.887272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477322, 36.474434, 37.911781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027469, -0.059119, -0.997873,
		0.708797, 0.705062, -0.022260,
		0.704878, -0.706678, 0.061271,
		42.688786, 36.262432, 37.930164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698044, 36.893272, 37.409904>,  <42.195370, 36.757107, 37.887272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698044, 36.893272, 37.409904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653942, 36.500412, 37.470871>,  <42.627483, 36.264698, 37.507450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653942, 36.500412, 37.470871>,  <42.698044, 36.893272, 37.409904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653942, 36.500412, 37.470871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098607, -0.163407, -0.981618,
		0.989000, -0.093194, 0.114863,
		-0.110251, -0.982147, 0.152420,
		42.620869, 36.205769, 37.516598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501419, 37.542263, 37.703358>,  <42.698044, 36.893272, 37.409904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501419, 37.542263, 37.703358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654827, 37.373436, 38.031937>,  <42.746872, 37.272141, 38.229084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654827, 37.373436, 38.031937>,  <42.501419, 37.542263, 37.703358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654827, 37.373436, 38.031937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915276, 0.055032, -0.399050,
		0.123219, 0.904894, 0.407411,
		0.383518, -0.422064, 0.821447,
		42.769882, 37.246819, 38.278370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176727, 37.825397, 37.701344>,  <42.501419, 37.542263, 37.703358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176727, 37.825397, 37.701344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145184, 37.515671, 37.952488>,  <43.126259, 37.329834, 38.103176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145184, 37.515671, 37.952488>,  <43.176727, 37.825397, 37.701344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145184, 37.515671, 37.952488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961197, -0.226072, -0.158087,
		0.264352, 0.591032, 0.762102,
		-0.078856, -0.774321, 0.627861,
		43.121529, 37.283375, 38.140846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138821, 37.588348, 36.971195>,  <43.176727, 37.825397, 37.701344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138821, 37.588348, 36.971195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136219, 37.244869, 36.766216>,  <43.134659, 37.038784, 36.643230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136219, 37.244869, 36.766216>,  <43.138821, 37.588348, 36.971195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136219, 37.244869, 36.766216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998137, -0.036664, 0.048762,
		-0.060660, -0.511176, 0.857333,
		-0.006507, -0.858694, -0.512448,
		43.134266, 36.987263, 36.612480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682415, 38.163074, 36.714405>,  <43.138821, 37.588348, 36.971195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682415, 38.163074, 36.714405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666191, 38.561035, 36.677479>,  <43.656456, 38.799812, 36.655323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666191, 38.561035, 36.677479>,  <43.682415, 38.163074, 36.714405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666191, 38.561035, 36.677479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737251, -0.092158, -0.669304,
		-0.674400, 0.040911, 0.737232,
		-0.040561, 0.994903, -0.092313,
		43.654022, 38.859505, 36.649784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944405, 38.454895, 36.662682>,  <43.682415, 38.163074, 36.714405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944405, 38.454895, 36.662682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234280, 38.664955, 36.484222>,  <43.408203, 38.790993, 36.377148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234280, 38.664955, 36.484222>,  <42.944405, 38.454895, 36.662682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234280, 38.664955, 36.484222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544092, 0.038793, -0.838128,
		-0.422836, 0.850125, 0.313843,
		0.724688, 0.525150, -0.446144,
		43.451687, 38.822498, 36.350380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781155, 39.054111, 36.298813>,  <42.944405, 38.454895, 36.662682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781155, 39.054111, 36.298813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113434, 38.933018, 36.111927>,  <43.312801, 38.860363, 35.999794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113434, 38.933018, 36.111927>,  <42.781155, 39.054111, 36.298813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113434, 38.933018, 36.111927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455896, 0.111767, -0.882988,
		0.319529, 0.946500, -0.045170,
		0.830699, -0.302733, -0.467218,
		43.362644, 38.842197, 35.971760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001232, 39.553253, 35.902279>,  <42.781155, 39.054111, 36.298813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001232, 39.553253, 35.902279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097244, 39.191872, 35.760204>,  <43.154850, 38.975044, 35.674961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097244, 39.191872, 35.760204>,  <43.001232, 39.553253, 35.902279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097244, 39.191872, 35.760204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456055, 0.218046, -0.862826,
		0.856971, 0.369086, -0.359688,
		0.240029, -0.903455, -0.355183,
		43.169254, 38.920834, 35.653648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194218, 39.603985, 35.207794>,  <43.001232, 39.553253, 35.902279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194218, 39.603985, 35.207794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066559, 39.228043, 35.256474>,  <42.989964, 39.002476, 35.285679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066559, 39.228043, 35.256474>,  <43.194218, 39.603985, 35.207794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066559, 39.228043, 35.256474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536384, 0.073271, -0.840787,
		0.781305, -0.333610, -0.527510,
		-0.319146, -0.939859, 0.121696,
		42.970814, 38.946083, 35.292984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369667, 39.138645, 34.655323>,  <43.194218, 39.603985, 35.207794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369667, 39.138645, 34.655323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029007, 39.025497, 34.831810>,  <42.824612, 38.957607, 34.937702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029007, 39.025497, 34.831810>,  <43.369667, 39.138645, 34.655323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029007, 39.025497, 34.831810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502961, 0.204362, -0.839801,
		0.147379, -0.937136, -0.316314,
		-0.851651, -0.282863, 0.441224,
		42.773510, 38.940636, 34.964176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994511, 38.798237, 34.026394>,  <43.369667, 39.138645, 34.655323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994511, 38.798237, 34.026394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770210, 38.949932, 34.320808>,  <42.635632, 39.040947, 34.497456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770210, 38.949932, 34.320808>,  <42.994511, 38.798237, 34.026394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770210, 38.949932, 34.320808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474483, 0.581322, -0.661007,
		-0.678549, -0.719893, -0.146034,
		-0.560747, 0.379235, 0.736032,
		42.601986, 39.063702, 34.541618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945625, 38.048222, 33.814861>,  <42.994511, 38.798237, 34.026394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945625, 38.048222, 33.814861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677517, 37.829414, 34.015461>,  <42.516651, 37.698128, 34.135818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677517, 37.829414, 34.015461>,  <42.945625, 38.048222, 33.814861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677517, 37.829414, 34.015461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685106, 0.196373, -0.701475,
		0.285241, -0.813760, -0.506391,
		-0.670274, -0.547021, 0.501498,
		42.476437, 37.665306, 34.165909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668484, 37.728497, 33.571846>,  <42.945625, 38.048222, 33.814861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668484, 37.728497, 33.571846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930378, 37.460548, 33.431786>,  <44.087513, 37.299782, 33.347748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930378, 37.460548, 33.431786>,  <43.668484, 37.728497, 33.571846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930378, 37.460548, 33.431786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754901, 0.602844, 0.258270,
		0.038080, -0.433427, 0.900384,
		0.654732, -0.669866, -0.350151,
		44.126797, 37.259590, 33.326740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163605, 37.979053, 33.876854>,  <43.668484, 37.728497, 33.571846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163605, 37.979053, 33.876854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344978, 37.690022, 33.668137>,  <44.453804, 37.516602, 33.542908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344978, 37.690022, 33.668137>,  <44.163605, 37.979053, 33.876854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344978, 37.690022, 33.668137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891287, 0.367236, 0.265978,
		-0.000570, -0.585672, 0.810548,
		0.453438, -0.722583, -0.521793,
		44.481010, 37.473248, 33.511600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652500, 37.496109, 34.318657>,  <44.163605, 37.979053, 33.876854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652500, 37.496109, 34.318657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757137, 37.513096, 33.932961>,  <44.819920, 37.523289, 33.701542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757137, 37.513096, 33.932961>,  <44.652500, 37.496109, 34.318657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757137, 37.513096, 33.932961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936074, 0.232322, 0.264183,
		0.235231, -0.971712, 0.021033,
		0.261596, 0.042456, -0.964243,
		44.835613, 37.525837, 33.643688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268639, 37.044670, 34.031673>,  <44.652500, 37.496109, 34.318657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268639, 37.044670, 34.031673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258739, 37.393349, 33.835903>,  <45.252800, 37.602554, 33.718441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258739, 37.393349, 33.835903>,  <45.268639, 37.044670, 34.031673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258739, 37.393349, 33.835903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961762, 0.154342, 0.226258,
		0.272766, -0.465107, -0.842184,
		-0.024751, 0.871696, -0.489422,
		45.251316, 37.654858, 33.689075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736950, 36.988983, 33.635006>,  <45.268639, 37.044670, 34.031673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736950, 36.988983, 33.635006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677864, 37.384441, 33.646042>,  <45.642410, 37.621716, 33.652664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677864, 37.384441, 33.646042>,  <45.736950, 36.988983, 33.635006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677864, 37.384441, 33.646042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983670, 0.143961, 0.108024,
		0.102825, 0.043097, -0.993765,
		-0.147719, 0.988644, 0.027591,
		45.633549, 37.681034, 33.654320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302387, 37.316380, 33.425159>,  <45.736950, 36.988983, 33.635006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302387, 37.316380, 33.425159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117741, 37.576363, 33.666645>,  <46.006954, 37.732353, 33.811535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117741, 37.576363, 33.666645>,  <46.302387, 37.316380, 33.425159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117741, 37.576363, 33.666645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885360, 0.295204, 0.359155,
		0.055218, 0.700292, -0.711718,
		-0.461616, 0.649958, 0.603710,
		45.979256, 37.771351, 33.847759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422874, 38.046680, 33.245483>,  <46.302387, 37.316380, 33.425159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422874, 38.046680, 33.245483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375622, 37.953167, 33.631519>,  <46.347271, 37.897060, 33.863140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375622, 37.953167, 33.631519>,  <46.422874, 38.046680, 33.245483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375622, 37.953167, 33.631519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953960, 0.243107, 0.175665,
		-0.275687, 0.941406, 0.194299,
		-0.118136, -0.233782, 0.965085,
		46.340179, 37.883034, 33.921043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534428, 38.601910, 33.711548>,  <46.422874, 38.046680, 33.245483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534428, 38.601910, 33.711548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.640034, 38.252682, 33.875523>,  <46.703396, 38.043144, 33.973907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.640034, 38.252682, 33.875523>,  <46.534428, 38.601910, 33.711548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.640034, 38.252682, 33.875523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922245, 0.352957, 0.157751,
		-0.282417, 0.336413, 0.898369,
		0.264016, -0.873068, 0.409936,
		46.719238, 37.990761, 33.998505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656544, 38.645050, 34.514076>,  <46.534428, 38.601910, 33.711548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656544, 38.645050, 34.514076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.862793, 38.357872, 34.327019>,  <46.986542, 38.185566, 34.214783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.862793, 38.357872, 34.327019>,  <46.656544, 38.645050, 34.514076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.862793, 38.357872, 34.327019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853289, 0.380801, 0.356213,
		-0.077661, -0.582708, 0.808962,
		0.515622, -0.717943, -0.467645,
		47.017479, 38.142490, 34.186726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.044487, 38.264954, 35.033943>,  <46.656544, 38.645050, 34.514076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.044487, 38.264954, 35.033943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192951, 38.246307, 34.662983>,  <47.282028, 38.235119, 34.440407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192951, 38.246307, 34.662983>,  <47.044487, 38.264954, 35.033943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192951, 38.246307, 34.662983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919917, 0.154474, 0.360403,
		0.126458, -0.986897, 0.100217,
		0.371162, -0.046616, -0.927398,
		47.304298, 38.232323, 34.384762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316658, 37.601944, 35.003197>,  <47.044487, 38.264954, 35.033943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316658, 37.601944, 35.003197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229961, 37.286362, 35.233177>,  <47.177944, 37.097012, 35.371166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229961, 37.286362, 35.233177>,  <47.316658, 37.601944, 35.003197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.229961, 37.286362, 35.233177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705113, -0.533839, -0.466724,
		0.675157, 0.304247, 0.672010,
		-0.216746, -0.788955, 0.574954,
		47.164936, 37.049675, 35.405663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.959438, 37.259220, 35.245865>,  <47.316658, 37.601944, 35.003197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.959438, 37.259220, 35.245865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661282, 36.993256, 35.264946>,  <47.482388, 36.833675, 35.276394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661282, 36.993256, 35.264946>,  <47.959438, 37.259220, 35.245865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.661282, 36.993256, 35.264946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592079, -0.693224, -0.410952,
		0.306319, -0.278076, 0.910408,
		-0.745393, -0.664916, 0.047704,
		47.437664, 36.793781, 35.279259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.031345, 36.600643, 35.737038>,  <47.959438, 37.259220, 35.245865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.031345, 36.600643, 35.737038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.819130, 36.549450, 35.401859>,  <47.691799, 36.518734, 35.200752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.819130, 36.549450, 35.401859>,  <48.031345, 36.600643, 35.737038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.819130, 36.549450, 35.401859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732918, -0.565895, -0.377617,
		-0.425860, -0.814484, 0.394029,
		-0.530542, -0.127979, -0.837942,
		47.659969, 36.511055, 35.150478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.062855, 36.172577, 35.170681>,  <48.031345, 36.600643, 35.737038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.062855, 36.172577, 35.170681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696579, 36.124889, 35.324203>,  <47.476814, 36.096279, 35.416317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696579, 36.124889, 35.324203>,  <48.062855, 36.172577, 35.170681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.696579, 36.124889, 35.324203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373802, 0.603399, -0.704402,
		-0.147612, -0.788478, -0.597087,
		-0.915687, -0.119214, 0.383803,
		47.421871, 36.089127, 35.439342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595745, 35.789284, 34.692211>,  <48.062855, 36.172577, 35.170681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595745, 35.789284, 34.692211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414131, 36.059692, 34.924366>,  <47.305161, 36.221939, 35.063660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414131, 36.059692, 34.924366>,  <47.595745, 35.789284, 34.692211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.414131, 36.059692, 34.924366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510542, 0.336452, -0.791294,
		-0.730204, -0.655586, 0.192376,
		-0.454036, 0.676022, 0.580383,
		47.277920, 36.262501, 35.098480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.980534, 35.240055, 35.025345>,  <47.595745, 35.789284, 34.692211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.980534, 35.240055, 35.025345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.894302, 34.850281, 35.050640>,  <47.842564, 34.616417, 35.065819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.894302, 34.850281, 35.050640>,  <47.980534, 35.240055, 35.025345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.894302, 34.850281, 35.050640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976208, -0.216612, -0.009826,
		0.023273, 0.059615, 0.997950,
		-0.215582, -0.974436, 0.063237,
		47.829628, 34.557949, 35.069611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<27.806812, 34.944550, 26.933685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.142778, 35.101658, 26.783871>,  <28.344358, 35.195923, 26.693981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.142778, 35.101658, 26.783871>,  <27.806812, 34.944550, 26.933685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142778, 35.101658, 26.783871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330224, 0.177809, 0.927004,
		0.430693, -0.902285, 0.019643,
		0.839914, 0.392767, -0.374537,
		28.394753, 35.219486, 26.671509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351627, 34.677860, 27.328033>,  <27.806812, 34.944550, 26.933685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351627, 34.677860, 27.328033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.499031, 35.004925, 27.151112>,  <28.587473, 35.201164, 27.044958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.499031, 35.004925, 27.151112>,  <28.351627, 34.677860, 27.328033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499031, 35.004925, 27.151112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459780, 0.253213, 0.851167,
		0.807963, -0.517024, -0.282633,
		0.368507, 0.817661, -0.442304,
		28.609583, 35.250221, 27.018421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020420, 34.703346, 27.638378>,  <28.351627, 34.677860, 27.328033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020420, 34.703346, 27.638378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.952194, 35.075851, 27.509596>,  <28.911259, 35.299355, 27.432327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.952194, 35.075851, 27.509596>,  <29.020420, 34.703346, 27.638378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952194, 35.075851, 27.509596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257914, 0.357546, 0.897576,
		0.950993, 0.070058, -0.301170,
		-0.170565, 0.931264, -0.321955,
		28.901026, 35.355232, 27.413010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611473, 35.082237, 27.683821>,  <29.020420, 34.703346, 27.638378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611473, 35.082237, 27.683821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.324469, 35.360821, 27.688263>,  <29.152266, 35.527969, 27.690929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.324469, 35.360821, 27.688263>,  <29.611473, 35.082237, 27.683821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324469, 35.360821, 27.688263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410372, 0.409787, 0.814659,
		0.562823, 0.589087, -0.579834,
		-0.717513, 0.696457, 0.011107,
		29.109215, 35.569759, 27.691595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901690, 35.613476, 27.944458>,  <29.611473, 35.082237, 27.683821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901690, 35.613476, 27.944458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.517275, 35.710934, 27.996689>,  <29.286627, 35.769409, 28.028027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.517275, 35.710934, 27.996689>,  <29.901690, 35.613476, 27.944458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517275, 35.710934, 27.996689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227998, 0.431560, 0.872796,
		0.156299, 0.868559, -0.470294,
		-0.961035, 0.243643, 0.130578,
		29.228964, 35.784027, 28.035862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936613, 36.263210, 28.258352>,  <29.901690, 35.613476, 27.944458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936613, 36.263210, 28.258352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.575693, 36.115925, 28.348036>,  <29.359140, 36.027554, 28.401846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.575693, 36.115925, 28.348036>,  <29.936613, 36.263210, 28.258352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575693, 36.115925, 28.348036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184102, 0.141163, 0.972718,
		-0.389822, 0.918961, -0.059582,
		-0.902300, -0.368217, 0.224211,
		29.305002, 36.005459, 28.415298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648685, 36.678787, 28.793718>,  <29.936613, 36.263210, 28.258352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648685, 36.678787, 28.793718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.412558, 36.358833, 28.837002>,  <29.270882, 36.166862, 28.862972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.412558, 36.358833, 28.837002>,  <29.648685, 36.678787, 28.793718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412558, 36.358833, 28.837002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002917, 0.131947, 0.991252,
		-0.807164, 0.585471, -0.075558,
		-0.590320, -0.799883, 0.108210,
		29.235462, 36.118870, 28.869465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186958, 36.854591, 29.343874>,  <29.648685, 36.678787, 28.793718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186958, 36.854591, 29.343874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.211712, 36.456726, 29.310873>,  <29.226564, 36.218006, 29.291073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.211712, 36.456726, 29.310873>,  <29.186958, 36.854591, 29.343874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211712, 36.456726, 29.310873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091458, -0.076660, 0.992854,
		-0.993884, -0.068988, 0.086226,
		0.061885, -0.994668, -0.082500,
		29.230278, 36.158325, 29.286123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789135, 36.631134, 29.871634>,  <29.186958, 36.854591, 29.343874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789135, 36.631134, 29.871634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.026554, 36.319969, 29.789122>,  <29.169004, 36.133270, 29.739614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.026554, 36.319969, 29.789122>,  <28.789135, 36.631134, 29.871634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026554, 36.319969, 29.789122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208443, -0.098973, 0.973014,
		-0.777338, -0.620526, 0.103405,
		0.593546, -0.777915, -0.206280,
		29.204618, 36.086594, 29.727238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722124, 36.295166, 30.435556>,  <28.789135, 36.631134, 29.871634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722124, 36.295166, 30.435556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.024462, 36.086033, 30.277903>,  <29.205864, 35.960552, 30.183310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.024462, 36.086033, 30.277903>,  <28.722124, 36.295166, 30.435556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024462, 36.086033, 30.277903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344878, -0.193773, 0.918429,
		-0.556557, -0.830120, 0.033851,
		0.755846, -0.522832, -0.394135,
		29.251215, 35.929184, 30.159662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687845, 35.613167, 30.681583>,  <28.722124, 36.295166, 30.435556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687845, 35.613167, 30.681583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.058441, 35.721519, 30.577091>,  <29.280798, 35.786530, 30.514397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.058441, 35.721519, 30.577091>,  <28.687845, 35.613167, 30.681583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058441, 35.721519, 30.577091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297920, -0.103855, 0.948925,
		0.229914, -0.956995, -0.176921,
		0.926490, 0.270879, -0.261230,
		29.336388, 35.802784, 30.498722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015125, 35.089413, 31.040117>,  <28.687845, 35.613167, 30.681583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015125, 35.089413, 31.040117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.294434, 35.360096, 30.946745>,  <29.462019, 35.522507, 30.890720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.294434, 35.360096, 30.946745>,  <29.015125, 35.089413, 31.040117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294434, 35.360096, 30.946745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370262, -0.062346, 0.926833,
		0.612640, -0.733609, -0.294093,
		0.698269, 0.676706, -0.233432,
		29.503914, 35.563107, 30.876715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607069, 34.801907, 31.186039>,  <29.015125, 35.089413, 31.040117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607069, 34.801907, 31.186039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.670238, 35.196640, 31.200022>,  <29.708141, 35.433479, 31.208410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.670238, 35.196640, 31.200022>,  <29.607069, 34.801907, 31.186039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670238, 35.196640, 31.200022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406174, -0.097186, 0.908613,
		0.900046, -0.129295, -0.416174,
		0.157925, 0.986832, 0.034956,
		29.717617, 35.492691, 31.210508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239086, 34.814518, 31.611834>,  <29.607069, 34.801907, 31.186039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239086, 34.814518, 31.611834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.068546, 35.176174, 31.600782>,  <29.966223, 35.393166, 31.594151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.068546, 35.176174, 31.600782>,  <30.239086, 34.814518, 31.611834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068546, 35.176174, 31.600782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298141, 0.169296, 0.939389,
		0.854014, 0.392269, -0.341739,
		-0.426348, 0.904137, -0.027629,
		29.940641, 35.447414, 31.592493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742477, 35.178654, 31.819727>,  <30.239086, 34.814518, 31.611834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742477, 35.178654, 31.819727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.409307, 35.380783, 31.909960>,  <30.209406, 35.502060, 31.964100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.409307, 35.380783, 31.909960>,  <30.742477, 35.178654, 31.819727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409307, 35.380783, 31.909960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304210, 0.077593, 0.949439,
		0.462269, 0.859435, -0.218354,
		-0.832924, 0.505322, 0.225580,
		30.159430, 35.532379, 31.977634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962013, 35.670162, 32.259678>,  <30.742477, 35.178654, 31.819727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962013, 35.670162, 32.259678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.569407, 35.653690, 32.334438>,  <30.333843, 35.643806, 32.379295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.569407, 35.653690, 32.334438>,  <30.962013, 35.670162, 32.259678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569407, 35.653690, 32.334438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189540, -0.073790, 0.979096,
		-0.026530, 0.996423, 0.080231,
		-0.981515, -0.041182, 0.186904,
		30.274952, 35.641335, 32.390511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811642, 36.172043, 32.658894>,  <30.962013, 35.670162, 32.259678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811642, 36.172043, 32.658894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.497747, 35.932472, 32.722748>,  <30.309412, 35.788731, 32.761059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.497747, 35.932472, 32.722748>,  <30.811642, 36.172043, 32.658894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497747, 35.932472, 32.722748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067889, 0.172939, 0.982590,
		-0.616103, 0.781910, -0.095050,
		-0.784734, -0.598924, 0.159631,
		30.262327, 35.752796, 32.770638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462511, 36.561916, 33.166370>,  <30.811642, 36.172043, 32.658894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462511, 36.561916, 33.166370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.287201, 36.202919, 33.186073>,  <30.182014, 35.987522, 33.197895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.287201, 36.202919, 33.186073>,  <30.462511, 36.561916, 33.166370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287201, 36.202919, 33.186073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160997, 0.132303, 0.978047,
		-0.884305, 0.420722, -0.202478,
		-0.438274, -0.897491, 0.049262,
		30.155718, 35.933670, 33.200851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897224, 36.636967, 33.528267>,  <30.462511, 36.561916, 33.166370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897224, 36.636967, 33.528267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.971001, 36.247715, 33.583408>,  <30.015266, 36.014164, 33.616493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.971001, 36.247715, 33.583408>,  <29.897224, 36.636967, 33.528267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971001, 36.247715, 33.583408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159155, 0.167981, 0.972858,
		-0.969872, -0.157493, 0.185861,
		0.184439, -0.973128, 0.137855,
		30.026333, 35.955776, 33.624763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310301, 36.411938, 34.078365>,  <29.897224, 36.636967, 33.528267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310301, 36.411938, 34.078365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.607164, 36.145195, 34.051537>,  <29.785282, 35.985149, 34.035439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.607164, 36.145195, 34.051537>,  <29.310301, 36.411938, 34.078365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607164, 36.145195, 34.051537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067164, -0.025570, 0.997414,
		-0.666850, -0.744745, 0.025812,
		0.742159, -0.666859, -0.067071,
		29.829813, 35.945137, 34.031414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237186, 35.889248, 34.608772>,  <29.310301, 36.411938, 34.078365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237186, 35.889248, 34.608772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.621571, 35.908882, 34.499855>,  <29.852201, 35.920662, 34.434505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.621571, 35.908882, 34.499855>,  <29.237186, 35.889248, 34.608772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621571, 35.908882, 34.499855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260352, 0.172706, 0.949942,
		0.093654, -0.983750, 0.153185,
		0.960961, 0.049084, -0.272296,
		29.909859, 35.923607, 34.418167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408478, 35.388241, 35.093910>,  <29.237186, 35.889248, 34.608772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408478, 35.388241, 35.093910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.431778, 34.989937, 35.122391>,  <29.445757, 34.750954, 35.139481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.431778, 34.989937, 35.122391>,  <29.408478, 35.388241, 35.093910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431778, 34.989937, 35.122391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464358, -0.090165, -0.881046,
		0.883730, 0.018255, -0.467641,
		0.058248, -0.995760, 0.071204,
		29.449253, 34.691208, 35.143753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626036, 35.029995, 34.390446>,  <29.408478, 35.388241, 35.093910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626036, 35.029995, 34.390446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.431797, 34.755405, 34.606945>,  <29.315254, 34.590652, 34.736847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.431797, 34.755405, 34.606945>,  <29.626036, 35.029995, 34.390446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431797, 34.755405, 34.606945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630506, -0.153838, -0.760786,
		0.605523, -0.710697, -0.358122,
		-0.485596, -0.686472, 0.541251,
		29.286118, 34.549465, 34.769321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646751, 34.404324, 34.009090>,  <29.626036, 35.029995, 34.390446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646751, 34.404324, 34.009090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.336369, 34.405159, 34.261402>,  <29.150139, 34.405659, 34.412788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.336369, 34.405159, 34.261402>,  <29.646751, 34.404324, 34.009090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336369, 34.405159, 34.261402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615225, -0.223260, -0.756078,
		0.139249, -0.974757, 0.174525,
		-0.775956, 0.002089, 0.630783,
		29.103582, 34.405785, 34.450638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255175, 33.715286, 33.872738>,  <29.646751, 34.404324, 34.009090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255175, 33.715286, 33.872738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.992327, 33.949265, 34.062908>,  <28.834618, 34.089653, 34.177010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.992327, 33.949265, 34.062908>,  <29.255175, 33.715286, 33.872738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992327, 33.949265, 34.062908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666005, -0.155157, -0.729633,
		-0.353034, -0.796090, 0.491536,
		-0.657119, 0.584951, 0.475424,
		28.795191, 34.124748, 34.205536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703979, 33.269314, 34.113201>,  <29.255175, 33.715286, 33.872738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703979, 33.269314, 34.113201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.580355, 33.647842, 34.075333>,  <28.506180, 33.874958, 34.052612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.580355, 33.647842, 34.075333>,  <28.703979, 33.269314, 34.113201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580355, 33.647842, 34.075333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613766, -0.274510, -0.740227,
		-0.726479, -0.170670, 0.665658,
		-0.309064, 0.946317, -0.094675,
		28.487635, 33.931736, 34.046928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074965, 33.181522, 34.023365>,  <28.703979, 33.269314, 34.113201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074965, 33.181522, 34.023365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.121410, 33.560928, 33.905487>,  <28.149279, 33.788570, 33.834763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.121410, 33.560928, 33.905487>,  <28.074965, 33.181522, 34.023365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121410, 33.560928, 33.905487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784670, -0.094300, -0.612700,
		-0.608942, 0.302381, 0.733318,
		0.116117, 0.948511, -0.294692,
		28.156246, 33.845482, 33.817078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350204, 33.358452, 34.015591>,  <28.074965, 33.181522, 34.023365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350204, 33.358452, 34.015591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.562157, 33.628815, 33.810703>,  <27.689329, 33.791035, 33.687771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.562157, 33.628815, 33.810703>,  <27.350204, 33.358452, 34.015591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562157, 33.628815, 33.810703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702715, 0.011798, -0.711374,
		-0.474781, 0.736890, 0.481223,
		0.529882, 0.675909, -0.512223,
		27.721121, 33.831589, 33.657036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901760, 33.909172, 33.865761>,  <27.350204, 33.358452, 34.015591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901760, 33.909172, 33.865761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.197693, 33.902603, 33.596725>,  <27.375252, 33.898663, 33.435303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.197693, 33.902603, 33.596725>,  <26.901760, 33.909172, 33.865761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197693, 33.902603, 33.596725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670522, 0.064054, -0.739119,
		0.055220, 0.997811, 0.036378,
		0.739831, -0.016422, -0.672592,
		27.419641, 33.897678, 33.394947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729372, 34.396770, 33.314648>,  <26.901760, 33.909172, 33.865761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729372, 34.396770, 33.314648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.977116, 34.131451, 33.146633>,  <27.125761, 33.972260, 33.045822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.977116, 34.131451, 33.146633>,  <26.729372, 34.396770, 33.314648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977116, 34.131451, 33.146633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615274, -0.077744, -0.784470,
		0.487680, 0.744308, -0.456261,
		0.619359, -0.663296, -0.420039,
		27.162924, 33.932461, 33.020622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626238, 34.516125, 32.585140>,  <26.729372, 34.396770, 33.314648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626238, 34.516125, 32.585140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.848557, 34.183685, 32.592857>,  <26.981947, 33.984222, 32.597488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.848557, 34.183685, 32.592857>,  <26.626238, 34.516125, 32.585140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848557, 34.183685, 32.592857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322931, -0.237232, -0.916208,
		0.766034, 0.502992, -0.400239,
		0.555795, -0.831096, 0.019296,
		27.015295, 33.934357, 32.598648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001764, 34.618092, 32.087360>,  <26.626238, 34.516125, 32.585140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001764, 34.618092, 32.087360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.996216, 34.223724, 32.154011>,  <26.992887, 33.987103, 32.194000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.996216, 34.223724, 32.154011>,  <27.001764, 34.618092, 32.087360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996216, 34.223724, 32.154011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252923, -0.157764, -0.954537,
		0.967387, -0.055382, -0.247174,
		-0.013869, -0.985922, 0.166626,
		26.992056, 33.927948, 32.203999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459978, 34.361874, 31.632811>,  <27.001764, 34.618092, 32.087360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459978, 34.361874, 31.632811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.213179, 34.058910, 31.718271>,  <27.065100, 33.877132, 31.769547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.213179, 34.058910, 31.718271>,  <27.459978, 34.361874, 31.632811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213179, 34.058910, 31.718271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126536, -0.172472, -0.976853,
		0.776726, -0.629749, 0.010575,
		-0.616996, -0.757409, 0.213650,
		27.028080, 33.831688, 31.782366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594994, 33.831070, 31.111574>,  <27.459978, 34.361874, 31.632811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594994, 33.831070, 31.111574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.241625, 33.686237, 31.230543>,  <27.029604, 33.599339, 31.301926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.241625, 33.686237, 31.230543>,  <27.594994, 33.831070, 31.111574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241625, 33.686237, 31.230543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216243, -0.248074, -0.944298,
		0.415697, -0.898530, 0.140856,
		-0.883423, -0.362082, 0.297424,
		26.976599, 33.577614, 31.319771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424833, 33.238411, 30.773561>,  <27.594994, 33.831070, 31.111574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424833, 33.238411, 30.773561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.060926, 33.384235, 30.852982>,  <26.842583, 33.471729, 30.900633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.060926, 33.384235, 30.852982>,  <27.424833, 33.238411, 30.773561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060926, 33.384235, 30.852982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317596, -0.303263, -0.898423,
		-0.267316, -0.880413, 0.391681,
		-0.909767, 0.364559, 0.198548,
		26.787996, 33.493603, 30.912546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852770, 32.637424, 30.827467>,  <27.424833, 33.238411, 30.773561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852770, 32.637424, 30.827467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.704506, 32.994228, 30.723982>,  <26.615547, 33.208309, 30.661890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.704506, 32.994228, 30.723982>,  <26.852770, 32.637424, 30.827467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704506, 32.994228, 30.723982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085613, -0.310185, -0.946813,
		-0.924814, -0.328796, 0.191341,
		-0.370660, 0.892008, -0.258714,
		26.593307, 33.261829, 30.646368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269302, 32.540913, 30.353651>,  <26.852770, 32.637424, 30.827467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269302, 32.540913, 30.353651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.381723, 32.919395, 30.289516>,  <26.449177, 33.146484, 30.251036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.381723, 32.919395, 30.289516>,  <26.269302, 32.540913, 30.353651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381723, 32.919395, 30.289516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145252, -0.123205, -0.981694,
		-0.948636, 0.299198, 0.102810,
		0.281054, 0.946203, -0.160336,
		26.466040, 33.203255, 30.241415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734177, 32.734695, 29.945705>,  <26.269302, 32.540913, 30.353651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734177, 32.734695, 29.945705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.044558, 32.983040, 29.901094>,  <26.230785, 33.132046, 29.874329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.044558, 32.983040, 29.901094>,  <25.734177, 32.734695, 29.945705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044558, 32.983040, 29.901094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029491, -0.140906, -0.989584,
		-0.630104, 0.771157, -0.091026,
		0.775950, 0.620856, -0.111528,
		26.277342, 33.169296, 29.867636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605888, 33.147038, 29.317043>,  <25.734177, 32.734695, 29.945705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605888, 33.147038, 29.317043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.994558, 33.199093, 29.395950>,  <26.227760, 33.230328, 29.443295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.994558, 33.199093, 29.395950>,  <25.605888, 33.147038, 29.317043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994558, 33.199093, 29.395950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189855, 0.067232, -0.979507,
		-0.140734, 0.989214, 0.040620,
		0.971673, 0.130138, 0.197269,
		26.286060, 33.238132, 29.455132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767107, 33.776859, 29.059984>,  <25.605888, 33.147038, 29.317043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767107, 33.776859, 29.059984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.105881, 33.564178, 29.059799>,  <26.309145, 33.436569, 29.059689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.105881, 33.564178, 29.059799>,  <25.767107, 33.776859, 29.059984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105881, 33.564178, 29.059799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018859, 0.030912, -0.999344,
		0.531364, 0.846370, 0.036208,
		0.846934, -0.531698, -0.000464,
		26.359961, 33.404671, 29.059660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.207045, 34.220470, 28.576475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.401981, 33.871918, 28.599098>,  <26.518944, 33.662788, 28.612673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.401981, 33.871918, 28.599098>,  <26.207045, 34.220470, 28.576475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401981, 33.871918, 28.599098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133403, 0.010284, -0.991009,
		0.862961, 0.490505, 0.121256,
		0.487341, -0.871378, 0.056560,
		26.548183, 33.610504, 28.616066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786366, 34.304874, 28.176498>,  <26.207045, 34.220470, 28.576475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786366, 34.304874, 28.176498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.760134, 33.905762, 28.172037>,  <26.744394, 33.666294, 28.169361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.760134, 33.905762, 28.172037>,  <26.786366, 34.304874, 28.176498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760134, 33.905762, 28.172037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489055, -0.022398, -0.871966,
		0.869784, -0.062639, 0.489440,
		-0.065581, -0.997785, -0.011153,
		26.740459, 33.606426, 28.168692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398735, 34.117313, 27.779551>,  <26.786366, 34.304874, 28.176498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398735, 34.117313, 27.779551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.147989, 33.806595, 27.803659>,  <26.997541, 33.620163, 27.818125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.147989, 33.806595, 27.803659>,  <27.398735, 34.117313, 27.779551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147989, 33.806595, 27.803659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091700, -0.150382, -0.984366,
		0.773712, -0.611539, 0.165501,
		-0.626866, -0.776792, 0.060274,
		26.959929, 33.573559, 27.821741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639093, 33.662537, 27.349461>,  <27.398735, 34.117313, 27.779551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639093, 33.662537, 27.349461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.261923, 33.534031, 27.384520>,  <27.035622, 33.456928, 27.405556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.261923, 33.534031, 27.384520>,  <27.639093, 33.662537, 27.349461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261923, 33.534031, 27.384520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012728, -0.228242, -0.973521,
		0.332762, -0.919073, 0.211126,
		-0.942925, -0.321264, 0.087648,
		26.979046, 33.437653, 27.410814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574118, 33.087662, 26.960363>,  <27.639093, 33.662537, 27.349461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574118, 33.087662, 26.960363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.189835, 33.194286, 26.991314>,  <26.959265, 33.258263, 27.009884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.189835, 33.194286, 26.991314>,  <27.574118, 33.087662, 26.960363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189835, 33.194286, 26.991314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128810, -0.181233, -0.974968,
		-0.245870, -0.946624, 0.208448,
		-0.960706, 0.266566, 0.077375,
		26.901623, 33.274254, 27.014526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246775, 32.527534, 26.794041>,  <27.574118, 33.087662, 26.960363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246775, 32.527534, 26.794041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.989611, 32.830276, 26.746984>,  <26.835312, 33.011921, 26.718752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.989611, 32.830276, 26.746984>,  <27.246775, 32.527534, 26.794041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989611, 32.830276, 26.746984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298868, -0.389298, -0.871278,
		-0.705226, -0.524995, 0.476483,
		-0.642911, 0.756853, -0.117639,
		26.796738, 33.057331, 26.711693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607004, 32.330128, 26.576181>,  <27.246775, 32.527534, 26.794041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607004, 32.330128, 26.576181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.604227, 32.706493, 26.440750>,  <26.602560, 32.932312, 26.359491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.604227, 32.706493, 26.440750>,  <26.607004, 32.330128, 26.576181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604227, 32.706493, 26.440750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405922, -0.312088, -0.858969,
		-0.913881, 0.131472, 0.384104,
		-0.006944, 0.940912, -0.338579,
		26.602144, 32.988766, 26.339176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005571, 32.352329, 26.085325>,  <26.607004, 32.330128, 26.576181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005571, 32.352329, 26.085325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.209116, 32.683746, 25.991886>,  <26.331244, 32.882599, 25.935823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.209116, 32.683746, 25.991886>,  <26.005571, 32.352329, 26.085325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209116, 32.683746, 25.991886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334763, -0.059538, -0.940420,
		-0.793090, 0.556745, 0.247070,
		0.508864, 0.828547, -0.233597,
		26.361774, 32.932312, 25.921806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545984, 32.708855, 25.636700>,  <26.005571, 32.352329, 26.085325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545984, 32.708855, 25.636700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.904869, 32.872009, 25.569006>,  <26.120199, 32.969902, 25.528389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.904869, 32.872009, 25.569006>,  <25.545984, 32.708855, 25.636700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904869, 32.872009, 25.569006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215656, 0.070277, -0.973937,
		-0.385363, 0.910323, 0.151016,
		0.897211, 0.407887, -0.169234,
		26.174032, 32.994377, 25.518236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398575, 33.285194, 25.132809>,  <25.545984, 32.708855, 25.636700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398575, 33.285194, 25.132809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.786226, 33.190071, 25.106773>,  <26.018818, 33.132996, 25.091152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.786226, 33.190071, 25.106773>,  <25.398575, 33.285194, 25.132809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786226, 33.190071, 25.106773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046966, 0.081096, -0.995599,
		0.242040, 0.967921, 0.067423,
		0.969129, -0.237808, -0.065088,
		26.076965, 33.118729, 25.087248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674994, 33.862888, 24.792561>,  <25.398575, 33.285194, 25.132809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674994, 33.862888, 24.792561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.894241, 33.533161, 24.735901>,  <26.025789, 33.335323, 24.701906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.894241, 33.533161, 24.735901>,  <25.674994, 33.862888, 24.792561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894241, 33.533161, 24.735901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131286, 0.082461, -0.987909,
		0.826033, 0.560087, -0.063024,
		0.548118, -0.824320, -0.141647,
		26.058676, 33.285866, 24.693407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160809, 33.970436, 24.168119>,  <25.674994, 33.862888, 24.792561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160809, 33.970436, 24.168119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.114365, 33.575325, 24.209702>,  <26.086498, 33.338257, 24.234650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.114365, 33.575325, 24.209702>,  <26.160809, 33.970436, 24.168119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114365, 33.575325, 24.209702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083773, -0.094549, -0.991989,
		0.989697, -0.123890, -0.071771,
		-0.116111, -0.987781, 0.103953,
		26.079531, 33.278992, 24.240887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560930, 33.735500, 23.663462>,  <26.160809, 33.970436, 24.168119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560930, 33.735500, 23.663462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.359072, 33.400192, 23.746056>,  <26.237957, 33.199009, 23.795612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.359072, 33.400192, 23.746056>,  <26.560930, 33.735500, 23.663462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359072, 33.400192, 23.746056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165991, -0.140498, -0.976067,
		0.847218, -0.526844, -0.068243,
		-0.504647, -0.838270, 0.206483,
		26.207678, 33.148712, 23.808001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765087, 33.337135, 23.162144>,  <26.560930, 33.735500, 23.663462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765087, 33.337135, 23.162144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.443039, 33.136230, 23.288330>,  <26.249811, 33.015690, 23.364042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.443039, 33.136230, 23.288330>,  <26.765087, 33.337135, 23.162144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443039, 33.136230, 23.288330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216987, -0.245585, -0.944777,
		0.551996, -0.829111, 0.088742,
		-0.805119, -0.502258, 0.315468,
		26.201504, 32.985554, 23.382971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807735, 32.591785, 22.832037>,  <26.765087, 33.337135, 23.162144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807735, 32.591785, 22.832037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.422945, 32.633156, 22.933155>,  <26.192070, 32.657978, 22.993826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.422945, 32.633156, 22.933155>,  <26.807735, 32.591785, 22.832037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422945, 32.633156, 22.933155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272442, -0.429240, -0.861121,
		0.019445, -0.897249, 0.441097,
		-0.961976, 0.103429, 0.252795,
		26.134352, 32.664185, 23.008993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491501, 31.983276, 22.728481>,  <26.807735, 32.591785, 22.832037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491501, 31.983276, 22.728481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.193769, 32.250401, 22.728836>,  <26.015131, 32.410675, 22.729050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.193769, 32.250401, 22.728836>,  <26.491501, 31.983276, 22.728481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193769, 32.250401, 22.728836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393348, -0.437343, -0.808708,
		-0.539680, -0.602292, 0.588210,
		-0.744328, 0.667814, 0.000885,
		25.970470, 32.450745, 22.729101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890850, 31.626488, 22.707060>,  <26.491501, 31.983276, 22.728481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890850, 31.626488, 22.707060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.804285, 31.977945, 22.536812>,  <25.752346, 32.188820, 22.434664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.804285, 31.977945, 22.536812>,  <25.890850, 31.626488, 22.707060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804285, 31.977945, 22.536812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403409, -0.477472, -0.780565,
		-0.889060, 0.002775, 0.457783,
		-0.216413, 0.878643, -0.425621,
		25.739361, 32.241539, 22.409126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277691, 31.605362, 22.465256>,  <25.890850, 31.626488, 22.707060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277691, 31.605362, 22.465256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.408300, 31.920385, 22.256207>,  <25.486666, 32.109398, 22.130777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.408300, 31.920385, 22.256207>,  <25.277691, 31.605362, 22.465256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408300, 31.920385, 22.256207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335105, -0.420554, -0.843113,
		-0.883792, 0.450429, 0.126595,
		0.326522, 0.787559, -0.522623,
		25.506258, 32.156654, 22.099419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.736303, 31.908646, 21.995340>,  <25.277691, 31.605362, 22.465256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.736303, 31.908646, 21.995340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.077360, 32.050003, 21.841398>,  <25.281994, 32.134819, 21.749033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.077360, 32.050003, 21.841398>,  <24.736303, 31.908646, 21.995340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.077360, 32.050003, 21.841398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270521, -0.331585, -0.903809,
		-0.447012, 0.874737, -0.187123,
		0.852642, 0.353393, -0.384857,
		25.333153, 32.156021, 21.725941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379683, 32.153099, 21.457754>,  <24.736303, 31.908646, 21.995340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379683, 32.153099, 21.457754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.773630, 32.158936, 21.388676>,  <25.009998, 32.162437, 21.347229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.773630, 32.158936, 21.388676>,  <24.379683, 32.153099, 21.457754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.773630, 32.158936, 21.388676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156761, -0.349926, -0.923568,
		-0.073910, 0.936664, -0.342343,
		0.984867, 0.014595, -0.172695,
		25.069090, 32.163315, 21.336866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.474478, 32.423183, 20.805960>,  <24.379683, 32.153099, 21.457754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.474478, 32.423183, 20.805960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.803701, 32.210278, 20.885220>,  <25.001236, 32.082535, 20.932775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.803701, 32.210278, 20.885220>,  <24.474478, 32.423183, 20.805960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.803701, 32.210278, 20.885220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098352, -0.477182, -0.873283,
		0.559373, 0.699277, -0.445100,
		0.823061, -0.532268, 0.198147,
		25.050619, 32.050598, 20.944664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868004, 32.444210, 20.197199>,  <24.474478, 32.423183, 20.805960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868004, 32.444210, 20.197199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.020527, 32.123611, 20.381460>,  <25.112041, 31.931252, 20.492018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.020527, 32.123611, 20.381460>,  <24.868004, 32.444210, 20.197199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020527, 32.123611, 20.381460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187467, -0.554989, -0.810459,
		0.905241, 0.222677, -0.361876,
		0.381308, -0.801500, 0.460654,
		25.134920, 31.883162, 20.519657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507132, 32.147320, 19.927279>,  <24.868004, 32.444210, 20.197199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507132, 32.147320, 19.927279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.284019, 31.862823, 20.098396>,  <25.150152, 31.692125, 20.201067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.284019, 31.862823, 20.098396>,  <25.507132, 32.147320, 19.927279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284019, 31.862823, 20.098396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121860, -0.580017, -0.805438,
		0.820993, -0.397128, 0.410195,
		-0.557782, -0.711245, 0.427796,
		25.116684, 31.649450, 20.226736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839174, 31.566782, 19.750072>,  <25.507132, 32.147320, 19.927279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839174, 31.566782, 19.750072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.452394, 31.495766, 19.823275>,  <25.220327, 31.453156, 19.867197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.452394, 31.495766, 19.823275>,  <25.839174, 31.566782, 19.750072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452394, 31.495766, 19.823275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014233, -0.679046, -0.733958,
		0.254577, -0.712304, 0.654075,
		-0.966948, -0.177539, 0.183007,
		25.162310, 31.442505, 19.878178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291065, 32.248238, 19.974787>,  <25.839174, 31.566782, 19.750072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291065, 32.248238, 19.974787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.501570, 32.450733, 19.701506>,  <26.627872, 32.572231, 19.537537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.501570, 32.450733, 19.701506>,  <26.291065, 32.248238, 19.974787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501570, 32.450733, 19.701506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676676, 0.237230, 0.697016,
		0.514935, -0.829121, -0.217715,
		0.526262, 0.506241, -0.683205,
		26.659449, 32.602604, 19.496544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916332, 32.326023, 20.210394>,  <26.291065, 32.248238, 19.974787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916332, 32.326023, 20.210394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.970346, 32.596600, 19.920788>,  <27.002756, 32.758945, 19.747025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.970346, 32.596600, 19.920788>,  <26.916332, 32.326023, 20.210394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970346, 32.596600, 19.920788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500133, 0.584260, 0.639146,
		0.855355, -0.448413, -0.259412,
		0.135037, 0.676437, -0.724015,
		27.010859, 32.799530, 19.703583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594538, 32.452557, 20.084984>,  <26.916332, 32.326023, 20.210394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594538, 32.452557, 20.084984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.384308, 32.775017, 19.976252>,  <27.258171, 32.968494, 19.911013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.384308, 32.775017, 19.976252>,  <27.594538, 32.452557, 20.084984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384308, 32.775017, 19.976252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552134, 0.566300, 0.611925,
		0.647242, 0.171525, -0.742737,
		-0.525572, 0.806153, -0.271828,
		27.226637, 33.016861, 19.894703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123110, 32.986931, 19.978279>,  <27.594538, 32.452557, 20.084984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123110, 32.986931, 19.978279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.789019, 33.199371, 20.035303>,  <27.588564, 33.326836, 20.069517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.789019, 33.199371, 20.035303>,  <28.123110, 32.986931, 19.978279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789019, 33.199371, 20.035303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459467, 0.531565, 0.711568,
		0.302137, 0.659822, -0.688003,
		-0.835227, 0.531105, 0.142561,
		27.538450, 33.358704, 20.078072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294472, 33.745674, 20.092051>,  <28.123110, 32.986931, 19.978279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294472, 33.745674, 20.092051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.923824, 33.717010, 20.239697>,  <27.701437, 33.699814, 20.328285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.923824, 33.717010, 20.239697>,  <28.294472, 33.745674, 20.092051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923824, 33.717010, 20.239697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295237, 0.469251, 0.832249,
		-0.232845, 0.880153, -0.413660,
		-0.926617, -0.071657, 0.369116,
		27.645840, 33.695515, 20.350431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061592, 34.428780, 20.249716>,  <28.294472, 33.745674, 20.092051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061592, 34.428780, 20.249716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.848722, 34.173534, 20.472284>,  <27.721001, 34.020386, 20.605825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.848722, 34.173534, 20.472284>,  <28.061592, 34.428780, 20.249716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848722, 34.173534, 20.472284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043424, 0.635776, 0.770651,
		-0.845521, 0.434283, -0.310634,
		-0.532174, -0.638113, 0.556420,
		27.689070, 33.982101, 20.639210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545298, 34.836380, 20.653704>,  <28.061592, 34.428780, 20.249716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545298, 34.836380, 20.653704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.614601, 34.498505, 20.856279>,  <27.656183, 34.295780, 20.977825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.614601, 34.498505, 20.856279>,  <27.545298, 34.836380, 20.653704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614601, 34.498505, 20.856279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296204, 0.535098, 0.791160,
		-0.939279, 0.012933, 0.342911,
		0.173259, -0.844691, 0.506437,
		27.666578, 34.245098, 21.008211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386290, 35.007099, 21.366631>,  <27.545298, 34.836380, 20.653704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386290, 35.007099, 21.366631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578560, 34.662056, 21.429697>,  <27.693922, 34.455029, 21.467537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578560, 34.662056, 21.429697>,  <27.386290, 35.007099, 21.366631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578560, 34.662056, 21.429697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097390, 0.231201, 0.968019,
		-0.871474, -0.449948, 0.195142,
		0.480675, -0.862608, 0.157665,
		27.722763, 34.403275, 21.476997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064573, 34.779076, 21.843622>,  <27.386290, 35.007099, 21.366631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064573, 34.779076, 21.843622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.390604, 34.555485, 21.904539>,  <27.586224, 34.421329, 21.941090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.390604, 34.555485, 21.904539>,  <27.064573, 34.779076, 21.843622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390604, 34.555485, 21.904539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093737, 0.132165, 0.986786,
		-0.571718, -0.818583, 0.055328,
		0.815078, -0.558977, 0.152293,
		27.635128, 34.387791, 21.950228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880764, 34.301929, 22.422171>,  <27.064573, 34.779076, 21.843622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880764, 34.301929, 22.422171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.278967, 34.328602, 22.395287>,  <27.517889, 34.344604, 22.379156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.278967, 34.328602, 22.395287>,  <26.880764, 34.301929, 22.422171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278967, 34.328602, 22.395287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068064, -0.010593, 0.997625,
		0.065810, -0.997718, -0.015084,
		0.995508, 0.066680, -0.067212,
		27.577620, 34.348606, 22.375122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164057, 33.713829, 22.681145>,  <26.880764, 34.301929, 22.422171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164057, 33.713829, 22.681145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.455252, 33.987755, 22.694187>,  <27.629969, 34.152111, 22.702013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.455252, 33.987755, 22.694187>,  <27.164057, 33.713829, 22.681145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455252, 33.987755, 22.694187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034062, -0.083627, 0.995915,
		0.684743, -0.723904, -0.084206,
		0.727988, 0.684813, 0.032605,
		27.673649, 34.193199, 22.703968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592831, 33.523033, 23.140144>,  <27.164057, 33.713829, 22.681145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592831, 33.523033, 23.140144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.732372, 33.897858, 23.134239>,  <27.816097, 34.122753, 23.130695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.732372, 33.897858, 23.134239>,  <27.592831, 33.523033, 23.140144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732372, 33.897858, 23.134239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132415, -0.033688, 0.990622,
		0.927776, -0.347535, -0.135833,
		0.348852, 0.937062, -0.014764,
		27.837029, 34.178978, 23.129810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218307, 33.505573, 23.509647>,  <27.592831, 33.523033, 23.140144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218307, 33.505573, 23.509647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.118086, 33.892673, 23.520117>,  <28.057953, 34.124931, 23.526400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.118086, 33.892673, 23.520117>,  <28.218307, 33.505573, 23.509647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118086, 33.892673, 23.520117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149662, 0.012007, 0.988664,
		0.956464, 0.251633, -0.147844,
		-0.250556, 0.967748, 0.026175,
		28.042919, 34.182999, 23.527969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798073, 33.970413, 23.795717>,  <28.218307, 33.505573, 23.509647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798073, 33.970413, 23.795717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.460030, 34.174416, 23.859827>,  <28.257204, 34.296818, 23.898293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.460030, 34.174416, 23.859827>,  <28.798073, 33.970413, 23.795717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460030, 34.174416, 23.859827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143221, -0.072853, 0.987006,
		0.515052, 0.857082, -0.011474,
		-0.845109, 0.510002, 0.160275,
		28.206497, 34.327415, 23.907909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963585, 34.439098, 24.252640>,  <28.798073, 33.970413, 23.795717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963585, 34.439098, 24.252640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.564096, 34.441486, 24.272707>,  <28.324404, 34.442921, 24.284748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.564096, 34.441486, 24.272707>,  <28.963585, 34.439098, 24.252640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564096, 34.441486, 24.272707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049823, 0.281384, 0.958301,
		-0.008392, 0.959577, -0.281322,
		-0.998723, 0.005974, 0.050170,
		28.264479, 34.443279, 24.287758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895321, 35.075840, 24.550285>,  <28.963585, 34.439098, 24.252640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895321, 35.075840, 24.550285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.542421, 34.895897, 24.605810>,  <28.330681, 34.787933, 24.639126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.542421, 34.895897, 24.605810>,  <28.895321, 35.075840, 24.550285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542421, 34.895897, 24.605810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061644, 0.402703, 0.913253,
		-0.466732, 0.797158, -0.383015,
		-0.882248, -0.449855, 0.138814,
		28.277746, 34.760941, 24.647455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414402, 35.577904, 24.608465>,  <28.895321, 35.075840, 24.550285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414402, 35.577904, 24.608465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.298519, 35.250526, 24.806948>,  <28.228989, 35.054100, 24.926037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.298519, 35.250526, 24.806948>,  <28.414402, 35.577904, 24.608465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298519, 35.250526, 24.806948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143047, 0.475593, 0.867957,
		-0.946365, 0.322435, -0.020707,
		-0.289708, -0.818442, 0.496208,
		28.211607, 35.004993, 24.955811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937307, 35.822968, 25.192312>,  <28.414402, 35.577904, 24.608465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937307, 35.822968, 25.192312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.049913, 35.454720, 25.300543>,  <28.117477, 35.233772, 25.365480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.049913, 35.454720, 25.300543>,  <27.937307, 35.822968, 25.192312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049913, 35.454720, 25.300543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235668, 0.339677, 0.910538,
		-0.930167, -0.192563, 0.312584,
		0.281513, -0.920619, 0.270575,
		28.134367, 35.178535, 25.381716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578264, 35.656746, 25.777779>,  <27.937307, 35.822968, 25.192312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578264, 35.656746, 25.777779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.902205, 35.422714, 25.794905>,  <28.096569, 35.282295, 25.805182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.902205, 35.422714, 25.794905>,  <27.578264, 35.656746, 25.777779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902205, 35.422714, 25.794905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150087, 0.277197, 0.949018,
		-0.567115, -0.762135, 0.312300,
		0.809848, -0.585075, 0.042816,
		28.145159, 35.247192, 25.807749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519344, 35.341335, 26.402422>,  <27.578264, 35.656746, 25.777779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519344, 35.341335, 26.402422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.907274, 35.318920, 26.307508>,  <28.140032, 35.305470, 26.250561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.907274, 35.318920, 26.307508>,  <27.519344, 35.341335, 26.402422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907274, 35.318920, 26.307508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239370, 0.033917, 0.970336,
		-0.046334, -0.997852, 0.046309,
		0.969822, -0.056044, -0.237284,
		28.198221, 35.302109, 26.236322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.834053, 33.295319, 31.764923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.205086, 33.326500, 31.618765>,  <26.427706, 33.345207, 31.531071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.205086, 33.326500, 31.618765>,  <25.834053, 33.295319, 31.764923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205086, 33.326500, 31.618765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344375, 0.200901, 0.917085,
		0.144892, -0.976505, 0.159509,
		0.927584, 0.077948, -0.365393,
		26.483360, 33.349884, 31.509148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241253, 32.832088, 32.216057>,  <25.834053, 33.295319, 31.764923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241253, 32.832088, 32.216057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.480318, 33.113804, 32.062817>,  <26.623758, 33.282833, 31.970871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.480318, 33.113804, 32.062817>,  <26.241253, 32.832088, 32.216057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480318, 33.113804, 32.062817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453871, 0.096684, 0.885807,
		0.660908, -0.703295, -0.261874,
		0.597664, 0.704293, -0.383105,
		26.659616, 33.325092, 31.947886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937422, 32.634438, 32.320988>,  <26.241253, 32.832088, 32.216057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937422, 32.634438, 32.320988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.948841, 33.032196, 32.280270>,  <26.955692, 33.270851, 32.255840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.948841, 33.032196, 32.280270>,  <26.937422, 32.634438, 32.320988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948841, 33.032196, 32.280270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521379, 0.072072, 0.850276,
		0.852847, -0.077348, -0.516400,
		0.028549, 0.994396, -0.101794,
		26.957405, 33.330513, 32.249733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566244, 32.775127, 32.599606>,  <26.937422, 32.634438, 32.320988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566244, 32.775127, 32.599606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.395802, 33.136948, 32.593636>,  <27.293535, 33.354038, 32.590054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.395802, 33.136948, 32.593636>,  <27.566244, 32.775127, 32.599606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395802, 33.136948, 32.593636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541471, 0.268220, 0.796785,
		0.724735, 0.331434, -0.604078,
		-0.426108, 0.904549, -0.014927,
		27.267969, 33.408314, 32.589157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164471, 33.311501, 32.502960>,  <27.566244, 32.775127, 32.599606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164471, 33.311501, 32.502960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.846340, 33.474483, 32.682487>,  <27.655462, 33.572273, 32.790203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.846340, 33.474483, 32.682487>,  <28.164471, 33.311501, 32.502960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846340, 33.474483, 32.682487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576341, 0.278839, 0.768166,
		0.187849, 0.869613, -0.456603,
		-0.795326, 0.407458, 0.448814,
		27.607742, 33.596722, 32.817131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382198, 34.090031, 32.586021>,  <28.164471, 33.311501, 32.502960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382198, 34.090031, 32.586021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.083042, 33.986790, 32.830658>,  <27.903549, 33.924843, 32.977440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.083042, 33.986790, 32.830658>,  <28.382198, 34.090031, 32.586021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083042, 33.986790, 32.830658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486405, 0.413895, 0.769481,
		-0.451741, 0.872968, -0.184004,
		-0.747890, -0.258106, 0.611589,
		27.858675, 33.909359, 33.014133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392403, 34.650269, 32.940620>,  <28.382198, 34.090031, 32.586021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392403, 34.650269, 32.940620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.186384, 34.393703, 33.168064>,  <28.062773, 34.239765, 33.304531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.186384, 34.393703, 33.168064>,  <28.392403, 34.650269, 32.940620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186384, 34.393703, 33.168064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463318, 0.349787, 0.814239,
		-0.721155, 0.682818, 0.117021,
		-0.515045, -0.641411, 0.568612,
		28.031870, 34.201279, 33.338650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190840, 35.101292, 33.413658>,  <28.392403, 34.650269, 32.940620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190840, 35.101292, 33.413658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.170208, 34.724468, 33.546246>,  <28.157829, 34.498375, 33.625797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.170208, 34.724468, 33.546246>,  <28.190840, 35.101292, 33.413658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170208, 34.724468, 33.546246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368700, 0.290501, 0.882989,
		-0.928116, 0.167759, 0.332351,
		-0.051581, -0.942054, 0.331471,
		28.154734, 34.441853, 33.645687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960754, 35.116692, 34.090157>,  <28.190840, 35.101292, 33.413658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960754, 35.116692, 34.090157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.128817, 34.755241, 34.056862>,  <28.229654, 34.538372, 34.036884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.128817, 34.755241, 34.056862>,  <27.960754, 35.116692, 34.090157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128817, 34.755241, 34.056862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289966, 0.046775, 0.955894,
		-0.859878, -0.425758, 0.281673,
		0.420155, -0.903627, -0.083235,
		28.254864, 34.484154, 34.031891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950193, 34.961197, 34.757687>,  <27.960754, 35.116692, 34.090157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950193, 34.961197, 34.757687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.204105, 34.694275, 34.601860>,  <28.356453, 34.534122, 34.508366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.204105, 34.694275, 34.601860>,  <27.950193, 34.961197, 34.757687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204105, 34.694275, 34.601860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492985, -0.038463, 0.869187,
		-0.594997, -0.743791, 0.304556,
		0.634779, -0.667305, -0.389564,
		28.394539, 34.494083, 34.484989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041525, 34.385372, 35.216843>,  <27.950193, 34.961197, 34.757687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041525, 34.385372, 35.216843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.375221, 34.398048, 34.996647>,  <28.575439, 34.405655, 34.864529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.375221, 34.398048, 34.996647>,  <28.041525, 34.385372, 35.216843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375221, 34.398048, 34.996647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550775, -0.095473, 0.829175,
		-0.026278, -0.994927, -0.097104,
		0.834240, 0.031694, -0.550490,
		28.625494, 34.407558, 34.831501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471975, 33.873096, 35.477180>,  <28.041525, 34.385372, 35.216843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471975, 33.873096, 35.477180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.712334, 34.114418, 35.267441>,  <28.856548, 34.259212, 35.141598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.712334, 34.114418, 35.267441>,  <28.471975, 33.873096, 35.477180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712334, 34.114418, 35.267441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663146, -0.010027, 0.748423,
		0.446272, -0.797445, -0.406107,
		0.600898, 0.603308, -0.524348,
		28.892603, 34.295410, 35.110138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116646, 33.545940, 35.619572>,  <28.471975, 33.873096, 35.477180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116646, 33.545940, 35.619572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.116318, 33.930756, 35.510406>,  <29.116121, 34.161644, 35.444908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.116318, 33.930756, 35.510406>,  <29.116646, 33.545940, 35.619572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116318, 33.930756, 35.510406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593021, 0.220215, 0.774488,
		0.805186, -0.161210, -0.570689,
		-0.000819, 0.962038, -0.272915,
		29.116072, 34.219368, 35.428532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704069, 33.697590, 35.837650>,  <29.116646, 33.545940, 35.619572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704069, 33.697590, 35.837650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.541536, 34.052689, 35.751122>,  <29.444017, 34.265747, 35.699203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.541536, 34.052689, 35.751122>,  <29.704069, 33.697590, 35.837650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541536, 34.052689, 35.751122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552223, 0.427211, 0.715919,
		0.727972, 0.171443, -0.663825,
		-0.406333, 0.887749, -0.216323,
		29.419636, 34.319012, 35.686226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464670, 33.100288, 36.040264>,  <29.704069, 33.697590, 35.837650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464670, 33.100288, 36.040264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.646374, 32.777393, 36.191006>,  <29.755396, 32.583656, 36.281452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.646374, 32.777393, 36.191006>,  <29.464670, 33.100288, 36.040264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646374, 32.777393, 36.191006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329527, -0.240766, -0.912931,
		0.827683, 0.538894, 0.156635,
		0.454260, -0.807233, 0.376858,
		29.782652, 32.535225, 36.304062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171089, 33.001568, 35.686802>,  <29.464670, 33.100288, 36.040264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171089, 33.001568, 35.686802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.036936, 32.646328, 35.812527>,  <29.956444, 32.433182, 35.887962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.036936, 32.646328, 35.812527>,  <30.171089, 33.001568, 35.686802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036936, 32.646328, 35.812527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319345, -0.421053, -0.848960,
		0.886306, -0.184351, 0.424825,
		-0.335381, -0.888104, 0.314310,
		29.936321, 32.379898, 35.906818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657749, 32.496490, 35.456600>,  <30.171089, 33.001568, 35.686802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657749, 32.496490, 35.456600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.311701, 32.309124, 35.528328>,  <30.104073, 32.196705, 35.571365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.311701, 32.309124, 35.528328>,  <30.657749, 32.496490, 35.456600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311701, 32.309124, 35.528328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027999, -0.402066, -0.915182,
		0.500781, -0.786723, 0.360951,
		-0.865121, -0.468412, 0.179319,
		30.052164, 32.168602, 35.582123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703035, 32.019501, 34.953693>,  <30.657749, 32.496490, 35.456600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703035, 32.019501, 34.953693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.318981, 31.953157, 35.043697>,  <30.088549, 31.913353, 35.097702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.318981, 31.953157, 35.043697>,  <30.703035, 32.019501, 34.953693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318981, 31.953157, 35.043697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098230, -0.553435, -0.827080,
		0.261706, -0.816212, 0.515081,
		-0.960136, -0.165855, 0.225014,
		30.030941, 31.903400, 35.111202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548677, 31.369865, 34.625500>,  <30.703035, 32.019501, 34.953693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548677, 31.369865, 34.625500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.201988, 31.553328, 34.703911>,  <29.993975, 31.663404, 34.750957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.201988, 31.553328, 34.703911>,  <30.548677, 31.369865, 34.625500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201988, 31.553328, 34.703911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413414, -0.440679, -0.796801,
		-0.279068, -0.771648, 0.571560,
		-0.866724, 0.458653, 0.196030,
		29.941971, 31.690924, 34.762718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038870, 30.877169, 34.592258>,  <30.548677, 31.369865, 34.625500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038870, 30.877169, 34.592258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.860723, 31.222239, 34.496391>,  <29.753836, 31.429281, 34.438869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.860723, 31.222239, 34.496391>,  <30.038870, 30.877169, 34.592258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860723, 31.222239, 34.496391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370192, -0.421152, -0.828003,
		-0.815235, -0.280039, 0.506922,
		-0.445364, 0.862676, -0.239670,
		29.727114, 31.481041, 34.424492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367949, 30.643845, 34.298054>,  <30.038870, 30.877169, 34.592258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367949, 30.643845, 34.298054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.411385, 31.022253, 34.175907>,  <29.437447, 31.249298, 34.102619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.411385, 31.022253, 34.175907>,  <29.367949, 30.643845, 34.298054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411385, 31.022253, 34.175907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363185, -0.248197, -0.898051,
		-0.925367, 0.208427, 0.316628,
		0.108592, 0.946021, -0.305371,
		29.443962, 31.306059, 34.084297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867437, 30.676163, 33.896568>,  <29.367949, 30.643845, 34.298054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867437, 30.676163, 33.896568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.079418, 30.999107, 33.792786>,  <29.206606, 31.192875, 33.730515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.079418, 30.999107, 33.792786>,  <28.867437, 30.676163, 33.896568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079418, 30.999107, 33.792786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326232, -0.088315, -0.941155,
		-0.782767, 0.583410, 0.216584,
		0.529951, 0.807362, -0.259457,
		29.238403, 31.241316, 33.714947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452427, 31.111628, 33.422531>,  <28.867437, 30.676163, 33.896568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452427, 31.111628, 33.422531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.841696, 31.175100, 33.355888>,  <29.075256, 31.213184, 33.315903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.841696, 31.175100, 33.355888>,  <28.452427, 31.111628, 33.422531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841696, 31.175100, 33.355888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141351, -0.159005, -0.977107,
		-0.181541, 0.974442, -0.132309,
		0.973172, 0.158683, -0.166604,
		29.133648, 31.222706, 33.305908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406881, 31.362738, 32.816193>,  <28.452427, 31.111628, 33.422531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406881, 31.362738, 32.816193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.803047, 31.319254, 32.850277>,  <29.040747, 31.293163, 32.870728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.803047, 31.319254, 32.850277>,  <28.406881, 31.362738, 32.816193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803047, 31.319254, 32.850277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074121, -0.102260, -0.991992,
		0.116554, 0.988800, -0.093222,
		0.990415, -0.108711, 0.085209,
		29.100172, 31.286640, 32.875839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715408, 31.853140, 32.292847>,  <28.406881, 31.362738, 32.816193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715408, 31.853140, 32.292847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.006018, 31.586388, 32.359104>,  <29.180384, 31.426336, 32.398857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.006018, 31.586388, 32.359104>,  <28.715408, 31.853140, 32.292847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006018, 31.586388, 32.359104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197743, -0.027949, -0.979855,
		0.658076, 0.744640, 0.111566,
		0.726522, -0.666881, 0.165640,
		29.223974, 31.386324, 32.408794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399933, 32.100864, 31.978819>,  <28.715408, 31.853140, 32.292847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399933, 32.100864, 31.978819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.414021, 31.702299, 32.009594>,  <29.422474, 31.463160, 32.028057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.414021, 31.702299, 32.009594>,  <29.399933, 32.100864, 31.978819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414021, 31.702299, 32.009594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200962, -0.068351, -0.977212,
		0.978966, 0.049879, 0.197834,
		0.035220, -0.996414, 0.076937,
		29.424587, 31.403376, 32.032677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943726, 31.884249, 31.533897>,  <29.399933, 32.100864, 31.978819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943726, 31.884249, 31.533897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.739857, 31.544436, 31.588343>,  <29.617537, 31.340548, 31.621010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.739857, 31.544436, 31.588343>,  <29.943726, 31.884249, 31.533897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739857, 31.544436, 31.588343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007009, -0.154099, -0.988030,
		0.860341, -0.504524, 0.072586,
		-0.509671, -0.849534, 0.136114,
		29.586956, 31.289576, 31.629177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282917, 31.389452, 31.130650>,  <29.943726, 31.884249, 31.533897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282917, 31.389452, 31.130650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.901274, 31.288567, 31.195234>,  <29.672289, 31.228035, 31.233986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.901274, 31.288567, 31.195234>,  <30.282917, 31.389452, 31.130650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901274, 31.288567, 31.195234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126307, -0.149951, -0.980592,
		0.271530, -0.955983, 0.111213,
		-0.954106, -0.252213, 0.161463,
		29.615042, 31.212902, 31.243673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978725, 31.024338, 31.200544>,  <30.282917, 31.389452, 31.130650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978725, 31.024338, 31.200544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.321392, 31.189489, 31.076832>,  <31.526993, 31.288580, 31.002604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.321392, 31.189489, 31.076832>,  <30.978725, 31.024338, 31.200544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321392, 31.189489, 31.076832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307941, 0.071727, 0.948698,
		0.413879, -0.907958, -0.065696,
		0.856666, 0.412877, -0.309283,
		31.578392, 31.313353, 30.984047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494179, 30.917206, 31.724726>,  <30.978725, 31.024338, 31.200544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494179, 30.917206, 31.724726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.667126, 31.213747, 31.519413>,  <31.770893, 31.391672, 31.396225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.667126, 31.213747, 31.519413>,  <31.494179, 30.917206, 31.724726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667126, 31.213747, 31.519413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407747, 0.346965, 0.844605,
		0.804240, -0.574467, -0.152269,
		0.432365, 0.741353, -0.513280,
		31.796835, 31.436153, 31.365429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126827, 30.903997, 31.991508>,  <31.494179, 30.917206, 31.724726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126827, 30.903997, 31.991508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.084824, 31.267853, 31.830746>,  <32.059620, 31.486166, 31.734289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.084824, 31.267853, 31.830746>,  <32.126827, 30.903997, 31.991508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084824, 31.267853, 31.830746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443565, 0.404556, 0.799740,
		0.890069, -0.094289, -0.445967,
		-0.105011, 0.909640, -0.401906,
		32.053322, 31.540745, 31.710175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776340, 31.207907, 31.953510>,  <32.126827, 30.903997, 31.991508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776340, 31.207907, 31.953510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.535522, 31.525627, 31.920940>,  <32.391033, 31.716259, 31.901400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.535522, 31.525627, 31.920940>,  <32.776340, 31.207907, 31.953510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535522, 31.525627, 31.920940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507673, 0.459498, 0.728787,
		0.616291, 0.397424, -0.679882,
		-0.602041, 0.794303, -0.081423,
		32.354912, 31.763918, 31.896513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276443, 31.834509, 31.912151>,  <32.776340, 31.207907, 31.953510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276443, 31.834509, 31.912151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.908836, 31.947292, 32.022350>,  <32.688271, 32.014961, 32.088470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.908836, 31.947292, 32.022350>,  <33.276443, 31.834509, 31.912151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908836, 31.947292, 32.022350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387000, 0.512280, 0.766681,
		0.075041, 0.811214, -0.579914,
		-0.919021, 0.281960, 0.275498,
		32.633129, 32.031879, 32.105000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300785, 32.569443, 31.944845>,  <33.276443, 31.834509, 31.912151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300785, 32.569443, 31.944845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.984589, 32.461418, 32.164730>,  <32.794868, 32.396603, 32.296661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.984589, 32.461418, 32.164730>,  <33.300785, 32.569443, 31.944845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984589, 32.461418, 32.164730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326848, 0.573038, 0.751531,
		-0.517967, 0.773754, -0.364714,
		-0.790494, -0.270062, 0.549714,
		32.747440, 32.380398, 32.329643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995361, 33.228188, 32.303879>,  <33.300785, 32.569443, 31.944845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995361, 33.228188, 32.303879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.875294, 32.916622, 32.524128>,  <32.803253, 32.729683, 32.656277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.875294, 32.916622, 32.524128>,  <32.995361, 33.228188, 32.303879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875294, 32.916622, 32.524128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125321, 0.540040, 0.832257,
		-0.945618, 0.318822, -0.064489,
		-0.300169, -0.778915, 0.550626,
		32.785244, 32.682949, 32.689316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396816, 33.475159, 32.685661>,  <32.995361, 33.228188, 32.303879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396816, 33.475159, 32.685661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.535454, 33.160595, 32.890182>,  <32.618637, 32.971855, 33.012894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.535454, 33.160595, 32.890182>,  <32.396816, 33.475159, 32.685661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535454, 33.160595, 32.890182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110779, 0.575591, 0.810199,
		-0.931452, -0.224166, 0.286613,
		0.346591, -0.786412, 0.511303,
		32.639431, 32.924671, 33.043571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081657, 33.493805, 33.380386>,  <32.396816, 33.475159, 32.685661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081657, 33.493805, 33.380386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.407051, 33.265236, 33.423687>,  <32.602287, 33.128094, 33.449669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.407051, 33.265236, 33.423687>,  <32.081657, 33.493805, 33.380386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407051, 33.265236, 33.423687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198527, 0.447784, 0.871824,
		-0.546655, -0.687723, 0.477708,
		0.813483, -0.571425, 0.108252,
		32.651096, 33.093807, 33.456161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203484, 33.427807, 34.117222>,  <32.081657, 33.493805, 33.380386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203484, 33.427807, 34.117222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.561768, 33.301018, 33.992493>,  <32.776737, 33.224945, 33.917656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.561768, 33.301018, 33.992493>,  <32.203484, 33.427807, 34.117222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561768, 33.301018, 33.992493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432479, 0.458169, 0.776559,
		-0.103281, -0.830427, 0.547470,
		0.895709, -0.316973, -0.311822,
		32.830479, 33.205925, 33.898945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656933, 33.048000, 34.661736>,  <32.203484, 33.427807, 34.117222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656933, 33.048000, 34.661736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.900810, 33.180328, 34.373615>,  <33.047134, 33.259724, 34.200745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.900810, 33.180328, 34.373615>,  <32.656933, 33.048000, 34.661736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900810, 33.180328, 34.373615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617157, 0.372112, 0.693289,
		0.497388, -0.867231, 0.022705,
		0.609690, 0.330821, -0.720302,
		33.083717, 33.279575, 34.157524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428371, 33.661961, 34.971008>,  <32.656933, 33.048000, 34.661736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428371, 33.661961, 34.971008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.630432, 33.715614, 35.312023>,  <32.751671, 33.747807, 35.516632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.630432, 33.715614, 35.312023>,  <32.428371, 33.661961, 34.971008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630432, 33.715614, 35.312023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860844, 0.148558, 0.486700,
		-0.061371, -0.979765, 0.190511,
		0.505154, 0.134131, 0.852543,
		32.781979, 33.755856, 35.567787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.521639, 28.827831, 28.228018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688206, 29.153645, 28.066458>,  <31.788145, 29.349133, 27.969522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688206, 29.153645, 28.066458>,  <31.521639, 28.827831, 28.228018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688206, 29.153645, 28.066458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124827, 0.491265, 0.862019,
		0.900564, -0.308542, 0.306246,
		0.416417, 0.814531, -0.403901,
		31.813131, 29.398005, 27.945288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019531, 28.952850, 28.679646>,  <31.521639, 28.827831, 28.228018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019531, 28.952850, 28.679646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979561, 29.285109, 28.460541>,  <31.955578, 29.484463, 28.329079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979561, 29.285109, 28.460541>,  <32.019531, 28.952850, 28.679646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979561, 29.285109, 28.460541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022650, 0.552274, 0.833355,
		0.994737, 0.070867, -0.074001,
		-0.099926, 0.830645, -0.547763,
		31.949583, 29.534302, 28.296211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690228, 29.359440, 28.773636>,  <32.019531, 28.952850, 28.679646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690228, 29.359440, 28.773636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388557, 29.602335, 28.673653>,  <32.207554, 29.748072, 28.613663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388557, 29.602335, 28.673653>,  <32.690228, 29.359440, 28.773636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388557, 29.602335, 28.673653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172419, 0.550403, 0.816902,
		0.633629, 0.572993, -0.519801,
		-0.754179, 0.607236, -0.249956,
		32.162304, 29.784506, 28.598665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780891, 30.013329, 29.076174>,  <32.690228, 29.359440, 28.773636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780891, 30.013329, 29.076174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396111, 30.080606, 28.990057>,  <32.165241, 30.120974, 28.938387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396111, 30.080606, 28.990057>,  <32.780891, 30.013329, 29.076174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396111, 30.080606, 28.990057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077857, 0.586586, 0.806136,
		0.261874, 0.792230, -0.551175,
		-0.961956, 0.168193, -0.215292,
		32.107525, 30.131065, 28.925468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678913, 30.818525, 29.081585>,  <32.780891, 30.013329, 29.076174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678913, 30.818525, 29.081585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314922, 30.656570, 29.117399>,  <32.096527, 30.559399, 29.138887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314922, 30.656570, 29.117399>,  <32.678913, 30.818525, 29.081585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314922, 30.656570, 29.117399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239915, 0.690180, 0.682709,
		-0.338217, 0.599765, -0.725183,
		-0.909973, -0.404886, 0.089538,
		32.041931, 30.535105, 29.144260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118839, 31.325884, 28.995403>,  <32.678913, 30.818525, 29.081585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118839, 31.325884, 28.995403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970381, 31.045088, 29.238535>,  <31.881304, 30.876610, 29.384415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970381, 31.045088, 29.238535>,  <32.118839, 31.325884, 28.995403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970381, 31.045088, 29.238535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237211, 0.704544, 0.668842,
		-0.897763, 0.104057, -0.428011,
		-0.371150, -0.701990, 0.607830,
		31.859035, 30.834490, 29.420883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556894, 31.696327, 29.317177>,  <32.118839, 31.325884, 28.995403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556894, 31.696327, 29.317177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636194, 31.362167, 29.522236>,  <31.683775, 31.161673, 29.645271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636194, 31.362167, 29.522236>,  <31.556894, 31.696327, 29.317177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636194, 31.362167, 29.522236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119977, 0.498411, 0.858599,
		-0.972781, -0.231724, -0.001418,
		0.198251, -0.835398, 0.512646,
		31.695669, 31.111547, 29.676029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035706, 31.620308, 29.803394>,  <31.556894, 31.696327, 29.317177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035706, 31.620308, 29.803394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331194, 31.396873, 29.954269>,  <31.508488, 31.262812, 30.044794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331194, 31.396873, 29.954269>,  <31.035706, 31.620308, 29.803394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331194, 31.396873, 29.954269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110955, 0.451200, 0.885498,
		-0.664816, -0.695987, 0.271333,
		0.738720, -0.558588, 0.377189,
		31.552811, 31.229298, 30.067427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798927, 31.214859, 30.473104>,  <31.035706, 31.620308, 29.803394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798927, 31.214859, 30.473104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196877, 31.248814, 30.495102>,  <31.435646, 31.269186, 30.508301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196877, 31.248814, 30.495102>,  <30.798927, 31.214859, 30.473104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196877, 31.248814, 30.495102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081704, 0.353958, 0.931686,
		0.059622, -0.931401, 0.359079,
		0.994871, 0.084887, 0.054996,
		31.495338, 31.274281, 30.511600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283571, 30.769226, 30.777962>,  <30.798927, 31.214859, 30.473104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283571, 30.769226, 30.777962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907991, 30.900602, 30.818956>,  <29.682644, 30.979429, 30.843554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907991, 30.900602, 30.818956>,  <30.283571, 30.769226, 30.777962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907991, 30.900602, 30.818956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198960, -0.275303, -0.940544,
		-0.280709, -0.903509, 0.323843,
		-0.938945, 0.328451, 0.102483,
		29.626307, 30.999134, 30.849703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972633, 30.356480, 30.298721>,  <30.283571, 30.769226, 30.777962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972633, 30.356480, 30.298721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654270, 30.585268, 30.378099>,  <29.463253, 30.722542, 30.425726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654270, 30.585268, 30.378099>,  <29.972633, 30.356480, 30.298721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654270, 30.585268, 30.378099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429095, -0.301706, -0.851382,
		-0.427096, -0.762771, 0.485560,
		-0.795906, 0.571974, 0.198444,
		29.415499, 30.756859, 30.437634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387699, 29.888700, 30.176443>,  <29.972633, 30.356480, 30.298721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387699, 29.888700, 30.176443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227476, 30.254133, 30.148378>,  <29.131342, 30.473392, 30.131540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227476, 30.254133, 30.148378>,  <29.387699, 29.888700, 30.176443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227476, 30.254133, 30.148378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456276, -0.265283, -0.849374,
		-0.794585, -0.308211, 0.523106,
		-0.400557, 0.913581, -0.070161,
		29.107309, 30.528208, 30.127331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659920, 29.812941, 29.997149>,  <29.387699, 29.888700, 30.176443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659920, 29.812941, 29.997149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750767, 30.190405, 29.900883>,  <28.805275, 30.416883, 29.843122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750767, 30.190405, 29.900883>,  <28.659920, 29.812941, 29.997149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750767, 30.190405, 29.900883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475967, -0.108039, -0.872802,
		-0.849631, 0.312777, 0.424615,
		0.227118, 0.943662, -0.240665,
		28.818903, 30.473503, 29.828684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991011, 30.118507, 29.795481>,  <28.659920, 29.812941, 29.997149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991011, 30.118507, 29.795481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283670, 30.339399, 29.635618>,  <28.459267, 30.471935, 29.539701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283670, 30.339399, 29.635618>,  <27.991011, 30.118507, 29.795481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283670, 30.339399, 29.635618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554664, 0.141457, -0.819962,
		-0.396275, 0.821602, 0.409801,
		0.731652, 0.552232, -0.399657,
		28.503166, 30.505070, 29.515720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648859, 30.431557, 29.338730>,  <27.991011, 30.118507, 29.795481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648859, 30.431557, 29.338730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022690, 30.500160, 29.214056>,  <28.246988, 30.541323, 29.139252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022690, 30.500160, 29.214056>,  <27.648859, 30.431557, 29.338730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022690, 30.500160, 29.214056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346865, 0.244652, -0.905445,
		-0.079038, 0.954322, 0.288137,
		0.934579, 0.171509, -0.311684,
		28.303064, 30.551613, 29.120550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617607, 31.085424, 28.928267>,  <27.648859, 30.431557, 29.338730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617607, 31.085424, 28.928267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935850, 30.870054, 28.817194>,  <28.126795, 30.740831, 28.750549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935850, 30.870054, 28.817194>,  <27.617607, 31.085424, 28.928267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935850, 30.870054, 28.817194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290542, 0.063091, -0.954780,
		0.531599, 0.840307, -0.106240,
		0.795606, -0.538427, -0.277684,
		28.174532, 30.708527, 28.733889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982285, 31.474218, 28.457485>,  <27.617607, 31.085424, 28.928267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982285, 31.474218, 28.457485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087547, 31.095114, 28.385376>,  <28.150705, 30.867651, 28.342110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087547, 31.095114, 28.385376>,  <27.982285, 31.474218, 28.457485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087547, 31.095114, 28.385376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332931, 0.086167, -0.939006,
		0.905486, 0.307124, -0.292864,
		0.263156, -0.947760, -0.180274,
		28.166494, 30.810785, 28.331293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136782, 31.505430, 27.802235>,  <27.982285, 31.474218, 28.457485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136782, 31.505430, 27.802235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104288, 31.107964, 27.833294>,  <28.084793, 30.869484, 27.851931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104288, 31.107964, 27.833294>,  <28.136782, 31.505430, 27.802235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104288, 31.107964, 27.833294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486445, -0.028472, -0.873247,
		0.869926, -0.108707, -0.481051,
		-0.081232, -0.993666, 0.077649,
		28.079918, 30.809864, 27.856588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248686, 31.247471, 27.106724>,  <28.136782, 31.505430, 27.802235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248686, 31.247471, 27.106724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091648, 30.929768, 27.292208>,  <27.997425, 30.739145, 27.403498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091648, 30.929768, 27.292208>,  <28.248686, 31.247471, 27.106724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091648, 30.929768, 27.292208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446860, -0.275946, -0.850982,
		0.803856, -0.541304, -0.246587,
		-0.392596, -0.794257, 0.463708,
		27.973869, 30.691490, 27.431320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407234, 30.634974, 26.739241>,  <28.248686, 31.247471, 27.106724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407234, 30.634974, 26.739241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080610, 30.548082, 26.953173>,  <27.884636, 30.495947, 27.081532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080610, 30.548082, 26.953173>,  <28.407234, 30.634974, 26.739241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080610, 30.548082, 26.953173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440876, -0.363397, -0.820714,
		0.372638, -0.905955, 0.200964,
		-0.816559, -0.217229, 0.534830,
		27.835642, 30.482914, 27.113621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177736, 29.931528, 26.490622>,  <28.407234, 30.634974, 26.739241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177736, 29.931528, 26.490622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868317, 30.104727, 26.675722>,  <27.682665, 30.208645, 26.786783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868317, 30.104727, 26.675722>,  <28.177736, 29.931528, 26.490622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868317, 30.104727, 26.675722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604613, -0.285410, -0.743629,
		-0.189913, -0.855018, 0.482572,
		-0.773548, 0.432995, 0.462752,
		27.636251, 30.234625, 26.814548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698786, 29.351400, 26.508421>,  <28.177736, 29.931528, 26.490622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698786, 29.351400, 26.508421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494358, 29.693262, 26.545027>,  <27.371702, 29.898378, 26.566990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494358, 29.693262, 26.545027>,  <27.698786, 29.351400, 26.508421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494358, 29.693262, 26.545027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610749, -0.286161, -0.738307,
		-0.604811, -0.433216, 0.668227,
		-0.511067, 0.854655, 0.091513,
		27.341038, 29.949659, 26.572481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064251, 29.115627, 26.401463>,  <27.698786, 29.351400, 26.508421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064251, 29.115627, 26.401463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070766, 29.512100, 26.348866>,  <27.074677, 29.749985, 26.317307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070766, 29.512100, 26.348866>,  <27.064251, 29.115627, 26.401463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070766, 29.512100, 26.348866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552907, -0.100643, -0.827142,
		-0.833083, 0.086177, 0.546393,
		0.016290, 0.991183, -0.131492,
		27.075653, 29.809456, 26.309418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.753031, 36.484810, 23.933569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.844051, 36.107212, 24.029139>,  <30.898664, 35.880653, 24.086481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.844051, 36.107212, 24.029139>,  <30.753031, 36.484810, 23.933569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844051, 36.107212, 24.029139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135132, 0.212376, 0.967799,
		-0.964344, -0.252512, -0.079238,
		0.227553, -0.943999, 0.238926,
		30.912317, 35.824013, 24.100817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189304, 36.254044, 24.275171>,  <30.753031, 36.484810, 23.933569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189304, 36.254044, 24.275171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.504950, 36.034023, 24.384525>,  <30.694338, 35.902012, 24.450138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.504950, 36.034023, 24.384525>,  <30.189304, 36.254044, 24.275171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504950, 36.034023, 24.384525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115362, 0.304434, 0.945522,
		-0.603317, -0.777662, 0.176777,
		0.789113, -0.550056, 0.273383,
		30.741684, 35.869007, 24.466539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061985, 36.049419, 25.019449>,  <30.189304, 36.254044, 24.275171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061985, 36.049419, 25.019449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.447277, 35.942467, 25.008904>,  <30.678452, 35.878296, 25.002575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.447277, 35.942467, 25.008904>,  <30.061985, 36.049419, 25.019449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447277, 35.942467, 25.008904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069718, 0.153970, 0.985613,
		-0.259475, -0.951210, 0.166950,
		0.963230, -0.267381, -0.026365,
		30.736246, 35.862251, 25.000994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217218, 35.510017, 25.601038>,  <30.061985, 36.049419, 25.019449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217218, 35.510017, 25.601038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.591412, 35.616730, 25.508348>,  <30.815928, 35.680756, 25.452736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.591412, 35.616730, 25.508348>,  <30.217218, 35.510017, 25.601038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591412, 35.616730, 25.508348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228269, 0.044334, 0.972588,
		0.269744, -0.962736, -0.019424,
		0.935485, 0.266783, -0.231721,
		30.872057, 35.696766, 25.438831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651873, 35.226879, 26.086018>,  <30.217218, 35.510017, 25.601038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651873, 35.226879, 26.086018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.896860, 35.518345, 25.963423>,  <31.043852, 35.693222, 25.889866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.896860, 35.518345, 25.963423>,  <30.651873, 35.226879, 26.086018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896860, 35.518345, 25.963423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261684, 0.178964, 0.948416,
		0.745926, -0.661077, -0.081069,
		0.612467, 0.728663, -0.306487,
		31.080601, 35.736942, 25.871477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348484, 35.128128, 26.491537>,  <30.651873, 35.226879, 26.086018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348484, 35.128128, 26.491537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.326849, 35.501698, 26.350191>,  <31.313868, 35.725838, 26.265385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.326849, 35.501698, 26.350191>,  <31.348484, 35.128128, 26.491537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326849, 35.501698, 26.350191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404826, 0.344003, 0.847218,
		0.912793, -0.097225, -0.396683,
		-0.054089, 0.933921, -0.353363,
		31.310623, 35.781876, 26.244183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878777, 35.494007, 26.831404>,  <31.348484, 35.128128, 26.491537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878777, 35.494007, 26.831404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.660763, 35.805607, 26.707407>,  <31.529955, 35.992569, 26.633009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.660763, 35.805607, 26.707407>,  <31.878777, 35.494007, 26.831404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660763, 35.805607, 26.707407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152830, 0.455854, 0.876835,
		0.824367, 0.430528, -0.367510,
		-0.545033, 0.779001, -0.309994,
		31.497253, 36.039307, 26.614408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274300, 36.129482, 26.973734>,  <31.878777, 35.494007, 26.831404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274300, 36.129482, 26.973734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887184, 36.221016, 26.931744>,  <31.654915, 36.275936, 26.906549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887184, 36.221016, 26.931744>,  <32.274300, 36.129482, 26.973734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887184, 36.221016, 26.931744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026202, 0.506231, 0.861999,
		0.250399, 0.831482, -0.495921,
		-0.967788, 0.228838, -0.104974,
		31.596848, 36.289669, 26.900251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260086, 36.765747, 27.187349>,  <32.274300, 36.129482, 26.973734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260086, 36.765747, 27.187349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885418, 36.632256, 27.229832>,  <31.660618, 36.552162, 27.255322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885418, 36.632256, 27.229832>,  <32.260086, 36.765747, 27.187349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885418, 36.632256, 27.229832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019295, 0.253623, 0.967111,
		-0.349686, 0.907911, -0.231121,
		-0.936668, -0.333726, 0.106207,
		31.604418, 36.532139, 27.261694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892427, 37.270805, 27.509001>,  <32.260086, 36.765747, 27.187349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892427, 37.270805, 27.509001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.669678, 36.944294, 27.570431>,  <31.536028, 36.748386, 27.607288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.669678, 36.944294, 27.570431>,  <31.892427, 37.270805, 27.509001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669678, 36.944294, 27.570431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016266, 0.174147, 0.984585,
		-0.830438, 0.550788, -0.083700,
		-0.556874, -0.816275, 0.153577,
		31.502615, 36.699409, 27.616505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347145, 37.510437, 28.023090>,  <31.892427, 37.270805, 27.509001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347145, 37.510437, 28.023090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.383135, 37.112701, 28.045689>,  <31.404730, 36.874062, 28.059248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.383135, 37.112701, 28.045689>,  <31.347145, 37.510437, 28.023090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383135, 37.112701, 28.045689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046372, 0.052480, 0.997545,
		-0.994864, -0.092375, -0.041387,
		0.089976, -0.994341, 0.056494,
		31.410128, 36.814400, 28.062637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982100, 37.313133, 28.535145>,  <31.347145, 37.510437, 28.023090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982100, 37.313133, 28.535145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.193197, 36.973652, 28.521389>,  <31.319857, 36.769962, 28.513136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.193197, 36.973652, 28.521389>,  <30.982100, 37.313133, 28.535145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193197, 36.973652, 28.521389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099549, -0.102009, 0.989790,
		-0.843549, -0.518933, -0.138323,
		0.527745, -0.848707, -0.034391,
		31.351521, 36.719040, 28.511072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704844, 36.932377, 29.051018>,  <30.982100, 37.313133, 28.535145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704844, 36.932377, 29.051018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.053064, 36.750412, 28.975981>,  <31.261997, 36.641232, 28.930958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.053064, 36.750412, 28.975981>,  <30.704844, 36.932377, 29.051018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053064, 36.750412, 28.975981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142390, -0.132033, 0.980965,
		-0.471023, -0.880693, -0.050167,
		0.870553, -0.454914, -0.187592,
		31.314230, 36.613937, 28.919703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752668, 36.233166, 29.408377>,  <30.704844, 36.932377, 29.051018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752668, 36.233166, 29.408377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.125475, 36.365463, 29.349106>,  <31.349159, 36.444843, 29.313543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.125475, 36.365463, 29.349106>,  <30.752668, 36.233166, 29.408377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125475, 36.365463, 29.349106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247327, -0.281596, 0.927110,
		0.264912, -0.900728, -0.344254,
		0.932015, 0.330745, -0.148176,
		31.405079, 36.464687, 29.304653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366018, 35.606426, 29.653040>,  <30.752668, 36.233166, 29.408377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366018, 35.606426, 29.653040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.013790, 35.700897, 29.817387>,  <29.802452, 35.757580, 29.915995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.013790, 35.700897, 29.817387>,  <30.366018, 35.606426, 29.653040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013790, 35.700897, 29.817387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444211, -0.109245, -0.889237,
		-0.165141, -0.965547, 0.201115,
		-0.880571, 0.236187, 0.410866,
		29.749619, 35.771751, 29.940647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944338, 35.081516, 29.366909>,  <30.366018, 35.606426, 29.653040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944338, 35.081516, 29.366909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.714512, 35.381310, 29.498449>,  <29.576616, 35.561188, 29.577374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.714512, 35.381310, 29.498449>,  <29.944338, 35.081516, 29.366909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714512, 35.381310, 29.498449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471954, 0.024870, -0.881272,
		-0.668680, -0.661553, 0.339434,
		-0.574566, 0.749486, 0.328853,
		29.542141, 35.606155, 29.597105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284988, 34.906143, 29.088598>,  <29.944338, 35.081516, 29.366909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284988, 34.906143, 29.088598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.264763, 35.298134, 29.165634>,  <29.252628, 35.533329, 29.211855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.264763, 35.298134, 29.165634>,  <29.284988, 34.906143, 29.088598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264763, 35.298134, 29.165634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607120, 0.122955, -0.785040,
		-0.793000, -0.156620, 0.588746,
		-0.050564, 0.979976, 0.192590,
		29.249594, 35.592125, 29.223412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516615, 35.043648, 28.888889>,  <29.284988, 34.906143, 29.088598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516615, 35.043648, 28.888889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.737656, 35.377018, 28.886721>,  <28.870281, 35.577042, 28.885420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.737656, 35.377018, 28.886721>,  <28.516615, 35.043648, 28.888889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737656, 35.377018, 28.886721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378913, 0.245432, -0.892294,
		-0.742331, 0.495138, 0.451423,
		0.552603, 0.833427, -0.005422,
		28.903437, 35.627045, 28.885094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095554, 35.660091, 28.683779>,  <28.516615, 35.043648, 28.888889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095554, 35.660091, 28.683779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.468224, 35.773945, 28.593472>,  <28.691826, 35.842258, 28.539288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.468224, 35.773945, 28.593472>,  <28.095554, 35.660091, 28.683779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468224, 35.773945, 28.593472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233894, -0.005583, -0.972246,
		-0.277993, 0.958620, 0.061372,
		0.931672, 0.284632, -0.225768,
		28.747725, 35.859333, 28.525742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035587, 36.181480, 28.194809>,  <28.095554, 35.660091, 28.683779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035587, 36.181480, 28.194809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.404039, 36.035934, 28.139500>,  <28.625111, 35.948605, 28.106314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.404039, 36.035934, 28.139500>,  <28.035587, 36.181480, 28.194809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404039, 36.035934, 28.139500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202508, -0.144596, -0.968547,
		0.332429, 0.920159, -0.206878,
		0.921131, -0.363867, -0.138272,
		28.680378, 35.926773, 28.098019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126305, 36.371544, 27.471479>,  <28.035587, 36.181480, 28.194809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126305, 36.371544, 27.471479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.449368, 36.151257, 27.555767>,  <28.643206, 36.019085, 27.606340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.449368, 36.151257, 27.555767>,  <28.126305, 36.371544, 27.471479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449368, 36.151257, 27.555767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010144, -0.344331, -0.938794,
		0.589567, 0.760360, -0.272514,
		0.807656, -0.550717, 0.210720,
		28.691664, 35.986042, 27.618982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713272, 36.578037, 26.955980>,  <28.126305, 36.371544, 27.471479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713272, 36.578037, 26.955980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.758251, 36.208553, 27.102467>,  <28.785238, 35.986862, 27.190359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.758251, 36.208553, 27.102467>,  <28.713272, 36.578037, 26.955980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758251, 36.208553, 27.102467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053936, -0.373685, -0.925986,
		0.992193, 0.084372, -0.091841,
		0.112447, -0.923710, 0.366217,
		28.791985, 35.931438, 27.212332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281479, 36.238087, 26.538868>,  <28.713272, 36.578037, 26.955980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281479, 36.238087, 26.538868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.058414, 35.934452, 26.673210>,  <28.924576, 35.752270, 26.753815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.058414, 35.934452, 26.673210>,  <29.281479, 36.238087, 26.538868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058414, 35.934452, 26.673210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018781, -0.416047, -0.909149,
		0.829855, -0.500691, 0.246270,
		-0.557663, -0.759088, 0.335855,
		28.891115, 35.706726, 26.773966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407248, 35.694344, 26.095192>,  <29.281479, 36.238087, 26.538868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407248, 35.694344, 26.095192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.088621, 35.545235, 26.285570>,  <28.897446, 35.455769, 26.399797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.088621, 35.545235, 26.285570>,  <29.407248, 35.694344, 26.095192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088621, 35.545235, 26.285570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245248, -0.520322, -0.817997,
		0.552573, -0.768312, 0.323048,
		-0.796565, -0.372776, 0.475943,
		28.849651, 35.433403, 26.428352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390736, 35.018166, 25.924421>,  <29.407248, 35.694344, 26.095192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390736, 35.018166, 25.924421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.017565, 35.082817, 26.053122>,  <28.793663, 35.121609, 26.130341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.017565, 35.082817, 26.053122>,  <29.390736, 35.018166, 25.924421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017565, 35.082817, 26.053122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358475, -0.500814, -0.787833,
		0.033799, -0.850330, 0.525164,
		-0.932927, 0.161630, 0.321749,
		28.737686, 35.131306, 26.149647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130289, 34.442150, 25.730808>,  <29.390736, 35.018166, 25.924421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130289, 34.442150, 25.730808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.813017, 34.684284, 25.757444>,  <28.622654, 34.829563, 25.773426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.813017, 34.684284, 25.757444>,  <29.130289, 34.442150, 25.730808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813017, 34.684284, 25.757444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390552, -0.421726, -0.818301,
		-0.467261, -0.675069, 0.570920,
		-0.793181, 0.605334, 0.066594,
		28.575064, 34.865887, 25.777422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526016, 34.006317, 25.736034>,  <29.130289, 34.442150, 25.730808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526016, 34.006317, 25.736034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.439621, 34.373890, 25.604031>,  <28.387783, 34.594433, 25.524828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.439621, 34.373890, 25.604031>,  <28.526016, 34.006317, 25.736034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439621, 34.373890, 25.604031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482677, -0.394289, -0.782022,
		-0.848747, -0.009621, 0.528712,
		-0.215989, 0.918936, -0.330008,
		28.374825, 34.649570, 25.505028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830885, 33.948223, 25.535566>,  <28.526016, 34.006317, 25.736034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830885, 33.948223, 25.535566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.936506, 34.287315, 25.351553>,  <27.999880, 34.490768, 25.241144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.936506, 34.287315, 25.351553>,  <27.830885, 33.948223, 25.535566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936506, 34.287315, 25.351553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489287, -0.293300, -0.821324,
		-0.831187, 0.441964, 0.337335,
		0.264055, 0.847728, -0.460035,
		28.015722, 34.541634, 25.213543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072998, 33.965733, 25.675945>,  <27.830885, 33.948223, 25.535566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072998, 33.965733, 25.675945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.834311, 33.651844, 25.743048>,  <26.691097, 33.463512, 25.783310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.834311, 33.651844, 25.743048>,  <27.072998, 33.965733, 25.675945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834311, 33.651844, 25.743048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046855, 0.242773, 0.968951,
		-0.801082, 0.570331, -0.181635,
		-0.596719, -0.784719, 0.167758,
		26.655294, 33.416428, 25.793375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484165, 34.254398, 25.999615>,  <27.072998, 33.965733, 25.675945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484165, 34.254398, 25.999615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.527300, 33.868717, 26.096519>,  <26.553181, 33.637310, 26.154661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.527300, 33.868717, 26.096519>,  <26.484165, 34.254398, 25.999615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527300, 33.868717, 26.096519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026116, 0.246344, 0.968830,
		-0.993825, -0.098151, 0.051747,
		0.107839, -0.964199, 0.242260,
		26.559652, 33.579456, 26.169197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007151, 34.060627, 26.518160>,  <26.484165, 34.254398, 25.999615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007151, 34.060627, 26.518160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.238316, 33.736729, 26.558823>,  <26.377014, 33.542389, 26.583220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.238316, 33.736729, 26.558823>,  <26.007151, 34.060627, 26.518160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238316, 33.736729, 26.558823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201996, -0.021241, 0.979156,
		-0.790705, -0.586401, -0.175840,
		0.577913, -0.809742, 0.101655,
		26.411690, 33.493805, 26.589319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685287, 33.638004, 27.092093>,  <26.007151, 34.060627, 26.518160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685287, 33.638004, 27.092093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.063940, 33.509602, 27.080484>,  <26.291132, 33.432560, 27.073519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.063940, 33.509602, 27.080484>,  <25.685287, 33.638004, 27.092093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063940, 33.509602, 27.080484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040627, -0.208157, 0.977251,
		-0.319745, -0.923918, -0.210090,
		0.946632, -0.321007, -0.029021,
		26.347929, 33.413300, 27.071777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652763, 33.100677, 27.471193>,  <25.685287, 33.638004, 27.092093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652763, 33.100677, 27.471193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.044359, 33.181145, 27.457870>,  <26.279316, 33.229427, 27.449877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.044359, 33.181145, 27.457870>,  <25.652763, 33.100677, 27.471193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044359, 33.181145, 27.457870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046053, -0.059012, 0.997195,
		0.198642, -0.977777, -0.067036,
		0.978990, 0.201172, -0.033307,
		26.338057, 33.241497, 27.447878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121159, 32.525875, 27.716848>,  <25.652763, 33.100677, 27.471193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121159, 32.525875, 27.716848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.345608, 32.852917, 27.768497>,  <26.480276, 33.049141, 27.799486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.345608, 32.852917, 27.768497>,  <26.121159, 32.525875, 27.716848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345608, 32.852917, 27.768497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013023, -0.147256, 0.989013,
		0.827631, -0.556637, -0.071981,
		0.561121, 0.817601, 0.129123,
		26.513945, 33.098198, 27.807234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552507, 32.338619, 28.315739>,  <26.121159, 32.525875, 27.716848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552507, 32.338619, 28.315739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.615562, 32.729794, 28.260904>,  <26.653395, 32.964497, 28.228004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.615562, 32.729794, 28.260904>,  <26.552507, 32.338619, 28.315739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615562, 32.729794, 28.260904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295257, 0.085794, 0.951558,
		0.942324, -0.190476, -0.275218,
		0.157637, 0.977936, -0.137085,
		26.662853, 33.023174, 28.219778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188181, 32.423935, 28.703102>,  <26.552507, 32.338619, 28.315739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188181, 32.423935, 28.703102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.007776, 32.780418, 28.683733>,  <26.899534, 32.994308, 28.672112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.007776, 32.780418, 28.683733>,  <27.188181, 32.423935, 28.703102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007776, 32.780418, 28.683733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039715, 0.074239, 0.996449,
		0.891635, 0.447486, -0.068877,
		-0.451010, 0.891204, -0.048422,
		26.872473, 33.047779, 28.669207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536934, 32.793438, 29.197189>,  <27.188181, 32.423935, 28.703102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536934, 32.793438, 29.197189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.178827, 32.964691, 29.147871>,  <26.963963, 33.067444, 29.118280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.178827, 32.964691, 29.147871>,  <27.536934, 32.793438, 29.197189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178827, 32.964691, 29.147871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044420, 0.189583, 0.980859,
		0.443308, 0.883609, -0.150710,
		-0.895268, 0.428128, -0.123294,
		26.910248, 33.093128, 29.110884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560894, 33.454494, 29.502819>,  <27.536934, 32.793438, 29.197189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560894, 33.454494, 29.502819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.170549, 33.367943, 29.490959>,  <26.936342, 33.316013, 29.483843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.170549, 33.367943, 29.490959>,  <27.560894, 33.454494, 29.502819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170549, 33.367943, 29.490959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076691, 0.212391, 0.974171,
		-0.204493, 0.952927, -0.223858,
		-0.975859, -0.216379, -0.029648,
		26.877792, 33.303028, 29.482065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214788, 34.044991, 29.751274>,  <27.560894, 33.454494, 29.502819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214788, 34.044991, 29.751274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.937933, 33.758194, 29.784420>,  <26.771820, 33.586117, 29.804308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.937933, 33.758194, 29.784420>,  <27.214788, 34.044991, 29.751274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937933, 33.758194, 29.784420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260422, 0.355154, 0.897801,
		-0.673144, 0.599824, -0.432537,
		-0.692140, -0.716991, 0.082863,
		26.730291, 33.543098, 29.809278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674776, 34.418423, 29.986246>,  <27.214788, 34.044991, 29.751274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674776, 34.418423, 29.986246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.621655, 34.031933, 30.074593>,  <26.589781, 33.800041, 30.127600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.621655, 34.031933, 30.074593>,  <26.674776, 34.418423, 29.986246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621655, 34.031933, 30.074593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282979, 0.250528, 0.925829,
		-0.949888, 0.060453, -0.306691,
		-0.132804, -0.966220, 0.220867,
		26.581814, 33.742065, 30.140852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100092, 34.478245, 30.508101>,  <26.674776, 34.418423, 29.986246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100092, 34.478245, 30.508101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.231945, 34.101242, 30.530083>,  <26.311056, 33.875038, 30.543272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.231945, 34.101242, 30.530083>,  <26.100092, 34.478245, 30.508101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231945, 34.101242, 30.530083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068349, 0.034230, 0.997074,
		-0.941632, -0.332424, -0.053137,
		0.329632, -0.942508, 0.054953,
		26.330835, 33.818489, 30.546568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635714, 34.210835, 31.065626>,  <26.100092, 34.478245, 30.508101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635714, 34.210835, 31.065626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.971287, 33.996769, 31.026037>,  <26.172630, 33.868332, 31.002283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.971287, 33.996769, 31.026037>,  <25.635714, 34.210835, 31.065626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971287, 33.996769, 31.026037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157853, 0.065233, 0.985306,
		-0.520841, -0.842228, 0.139203,
		0.838932, -0.535161, -0.098973,
		26.222967, 33.836220, 30.996346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<26.398193, 29.288153, 26.221624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.599316, 29.618069, 26.118160>,  <26.719988, 29.816019, 26.056082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.599316, 29.618069, 26.118160>,  <26.398193, 29.288153, 26.221624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599316, 29.618069, 26.118160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580487, 0.100462, -0.808049,
		-0.640487, 0.556440, 0.529293,
		0.502804, 0.824792, -0.258662,
		26.750156, 29.865507, 26.040562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938606, 29.738428, 26.026737>,  <26.398193, 29.288153, 26.221624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938606, 29.738428, 26.026737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.273296, 29.886454, 25.865273>,  <26.474110, 29.975269, 25.768394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.273296, 29.886454, 25.865273>,  <25.938606, 29.738428, 26.026737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273296, 29.886454, 25.865273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489122, 0.173539, -0.854777,
		-0.246271, 0.912653, 0.326212,
		0.836725, 0.370064, -0.403662,
		26.524315, 29.997473, 25.744175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665861, 30.320608, 25.643770>,  <25.938606, 29.738428, 26.026737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.665861, 30.320608, 25.643770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.024551, 30.194807, 25.519211>,  <26.239765, 30.119326, 25.444475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.024551, 30.194807, 25.519211>,  <25.665861, 30.320608, 25.643770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024551, 30.194807, 25.519211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282795, 0.134066, -0.949765,
		0.340452, 0.939741, 0.031280,
		0.896727, -0.314504, -0.311397,
		26.293570, 30.100456, 25.425793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813120, 30.692072, 25.028027>,  <25.665861, 30.320608, 25.643770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813120, 30.692072, 25.028027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.068642, 30.385271, 25.003914>,  <26.221954, 30.201191, 24.989447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.068642, 30.385271, 25.003914>,  <25.813120, 30.692072, 25.028027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068642, 30.385271, 25.003914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015731, 0.091358, -0.995694,
		0.769207, 0.635107, 0.070425,
		0.638806, -0.767003, -0.060283,
		26.260283, 30.155170, 24.985828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174036, 30.970747, 24.497446>,  <25.813120, 30.692072, 25.028027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174036, 30.970747, 24.497446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.260408, 30.580614, 24.515768>,  <26.312231, 30.346535, 24.526762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.260408, 30.580614, 24.515768>,  <26.174036, 30.970747, 24.497446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260408, 30.580614, 24.515768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114766, -0.021236, -0.993165,
		0.969640, 0.219712, 0.107350,
		0.215931, -0.975334, 0.045807,
		26.325188, 30.288013, 24.529510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801147, 30.835863, 24.183435>,  <26.174036, 30.970747, 24.497446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801147, 30.835863, 24.183435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.610924, 30.484055, 24.176622>,  <26.496790, 30.272970, 24.172535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.610924, 30.484055, 24.176622>,  <26.801147, 30.835863, 24.183435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610924, 30.484055, 24.176622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176860, -0.076625, -0.981249,
		0.861722, -0.469654, 0.191991,
		-0.475558, -0.879519, -0.017034,
		26.468256, 30.220200, 24.171513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221725, 30.375847, 23.822845>,  <26.801147, 30.835863, 24.183435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221725, 30.375847, 23.822845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.867870, 30.191067, 23.797487>,  <26.655558, 30.080198, 23.782272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.867870, 30.191067, 23.797487>,  <27.221725, 30.375847, 23.822845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867870, 30.191067, 23.797487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174026, -0.200964, -0.964017,
		0.432590, -0.863836, 0.258172,
		-0.884636, -0.461952, -0.063395,
		26.602480, 30.052481, 23.778469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304680, 29.737947, 23.471991>,  <27.221725, 30.375847, 23.822845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304680, 29.737947, 23.471991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.912424, 29.806311, 23.433762>,  <26.677071, 29.847328, 23.410824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.912424, 29.806311, 23.433762>,  <27.304680, 29.737947, 23.471991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912424, 29.806311, 23.433762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037560, -0.314828, -0.948405,
		-0.192178, -0.933635, 0.302314,
		-0.980641, 0.170907, -0.095571,
		26.618233, 29.857584, 23.405090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032438, 29.124117, 23.283016>,  <27.304680, 29.737947, 23.471991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032438, 29.124117, 23.283016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.790028, 29.416460, 23.157431>,  <26.644581, 29.591866, 23.082079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.790028, 29.416460, 23.157431>,  <27.032438, 29.124117, 23.283016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790028, 29.416460, 23.157431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025710, -0.412497, -0.910596,
		-0.795027, -0.543776, 0.268775,
		-0.606029, 0.730859, -0.313966,
		26.608219, 29.635717, 23.063240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512009, 28.843340, 22.917057>,  <27.032438, 29.124117, 23.283016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512009, 28.843340, 22.917057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.499443, 29.218025, 22.777584>,  <26.491903, 29.442837, 22.693901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.499443, 29.218025, 22.777584>,  <26.512009, 28.843340, 22.917057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499443, 29.218025, 22.777584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050792, -0.349900, -0.935409,
		-0.998215, -0.011675, 0.058569,
		-0.031414, 0.936714, -0.348683,
		26.490019, 29.499039, 22.672979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278540, 28.719975, 22.312759>,  <26.512009, 28.843340, 22.917057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278540, 28.719975, 22.312759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.371103, 29.104200, 22.251101>,  <26.426641, 29.334736, 22.214106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.371103, 29.104200, 22.251101>,  <26.278540, 28.719975, 22.312759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371103, 29.104200, 22.251101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314104, -0.223733, -0.922650,
		-0.920754, 0.165093, -0.353492,
		0.231410, 0.960567, -0.154147,
		26.440527, 29.392370, 22.204857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856577, 28.904957, 21.680632>,  <26.278540, 28.719975, 22.312759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856577, 28.904957, 21.680632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.159100, 29.158754, 21.744404>,  <26.340612, 29.311033, 21.782667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.159100, 29.158754, 21.744404>,  <25.856577, 28.904957, 21.680632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159100, 29.158754, 21.744404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284691, -0.099783, -0.953412,
		-0.589026, 0.766460, -0.256101,
		0.756306, 0.634494, 0.159429,
		26.385992, 29.349102, 21.792233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856112, 29.494968, 21.253885>,  <25.856577, 28.904957, 21.680632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856112, 29.494968, 21.253885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.236139, 29.404291, 21.339661>,  <26.464155, 29.349886, 21.391125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.236139, 29.404291, 21.339661>,  <25.856112, 29.494968, 21.253885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236139, 29.404291, 21.339661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154673, -0.254724, -0.954564,
		0.271013, 0.940067, -0.206942,
		0.950067, -0.226691, 0.214437,
		26.521160, 29.336285, 21.403992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834320, 30.154848, 21.257818>,  <25.856112, 29.494968, 21.253885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834320, 30.154848, 21.257818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.875315, 30.090151, 20.865219>,  <25.899912, 30.051332, 20.629660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.875315, 30.090151, 20.865219>,  <25.834320, 30.154848, 21.257818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875315, 30.090151, 20.865219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674992, -0.713458, 0.188053,
		-0.730673, -0.681775, 0.036055,
		0.102486, -0.161743, -0.981497,
		25.906061, 30.041628, 20.570770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781845, 30.899570, 20.992886>,  <25.834320, 30.154848, 21.257818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781845, 30.899570, 20.992886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.598347, 31.219059, 20.837145>,  <25.488247, 31.410751, 20.743700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.598347, 31.219059, 20.837145>,  <25.781845, 30.899570, 20.992886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598347, 31.219059, 20.837145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309857, 0.554473, 0.772365,
		0.832790, 0.233677, -0.501853,
		-0.458748, 0.798720, -0.389353,
		25.460722, 31.458675, 20.720339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210529, 31.433172, 20.985685>,  <25.781845, 30.899570, 20.992886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210529, 31.433172, 20.985685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.873472, 31.646219, 20.954010>,  <25.671238, 31.774048, 20.935005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.873472, 31.646219, 20.954010>,  <26.210529, 31.433172, 20.985685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873472, 31.646219, 20.954010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313111, 0.604296, 0.732658,
		0.438080, 0.592575, -0.675974,
		-0.842643, 0.532618, -0.079188,
		25.620680, 31.806005, 20.930254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416685, 32.190125, 20.996857>,  <26.210529, 31.433172, 20.985685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416685, 32.190125, 20.996857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.037451, 32.151745, 21.118135>,  <25.809910, 32.128716, 21.190903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.037451, 32.151745, 21.118135>,  <26.416685, 32.190125, 20.996857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037451, 32.151745, 21.118135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182202, 0.617529, 0.765154,
		-0.260649, 0.780674, -0.567987,
		-0.948085, -0.095948, 0.303199,
		25.753025, 32.122959, 21.209095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234207, 32.847538, 21.157015>,  <26.416685, 32.190125, 20.996857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234207, 32.847538, 21.157015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.963352, 32.620312, 21.344116>,  <25.800840, 32.483978, 21.456377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.963352, 32.620312, 21.344116>,  <26.234207, 32.847538, 21.157015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963352, 32.620312, 21.344116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072340, 0.581187, 0.810548,
		-0.732293, 0.582689, -0.352449,
		-0.677136, -0.568063, 0.467751,
		25.760212, 32.449894, 21.484442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808125, 33.336296, 21.529764>,  <26.234207, 32.847538, 21.157015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808125, 33.336296, 21.529764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.726368, 32.982628, 21.697794>,  <25.677313, 32.770428, 21.798611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.726368, 32.982628, 21.697794>,  <25.808125, 33.336296, 21.529764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726368, 32.982628, 21.697794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059675, 0.439589, 0.896214,
		-0.977068, 0.158112, -0.142612,
		-0.204393, -0.884173, 0.420073,
		25.665051, 32.717377, 21.823816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320734, 33.487328, 22.120565>,  <25.808125, 33.336296, 21.529764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320734, 33.487328, 22.120565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.477114, 33.127697, 22.199371>,  <25.570942, 32.911919, 22.246655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.477114, 33.127697, 22.199371>,  <25.320734, 33.487328, 22.120565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477114, 33.127697, 22.199371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124813, 0.263860, 0.956452,
		-0.911910, -0.349334, 0.215373,
		0.390949, -0.899079, 0.197015,
		25.594398, 32.857975, 22.258476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.014217, 33.361435, 22.732283>,  <25.320734, 33.487328, 22.120565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.014217, 33.361435, 22.732283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.306347, 33.088226, 22.736517>,  <25.481625, 32.924301, 22.739058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.306347, 33.088226, 22.736517>,  <25.014217, 33.361435, 22.732283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306347, 33.088226, 22.736517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045201, -0.032855, 0.998438,
		-0.681602, -0.729663, -0.054868,
		0.730326, -0.683017, 0.010588,
		25.525444, 32.883320, 22.739693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897596, 32.891541, 23.324039>,  <25.014217, 33.361435, 22.732283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897596, 32.891541, 23.324039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.285166, 32.827118, 23.248941>,  <25.517708, 32.788464, 23.203882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.285166, 32.827118, 23.248941>,  <24.897596, 32.891541, 23.324039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.285166, 32.827118, 23.248941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206109, 0.105990, 0.972772,
		-0.136776, -0.981237, 0.135893,
		0.968923, -0.161060, -0.187745,
		25.575842, 32.778801, 23.192617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089821, 32.381996, 23.791119>,  <24.897596, 32.891541, 23.324039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089821, 32.381996, 23.791119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.413946, 32.567387, 23.647690>,  <25.608421, 32.678623, 23.561632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.413946, 32.567387, 23.647690>,  <25.089821, 32.381996, 23.791119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413946, 32.567387, 23.647690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373672, 0.062668, 0.925441,
		0.451396, -0.883888, -0.122409,
		0.810315, 0.463481, -0.358572,
		25.657042, 32.706432, 23.540117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622244, 32.089806, 24.112556>,  <25.089821, 32.381996, 23.791119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622244, 32.089806, 24.112556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.814398, 32.427853, 24.018749>,  <25.929689, 32.630680, 23.962465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.814398, 32.427853, 24.018749>,  <25.622244, 32.089806, 24.112556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814398, 32.427853, 24.018749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359678, 0.054043, 0.931510,
		0.799914, -0.531835, -0.278010,
		0.480385, 0.845122, -0.234519,
		25.958513, 32.681389, 23.948393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196302, 32.010132, 24.397472>,  <25.622244, 32.089806, 24.112556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196302, 32.010132, 24.397472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.181049, 32.404091, 24.329910>,  <26.171898, 32.640465, 24.289373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.181049, 32.404091, 24.329910>,  <26.196302, 32.010132, 24.397472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181049, 32.404091, 24.329910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511213, 0.164463, 0.843572,
		0.858607, -0.054178, -0.509763,
		-0.038134, 0.984894, -0.168905,
		26.169609, 32.699558, 24.279238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888956, 32.335930, 24.579136>,  <26.196302, 32.010132, 24.397472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888956, 32.335930, 24.579136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.596760, 32.606861, 24.614019>,  <26.421442, 32.769421, 24.634949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.596760, 32.606861, 24.614019>,  <26.888956, 32.335930, 24.579136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596760, 32.606861, 24.614019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351551, 0.263481, 0.898326,
		0.585486, 0.686878, -0.430586,
		-0.730492, 0.677331, 0.087208,
		26.377613, 32.810059, 24.640182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327772, 32.967251, 24.771746>,  <26.888956, 32.335930, 24.579136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327772, 32.967251, 24.771746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.941769, 32.999882, 24.871429>,  <26.710167, 33.019463, 24.931240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.941769, 32.999882, 24.871429>,  <27.327772, 32.967251, 24.771746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941769, 32.999882, 24.871429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261275, 0.218345, 0.940245,
		0.022292, 0.972456, -0.232020,
		-0.965007, 0.081581, 0.249211,
		26.652267, 33.024357, 24.946192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331619, 33.500992, 25.196407>,  <27.327772, 32.967251, 24.771746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331619, 33.500992, 25.196407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.973036, 33.361183, 25.305368>,  <26.757887, 33.277298, 25.370745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.973036, 33.361183, 25.305368>,  <27.331619, 33.500992, 25.196407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973036, 33.361183, 25.305368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216584, 0.190706, 0.957456,
		-0.386596, 0.917316, -0.095260,
		-0.896457, -0.349517, 0.272402,
		26.704100, 33.256329, 25.387089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156485, 34.181610, 24.973577>,  <27.331619, 33.500992, 25.196407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156485, 34.181610, 24.973577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.496672, 34.357193, 24.857630>,  <27.700783, 34.462543, 24.788061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.496672, 34.357193, 24.857630>,  <27.156485, 34.181610, 24.973577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496672, 34.357193, 24.857630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196827, -0.245473, -0.949211,
		-0.487819, 0.864326, -0.122367,
		0.850465, 0.438958, -0.289869,
		27.751812, 34.488880, 24.770670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964634, 34.453609, 24.391054>,  <27.156485, 34.181610, 24.973577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964634, 34.453609, 24.391054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.363548, 34.453648, 24.361605>,  <27.602898, 34.453671, 24.343935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.363548, 34.453648, 24.361605>,  <26.964634, 34.453609, 24.391054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363548, 34.453648, 24.361605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073117, -0.115913, -0.990564,
		-0.008627, 0.993259, -0.115591,
		0.997286, 0.000094, -0.073625,
		27.662735, 34.453674, 24.339518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146429, 35.001152, 23.913897>,  <26.964634, 34.453609, 24.391054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146429, 35.001152, 23.913897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.476681, 34.775501, 23.917799>,  <27.674831, 34.640110, 23.920139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.476681, 34.775501, 23.917799>,  <27.146429, 35.001152, 23.913897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476681, 34.775501, 23.917799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045194, 0.048890, -0.997781,
		0.562400, 0.824238, 0.065861,
		0.825629, -0.564129, 0.009755,
		27.724369, 34.606262, 23.920725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585003, 35.379379, 23.503551>,  <27.146429, 35.001152, 23.913897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585003, 35.379379, 23.503551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.736824, 35.009346, 23.508516>,  <27.827917, 34.787327, 23.511496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.736824, 35.009346, 23.508516>,  <27.585003, 35.379379, 23.503551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736824, 35.009346, 23.508516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211454, 0.073680, -0.974607,
		0.900681, 0.372540, 0.223579,
		0.379553, -0.925087, 0.012413,
		27.850691, 34.731819, 23.512239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166605, 35.365253, 23.035427>,  <27.585003, 35.379379, 23.503551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166605, 35.365253, 23.035427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.093340, 34.972542, 23.055706>,  <28.049381, 34.736916, 23.067873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.093340, 34.972542, 23.055706>,  <28.166605, 35.365253, 23.035427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093340, 34.972542, 23.055706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164158, -0.081388, -0.983071,
		0.969280, -0.171739, 0.176073,
		-0.183162, -0.981775, 0.050695,
		28.038391, 34.678009, 23.070915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696167, 35.006737, 22.622625>,  <28.166605, 35.365253, 23.035427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696167, 35.006737, 22.622625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.393936, 34.748123, 22.664764>,  <28.212599, 34.592953, 22.690048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.393936, 34.748123, 22.664764>,  <28.696167, 35.006737, 22.622625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393936, 34.748123, 22.664764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060927, -0.229485, -0.971403,
		0.652223, -0.727550, 0.212784,
		-0.755575, -0.646536, 0.105348,
		28.167263, 34.554161, 22.696369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900589, 34.327297, 22.346716>,  <28.696167, 35.006737, 22.622625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900589, 34.327297, 22.346716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.501089, 34.346191, 22.340183>,  <28.261389, 34.357529, 22.336264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.501089, 34.346191, 22.340183>,  <28.900589, 34.327297, 22.346716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501089, 34.346191, 22.340183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002557, -0.374627, -0.927172,
		-0.049909, -0.925972, 0.374280,
		-0.998751, 0.047231, -0.016330,
		28.201464, 34.360359, 22.335285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634323, 33.900970, 22.449467>,  <28.900589, 34.327297, 22.346716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634323, 33.900970, 22.449467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.955378, 33.944126, 22.214813>,  <30.148010, 33.970020, 22.074022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.955378, 33.944126, 22.214813>,  <29.634323, 33.900970, 22.449467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955378, 33.944126, 22.214813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506686, 0.395601, 0.766008,
		0.314715, -0.912064, 0.262859,
		0.802636, 0.107887, -0.586632,
		30.196167, 33.976494, 22.038824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263155, 33.755245, 22.939632>,  <29.634323, 33.900970, 22.449467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263155, 33.755245, 22.939632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.391779, 33.978130, 22.633400>,  <30.468952, 34.111862, 22.449659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.391779, 33.978130, 22.633400>,  <30.263155, 33.755245, 22.939632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391779, 33.978130, 22.633400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575134, 0.527359, 0.625390,
		0.752211, -0.641412, -0.150894,
		0.321558, 0.557210, -0.765583,
		30.488247, 34.145294, 22.403725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971258, 33.907818, 23.130060>,  <30.263155, 33.755245, 22.939632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971258, 33.907818, 23.130060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.865250, 34.179321, 22.856112>,  <30.801645, 34.342224, 22.691742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.865250, 34.179321, 22.856112>,  <30.971258, 33.907818, 23.130060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865250, 34.179321, 22.856112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205491, 0.733712, 0.647642,
		0.942092, 0.030904, -0.333928,
		-0.265022, 0.678758, -0.684873,
		30.785744, 34.382950, 22.650650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494493, 34.372696, 23.148460>,  <30.971258, 33.907818, 23.130060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494493, 34.372696, 23.148460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.188366, 34.574364, 22.988409>,  <31.004690, 34.695366, 22.892378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.188366, 34.574364, 22.988409>,  <31.494493, 34.372696, 23.148460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188366, 34.574364, 22.988409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136595, 0.734708, 0.664489,
		0.628992, 0.453890, -0.631152,
		-0.765317, 0.504171, -0.400126,
		30.958771, 34.725616, 22.868372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740192, 35.045120, 22.980972>,  <31.494493, 34.372696, 23.148460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740192, 35.045120, 22.980972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.342575, 35.036079, 23.023624>,  <31.104006, 35.030655, 23.049215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.342575, 35.036079, 23.023624>,  <31.740192, 35.045120, 22.980972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342575, 35.036079, 23.023624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061795, 0.689011, 0.722111,
		-0.089788, 0.724398, -0.683510,
		-0.994042, -0.022599, 0.106629,
		31.044363, 35.029301, 23.055613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568407, 35.700169, 23.015228>,  <31.740192, 35.045120, 22.980972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568407, 35.700169, 23.015228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.249628, 35.532600, 23.189301>,  <31.058361, 35.432060, 23.293743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.249628, 35.532600, 23.189301>,  <31.568407, 35.700169, 23.015228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249628, 35.532600, 23.189301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032971, 0.689196, 0.723825,
		-0.603148, 0.591199, -0.535441,
		-0.796948, -0.418920, 0.435179,
		31.010544, 35.406925, 23.319855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329369, 36.230778, 23.409306>,  <31.568407, 35.700169, 23.015228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329369, 36.230778, 23.409306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.134914, 35.908794, 23.545374>,  <31.018242, 35.715603, 23.627014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.134914, 35.908794, 23.545374>,  <31.329369, 36.230778, 23.409306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134914, 35.908794, 23.545374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144681, 0.458028, 0.877085,
		-0.861823, 0.377167, -0.339126,
		-0.486136, -0.804957, 0.340171,
		30.989073, 35.667309, 23.647425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.344698, 29.495304, 21.385389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070175, 29.637785, 21.639036>,  <28.905462, 29.723274, 21.791224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070175, 29.637785, 21.639036>,  <29.344698, 29.495304, 21.385389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070175, 29.637785, 21.639036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718743, 0.198703, 0.666277,
		0.111329, 0.913037, -0.392389,
		-0.686305, 0.356203, 0.634118,
		28.864285, 29.744646, 21.829271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598221, 30.109818, 21.727806>,  <29.344698, 29.495304, 21.385389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598221, 30.109818, 21.727806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.291090, 30.010599, 21.964083>,  <29.106812, 29.951069, 22.105848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.291090, 30.010599, 21.964083>,  <29.598221, 30.109818, 21.727806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291090, 30.010599, 21.964083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594551, 0.067565, 0.801214,
		-0.238647, 0.966389, 0.095597,
		-0.767826, -0.248045, 0.590693,
		29.060741, 29.936186, 22.141291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681648, 30.517250, 22.278151>,  <29.598221, 30.109818, 21.727806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681648, 30.517250, 22.278151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.459690, 30.212530, 22.411867>,  <29.326515, 30.029697, 22.492096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.459690, 30.212530, 22.411867>,  <29.681648, 30.517250, 22.278151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459690, 30.212530, 22.411867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540225, -0.024383, 0.841167,
		-0.632650, 0.647353, 0.425074,
		-0.554897, -0.761800, 0.334290,
		29.293221, 29.983990, 22.512154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461914, 30.739307, 22.941618>,  <29.681648, 30.517250, 22.278151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461914, 30.739307, 22.941618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.419573, 30.341867, 22.957380>,  <29.394169, 30.103403, 22.966839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.419573, 30.341867, 22.957380>,  <29.461914, 30.739307, 22.941618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419573, 30.341867, 22.957380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475486, -0.015770, 0.879582,
		-0.873332, 0.111842, 0.474112,
		-0.105851, -0.993601, 0.039407,
		29.387817, 30.043787, 22.969202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029037, 30.558704, 23.547611>,  <29.461914, 30.739307, 22.941618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029037, 30.558704, 23.547611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.243437, 30.236673, 23.445978>,  <29.372076, 30.043455, 23.384998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.243437, 30.236673, 23.445978>,  <29.029037, 30.558704, 23.547611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243437, 30.236673, 23.445978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344042, -0.066533, 0.936594,
		-0.770935, -0.589427, 0.241319,
		0.535998, -0.805077, -0.254081,
		29.404236, 29.995150, 23.369755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897768, 30.035288, 24.112572>,  <29.029037, 30.558704, 23.547611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897768, 30.035288, 24.112572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.221855, 29.892591, 23.926544>,  <29.416307, 29.806974, 23.814928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.221855, 29.892591, 23.926544>,  <28.897768, 30.035288, 24.112572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221855, 29.892591, 23.926544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479901, -0.051800, 0.875792,
		-0.336520, -0.932767, 0.129230,
		0.810215, -0.356739, -0.465068,
		29.464920, 29.785570, 23.787024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063595, 29.535507, 24.568491>,  <28.897768, 30.035288, 24.112572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063595, 29.535507, 24.568491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391804, 29.581390, 24.344498>,  <29.588730, 29.608919, 24.210102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391804, 29.581390, 24.344498>,  <29.063595, 29.535507, 24.568491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391804, 29.581390, 24.344498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570538, -0.104283, 0.814624,
		0.035047, -0.987911, -0.151011,
		0.820523, 0.114708, -0.559985,
		29.637960, 29.615803, 24.176502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508036, 28.941936, 24.770395>,  <29.063595, 29.535507, 24.568491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508036, 28.941936, 24.770395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719553, 29.247446, 24.622326>,  <29.846464, 29.430752, 24.533485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719553, 29.247446, 24.622326>,  <29.508036, 28.941936, 24.770395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719553, 29.247446, 24.622326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670638, -0.108677, 0.733780,
		0.520213, -0.636270, -0.569684,
		0.528794, 0.763773, -0.370172,
		29.878191, 29.476578, 24.511274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147921, 28.679787, 24.702242>,  <29.508036, 28.941936, 24.770395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147921, 28.679787, 24.702242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173990, 29.078730, 24.715099>,  <30.189632, 29.318094, 24.722813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173990, 29.078730, 24.715099>,  <30.147921, 28.679787, 24.702242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173990, 29.078730, 24.715099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616819, -0.065584, 0.784368,
		0.784402, -0.031294, -0.619462,
		0.065173, 0.997356, 0.032142,
		30.193542, 29.377937, 24.724741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871748, 28.789696, 24.582695>,  <30.147921, 28.679787, 24.702242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871748, 28.789696, 24.582695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722115, 29.121613, 24.748348>,  <30.632336, 29.320763, 24.847740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722115, 29.121613, 24.748348>,  <30.871748, 28.789696, 24.582695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722115, 29.121613, 24.748348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732764, -0.009244, 0.680421,
		0.568436, 0.557996, -0.604583,
		-0.374083, 0.829792, 0.414134,
		30.609890, 29.370550, 24.872589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463015, 29.245575, 24.620190>,  <30.871748, 28.789696, 24.582695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463015, 29.245575, 24.620190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.187757, 29.384903, 24.874788>,  <31.022602, 29.468500, 25.027548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.187757, 29.384903, 24.874788>,  <31.463015, 29.245575, 24.620190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187757, 29.384903, 24.874788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654213, -0.081515, 0.751905,
		0.313788, 0.933824, -0.171782,
		-0.688144, 0.348321, 0.636498,
		30.981314, 29.489399, 25.065739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682161, 29.831062, 24.928764>,  <31.463015, 29.245575, 24.620190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682161, 29.831062, 24.928764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.404121, 29.745722, 25.203375>,  <31.237297, 29.694517, 25.368141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.404121, 29.745722, 25.203375>,  <31.682161, 29.831062, 24.928764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404121, 29.745722, 25.203375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665279, 0.171042, 0.726738,
		-0.272475, 0.961887, 0.023047,
		-0.695098, -0.213351, 0.686528,
		31.195593, 29.681717, 25.409334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810068, 30.609947, 24.805174>,  <31.682161, 29.831062, 24.928764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810068, 30.609947, 24.805174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.154865, 30.602730, 24.602535>,  <32.361744, 30.598398, 24.480953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.154865, 30.602730, 24.602535>,  <31.810068, 30.609947, 24.805174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154865, 30.602730, 24.602535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479285, -0.354452, -0.802900,
		-0.165076, 0.934900, -0.314185,
		0.861995, -0.018045, -0.506595,
		32.413464, 30.597317, 24.450556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498446, 30.403643, 24.124489>,  <31.810068, 30.609947, 24.805174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498446, 30.403643, 24.124489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.880127, 30.489016, 24.040636>,  <32.109135, 30.540239, 23.990324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.880127, 30.489016, 24.040636>,  <31.498446, 30.403643, 24.124489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880127, 30.489016, 24.040636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069018, -0.524777, -0.848437,
		-0.291093, 0.824049, -0.486013,
		0.954202, 0.213430, -0.209634,
		32.166389, 30.553045, 23.977745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618584, 30.675272, 23.418234>,  <31.498446, 30.403643, 24.124489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618584, 30.675272, 23.418234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.979351, 30.527523, 23.507774>,  <32.195812, 30.438873, 23.561499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.979351, 30.527523, 23.507774>,  <31.618584, 30.675272, 23.418234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979351, 30.527523, 23.507774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021654, -0.556306, -0.830695,
		0.431364, 0.744371, -0.509741,
		0.901918, -0.369370, 0.223852,
		32.249928, 30.416712, 23.574930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050724, 30.956388, 22.931131>,  <31.618584, 30.675272, 23.418234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050724, 30.956388, 22.931131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.192875, 30.620129, 23.094603>,  <32.278164, 30.418373, 23.192686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.192875, 30.620129, 23.094603>,  <32.050724, 30.956388, 22.931131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192875, 30.620129, 23.094603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093149, -0.403192, -0.910362,
		0.930070, 0.361590, -0.064980,
		0.355377, -0.840648, 0.408679,
		32.299488, 30.367935, 23.217207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704369, 30.796949, 22.622812>,  <32.050724, 30.956388, 22.931131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704369, 30.796949, 22.622812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.494549, 30.481087, 22.750120>,  <32.368656, 30.291569, 22.826506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.494549, 30.481087, 22.750120>,  <32.704369, 30.796949, 22.622812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494549, 30.481087, 22.750120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040921, -0.350012, -0.935851,
		0.850398, -0.503921, 0.151284,
		-0.524546, -0.789655, 0.318271,
		32.337185, 30.244190, 22.845602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930706, 30.231236, 22.312950>,  <32.704369, 30.796949, 22.622812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930706, 30.231236, 22.312950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.554916, 30.138952, 22.414272>,  <32.329441, 30.083582, 22.475065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.554916, 30.138952, 22.414272>,  <32.930706, 30.231236, 22.312950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554916, 30.138952, 22.414272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123279, -0.462188, -0.878171,
		0.319676, -0.856246, 0.405772,
		-0.939473, -0.230707, 0.253307,
		32.273075, 30.069740, 22.490265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751793, 29.722536, 21.800940>,  <32.930706, 30.231236, 22.312950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751793, 29.722536, 21.800940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.397072, 29.777376, 21.977476>,  <32.184238, 29.810280, 22.083399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.397072, 29.777376, 21.977476>,  <32.751793, 29.722536, 21.800940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397072, 29.777376, 21.977476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461845, -0.297333, -0.835638,
		0.016659, -0.944879, 0.326996,
		-0.886804, 0.137101, 0.441341,
		32.131031, 29.818506, 22.109879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275326, 29.145424, 21.678316>,  <32.751793, 29.722536, 21.800940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275326, 29.145424, 21.678316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.046215, 29.460632, 21.768608>,  <31.908749, 29.649757, 21.822784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.046215, 29.460632, 21.768608>,  <32.275326, 29.145424, 21.678316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046215, 29.460632, 21.768608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530629, -0.146545, -0.834840,
		-0.624791, -0.597953, 0.502084,
		-0.572773, 0.788020, 0.225732,
		31.874384, 29.697039, 21.836329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656193, 28.895462, 21.493958>,  <32.275326, 29.145424, 21.678316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656193, 28.895462, 21.493958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.600506, 29.290592, 21.521734>,  <31.567095, 29.527670, 21.538401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.600506, 29.290592, 21.521734>,  <31.656193, 28.895462, 21.493958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600506, 29.290592, 21.521734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433176, 0.002314, -0.901307,
		-0.890493, -0.155557, 0.427580,
		-0.139215, 0.987824, 0.069444,
		31.558741, 29.586939, 21.542568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899965, 29.117777, 21.165880>,  <31.656193, 28.895462, 21.493958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899965, 29.117777, 21.165880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.092592, 29.467815, 21.185076>,  <31.208168, 29.677837, 21.196592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.092592, 29.467815, 21.185076>,  <30.899965, 29.117777, 21.165880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092592, 29.467815, 21.185076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441266, 0.289410, -0.849427,
		-0.757217, 0.387881, 0.525520,
		0.481568, 0.875094, 0.047988,
		31.237062, 29.730343, 21.199472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417631, 29.629425, 21.217482>,  <30.899965, 29.117777, 21.165880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417631, 29.629425, 21.217482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754969, 29.781893, 21.065964>,  <30.957371, 29.873373, 20.975052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754969, 29.781893, 21.065964>,  <30.417631, 29.629425, 21.217482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754969, 29.781893, 21.065964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488703, 0.250857, -0.835607,
		-0.223482, 0.889821, 0.397836,
		0.843342, 0.381167, -0.378796,
		31.007971, 29.896242, 20.952324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247992, 30.298294, 20.906284>,  <30.417631, 29.629425, 21.217482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247992, 30.298294, 20.906284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.589260, 30.224182, 20.711237>,  <30.794022, 30.179714, 20.594210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.589260, 30.224182, 20.711237>,  <30.247992, 30.298294, 20.906284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589260, 30.224182, 20.711237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465747, 0.150384, -0.872046,
		0.234904, 0.971110, 0.042008,
		0.853171, -0.185282, -0.487617,
		30.845211, 30.168598, 20.564951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422001, 30.939138, 20.439972>,  <30.247992, 30.298294, 20.906284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422001, 30.939138, 20.439972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.614414, 30.623247, 20.287691>,  <30.729862, 30.433712, 20.196323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.614414, 30.623247, 20.287691>,  <30.422001, 30.939138, 20.439972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614414, 30.623247, 20.287691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421261, 0.172617, -0.890361,
		0.768859, 0.588670, -0.249647,
		0.481035, -0.789729, -0.380701,
		30.758724, 30.386328, 20.173481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718744, 31.257675, 19.837029>,  <30.422001, 30.939138, 20.439972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718744, 31.257675, 19.837029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.766140, 30.868973, 19.755396>,  <30.794579, 30.635752, 19.706415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.766140, 30.868973, 19.755396>,  <30.718744, 31.257675, 19.837029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766140, 30.868973, 19.755396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438442, 0.133206, -0.888834,
		0.890914, 0.194798, -0.410275,
		0.118492, -0.971756, -0.204083,
		30.801687, 30.577446, 19.694172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702488, 32.044590, 19.828972>,  <30.718744, 31.257675, 19.837029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702488, 32.044590, 19.828972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.363394, 32.218510, 19.707451>,  <30.159937, 32.322861, 19.634539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.363394, 32.218510, 19.707451>,  <30.702488, 32.044590, 19.828972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363394, 32.218510, 19.707451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009332, 0.584897, 0.811054,
		0.530337, 0.684724, -0.499895,
		-0.847735, 0.434797, -0.303803,
		30.109074, 32.348949, 19.616310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852221, 32.715141, 19.901653>,  <30.702488, 32.044590, 19.828972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852221, 32.715141, 19.901653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.453112, 32.719944, 19.875418>,  <30.213646, 32.722824, 19.859676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.453112, 32.719944, 19.875418>,  <30.852221, 32.715141, 19.901653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453112, 32.719944, 19.875418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040894, 0.666789, 0.744124,
		0.052669, 0.745150, -0.664814,
		-0.997774, 0.012005, -0.065591,
		30.153780, 32.723545, 19.855740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676664, 33.386585, 19.700363>,  <30.852221, 32.715141, 19.901653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676664, 33.386585, 19.700363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.383940, 33.202301, 19.901239>,  <30.208305, 33.091732, 20.021765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.383940, 33.202301, 19.901239>,  <30.676664, 33.386585, 19.700363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383940, 33.202301, 19.901239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043488, 0.766952, 0.640230,
		-0.680117, 0.446689, -0.581300,
		-0.731813, -0.460711, 0.502191,
		30.164396, 33.064087, 20.051897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156199, 33.895153, 19.852690>,  <30.676664, 33.386585, 19.700363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156199, 33.895153, 19.852690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.116783, 33.601124, 20.121004>,  <30.093134, 33.424706, 20.281992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.116783, 33.601124, 20.121004>,  <30.156199, 33.895153, 19.852690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116783, 33.601124, 20.121004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095396, 0.677939, 0.728902,
		-0.990550, 0.007836, -0.136928,
		-0.098541, -0.735076, 0.670785,
		30.087221, 33.380600, 20.322239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875921, 34.226788, 20.419811>,  <30.156199, 33.895153, 19.852690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875921, 34.226788, 20.419811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042929, 33.887669, 20.550604>,  <30.143133, 33.684196, 20.629080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042929, 33.887669, 20.550604>,  <29.875921, 34.226788, 20.419811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042929, 33.887669, 20.550604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017815, 0.367414, 0.929887,
		-0.908495, -0.382418, 0.168505,
		0.417517, -0.847799, 0.326981,
		30.168184, 33.633327, 20.648699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650274, 34.356117, 21.110851>,  <29.875921, 34.226788, 20.419811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650274, 34.356117, 21.110851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.880791, 34.032253, 21.155287>,  <30.019100, 33.837936, 21.181948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.880791, 34.032253, 21.155287>,  <29.650274, 34.356117, 21.110851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880791, 34.032253, 21.155287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215509, 0.281677, 0.934994,
		-0.788317, -0.514889, 0.336817,
		0.576292, -0.809659, 0.111088,
		30.053679, 33.789356, 21.188614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381992, 34.078415, 21.747349>,  <29.650274, 34.356117, 21.110851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381992, 34.078415, 21.747349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762691, 33.975960, 21.679735>,  <29.991110, 33.914486, 21.639168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762691, 33.975960, 21.679735>,  <29.381992, 34.078415, 21.747349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762691, 33.975960, 21.679735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225938, 0.212080, 0.950776,
		-0.207683, -0.943088, 0.259718,
		0.951746, -0.256140, -0.169034,
		30.048216, 33.899117, 21.629025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764757, 33.766220, 21.927717>,  <29.381992, 34.078415, 21.747349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764757, 33.766220, 21.927717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.396709, 33.919548, 21.959846>,  <28.175880, 34.011543, 21.979124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.396709, 33.919548, 21.959846>,  <28.764757, 33.766220, 21.927717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396709, 33.919548, 21.959846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253071, -0.425392, -0.868905,
		-0.298897, -0.819823, 0.488417,
		-0.920117, 0.383317, 0.080325,
		28.120674, 34.034542, 21.983944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308445, 33.314342, 21.632414>,  <28.764757, 33.766220, 21.927717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308445, 33.314342, 21.632414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.072575, 33.636990, 21.616154>,  <27.931051, 33.830578, 21.606398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.072575, 33.636990, 21.616154>,  <28.308445, 33.314342, 21.632414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072575, 33.636990, 21.616154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386307, -0.325894, -0.862879,
		-0.709259, -0.493117, 0.503774,
		-0.589677, 0.806616, -0.040649,
		27.895672, 33.878975, 21.603958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561211, 33.047935, 21.539522>,  <28.308445, 33.314342, 21.632414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561211, 33.047935, 21.539522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610407, 33.419846, 21.400734>,  <27.639925, 33.642990, 21.317461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610407, 33.419846, 21.400734>,  <27.561211, 33.047935, 21.539522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610407, 33.419846, 21.400734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454400, -0.258063, -0.852599,
		-0.882266, 0.262527, 0.390751,
		0.122992, 0.929776, -0.346972,
		27.647305, 33.698780, 21.296642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845428, 33.257717, 21.299704>,  <27.561211, 33.047935, 21.539522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845428, 33.257717, 21.299704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111677, 33.492508, 21.115353>,  <27.271427, 33.633381, 21.004742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111677, 33.492508, 21.115353>,  <26.845428, 33.257717, 21.299704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111677, 33.492508, 21.115353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462870, -0.159719, -0.871918,
		-0.585403, 0.793696, 0.165379,
		0.665624, 0.586972, -0.460878,
		27.311365, 33.668598, 20.977089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481110, 33.792866, 20.859547>,  <26.845428, 33.257717, 21.299704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481110, 33.792866, 20.859547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.847477, 33.733624, 20.710329>,  <27.067297, 33.698078, 20.620798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.847477, 33.733624, 20.710329>,  <26.481110, 33.792866, 20.859547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847477, 33.733624, 20.710329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386451, -0.074387, -0.919305,
		0.108408, 0.986170, -0.125369,
		0.915917, -0.148108, -0.373042,
		27.122252, 33.689190, 20.598417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465691, 34.009830, 20.174187>,  <26.481110, 33.792866, 20.859547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465691, 34.009830, 20.174187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802744, 33.799984, 20.125607>,  <27.004976, 33.674076, 20.096458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802744, 33.799984, 20.125607>,  <26.465691, 34.009830, 20.174187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802744, 33.799984, 20.125607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308512, -0.285472, -0.907373,
		0.441350, 0.802051, -0.402398,
		0.842633, -0.524614, -0.121449,
		27.055534, 33.642601, 20.089172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731092, 34.099766, 19.382668>,  <26.465691, 34.009830, 20.174187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731092, 34.099766, 19.382668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889399, 33.761837, 19.526697>,  <26.984383, 33.559082, 19.613115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889399, 33.761837, 19.526697>,  <26.731092, 34.099766, 19.382668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889399, 33.761837, 19.526697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326004, -0.495794, -0.804929,
		0.858541, 0.201176, -0.471631,
		0.395764, -0.844818, 0.360075,
		27.008127, 33.508392, 19.634720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167824, 33.772491, 18.889395>,  <26.731092, 34.099766, 19.382668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167824, 33.772491, 18.889395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093718, 33.460281, 19.128210>,  <27.049253, 33.272953, 19.271500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093718, 33.460281, 19.128210>,  <27.167824, 33.772491, 18.889395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093718, 33.460281, 19.128210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310434, -0.529956, -0.789162,
		0.932366, -0.331546, -0.144119,
		-0.185267, -0.780528, 0.597037,
		27.038137, 33.226124, 19.307322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318718, 33.259892, 18.576347>,  <27.167824, 33.772491, 18.889395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318718, 33.259892, 18.576347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105280, 33.053722, 18.844561>,  <26.977217, 32.930019, 19.005487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105280, 33.053722, 18.844561>,  <27.318718, 33.259892, 18.576347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105280, 33.053722, 18.844561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142165, -0.726888, -0.671880,
		0.833707, -0.453837, 0.314587,
		-0.533593, -0.515427, 0.670531,
		26.945202, 32.899094, 19.045719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.966871, 35.800537, 34.267838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095448, 35.421772, 34.265556>,  <32.172592, 35.194511, 34.264187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095448, 35.421772, 34.265556>,  <31.966871, 35.800537, 34.267838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095448, 35.421772, 34.265556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531855, 0.185520, -0.826264,
		0.783458, 0.262562, 0.563254,
		0.321440, -0.946913, -0.005702,
		32.191879, 35.137699, 34.263847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169220, 35.767155, 34.051453>,  <31.966871, 35.800537, 34.267838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169220, 35.767155, 34.051453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791023, 35.806324, 34.175682>,  <30.564106, 35.829826, 34.250221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791023, 35.806324, 34.175682>,  <31.169220, 35.767155, 34.051453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791023, 35.806324, 34.175682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320124, -0.454393, -0.831293,
		0.059718, -0.885403, 0.460973,
		-0.945492, 0.097925, 0.310574,
		30.507376, 35.835701, 34.268856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873598, 35.113724, 33.833965>,  <31.169220, 35.767155, 34.051453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873598, 35.113724, 33.833965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577415, 35.369137, 33.917870>,  <30.399706, 35.522385, 33.968212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577415, 35.369137, 33.917870>,  <30.873598, 35.113724, 33.833965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577415, 35.369137, 33.917870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416050, -0.190360, -0.889194,
		-0.527848, -0.745681, 0.406615,
		-0.740458, 0.638532, 0.209759,
		30.355278, 35.560696, 33.980797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260988, 34.712337, 33.553776>,  <30.873598, 35.113724, 33.833965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260988, 34.712337, 33.553776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.168251, 35.099262, 33.594864>,  <30.112610, 35.331417, 33.619518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.168251, 35.099262, 33.594864>,  <30.260988, 34.712337, 33.553776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168251, 35.099262, 33.594864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421677, -0.004776, -0.906733,
		-0.876606, -0.253534, 0.409002,
		-0.231841, 0.967314, 0.102723,
		30.098698, 35.389458, 33.625679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580530, 34.817600, 33.350018>,  <30.260988, 34.712337, 33.553776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580530, 34.817600, 33.350018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.784973, 35.156193, 33.290367>,  <29.907639, 35.359348, 33.254578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.784973, 35.156193, 33.290367>,  <29.580530, 34.817600, 33.350018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784973, 35.156193, 33.290367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303243, 0.015242, -0.952791,
		-0.804246, 0.532202, 0.264480,
		0.511108, 0.846480, -0.149129,
		29.938305, 35.410137, 33.245628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237623, 34.957520, 32.871510>,  <29.580530, 34.817600, 33.350018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237623, 34.957520, 32.871510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.535168, 35.224548, 32.858749>,  <29.713696, 35.384766, 32.851093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.535168, 35.224548, 32.858749>,  <29.237623, 34.957520, 32.871510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535168, 35.224548, 32.858749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188843, 0.164164, -0.968188,
		-0.641098, 0.726223, 0.248182,
		0.743863, 0.667570, -0.031897,
		29.758327, 35.424820, 32.849182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950661, 35.623001, 32.615337>,  <29.237623, 34.957520, 32.871510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950661, 35.623001, 32.615337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.343840, 35.625195, 32.541813>,  <29.579746, 35.626511, 32.497700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.343840, 35.625195, 32.541813>,  <28.950661, 35.623001, 32.615337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343840, 35.625195, 32.541813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179584, 0.243657, -0.953090,
		0.039562, 0.969846, 0.240486,
		0.982947, 0.005481, -0.183808,
		29.638723, 35.626839, 32.486671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070452, 36.215271, 32.236256>,  <28.950661, 35.623001, 32.615337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070452, 36.215271, 32.236256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.397324, 36.000294, 32.152954>,  <29.593447, 35.871307, 32.102974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.397324, 36.000294, 32.152954>,  <29.070452, 36.215271, 32.236256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397324, 36.000294, 32.152954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050024, 0.293822, -0.954550,
		0.574210, 0.790456, 0.213220,
		0.817178, -0.537446, -0.208257,
		29.642477, 35.839062, 32.090477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276499, 36.570827, 31.695089>,  <29.070452, 36.215271, 32.236256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276499, 36.570827, 31.695089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517202, 36.252338, 31.670053>,  <29.661625, 36.061245, 31.655031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517202, 36.252338, 31.670053>,  <29.276499, 36.570827, 31.695089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517202, 36.252338, 31.670053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080696, 0.138579, -0.987058,
		0.794590, 0.588921, 0.147643,
		0.601760, -0.796221, -0.062590,
		29.697731, 36.013474, 31.651276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928226, 36.747063, 31.231852>,  <29.276499, 36.570827, 31.695089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928226, 36.747063, 31.231852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.878021, 36.350235, 31.229050>,  <29.847898, 36.112141, 31.227367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.878021, 36.350235, 31.229050>,  <29.928226, 36.747063, 31.231852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878021, 36.350235, 31.229050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180964, -0.015950, -0.983360,
		0.975448, -0.124693, 0.181530,
		-0.125514, -0.992067, -0.007006,
		29.840366, 36.052616, 31.226948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343498, 36.507580, 30.599583>,  <29.928226, 36.747063, 31.231852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343498, 36.507580, 30.599583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.071064, 36.235329, 30.707560>,  <29.907604, 36.071980, 30.772345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.071064, 36.235329, 30.707560>,  <30.343498, 36.507580, 30.599583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071064, 36.235329, 30.707560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181496, -0.200231, -0.962791,
		0.709354, -0.704736, 0.012842,
		-0.681085, -0.680629, 0.269941,
		29.866739, 36.031139, 30.788542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586309, 35.996990, 30.271864>,  <30.343498, 36.507580, 30.599583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586309, 35.996990, 30.271864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.199631, 35.919174, 30.338379>,  <29.967625, 35.872482, 30.378288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.199631, 35.919174, 30.338379>,  <30.586309, 35.996990, 30.271864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199631, 35.919174, 30.338379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111079, -0.266429, -0.957433,
		0.230566, -0.944017, 0.235946,
		-0.966696, -0.194543, 0.166290,
		29.909622, 35.860813, 30.388266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181234, 35.741692, 29.909290>,  <30.586309, 35.996990, 30.271864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181234, 35.741692, 29.909290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.428997, 36.027813, 29.779879>,  <31.577656, 36.199486, 29.702230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.428997, 36.027813, 29.779879>,  <31.181234, 35.741692, 29.909290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428997, 36.027813, 29.779879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425939, 0.039981, 0.903868,
		0.659476, -0.697668, -0.279911,
		0.619409, 0.715305, -0.323531,
		31.614820, 36.242405, 29.682819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864664, 35.515976, 30.191074>,  <31.181234, 35.741692, 29.909290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864664, 35.515976, 30.191074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.902573, 35.905247, 30.107220>,  <31.925318, 36.138809, 30.056906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.902573, 35.905247, 30.107220>,  <31.864664, 35.515976, 30.191074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902573, 35.905247, 30.107220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446831, 0.146597, 0.882526,
		0.889585, -0.177309, -0.420952,
		0.094770, 0.973176, -0.209638,
		31.931004, 36.197201, 30.044329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606743, 35.802971, 30.250637>,  <31.864664, 35.515976, 30.191074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606743, 35.802971, 30.250637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406166, 36.149036, 30.248217>,  <32.285820, 36.356678, 30.246765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406166, 36.149036, 30.248217>,  <32.606743, 35.802971, 30.250637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406166, 36.149036, 30.248217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659679, 0.386851, 0.644337,
		0.559800, 0.319108, -0.764718,
		-0.501445, 0.865168, -0.006050,
		32.255733, 36.408588, 30.246401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056961, 36.341221, 30.068813>,  <32.606743, 35.802971, 30.250637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056961, 36.341221, 30.068813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.762398, 36.504040, 30.284967>,  <32.585659, 36.601730, 30.414660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.762398, 36.504040, 30.284967>,  <33.056961, 36.341221, 30.068813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762398, 36.504040, 30.284967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675086, 0.389800, 0.626351,
		0.044312, 0.826056, -0.561844,
		-0.736407, 0.407047, 0.540386,
		32.541477, 36.626156, 30.447083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248371, 36.986126, 30.199362>,  <33.056961, 36.341221, 30.068813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248371, 36.986126, 30.199362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978714, 36.920341, 30.487385>,  <32.816917, 36.880871, 30.660198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978714, 36.920341, 30.487385>,  <33.248371, 36.986126, 30.199362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978714, 36.920341, 30.487385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669637, 0.275241, 0.689804,
		-0.311634, 0.947204, -0.075423,
		-0.674144, -0.164460, 0.720057,
		32.776470, 36.871002, 30.703402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508556, 37.414253, 30.734079>,  <33.248371, 36.986126, 30.199362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508556, 37.414253, 30.734079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233711, 37.205513, 30.936285>,  <33.068806, 37.080269, 31.057608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233711, 37.205513, 30.936285>,  <33.508556, 37.414253, 30.734079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233711, 37.205513, 30.936285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589277, 0.006719, 0.807903,
		-0.425002, 0.853010, 0.302899,
		-0.687114, -0.521852, 0.505514,
		33.027576, 37.048958, 31.087940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257404, 37.776764, 31.360558>,  <33.508556, 37.414253, 30.734079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257404, 37.776764, 31.360558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196342, 37.387463, 31.429232>,  <33.159706, 37.153881, 31.470436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196342, 37.387463, 31.429232>,  <33.257404, 37.776764, 31.360558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196342, 37.387463, 31.429232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529002, 0.066268, 0.846029,
		-0.834778, 0.219970, 0.504737,
		-0.152653, -0.973253, 0.171684,
		33.150547, 37.095486, 31.480738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310356, 37.699207, 32.104568>,  <33.257404, 37.776764, 31.360558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310356, 37.699207, 32.104568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284065, 37.311539, 32.009583>,  <33.268291, 37.078938, 31.952591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284065, 37.311539, 32.009583>,  <33.310356, 37.699207, 32.104568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284065, 37.311539, 32.009583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342552, -0.245435, 0.906874,
		-0.937197, -0.021736, 0.348123,
		-0.065729, -0.969169, -0.237466,
		33.264347, 37.020786, 31.938343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886265, 37.304325, 32.580341>,  <33.310356, 37.699207, 32.104568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886265, 37.304325, 32.580341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136372, 37.036644, 32.419739>,  <33.286434, 36.876034, 32.323376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136372, 37.036644, 32.419739>,  <32.886265, 37.304325, 32.580341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136372, 37.036644, 32.419739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217263, -0.344874, 0.913159,
		-0.749559, -0.658200, -0.070245,
		0.625267, -0.669204, -0.401505,
		33.323952, 36.835884, 32.299286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638416, 36.597626, 32.848003>,  <32.886265, 37.304325, 32.580341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638416, 36.597626, 32.848003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017014, 36.603676, 32.719055>,  <33.244171, 36.607307, 32.641685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017014, 36.603676, 32.719055>,  <32.638416, 36.597626, 32.848003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017014, 36.603676, 32.719055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311404, -0.305063, 0.899980,
		-0.084727, -0.952212, -0.293452,
		0.946493, 0.015130, -0.322369,
		33.300961, 36.608215, 32.622345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915306, 36.120918, 33.184944>,  <32.638416, 36.597626, 32.848003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915306, 36.120918, 33.184944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.255833, 36.280407, 33.048542>,  <33.460148, 36.376099, 32.966702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.255833, 36.280407, 33.048542>,  <32.915306, 36.120918, 33.184944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255833, 36.280407, 33.048542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498071, -0.409914, 0.764131,
		0.164890, -0.820361, -0.547557,
		0.851314, 0.398720, -0.341007,
		33.511227, 36.400024, 32.946239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397911, 35.559380, 33.172096>,  <32.915306, 36.120918, 33.184944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397911, 35.559380, 33.172096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599159, 35.905052, 33.168953>,  <33.719906, 36.112457, 33.167068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599159, 35.905052, 33.168953>,  <33.397911, 35.559380, 33.172096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599159, 35.905052, 33.168953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562559, -0.320585, 0.762071,
		0.656049, -0.387832, -0.647445,
		0.503116, 0.864183, -0.007859,
		33.750095, 36.164307, 33.166595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000160, 35.352974, 33.355770>,  <33.397911, 35.559380, 33.172096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000160, 35.352974, 33.355770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.004051, 35.739338, 33.459248>,  <34.006386, 35.971157, 33.521332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.004051, 35.739338, 33.459248>,  <34.000160, 35.352974, 33.355770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004051, 35.739338, 33.459248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681803, -0.195647, 0.704887,
		0.731471, 0.169521, -0.660464,
		0.009725, 0.965911, 0.258691,
		34.006969, 36.029110, 33.536854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743420, 35.519558, 33.497746>,  <34.000160, 35.352974, 33.355770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743420, 35.519558, 33.497746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.508179, 35.773132, 33.698647>,  <34.367035, 35.925278, 33.819187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.508179, 35.773132, 33.698647>,  <34.743420, 35.519558, 33.497746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508179, 35.773132, 33.698647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520554, -0.178580, 0.834945,
		0.618996, 0.752483, -0.224975,
		-0.588105, 0.633939, 0.502248,
		34.331749, 35.963314, 33.849319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171825, 36.020851, 33.669594>,  <34.743420, 35.519558, 33.497746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171825, 36.020851, 33.669594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851803, 35.983734, 33.906673>,  <34.659790, 35.961464, 34.048920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851803, 35.983734, 33.906673>,  <35.171825, 36.020851, 33.669594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851803, 35.983734, 33.906673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569247, -0.429288, 0.701192,
		0.189374, 0.898388, 0.396279,
		-0.800060, -0.092793, 0.592700,
		34.611786, 35.955894, 34.084484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437294, 35.347618, 33.334267>,  <35.171825, 36.020851, 33.669594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437294, 35.347618, 33.334267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297699, 35.007137, 33.491070>,  <35.213943, 34.802849, 33.585152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297699, 35.007137, 33.491070>,  <35.437294, 35.347618, 33.334267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297699, 35.007137, 33.491070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255987, -0.488987, -0.833884,
		0.901486, -0.190667, 0.388547,
		-0.348989, -0.851198, 0.392006,
		35.193001, 34.751778, 33.608673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945084, 34.722725, 33.320370>,  <35.437294, 35.347618, 33.334267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945084, 34.722725, 33.320370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555733, 34.638950, 33.283108>,  <35.322124, 34.588684, 33.260750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555733, 34.638950, 33.283108>,  <35.945084, 34.722725, 33.320370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555733, 34.638950, 33.283108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180667, -0.450835, -0.874132,
		0.141080, -0.867688, 0.476670,
		-0.973373, -0.209441, -0.093159,
		35.263721, 34.576118, 33.255161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951416, 34.097378, 32.932510>,  <35.945084, 34.722725, 33.320370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951416, 34.097378, 32.932510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583637, 34.249359, 32.891994>,  <35.362972, 34.340546, 32.867687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583637, 34.249359, 32.891994>,  <35.951416, 34.097378, 32.932510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583637, 34.249359, 32.891994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073602, -0.419322, -0.904849,
		-0.386272, -0.824503, 0.413508,
		-0.919444, 0.379952, -0.101288,
		35.307804, 34.363346, 32.861610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475590, 33.504292, 32.752190>,  <35.951416, 34.097378, 32.932510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475590, 33.504292, 32.752190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.262417, 33.825726, 32.646187>,  <35.134514, 34.018585, 32.582584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.262417, 33.825726, 32.646187>,  <35.475590, 33.504292, 32.752190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262417, 33.825726, 32.646187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133069, -0.388883, -0.911626,
		-0.835627, -0.450574, 0.314182,
		-0.532935, 0.803588, -0.265004,
		35.102535, 34.066803, 32.566685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819000, 33.360161, 32.463646>,  <35.475590, 33.504292, 32.752190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819000, 33.360161, 32.463646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862965, 33.728386, 32.313725>,  <34.889343, 33.949322, 32.223770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862965, 33.728386, 32.313725>,  <34.819000, 33.360161, 32.463646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862965, 33.728386, 32.313725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344124, -0.318521, -0.883246,
		-0.932469, 0.226055, 0.281781,
		0.109909, 0.920567, -0.374802,
		34.895939, 34.004555, 32.201283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402119, 33.342339, 31.882444>,  <34.819000, 33.360161, 32.463646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402119, 33.342339, 31.882444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592216, 33.684860, 31.801569>,  <34.706276, 33.890373, 31.753044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592216, 33.684860, 31.801569>,  <34.402119, 33.342339, 31.882444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592216, 33.684860, 31.801569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465892, 0.049972, -0.883429,
		-0.746384, 0.514042, 0.422697,
		0.475243, 0.856309, -0.202189,
		34.734791, 33.941753, 31.740911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850563, 33.875427, 31.575125>,  <34.402119, 33.342339, 31.882444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850563, 33.875427, 31.575125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226116, 33.954414, 31.462337>,  <34.451447, 34.001808, 31.394665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226116, 33.954414, 31.462337>,  <33.850563, 33.875427, 31.575125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226116, 33.954414, 31.462337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290181, 0.013359, -0.956879,
		-0.185190, 0.980218, 0.069845,
		0.938882, 0.197472, -0.281967,
		34.507782, 34.013657, 31.377747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814533, 34.444263, 31.064486>,  <33.850563, 33.875427, 31.575125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814533, 34.444263, 31.064486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163727, 34.252674, 31.027660>,  <34.373245, 34.137722, 31.005566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163727, 34.252674, 31.027660>,  <33.814533, 34.444263, 31.064486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163727, 34.252674, 31.027660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056724, 0.087770, -0.994524,
		0.484431, 0.873431, 0.049453,
		0.872989, -0.478973, -0.092063,
		34.425625, 34.108982, 31.000042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956715, 34.750633, 30.408407>,  <33.814533, 34.444263, 31.064486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956715, 34.750633, 30.408407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.199551, 34.438587, 30.468893>,  <34.345253, 34.251358, 30.505184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.199551, 34.438587, 30.468893>,  <33.956715, 34.750633, 30.408407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199551, 34.438587, 30.468893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100946, -0.264463, -0.959098,
		0.788198, 0.566991, -0.239302,
		0.607087, -0.780115, 0.151214,
		34.381676, 34.204552, 30.514257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383511, 34.811420, 29.805183>,  <33.956715, 34.750633, 30.408407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383511, 34.811420, 29.805183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415787, 34.443954, 29.959869>,  <34.435150, 34.223476, 30.052681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415787, 34.443954, 29.959869>,  <34.383511, 34.811420, 29.805183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415787, 34.443954, 29.959869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003857, -0.388265, -0.921540,
		0.996732, 0.072866, -0.034872,
		0.080688, -0.918662, 0.386715,
		34.439995, 34.168354, 30.075884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027966, 34.494591, 29.619146>,  <34.383511, 34.811420, 29.805183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027966, 34.494591, 29.619146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.763039, 34.203838, 29.691793>,  <34.604084, 34.029388, 29.735382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.763039, 34.203838, 29.691793>,  <35.027966, 34.494591, 29.619146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763039, 34.203838, 29.691793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169312, -0.381349, -0.908794,
		0.729842, -0.571159, 0.375643,
		-0.662317, -0.726877, 0.181620,
		34.564342, 33.985775, 29.746279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303501, 33.888947, 29.343275>,  <35.027966, 34.494591, 29.619146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303501, 33.888947, 29.343275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915695, 33.796520, 29.375889>,  <34.683010, 33.741066, 29.395458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915695, 33.796520, 29.375889>,  <35.303501, 33.888947, 29.343275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915695, 33.796520, 29.375889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000462, -0.331043, -0.943615,
		0.245026, -0.914888, 0.320845,
		-0.969516, -0.231062, 0.081537,
		34.624840, 33.727203, 29.400351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199993, 33.203705, 29.066582>,  <35.303501, 33.888947, 29.343275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199993, 33.203705, 29.066582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850399, 33.396759, 29.043913>,  <34.640644, 33.512592, 29.030312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850399, 33.396759, 29.043913>,  <35.199993, 33.203705, 29.066582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850399, 33.396759, 29.043913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116712, -0.321686, -0.939626,
		-0.471730, -0.814604, 0.337478,
		-0.873985, 0.482637, -0.056675,
		34.588203, 33.541550, 29.026911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804081, 32.691086, 28.634605>,  <35.199993, 33.203705, 29.066582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804081, 32.691086, 28.634605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.579853, 33.022308, 28.638090>,  <34.445316, 33.221043, 28.640181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.579853, 33.022308, 28.638090>,  <34.804081, 32.691086, 28.634605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579853, 33.022308, 28.638090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284040, -0.182384, -0.941306,
		-0.777868, -0.530146, 0.337441,
		-0.560574, 0.828059, 0.008712,
		34.411682, 33.270725, 28.640703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072578, 32.529427, 28.535934>,  <34.804081, 32.691086, 28.634605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072578, 32.529427, 28.535934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104801, 32.908543, 28.412508>,  <34.124134, 33.136013, 28.338453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104801, 32.908543, 28.412508>,  <34.072578, 32.529427, 28.535934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104801, 32.908543, 28.412508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441703, -0.243569, -0.863466,
		-0.893538, 0.205854, 0.399018,
		0.080559, 0.947786, -0.308564,
		34.128967, 33.192879, 28.319939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498283, 32.785713, 28.366018>,  <34.072578, 32.529427, 28.535934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498283, 32.785713, 28.366018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710823, 33.032967, 28.134298>,  <33.838345, 33.181316, 27.995266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710823, 33.032967, 28.134298>,  <33.498283, 32.785713, 28.366018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710823, 33.032967, 28.134298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552332, -0.265716, -0.790142,
		-0.642339, 0.739804, 0.200225,
		0.531347, 0.618130, -0.579298,
		33.870228, 33.218407, 27.960508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011768, 33.018490, 27.867506>,  <33.498283, 32.785713, 28.366018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011768, 33.018490, 27.867506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364429, 33.138649, 27.721930>,  <33.576027, 33.210743, 27.634583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364429, 33.138649, 27.721930>,  <33.011768, 33.018490, 27.867506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364429, 33.138649, 27.721930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337412, -0.137903, -0.931201,
		-0.329917, 0.943793, -0.020225,
		0.881651, 0.300395, -0.363943,
		33.628925, 33.228767, 27.612747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779331, 33.412380, 27.410089>,  <33.011768, 33.018490, 27.867506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779331, 33.412380, 27.410089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151817, 33.292664, 27.326891>,  <33.375309, 33.220833, 27.276972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151817, 33.292664, 27.326891>,  <32.779331, 33.412380, 27.410089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151817, 33.292664, 27.326891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283734, -0.237104, -0.929127,
		0.228762, 0.924233, -0.305714,
		0.931216, -0.299291, -0.207996,
		33.431183, 33.202877, 27.264492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921867, 33.627327, 26.648975>,  <32.779331, 33.412380, 27.410089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921867, 33.627327, 26.648975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203979, 33.352165, 26.717522>,  <33.373249, 33.187069, 26.758650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203979, 33.352165, 26.717522>,  <32.921867, 33.627327, 26.648975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203979, 33.352165, 26.717522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191579, -0.417676, -0.888169,
		0.682548, 0.593581, -0.426368,
		0.705284, -0.687901, 0.171366,
		33.415565, 33.145794, 26.768932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096317, 33.565945, 26.020990>,  <32.921867, 33.627327, 26.648975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096317, 33.565945, 26.020990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266876, 33.242859, 26.183855>,  <33.369213, 33.049007, 26.281574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266876, 33.242859, 26.183855>,  <33.096317, 33.565945, 26.020990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266876, 33.242859, 26.183855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041119, -0.466975, -0.883314,
		0.903601, 0.359901, -0.232330,
		0.426398, -0.807716, 0.407160,
		33.394794, 33.000546, 26.306004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707058, 33.337646, 25.583475>,  <33.096317, 33.565945, 26.020990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707058, 33.337646, 25.583475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560566, 33.019619, 25.776859>,  <33.472672, 32.828800, 25.892891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560566, 33.019619, 25.776859>,  <33.707058, 33.337646, 25.583475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560566, 33.019619, 25.776859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023546, -0.527310, -0.849347,
		0.930227, -0.299671, 0.211837,
		-0.366229, -0.795073, 0.483462,
		33.450699, 32.781097, 25.921898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947090, 32.788033, 25.177702>,  <33.707058, 33.337646, 25.583475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947090, 32.788033, 25.177702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682587, 32.607155, 25.417122>,  <33.523884, 32.498631, 25.560774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682587, 32.607155, 25.417122>,  <33.947090, 32.788033, 25.177702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682587, 32.607155, 25.417122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061229, -0.762700, -0.643848,
		0.747656, -0.462398, 0.476653,
		-0.661257, -0.452192, 0.598550,
		33.484211, 32.471497, 25.596687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085545, 32.079498, 25.154354>,  <33.947090, 32.788033, 25.177702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085545, 32.079498, 25.154354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707752, 32.082909, 25.285734>,  <33.481075, 32.084957, 25.364563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707752, 32.082909, 25.285734>,  <34.085545, 32.079498, 25.154354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707752, 32.082909, 25.285734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211469, -0.780867, -0.587816,
		0.251462, -0.624639, 0.739319,
		-0.944483, 0.008530, 0.328450,
		33.424408, 32.085468, 25.384270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939003, 31.405645, 25.528749>,  <34.085545, 32.079498, 25.154354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939003, 31.405645, 25.528749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590000, 31.555307, 25.403063>,  <33.380596, 31.645105, 25.327650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590000, 31.555307, 25.403063>,  <33.939003, 31.405645, 25.528749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590000, 31.555307, 25.403063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179553, -0.843641, -0.505994,
		-0.454409, -0.385066, 0.803266,
		-0.872509, 0.374157, -0.314218,
		33.328247, 31.667555, 25.308798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591362, 30.853334, 25.590818>,  <33.939003, 31.405645, 25.528749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591362, 30.853334, 25.590818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368889, 31.093807, 25.361301>,  <33.235405, 31.238091, 25.223591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368889, 31.093807, 25.361301>,  <33.591362, 30.853334, 25.590818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368889, 31.093807, 25.361301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409207, -0.799048, -0.440536,
		-0.723329, -0.010222, 0.690428,
		-0.556188, 0.601180, -0.573792,
		33.202034, 31.274162, 25.189163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896637, 30.533340, 25.617138>,  <33.591362, 30.853334, 25.590818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896637, 30.533340, 25.617138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918900, 30.756449, 25.285887>,  <32.932259, 30.890314, 25.087135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918900, 30.756449, 25.285887>,  <32.896637, 30.533340, 25.617138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918900, 30.756449, 25.285887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428759, -0.735695, -0.524328,
		-0.901703, 0.384249, 0.198203,
		0.055656, 0.557769, -0.828128,
		32.935596, 30.923779, 25.037449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332668, 30.523550, 25.289017>,  <32.896637, 30.533340, 25.617138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332668, 30.523550, 25.289017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540958, 30.663303, 24.977432>,  <32.665932, 30.747154, 24.790482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540958, 30.663303, 24.977432>,  <32.332668, 30.523550, 25.289017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540958, 30.663303, 24.977432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598419, -0.501379, -0.624911,
		-0.608888, 0.791550, -0.052002,
		0.520721, 0.349382, -0.778962,
		32.697174, 30.768118, 24.743744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746284, 30.351467, 25.661734>,  <32.332668, 30.523550, 25.289017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746284, 30.351467, 25.661734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.499092, 30.060093, 25.780045>,  <31.350777, 29.885269, 25.851030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.499092, 30.060093, 25.780045>,  <31.746284, 30.351467, 25.661734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499092, 30.060093, 25.780045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227983, 0.194011, 0.954140,
		-0.752414, 0.657070, 0.046176,
		-0.617979, -0.728435, 0.295777,
		31.313698, 29.841562, 25.868778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312113, 30.572447, 26.232349>,  <31.746284, 30.351467, 25.661734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312113, 30.572447, 26.232349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.318092, 30.173119, 26.254747>,  <31.321680, 29.933521, 26.268187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.318092, 30.173119, 26.254747>,  <31.312113, 30.572447, 26.232349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318092, 30.173119, 26.254747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251607, 0.057958, 0.966093,
		-0.967714, -0.000355, 0.252050,
		0.014951, -0.998319, 0.055997,
		31.322578, 29.873623, 26.271547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823206, 30.360041, 26.783926>,  <31.312113, 30.572447, 26.232349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823206, 30.360041, 26.783926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.073519, 30.051208, 26.739592>,  <31.223707, 29.865910, 26.712992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.073519, 30.051208, 26.739592>,  <30.823206, 30.360041, 26.783926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073519, 30.051208, 26.739592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128112, -0.038427, 0.991015,
		-0.769404, -0.634360, 0.074866,
		0.625783, -0.772082, -0.110835,
		31.261253, 29.819584, 26.706341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638145, 29.884617, 27.208967>,  <30.823206, 30.360041, 26.783926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638145, 29.884617, 27.208967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019045, 29.794537, 27.126495>,  <31.247583, 29.740488, 27.077011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019045, 29.794537, 27.126495>,  <30.638145, 29.884617, 27.208967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019045, 29.794537, 27.126495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197595, -0.060281, 0.978429,
		-0.232773, -0.972446, -0.012903,
		0.952246, -0.225202, -0.206182,
		31.304718, 29.726976, 27.064640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752844, 29.312767, 27.626215>,  <30.638145, 29.884617, 27.208967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752844, 29.312767, 27.626215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.104052, 29.482809, 27.538242>,  <31.314775, 29.584833, 27.485458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.104052, 29.482809, 27.538242>,  <30.752844, 29.312767, 27.626215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104052, 29.482809, 27.538242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131022, 0.228478, 0.964692,
		0.460344, -0.875834, 0.144910,
		0.878019, 0.425104, -0.219932,
		31.367456, 29.610340, 27.472263>
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
