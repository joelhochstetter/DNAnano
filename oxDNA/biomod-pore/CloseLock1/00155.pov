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
	<24.241245, 34.716183, 35.658081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299417, 34.778347, 35.267246>,  <24.334320, 34.815643, 35.032745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299417, 34.778347, 35.267246>,  <24.241245, 34.716183, 35.658081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299417, 34.778347, 35.267246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407667, 0.890439, 0.202304,
		0.901476, -0.427747, 0.066141,
		0.145429, 0.155408, -0.977087,
		24.343046, 34.824970, 34.974121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886456, 35.005196, 35.615490>,  <24.241245, 34.716183, 35.658081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886456, 35.005196, 35.615490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701309, 35.119450, 35.279831>,  <24.590221, 35.188004, 35.078438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701309, 35.119450, 35.279831>,  <24.886456, 35.005196, 35.615490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.701309, 35.119450, 35.279831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279757, 0.945350, 0.167479,
		0.841125, -0.157236, -0.517481,
		-0.462867, 0.285639, -0.839145,
		24.562449, 35.205143, 35.028088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332422, 35.395073, 35.247879>,  <24.886456, 35.005196, 35.615490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332422, 35.395073, 35.247879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959269, 35.493797, 35.142952>,  <24.735376, 35.553032, 35.079994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959269, 35.493797, 35.142952>,  <25.332422, 35.395073, 35.247879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.959269, 35.493797, 35.142952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218589, 0.966809, 0.132286,
		0.286264, 0.066067, -0.955870,
		-0.932884, 0.246812, -0.262321,
		24.679403, 35.567841, 35.064255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413982, 35.931385, 34.899216>,  <25.332422, 35.395073, 35.247879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413982, 35.931385, 34.899216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025772, 35.956875, 34.992188>,  <24.792847, 35.972168, 35.047970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025772, 35.956875, 34.992188>,  <25.413982, 35.931385, 34.899216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025772, 35.956875, 34.992188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107577, 0.977544, 0.181202,
		-0.215661, 0.200865, -0.955585,
		-0.970524, 0.063721, 0.232427,
		24.734615, 35.975990, 35.061916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145004, 36.552032, 34.571560>,  <25.413982, 35.931385, 34.899216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145004, 36.552032, 34.571560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914568, 36.491249, 34.892815>,  <24.776306, 36.454777, 35.085567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914568, 36.491249, 34.892815>,  <25.145004, 36.552032, 34.571560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914568, 36.491249, 34.892815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064398, 0.971074, 0.229930,
		-0.814844, 0.184181, -0.549643,
		-0.576093, -0.151961, 0.803135,
		24.741739, 36.445660, 35.133755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573818, 37.091866, 34.619221>,  <25.145004, 36.552032, 34.571560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573818, 37.091866, 34.619221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691597, 36.952736, 34.975269>,  <24.762264, 36.869259, 35.188900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691597, 36.952736, 34.975269>,  <24.573818, 37.091866, 34.619221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.691597, 36.952736, 34.975269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380138, 0.897186, 0.224838,
		-0.876810, 0.272166, 0.396397,
		0.294449, -0.347826, 0.890122,
		24.779932, 36.848389, 35.242306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.312658, 37.506706, 35.140778>,  <24.573818, 37.091866, 34.619221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.312658, 37.506706, 35.140778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651394, 37.335499, 35.267052>,  <24.854635, 37.232773, 35.342815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651394, 37.335499, 35.267052>,  <24.312658, 37.506706, 35.140778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651394, 37.335499, 35.267052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368010, 0.900103, 0.233202,
		-0.383968, -0.081308, 0.919760,
		0.846840, -0.428023, 0.315689,
		24.905445, 37.207092, 35.361759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.545450, 37.852165, 35.680447>,  <24.312658, 37.506706, 35.140778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.545450, 37.852165, 35.680447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872063, 37.683754, 35.522453>,  <25.068029, 37.582706, 35.427658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872063, 37.683754, 35.522453>,  <24.545450, 37.852165, 35.680447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872063, 37.683754, 35.522453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532101, 0.814270, 0.232021,
		0.223936, -0.399623, 0.888906,
		0.816530, -0.421030, -0.394984,
		25.117022, 37.557446, 35.403957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059361, 38.173149, 36.108166>,  <24.545450, 37.852165, 35.680447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.059361, 38.173149, 36.108166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237057, 38.031960, 35.778786>,  <25.343674, 37.947247, 35.581158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237057, 38.031960, 35.778786>,  <25.059361, 38.173149, 36.108166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237057, 38.031960, 35.778786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569889, 0.820529, -0.044272,
		0.691287, -0.449605, 0.565665,
		0.444240, -0.352971, -0.823446,
		25.370329, 37.926067, 35.531754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740080, 38.475945, 36.239769>,  <25.059361, 38.173149, 36.108166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740080, 38.475945, 36.239769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708673, 38.363358, 35.857227>,  <25.689829, 38.295807, 35.627701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708673, 38.363358, 35.857227>,  <25.740080, 38.475945, 36.239769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708673, 38.363358, 35.857227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507428, 0.814463, -0.281365,
		0.858110, -0.507372, 0.078875,
		-0.078516, -0.281466, -0.956354,
		25.685118, 38.278919, 35.570320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385008, 38.632751, 35.986427>,  <25.740080, 38.475945, 36.239769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385008, 38.632751, 35.986427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131371, 38.628078, 35.677158>,  <25.979189, 38.625275, 35.491596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131371, 38.628078, 35.677158>,  <26.385008, 38.632751, 35.986427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131371, 38.628078, 35.677158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507515, 0.748095, -0.427530,
		0.583401, -0.663488, -0.468430,
		-0.634091, -0.011686, -0.773170,
		25.941143, 38.624573, 35.445206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857161, 38.621090, 35.350403>,  <26.385008, 38.632751, 35.986427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857161, 38.621090, 35.350403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496376, 38.719418, 35.208393>,  <26.279905, 38.778416, 35.123188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496376, 38.719418, 35.208393>,  <26.857161, 38.621090, 35.350403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496376, 38.719418, 35.208393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420092, 0.689827, -0.589628,
		0.099958, -0.680962, -0.725464,
		-0.901960, 0.245824, -0.355021,
		26.225788, 38.793163, 35.101887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821543, 38.555740, 34.585991>,  <26.857161, 38.621090, 35.350403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821543, 38.555740, 34.585991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539869, 38.823540, 34.680561>,  <26.370865, 38.984219, 34.737305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539869, 38.823540, 34.680561>,  <26.821543, 38.555740, 34.585991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539869, 38.823540, 34.680561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416343, 0.659087, -0.626309,
		-0.575138, -0.342603, -0.742859,
		-0.704184, 0.669498, 0.236425,
		26.328613, 39.024387, 34.751488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672949, 38.840221, 33.946785>,  <26.821543, 38.555740, 34.585991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672949, 38.840221, 33.946785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506546, 39.088764, 34.212372>,  <26.406704, 39.237888, 34.371723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506546, 39.088764, 34.212372>,  <26.672949, 38.840221, 33.946785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506546, 39.088764, 34.212372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363181, 0.782913, -0.505121,
		-0.833690, 0.031006, -0.551362,
		-0.416006, 0.621358, 0.663967,
		26.381744, 39.275173, 34.411564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209637, 39.217133, 33.609020>,  <26.672949, 38.840221, 33.946785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209637, 39.217133, 33.609020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350727, 39.423504, 33.921276>,  <26.435381, 39.547325, 34.108631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350727, 39.423504, 33.921276>,  <26.209637, 39.217133, 33.609020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350727, 39.423504, 33.921276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296343, 0.729728, -0.616180,
		-0.887562, 0.448680, 0.104502,
		0.352726, 0.515930, 0.780641,
		26.456545, 39.578281, 34.155468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791525, 39.802128, 33.738716>,  <26.209637, 39.217133, 33.609020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791525, 39.802128, 33.738716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148445, 39.888657, 33.897213>,  <26.362597, 39.940575, 33.992310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148445, 39.888657, 33.897213>,  <25.791525, 39.802128, 33.738716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148445, 39.888657, 33.897213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011541, 0.866499, -0.499045,
		-0.451295, 0.449871, 0.770680,
		0.892300, 0.216322, 0.396239,
		26.416136, 39.953552, 34.016083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845299, 40.520065, 33.792137>,  <25.791525, 39.802128, 33.738716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845299, 40.520065, 33.792137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236652, 40.456951, 33.845612>,  <26.471464, 40.419083, 33.877697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236652, 40.456951, 33.845612>,  <25.845299, 40.520065, 33.792137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236652, 40.456951, 33.845612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198880, 0.895114, -0.399020,
		-0.056701, 0.416981, 0.907145,
		0.978382, -0.157788, 0.133682,
		26.530167, 40.409615, 33.885715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075087, 41.129166, 34.108082>,  <25.845299, 40.520065, 33.792137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075087, 41.129166, 34.108082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403374, 40.947662, 33.969215>,  <26.600346, 40.838760, 33.885895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403374, 40.947662, 33.969215>,  <26.075087, 41.129166, 34.108082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403374, 40.947662, 33.969215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381438, 0.887561, -0.258341,
		0.425352, 0.079604, 0.901520,
		0.820719, -0.453760, -0.347162,
		26.649590, 40.811535, 33.865067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661909, 41.513172, 34.402992>,  <26.075087, 41.129166, 34.108082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661909, 41.513172, 34.402992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814627, 41.284065, 34.112843>,  <26.906258, 41.146599, 33.938751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814627, 41.284065, 34.112843>,  <26.661909, 41.513172, 34.402992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814627, 41.284065, 34.112843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669963, 0.712161, -0.209709,
		0.636697, -0.405907, 0.655634,
		0.381795, -0.572771, -0.725373,
		26.929165, 41.112232, 33.895229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459242, 41.366913, 34.506557>,  <26.661909, 41.513172, 34.402992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459242, 41.366913, 34.506557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363348, 41.344334, 34.118877>,  <27.305811, 41.330788, 33.886269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363348, 41.344334, 34.118877>,  <27.459242, 41.366913, 34.506557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363348, 41.344334, 34.118877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720580, 0.658672, -0.216601,
		0.650608, -0.750310, -0.117233,
		-0.239736, -0.056447, -0.969196,
		27.291428, 41.327400, 33.828117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062817, 41.418419, 34.288929>,  <27.459242, 41.366913, 34.506557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062817, 41.418419, 34.288929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842493, 41.500057, 33.965210>,  <27.710299, 41.549042, 33.770981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842493, 41.500057, 33.965210>,  <28.062817, 41.418419, 34.288929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842493, 41.500057, 33.965210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653954, 0.708034, -0.266520,
		0.518610, -0.676041, -0.523462,
		-0.550807, 0.204099, -0.809293,
		27.677252, 41.561287, 33.722424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482651, 41.459366, 33.691566>,  <28.062817, 41.418419, 34.288929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482651, 41.459366, 33.691566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162680, 41.677322, 33.591000>,  <27.970697, 41.808098, 33.530659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162680, 41.677322, 33.591000>,  <28.482651, 41.459366, 33.691566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162680, 41.677322, 33.591000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598983, 0.750500, -0.279229,
		0.036538, -0.373957, -0.926726,
		-0.799928, 0.544891, -0.251416,
		27.922701, 41.840790, 33.515575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538822, 41.636372, 32.914852>,  <28.482651, 41.459366, 33.691566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538822, 41.636372, 32.914852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314102, 41.907085, 33.105156>,  <28.179270, 42.069515, 33.219337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314102, 41.907085, 33.105156>,  <28.538822, 41.636372, 32.914852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314102, 41.907085, 33.105156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591978, 0.730601, -0.340270,
		-0.577878, 0.090474, -0.811093,
		-0.561800, 0.676784, 0.475757,
		28.145561, 42.110119, 33.247883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303482, 42.192593, 32.387699>,  <28.538822, 41.636372, 32.914852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303482, 42.192593, 32.387699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306599, 42.326523, 32.764599>,  <28.308470, 42.406879, 32.990738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306599, 42.326523, 32.764599>,  <28.303482, 42.192593, 32.387699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306599, 42.326523, 32.764599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608423, 0.746202, -0.270193,
		-0.793575, 0.575391, -0.197901,
		0.007793, 0.334826, 0.942248,
		28.308937, 42.426971, 33.047272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350563, 42.872158, 32.322464>,  <28.303482, 42.192593, 32.387699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350563, 42.872158, 32.322464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459297, 42.842953, 32.706291>,  <28.524538, 42.825428, 32.936588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459297, 42.842953, 32.706291>,  <28.350563, 42.872158, 32.322464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459297, 42.842953, 32.706291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850817, 0.484169, -0.204184,
		-0.449685, 0.871923, 0.193738,
		0.271835, -0.073017, 0.959570,
		28.540848, 42.821049, 32.994164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070894, 43.257477, 32.368908>,  <28.350563, 42.872158, 32.322464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070894, 43.257477, 32.368908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051981, 43.048576, 32.709499>,  <29.040632, 42.923237, 32.913857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051981, 43.048576, 32.709499>,  <29.070894, 43.257477, 32.368908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051981, 43.048576, 32.709499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994283, 0.057093, 0.090230,
		-0.095736, 0.850880, 0.516564,
		-0.047283, -0.522249, 0.851481,
		29.037796, 42.891903, 32.964943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298599, 43.743702, 32.924809>,  <29.070894, 43.257477, 32.368908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298599, 43.743702, 32.924809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380394, 43.359509, 33.000336>,  <29.429472, 43.128990, 33.045650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380394, 43.359509, 33.000336>,  <29.298599, 43.743702, 32.924809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380394, 43.359509, 33.000336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975665, 0.184399, -0.118634,
		0.079130, 0.208479, 0.974820,
		0.204489, -0.960486, 0.188815,
		29.441740, 43.071362, 33.056980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655336, 43.724415, 33.629303>,  <29.298599, 43.743702, 32.924809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655336, 43.724415, 33.629303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286318, 43.593376, 33.710880>,  <29.064907, 43.514755, 33.759827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286318, 43.593376, 33.710880>,  <29.655336, 43.724415, 33.629303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286318, 43.593376, 33.710880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385860, 0.776738, -0.497785,
		0.004661, -0.537922, -0.842981,
		-0.922546, -0.327593, 0.203943,
		29.009554, 43.495098, 33.772064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629463, 44.052742, 34.401077>,  <29.655336, 43.724415, 33.629303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629463, 44.052742, 34.401077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619558, 43.883408, 34.763332>,  <29.613615, 43.781807, 34.980686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619558, 43.883408, 34.763332>,  <29.629463, 44.052742, 34.401077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619558, 43.883408, 34.763332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865166, 0.444813, 0.231581,
		-0.500874, 0.789258, 0.355241,
		-0.024762, -0.423335, 0.905635,
		29.612129, 43.756409, 35.035023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007631, 44.522053, 34.921677>,  <29.629463, 44.052742, 34.401077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007631, 44.522053, 34.921677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026966, 44.173626, 35.117191>,  <30.038567, 43.964569, 35.234501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026966, 44.173626, 35.117191>,  <30.007631, 44.522053, 34.921677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026966, 44.173626, 35.117191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936795, 0.209308, 0.280366,
		-0.346524, 0.444338, 0.826127,
		0.048338, -0.871065, 0.488783,
		30.041468, 43.912308, 35.263824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222519, 44.634754, 35.584949>,  <30.007631, 44.522053, 34.921677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222519, 44.634754, 35.584949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321821, 44.267113, 35.462563>,  <30.381403, 44.046528, 35.389130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321821, 44.267113, 35.462563>,  <30.222519, 44.634754, 35.584949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321821, 44.267113, 35.462563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959611, 0.190186, 0.207307,
		-0.132346, -0.345075, 0.929197,
		0.248257, -0.919104, -0.305967,
		30.396297, 43.991383, 35.370773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545885, 44.235554, 36.120956>,  <30.222519, 44.634754, 35.584949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545885, 44.235554, 36.120956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694378, 44.123192, 35.766945>,  <30.783474, 44.055775, 35.554539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694378, 44.123192, 35.766945>,  <30.545885, 44.235554, 36.120956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694378, 44.123192, 35.766945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927854, 0.075588, 0.365202,
		-0.035690, -0.956754, 0.288700,
		0.371231, -0.280905, -0.885031,
		30.805748, 44.038921, 35.501434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207941, 43.991589, 36.222984>,  <30.545885, 44.235554, 36.120956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207941, 43.991589, 36.222984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216150, 43.969482, 35.823681>,  <31.221077, 43.956219, 35.584099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216150, 43.969482, 35.823681>,  <31.207941, 43.991589, 36.222984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216150, 43.969482, 35.823681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932835, -0.358185, 0.039009,
		-0.359718, -0.932013, 0.044203,
		0.020524, -0.055267, -0.998261,
		31.222307, 43.952904, 35.524204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176340, 44.165730, 36.939945>,  <31.207941, 43.991589, 36.222984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176340, 44.165730, 36.939945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311352, 44.067341, 37.303391>,  <31.392359, 44.008308, 37.521458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311352, 44.067341, 37.303391>,  <31.176340, 44.165730, 36.939945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311352, 44.067341, 37.303391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531548, -0.846436, -0.031679,
		0.776872, -0.472277, -0.416444,
		0.337531, -0.245970, 0.908609,
		31.412611, 43.993549, 37.575974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391006, 43.571533, 36.799156>,  <31.176340, 44.165730, 36.939945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391006, 43.571533, 36.799156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251957, 43.633915, 37.168987>,  <31.168528, 43.671345, 37.390884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251957, 43.633915, 37.168987>,  <31.391006, 43.571533, 36.799156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251957, 43.633915, 37.168987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603034, -0.792264, -0.093095,
		0.717988, -0.589912, 0.369456,
		-0.347625, 0.155953, 0.924573,
		31.147669, 43.680702, 37.446358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390730, 42.907482, 36.934689>,  <31.391006, 43.571533, 36.799156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390730, 42.907482, 36.934689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122541, 43.111641, 37.150082>,  <30.961628, 43.234135, 37.279316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122541, 43.111641, 37.150082>,  <31.390730, 42.907482, 36.934689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122541, 43.111641, 37.150082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657443, -0.745077, -0.112378,
		0.343854, -0.429368, 0.835109,
		-0.670472, 0.510395, 0.538483,
		30.921400, 43.264759, 37.311626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049543, 42.408428, 37.239342>,  <31.390730, 42.907482, 36.934689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049543, 42.408428, 37.239342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804672, 42.720856, 37.288601>,  <30.657749, 42.908314, 37.318157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804672, 42.720856, 37.288601>,  <31.049543, 42.408428, 37.239342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804672, 42.720856, 37.288601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789768, -0.611622, -0.046743,
		0.038811, -0.125874, 0.991287,
		-0.612176, 0.781073, 0.123149,
		30.621019, 42.955177, 37.325546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704611, 42.295544, 37.802124>,  <31.049543, 42.408428, 37.239342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704611, 42.295544, 37.802124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451403, 42.532139, 37.602356>,  <30.299479, 42.674095, 37.482494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451403, 42.532139, 37.602356>,  <30.704611, 42.295544, 37.802124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451403, 42.532139, 37.602356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692419, -0.721110, 0.023601,
		-0.346180, 0.360751, 0.866036,
		-0.633021, 0.591489, -0.499424,
		30.261496, 42.709587, 37.452530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067501, 42.253643, 38.098984>,  <30.704611, 42.295544, 37.802124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067501, 42.253643, 38.098984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961397, 42.413494, 37.747997>,  <29.897736, 42.509403, 37.537407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961397, 42.413494, 37.747997>,  <30.067501, 42.253643, 38.098984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961397, 42.413494, 37.747997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633071, -0.758597, -0.154111,
		-0.727226, 0.514617, 0.454215,
		-0.265258, 0.399624, -0.877461,
		29.881821, 42.533382, 37.484760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270147, 42.263351, 38.005989>,  <30.067501, 42.253643, 38.098984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270147, 42.263351, 38.005989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414791, 42.285858, 37.633736>,  <29.501577, 42.299362, 37.410385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414791, 42.285858, 37.633736>,  <29.270147, 42.263351, 38.005989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414791, 42.285858, 37.633736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670213, -0.678202, -0.301423,
		-0.648115, 0.732718, -0.207535,
		0.361609, 0.056264, -0.930631,
		29.523273, 42.302738, 37.354546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694138, 42.183487, 37.656929>,  <29.270147, 42.263351, 38.005989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694138, 42.183487, 37.656929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997406, 42.113705, 37.405613>,  <29.179367, 42.071835, 37.254826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997406, 42.113705, 37.405613>,  <28.694138, 42.183487, 37.656929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997406, 42.113705, 37.405613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516241, -0.749219, -0.414928,
		-0.398338, 0.638934, -0.658096,
		0.758170, -0.174455, -0.628286,
		29.224857, 42.061367, 37.217129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387312, 42.093254, 37.046532>,  <28.694138, 42.183487, 37.656929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387312, 42.093254, 37.046532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745079, 41.914364, 37.045677>,  <28.959740, 41.807030, 37.045162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745079, 41.914364, 37.045677>,  <28.387312, 42.093254, 37.046532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745079, 41.914364, 37.045677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420592, -0.839508, -0.343989,
		0.152044, 0.308570, -0.938971,
		0.894419, -0.447225, -0.002140,
		29.013405, 41.780197, 37.045036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310297, 41.637028, 36.541786>,  <28.387312, 42.093254, 37.046532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310297, 41.637028, 36.541786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657604, 41.489986, 36.675037>,  <28.865988, 41.401760, 36.754990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657604, 41.489986, 36.675037>,  <28.310297, 41.637028, 36.541786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657604, 41.489986, 36.675037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210961, -0.881362, -0.422724,
		0.449007, 0.296760, -0.842809,
		0.868268, -0.367606, 0.333133,
		28.918085, 41.379704, 36.774979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724319, 41.486862, 35.962021>,  <28.310297, 41.637028, 36.541786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724319, 41.486862, 35.962021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863003, 41.245239, 36.249050>,  <28.946213, 41.100266, 36.421268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863003, 41.245239, 36.249050>,  <28.724319, 41.486862, 35.962021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863003, 41.245239, 36.249050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472394, -0.773368, -0.422783,
		0.810331, -0.192392, -0.553488,
		0.346710, -0.604059, 0.717569,
		28.967016, 41.064022, 36.464321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051981, 40.957100, 35.546677>,  <28.724319, 41.486862, 35.962021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051981, 40.957100, 35.546677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071178, 40.777931, 35.903790>,  <29.082697, 40.670429, 36.118057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071178, 40.777931, 35.903790>,  <29.051981, 40.957100, 35.546677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071178, 40.777931, 35.903790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321590, -0.853148, -0.410753,
		0.945662, -0.267396, -0.184994,
		0.047994, -0.447926, 0.892782,
		29.085577, 40.643555, 36.171623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379143, 40.306461, 35.446049>,  <29.051981, 40.957100, 35.546677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379143, 40.306461, 35.446049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163397, 40.270439, 35.780945>,  <29.033949, 40.248825, 35.981884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163397, 40.270439, 35.780945>,  <29.379143, 40.306461, 35.446049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163397, 40.270439, 35.780945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335806, -0.888782, -0.311930,
		0.772217, -0.449396, 0.449137,
		-0.539365, -0.090055, 0.837243,
		29.001587, 40.243423, 36.032116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598932, 39.626270, 35.781868>,  <29.379143, 40.306461, 35.446049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598932, 39.626270, 35.781868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260527, 39.721432, 35.972721>,  <29.057484, 39.778526, 36.087234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260527, 39.721432, 35.972721>,  <29.598932, 39.626270, 35.781868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260527, 39.721432, 35.972721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244484, -0.968397, 0.049344,
		0.473797, -0.074907, 0.877442,
		-0.846016, 0.237900, 0.477137,
		29.006721, 39.792801, 36.115864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530714, 39.144871, 36.458710>,  <29.598932, 39.626270, 35.781868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530714, 39.144871, 36.458710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175982, 39.289696, 36.343861>,  <28.963142, 39.376591, 36.274952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175982, 39.289696, 36.343861>,  <29.530714, 39.144871, 36.458710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175982, 39.289696, 36.343861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368288, -0.929088, -0.034049,
		-0.279089, 0.075548, 0.957289,
		-0.886833, 0.362060, -0.287122,
		28.909931, 39.398315, 36.257725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048557, 38.777523, 36.864895>,  <29.530714, 39.144871, 36.458710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048557, 38.777523, 36.864895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823874, 38.928291, 36.570301>,  <28.689064, 39.018753, 36.393543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823874, 38.928291, 36.570301>,  <29.048557, 38.777523, 36.864895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823874, 38.928291, 36.570301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483364, -0.871973, -0.077610,
		-0.671449, 0.312397, 0.671986,
		-0.561708, 0.376925, -0.736486,
		28.655361, 39.041370, 36.349354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411249, 38.518768, 37.020626>,  <29.048557, 38.777523, 36.864895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411249, 38.518768, 37.020626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426474, 38.623505, 36.634884>,  <28.435608, 38.686348, 36.403439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426474, 38.623505, 36.634884>,  <28.411249, 38.518768, 37.020626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426474, 38.623505, 36.634884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328511, -0.908139, -0.259545,
		-0.943733, 0.326682, 0.051454,
		0.038061, 0.261844, -0.964359,
		28.437891, 38.702057, 36.345577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842264, 38.156174, 36.736179>,  <28.411249, 38.518768, 37.020626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842264, 38.156174, 36.736179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009710, 38.269276, 36.390968>,  <28.110178, 38.337135, 36.183842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009710, 38.269276, 36.390968>,  <27.842264, 38.156174, 36.736179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009710, 38.269276, 36.390968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457996, -0.754875, -0.469472,
		-0.784220, 0.591790, -0.186502,
		0.418615, 0.282752, -0.863025,
		28.135294, 38.354103, 36.132061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280773, 38.081734, 36.334854>,  <27.842264, 38.156174, 36.736179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280773, 38.081734, 36.334854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629457, 38.070480, 36.139172>,  <27.838669, 38.063728, 36.021763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629457, 38.070480, 36.139172>,  <27.280773, 38.081734, 36.334854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629457, 38.070480, 36.139172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314579, -0.797594, -0.514668,
		-0.375710, 0.602538, -0.704124,
		0.871712, -0.028137, -0.489210,
		27.890970, 38.062038, 35.992409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080025, 37.960011, 35.735107>,  <27.280773, 38.081734, 36.334854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080025, 37.960011, 35.735107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465649, 37.854156, 35.725613>,  <27.697023, 37.790646, 35.719917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465649, 37.854156, 35.725613>,  <27.080025, 37.960011, 35.735107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465649, 37.854156, 35.725613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238993, -0.824675, -0.512633,
		0.116084, 0.499881, -0.858280,
		0.964057, -0.264632, -0.023736,
		27.754866, 37.774769, 35.718491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167360, 37.760357, 35.046329>,  <27.080025, 37.960011, 35.735107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167360, 37.760357, 35.046329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460121, 37.588558, 35.257931>,  <27.635778, 37.485477, 35.384892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460121, 37.588558, 35.257931>,  <27.167360, 37.760357, 35.046329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460121, 37.588558, 35.257931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050134, -0.808181, -0.586796,
		0.679561, 0.402957, -0.613043,
		0.731904, -0.429498, 0.529007,
		27.679693, 37.459709, 35.416634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509735, 37.252586, 34.513683>,  <27.167360, 37.760357, 35.046329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509735, 37.252586, 34.513683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641785, 37.122997, 34.868324>,  <27.721014, 37.045246, 35.081108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641785, 37.122997, 34.868324>,  <27.509735, 37.252586, 34.513683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641785, 37.122997, 34.868324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104716, -0.946030, -0.306694,
		0.938111, 0.008406, -0.346232,
		0.330124, -0.323969, 0.886601,
		27.740822, 37.025806, 35.134304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992371, 36.714397, 34.345123>,  <27.509735, 37.252586, 34.513683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992371, 36.714397, 34.345123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876040, 36.657120, 34.723522>,  <27.806242, 36.622753, 34.950562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876040, 36.657120, 34.723522>,  <27.992371, 36.714397, 34.345123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876040, 36.657120, 34.723522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085431, -0.980902, -0.174737,
		0.952954, -0.131636, 0.273040,
		-0.290827, -0.143190, 0.946000,
		27.788792, 36.614162, 35.007320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331266, 36.138489, 34.553589>,  <27.992371, 36.714397, 34.345123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331266, 36.138489, 34.553589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022408, 36.160027, 34.806850>,  <27.837091, 36.172951, 34.958809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022408, 36.160027, 34.806850>,  <28.331266, 36.138489, 34.553589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022408, 36.160027, 34.806850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156128, -0.981936, -0.106896,
		0.615964, -0.181393, 0.766606,
		-0.772148, 0.053844, 0.633157,
		27.790764, 36.176178, 34.996796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376209, 35.607479, 35.062630>,  <28.331266, 36.138489, 34.553589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376209, 35.607479, 35.062630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991663, 35.717510, 35.058563>,  <27.760935, 35.783527, 35.056122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991663, 35.717510, 35.058563>,  <28.376209, 35.607479, 35.062630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991663, 35.717510, 35.058563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269540, -0.948223, -0.167994,
		-0.055855, -0.158763, 0.985736,
		-0.961368, 0.275079, -0.010170,
		27.703253, 35.800034, 35.055511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912077, 35.134007, 34.700111>,  <28.376209, 35.607479, 35.062630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912077, 35.134007, 34.700111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753090, 35.427341, 34.479481>,  <28.657698, 35.603344, 34.347103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753090, 35.427341, 34.479481>,  <28.912077, 35.134007, 34.700111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753090, 35.427341, 34.479481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845069, 0.526784, 0.091417,
		0.357600, -0.429782, -0.829102,
		-0.397468, 0.733339, -0.551574,
		28.633850, 35.647343, 34.314007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482660, 35.321983, 34.347256>,  <28.912077, 35.134007, 34.700111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482660, 35.321983, 34.347256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198166, 35.599800, 34.390617>,  <29.027470, 35.766491, 34.416634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198166, 35.599800, 34.390617>,  <29.482660, 35.321983, 34.347256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198166, 35.599800, 34.390617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699598, 0.684325, 0.205578,
		0.068599, 0.222054, -0.972618,
		-0.711236, 0.694544, 0.108404,
		28.984795, 35.808163, 34.423138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062222, 34.962486, 34.554050>,  <29.482660, 35.321983, 34.347256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062222, 34.962486, 34.554050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291912, 34.635250, 34.541477>,  <30.429726, 34.438908, 34.533932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291912, 34.635250, 34.541477>,  <30.062222, 34.962486, 34.554050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291912, 34.635250, 34.541477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697371, -0.508885, 0.504688,
		-0.428878, -0.267883, -0.862729,
		0.574228, -0.818092, -0.031436,
		30.464180, 34.389824, 34.532047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644945, 34.397343, 34.396698>,  <30.062222, 34.962486, 34.554050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644945, 34.397343, 34.396698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961859, 34.254662, 34.594707>,  <30.152006, 34.169052, 34.713512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961859, 34.254662, 34.594707>,  <29.644945, 34.397343, 34.396698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961859, 34.254662, 34.594707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601910, -0.324001, 0.729881,
		-0.099963, -0.876233, -0.471405,
		0.792282, -0.356705, 0.495025,
		30.199543, 34.147652, 34.743214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323215, 33.715374, 34.668949>,  <29.644945, 34.397343, 34.396698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323215, 33.715374, 34.668949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640673, 33.811214, 34.892635>,  <29.831146, 33.868717, 35.026848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640673, 33.811214, 34.892635>,  <29.323215, 33.715374, 34.668949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640673, 33.811214, 34.892635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536549, -0.157641, 0.829014,
		0.286787, -0.957988, 0.003446,
		0.793643, 0.239599, 0.559217,
		29.878765, 33.883095, 35.060402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725283, 33.260986, 34.851505>,  <29.323215, 33.715374, 34.668949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725283, 33.260986, 34.851505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863949, 33.112991, 35.196281>,  <28.947149, 33.024197, 35.403145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863949, 33.112991, 35.196281>,  <28.725283, 33.260986, 34.851505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863949, 33.112991, 35.196281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189823, 0.872234, 0.450750,
		-0.918580, -0.319876, 0.232144,
		0.346667, -0.369983, 0.861936,
		28.967949, 33.001995, 35.454861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269619, 33.442646, 35.426659>,  <28.725283, 33.260986, 34.851505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269619, 33.442646, 35.426659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636337, 33.386120, 35.576069>,  <28.856367, 33.352203, 35.665714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636337, 33.386120, 35.576069>,  <28.269619, 33.442646, 35.426659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636337, 33.386120, 35.576069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087421, 0.841602, 0.532976,
		-0.389676, -0.521282, 0.759222,
		0.916794, -0.141316, 0.373523,
		28.911375, 33.343723, 35.688126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139355, 33.553650, 36.188755>,  <28.269619, 33.442646, 35.426659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139355, 33.553650, 36.188755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535103, 33.591541, 36.144623>,  <28.772552, 33.614277, 36.118141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535103, 33.591541, 36.144623>,  <28.139355, 33.553650, 36.188755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535103, 33.591541, 36.144623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000366, 0.760333, 0.649533,
		0.145421, -0.642588, 0.752285,
		0.989370, 0.094731, -0.110334,
		28.831913, 33.619961, 36.111523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515490, 33.379929, 36.843781>,  <28.139355, 33.553650, 36.188755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515490, 33.379929, 36.843781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738018, 33.626045, 36.620380>,  <28.871536, 33.773716, 36.486340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738018, 33.626045, 36.620380>,  <28.515490, 33.379929, 36.843781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738018, 33.626045, 36.620380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163990, 0.577594, 0.799682,
		0.814624, -0.536470, 0.220427,
		0.556323, 0.615292, -0.558498,
		28.904915, 33.810635, 36.452831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083857, 33.566048, 37.288494>,  <28.515490, 33.379929, 36.843781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083857, 33.566048, 37.288494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121029, 33.854725, 37.014114>,  <29.143332, 34.027931, 36.849487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121029, 33.854725, 37.014114>,  <29.083857, 33.566048, 37.288494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121029, 33.854725, 37.014114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316182, 0.631877, 0.707643,
		0.944136, -0.282646, -0.169465,
		0.092931, 0.721694, -0.685946,
		29.148909, 34.071232, 36.808331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684265, 33.990459, 37.487259>,  <29.083857, 33.566048, 37.288494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684265, 33.990459, 37.487259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497877, 34.231133, 37.227768>,  <29.386044, 34.375534, 37.072071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497877, 34.231133, 37.227768>,  <29.684265, 33.990459, 37.487259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497877, 34.231133, 37.227768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291007, 0.796622, 0.529819,
		0.835575, 0.058096, -0.546296,
		-0.465971, 0.601680, -0.648731,
		29.358086, 34.411636, 37.033150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153343, 34.556889, 37.242729>,  <29.684265, 33.990459, 37.487259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153343, 34.556889, 37.242729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787098, 34.703793, 37.177273>,  <29.567350, 34.791935, 37.138000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787098, 34.703793, 37.177273>,  <30.153343, 34.556889, 37.242729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787098, 34.703793, 37.177273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250676, 0.839646, 0.481826,
		0.314352, 0.400146, -0.860852,
		-0.915612, 0.367258, -0.163637,
		29.512415, 34.813969, 37.128181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230650, 35.299122, 37.025654>,  <30.153343, 34.556889, 37.242729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230650, 35.299122, 37.025654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851517, 35.300732, 37.153149>,  <29.624037, 35.301697, 37.229645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851517, 35.300732, 37.153149>,  <30.230650, 35.299122, 37.025654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851517, 35.300732, 37.153149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197829, 0.791485, 0.578286,
		-0.249948, 0.611175, -0.750993,
		-0.947834, 0.004027, 0.318738,
		29.567167, 35.301941, 37.248772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886988, 35.957211, 36.967262>,  <30.230650, 35.299122, 37.025654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886988, 35.957211, 36.967262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703711, 35.766510, 37.267334>,  <29.593744, 35.652088, 37.447376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703711, 35.766510, 37.267334>,  <29.886988, 35.957211, 36.967262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703711, 35.766510, 37.267334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137336, 0.795879, 0.589674,
		-0.878179, 0.373211, -0.299191,
		-0.458192, -0.476750, 0.750179,
		29.566254, 35.623486, 37.492390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345543, 36.413082, 37.317341>,  <29.886988, 35.957211, 36.967262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345543, 36.413082, 37.317341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435301, 36.136940, 37.592457>,  <29.489155, 35.971252, 37.757526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435301, 36.136940, 37.592457>,  <29.345543, 36.413082, 37.317341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435301, 36.136940, 37.592457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080580, 0.716514, 0.692903,
		-0.971161, -0.100061, 0.216410,
		0.224394, -0.690359, 0.687787,
		29.502619, 35.929832, 37.798794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222723, 36.798130, 37.872578>,  <29.345543, 36.413082, 37.317341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222723, 36.798130, 37.872578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322327, 36.457863, 38.057774>,  <29.382090, 36.253704, 38.168892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322327, 36.457863, 38.057774>,  <29.222723, 36.798130, 37.872578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322327, 36.457863, 38.057774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034930, 0.469853, 0.882054,
		-0.967871, -0.235812, 0.087284,
		0.249009, -0.850665, 0.462994,
		29.397030, 36.202663, 38.196671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775808, 36.711044, 38.435326>,  <29.222723, 36.798130, 37.872578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775808, 36.711044, 38.435326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118467, 36.524094, 38.522697>,  <29.324062, 36.411922, 38.575119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118467, 36.524094, 38.522697>,  <28.775808, 36.711044, 38.435326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118467, 36.524094, 38.522697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031861, 0.470512, 0.881818,
		-0.514915, -0.748449, 0.417955,
		0.856649, -0.467378, 0.218428,
		29.375462, 36.383881, 38.588226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683207, 36.443462, 39.041245>,  <28.775808, 36.711044, 38.435326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683207, 36.443462, 39.041245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077885, 36.389759, 39.077927>,  <29.314692, 36.357536, 39.099937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077885, 36.389759, 39.077927>,  <28.683207, 36.443462, 39.041245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077885, 36.389759, 39.077927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048323, 0.296397, 0.953842,
		-0.155239, -0.945582, 0.285965,
		0.986694, -0.134255, 0.091705,
		29.373894, 36.349483, 39.105438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681028, 36.037315, 39.653893>,  <28.683207, 36.443462, 39.041245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681028, 36.037315, 39.653893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040182, 36.207741, 39.609581>,  <29.255674, 36.309998, 39.582996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040182, 36.207741, 39.609581>,  <28.681028, 36.037315, 39.653893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040182, 36.207741, 39.609581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023458, 0.204965, 0.978488,
		0.439608, -0.881167, 0.174040,
		0.897884, 0.426068, -0.110775,
		29.309547, 36.335560, 39.576347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133173, 35.705685, 40.149235>,  <28.681028, 36.037315, 39.653893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133173, 35.705685, 40.149235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316895, 36.049534, 40.059711>,  <29.427128, 36.255844, 40.005997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316895, 36.049534, 40.059711>,  <29.133173, 35.705685, 40.149235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316895, 36.049534, 40.059711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108977, 0.195527, 0.974625,
		0.881569, -0.472040, -0.003873,
		0.459305, 0.859620, -0.223812,
		29.454685, 36.307419, 39.992569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796246, 35.725487, 40.586094>,  <29.133173, 35.705685, 40.149235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796246, 35.725487, 40.586094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722242, 36.099895, 40.466343>,  <29.677839, 36.324543, 40.394493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722242, 36.099895, 40.466343>,  <29.796246, 35.725487, 40.586094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722242, 36.099895, 40.466343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112528, 0.282457, 0.952657,
		0.976273, 0.209940, 0.053072,
		-0.185010, 0.936026, -0.299379,
		29.666739, 36.380703, 40.376530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163498, 36.179844, 41.029648>,  <29.796246, 35.725487, 40.586094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163498, 36.179844, 41.029648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859877, 36.391640, 40.878132>,  <29.677704, 36.518719, 40.787224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859877, 36.391640, 40.878132>,  <30.163498, 36.179844, 41.029648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859877, 36.391640, 40.878132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220584, 0.338239, 0.914843,
		0.612521, 0.777968, -0.139943,
		-0.759052, 0.529491, -0.378786,
		29.632160, 36.550488, 40.764496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215275, 36.816620, 41.328274>,  <30.163498, 36.179844, 41.029648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215275, 36.816620, 41.328274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835009, 36.781574, 41.209240>,  <29.606848, 36.760548, 41.137821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835009, 36.781574, 41.209240>,  <30.215275, 36.816620, 41.328274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835009, 36.781574, 41.209240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299532, 0.508819, 0.807084,
		0.080700, 0.856403, -0.509962,
		-0.950667, -0.087618, -0.297581,
		29.549809, 36.755287, 41.119965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909040, 37.498703, 41.341846>,  <30.215275, 36.816620, 41.328274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909040, 37.498703, 41.341846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614683, 37.229900, 41.374992>,  <29.438068, 37.068619, 41.394882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614683, 37.229900, 41.374992>,  <29.909040, 37.498703, 41.341846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614683, 37.229900, 41.374992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407903, 0.537677, 0.737915,
		-0.540439, 0.509226, -0.669787,
		-0.735895, -0.672006, 0.082867,
		29.393915, 37.028297, 41.399853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251152, 37.890266, 41.468540>,  <29.909040, 37.498703, 41.341846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251152, 37.890266, 41.468540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145411, 37.522869, 41.586174>,  <29.081966, 37.302429, 41.656754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145411, 37.522869, 41.586174>,  <29.251152, 37.890266, 41.468540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145411, 37.522869, 41.586174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426209, 0.384801, 0.818703,
		-0.865137, 0.091087, -0.493195,
		-0.264355, -0.918495, 0.294083,
		29.066105, 37.247322, 41.674400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817415, 38.102654, 41.851284>,  <29.251152, 37.890266, 41.468540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817415, 38.102654, 41.851284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827650, 37.712196, 41.937534>,  <28.833790, 37.477924, 41.989285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827650, 37.712196, 41.937534>,  <28.817415, 38.102654, 41.851284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827650, 37.712196, 41.937534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595303, 0.158406, 0.787732,
		-0.803094, -0.148519, -0.577047,
		0.025586, -0.976140, 0.215628,
		28.835325, 37.419353, 42.002224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107805, 37.908165, 42.007111>,  <28.817415, 38.102654, 41.851284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107805, 37.908165, 42.007111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349745, 37.630486, 42.163189>,  <28.494907, 37.463879, 42.256836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349745, 37.630486, 42.163189>,  <28.107805, 37.908165, 42.007111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349745, 37.630486, 42.163189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497998, 0.052622, 0.865580,
		-0.621416, -0.717860, -0.313880,
		0.604848, -0.694196, 0.390193,
		28.531199, 37.422226, 42.280247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742580, 37.634121, 42.472450>,  <28.107805, 37.908165, 42.007111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742580, 37.634121, 42.472450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109175, 37.511417, 42.575172>,  <28.329132, 37.437794, 42.636806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109175, 37.511417, 42.575172>,  <27.742580, 37.634121, 42.472450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109175, 37.511417, 42.575172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272334, -0.008144, 0.962168,
		-0.293067, -0.951751, -0.091006,
		0.916486, -0.306764, 0.256807,
		28.384121, 37.419388, 42.652214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680147, 37.079842, 42.802887>,  <27.742580, 37.634121, 42.472450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680147, 37.079842, 42.802887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022671, 37.238998, 42.934597>,  <28.228184, 37.334492, 43.013622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022671, 37.238998, 42.934597>,  <27.680147, 37.079842, 42.802887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022671, 37.238998, 42.934597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343341, -0.037703, 0.938454,
		0.385819, -0.916656, 0.104328,
		0.856306, 0.397894, 0.329272,
		28.279562, 37.358368, 43.033379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879169, 36.757168, 43.418617>,  <27.680147, 37.079842, 42.802887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879169, 36.757168, 43.418617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105581, 37.086922, 43.418037>,  <28.241428, 37.284775, 43.417690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105581, 37.086922, 43.418037>,  <27.879169, 36.757168, 43.418617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105581, 37.086922, 43.418037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160878, 0.112182, 0.980578,
		0.808534, -0.554805, 0.196124,
		0.566031, 0.824383, -0.001447,
		28.275391, 37.334236, 43.417603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243505, 36.727886, 44.001495>,  <27.879169, 36.757168, 43.418617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243505, 36.727886, 44.001495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292130, 37.113281, 43.906063>,  <28.321304, 37.344517, 43.848804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292130, 37.113281, 43.906063>,  <28.243505, 36.727886, 44.001495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292130, 37.113281, 43.906063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059236, 0.246976, 0.967209,
		0.990815, -0.103443, 0.087095,
		0.121561, 0.963484, -0.238579,
		28.328598, 37.402328, 43.834488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749651, 36.955818, 44.448318>,  <28.243505, 36.727886, 44.001495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749651, 36.955818, 44.448318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555534, 37.283081, 44.324963>,  <28.439064, 37.479439, 44.250950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555534, 37.283081, 44.324963>,  <28.749651, 36.955818, 44.448318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555534, 37.283081, 44.324963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053647, 0.324183, 0.944472,
		0.872705, 0.474888, -0.113431,
		-0.485291, 0.818161, -0.308392,
		28.409946, 37.528530, 44.232445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093206, 37.484211, 44.844963>,  <28.749651, 36.955818, 44.448318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093206, 37.484211, 44.844963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741085, 37.617046, 44.709442>,  <28.529812, 37.696747, 44.628128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741085, 37.617046, 44.709442>,  <29.093206, 37.484211, 44.844963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741085, 37.617046, 44.709442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118983, 0.536783, 0.835289,
		0.459252, 0.775618, -0.433018,
		-0.880302, 0.332086, -0.338804,
		28.476995, 37.716671, 44.607800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109880, 38.159828, 45.010136>,  <29.093206, 37.484211, 44.844963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109880, 38.159828, 45.010136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725990, 38.047825, 45.001019>,  <28.495655, 37.980621, 44.995548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725990, 38.047825, 45.001019>,  <29.109880, 38.159828, 45.010136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725990, 38.047825, 45.001019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172861, 0.524624, 0.833600,
		-0.221458, 0.803968, -0.551898,
		-0.959727, -0.280009, -0.022793,
		28.438072, 37.963821, 44.994183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754608, 38.704662, 45.220802>,  <29.109880, 38.159828, 45.010136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754608, 38.704662, 45.220802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477917, 38.425255, 45.294098>,  <28.311901, 38.257610, 45.338074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477917, 38.425255, 45.294098>,  <28.754608, 38.704662, 45.220802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477917, 38.425255, 45.294098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122237, 0.363331, 0.923606,
		-0.711737, 0.616486, -0.336712,
		-0.691728, -0.698523, 0.183239,
		28.270399, 38.215698, 45.349072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190611, 39.053261, 45.581596>,  <28.754608, 38.704662, 45.220802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190611, 39.053261, 45.581596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133146, 38.668888, 45.676235>,  <28.098667, 38.438267, 45.733021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133146, 38.668888, 45.676235>,  <28.190611, 39.053261, 45.581596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133146, 38.668888, 45.676235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211492, 0.263370, 0.941227,
		-0.966764, 0.085179, -0.241065,
		-0.143662, -0.960927, 0.236602,
		28.090048, 38.380611, 45.747215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564589, 39.156815, 46.036999>,  <28.190611, 39.053261, 45.581596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564589, 39.156815, 46.036999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717140, 38.794548, 46.111095>,  <27.808672, 38.577187, 46.155556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717140, 38.794548, 46.111095>,  <27.564589, 39.156815, 46.036999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717140, 38.794548, 46.111095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227288, 0.102370, 0.968432,
		-0.896042, -0.411443, -0.166806,
		0.381378, -0.905668, 0.185244,
		27.831554, 38.522846, 46.166668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054882, 38.834976, 46.582180>,  <27.564589, 39.156815, 46.036999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054882, 38.834976, 46.582180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396418, 38.626934, 46.590656>,  <27.601339, 38.502110, 46.595741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396418, 38.626934, 46.590656>,  <27.054882, 38.834976, 46.582180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396418, 38.626934, 46.590656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073437, 0.160659, 0.984274,
		-0.515328, -0.838857, 0.175372,
		0.853841, -0.520103, 0.021189,
		27.652571, 38.470901, 46.597012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063725, 38.421902, 47.221615>,  <27.054882, 38.834976, 46.582180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063725, 38.421902, 47.221615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449873, 38.437798, 47.118481>,  <27.681562, 38.447334, 47.056602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449873, 38.437798, 47.118481>,  <27.063725, 38.421902, 47.221615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449873, 38.437798, 47.118481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251468, 0.121259, 0.960240,
		0.069421, -0.991825, 0.107068,
		0.965373, 0.039737, -0.257831,
		27.739485, 38.449718, 47.041130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419580, 37.949024, 47.633942>,  <27.063725, 38.421902, 47.221615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419580, 37.949024, 47.633942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729546, 38.176613, 47.523830>,  <27.915524, 38.313168, 47.457764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729546, 38.176613, 47.523830>,  <27.419580, 37.949024, 47.633942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729546, 38.176613, 47.523830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330925, 0.005845, 0.943639,
		0.538517, -0.822333, -0.183759,
		0.774911, 0.568976, -0.275278,
		27.962019, 38.347305, 47.441246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030106, 37.675533, 47.896664>,  <27.419580, 37.949024, 47.633942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030106, 37.675533, 47.896664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101925, 38.067791, 47.865421>,  <28.145018, 38.303146, 47.846676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101925, 38.067791, 47.865421>,  <28.030106, 37.675533, 47.896664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101925, 38.067791, 47.865421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426080, -0.005960, 0.904666,
		0.886689, -0.195710, -0.418903,
		0.179549, 0.980644, -0.078104,
		28.155790, 38.361984, 47.841991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703394, 37.722538, 48.001892>,  <28.030106, 37.675533, 47.896664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703394, 37.722538, 48.001892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586607, 38.098595, 48.072193>,  <28.516535, 38.324230, 48.114376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586607, 38.098595, 48.072193>,  <28.703394, 37.722538, 48.001892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586607, 38.098595, 48.072193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654330, 0.062318, 0.753637,
		0.697572, 0.335040, -0.633357,
		-0.291968, 0.940141, 0.175756,
		28.499016, 38.380638, 48.124920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289244, 38.095291, 48.356018>,  <28.703394, 37.722538, 48.001892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289244, 38.095291, 48.356018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007713, 38.366417, 48.441059>,  <28.838795, 38.529091, 48.492085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007713, 38.366417, 48.441059>,  <29.289244, 38.095291, 48.356018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007713, 38.366417, 48.441059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434340, 0.173782, 0.883826,
		0.562122, 0.714401, -0.416713,
		-0.703824, 0.677813, 0.212606,
		28.796566, 38.569759, 48.504841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652676, 38.708775, 48.623768>,  <29.289244, 38.095291, 48.356018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652676, 38.708775, 48.623768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273212, 38.721355, 48.749664>,  <29.045534, 38.728905, 48.825203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273212, 38.721355, 48.749664>,  <29.652676, 38.708775, 48.623768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273212, 38.721355, 48.749664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315512, 0.164628, 0.934532,
		-0.022420, 0.985854, -0.166100,
		-0.948657, 0.031454, 0.314740,
		28.988615, 38.730793, 48.844086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647755, 39.287609, 49.066704>,  <29.652676, 38.708775, 48.623768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647755, 39.287609, 49.066704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321268, 39.079353, 49.166885>,  <29.125376, 38.954399, 49.226994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321268, 39.079353, 49.166885>,  <29.647755, 39.287609, 49.066704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321268, 39.079353, 49.166885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144837, 0.235268, 0.961078,
		-0.559296, 0.820723, -0.116622,
		-0.816217, -0.520636, 0.250456,
		29.076403, 38.923161, 49.242023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253456, 39.710300, 49.508553>,  <29.647755, 39.287609, 49.066704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253456, 39.710300, 49.508553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132074, 39.336346, 49.582203>,  <29.059246, 39.111973, 49.626392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132074, 39.336346, 49.582203>,  <29.253456, 39.710300, 49.508553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132074, 39.336346, 49.582203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098126, 0.161552, 0.981973,
		-0.947779, 0.316053, 0.042713,
		-0.303455, -0.934886, 0.184129,
		29.041039, 39.055882, 49.637440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795858, 39.827812, 50.016605>,  <29.253456, 39.710300, 49.508553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795858, 39.827812, 50.016605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901333, 39.442410, 50.035046>,  <28.964619, 39.211166, 50.046108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901333, 39.442410, 50.035046>,  <28.795858, 39.827812, 50.016605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901333, 39.442410, 50.035046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024169, 0.054377, 0.998228,
		-0.964305, -0.262106, 0.037626,
		0.263688, -0.963506, 0.046101,
		28.980438, 39.153358, 50.048878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371616, 39.474087, 50.492432>,  <28.795858, 39.827812, 50.016605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371616, 39.474087, 50.492432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721621, 39.283112, 50.460419>,  <28.931623, 39.168526, 50.441212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721621, 39.283112, 50.460419>,  <28.371616, 39.474087, 50.492432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721621, 39.283112, 50.460419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005100, -0.156221, 0.987709,
		-0.484076, -0.864664, -0.134260,
		0.875011, -0.477441, -0.080033,
		28.984123, 39.139881, 50.436409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472374, 38.796627, 50.796654>,  <28.371616, 39.474087, 50.492432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472374, 38.796627, 50.796654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838945, 38.955601, 50.777859>,  <29.058887, 39.050983, 50.766582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838945, 38.955601, 50.777859>,  <28.472374, 38.796627, 50.796654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838945, 38.955601, 50.777859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096154, -0.104698, 0.989845,
		0.388480, -0.911638, -0.134163,
		0.916427, 0.397435, -0.046985,
		29.113873, 39.074833, 50.763763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989555, 38.369038, 51.184708>,  <28.472374, 38.796627, 50.796654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989555, 38.369038, 51.184708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081793, 38.757626, 51.162525>,  <29.137135, 38.990780, 51.149216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081793, 38.757626, 51.162525>,  <28.989555, 38.369038, 51.184708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081793, 38.757626, 51.162525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259888, -0.006565, 0.965617,
		0.937702, -0.237076, -0.253987,
		0.230592, 0.971469, -0.055457,
		29.150970, 39.049065, 51.145889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640491, 38.388184, 51.406231>,  <28.989555, 38.369038, 51.184708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640491, 38.388184, 51.406231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452188, 38.734135, 51.475945>,  <29.339207, 38.941704, 51.517773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452188, 38.734135, 51.475945>,  <29.640491, 38.388184, 51.406231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452188, 38.734135, 51.475945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322576, -0.015137, 0.946423,
		0.821176, 0.501758, -0.271862,
		-0.470759, 0.864876, 0.174285,
		29.310961, 38.993599, 51.528229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107061, 38.915112, 51.764889>,  <29.640491, 38.388184, 51.406231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107061, 38.915112, 51.764889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714046, 38.958149, 51.825607>,  <29.478237, 38.983971, 51.862038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714046, 38.958149, 51.825607>,  <30.107061, 38.915112, 51.764889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714046, 38.958149, 51.825607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169985, 0.187326, 0.967478,
		0.075655, 0.976388, -0.202344,
		-0.982538, 0.107590, 0.151799,
		29.419285, 38.990425, 51.871147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033154, 39.783367, 51.639297>,  <30.107061, 38.915112, 51.764889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033154, 39.783367, 51.639297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686266, 39.712803, 51.453045>,  <29.478134, 39.670464, 51.341293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686266, 39.712803, 51.453045>,  <30.033154, 39.783367, 51.639297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686266, 39.712803, 51.453045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041609, 0.906188, -0.420823,
		0.496184, -0.384320, -0.778524,
		-0.867220, -0.176412, -0.465627,
		29.426100, 39.659878, 51.313358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435701, 39.512299, 52.285099>,  <30.033154, 39.783367, 51.639297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435701, 39.512299, 52.285099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337929, 39.870270, 52.135777>,  <30.279264, 40.085052, 52.046185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337929, 39.870270, 52.135777>,  <30.435701, 39.512299, 52.285099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337929, 39.870270, 52.135777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843246, -0.386252, -0.373825,
		-0.478736, 0.223412, 0.849057,
		-0.244433, 0.894928, -0.373305,
		30.264599, 40.138748, 52.023785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003654, 38.969120, 52.586971>,  <30.435701, 39.512299, 52.285099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003654, 38.969120, 52.586971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308022, 39.197639, 52.463928>,  <31.490643, 39.334751, 52.390102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308022, 39.197639, 52.463928>,  <31.003654, 38.969120, 52.586971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308022, 39.197639, 52.463928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355999, -0.028771, -0.934043,
		-0.542465, 0.820240, 0.181488,
		0.760918, 0.571296, -0.307612,
		31.536297, 39.369030, 52.371643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062933, 38.375843, 52.218407>,  <31.003654, 38.969120, 52.586971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062933, 38.375843, 52.218407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232725, 38.093449, 51.991638>,  <31.334600, 37.924011, 51.855576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232725, 38.093449, 51.991638>,  <31.062933, 38.375843, 52.218407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232725, 38.093449, 51.991638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735710, -0.633902, 0.238536,
		-0.527778, 0.315839, -0.788477,
		0.424479, -0.705984, -0.566925,
		31.360069, 37.881653, 51.821560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558416, 38.111012, 51.725380>,  <31.062933, 38.375843, 52.218407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558416, 38.111012, 51.725380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825459, 37.842800, 51.854805>,  <30.985683, 37.681873, 51.932461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825459, 37.842800, 51.854805>,  <30.558416, 38.111012, 51.725380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825459, 37.842800, 51.854805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740133, -0.644803, 0.190873,
		0.080646, -0.366906, -0.926756,
		0.667607, -0.670529, 0.323560,
		31.025742, 37.641640, 51.951874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435545, 37.342220, 51.763729>,  <30.558416, 38.111012, 51.725380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435545, 37.342220, 51.763729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061211, 37.241737, 51.664848>,  <29.836611, 37.181450, 51.605518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061211, 37.241737, 51.664848>,  <30.435545, 37.342220, 51.763729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061211, 37.241737, 51.664848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329118, -0.372000, -0.867927,
		0.126068, -0.893595, 0.430807,
		-0.935835, -0.251204, -0.247201,
		29.780460, 37.166378, 51.590687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441452, 36.637463, 51.608227>,  <30.435545, 37.342220, 51.763729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441452, 36.637463, 51.608227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140190, 36.813511, 51.412655>,  <29.959433, 36.919140, 51.295311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140190, 36.813511, 51.412655>,  <30.441452, 36.637463, 51.608227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140190, 36.813511, 51.412655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298289, -0.433957, -0.850121,
		-0.586327, -0.786116, 0.195555,
		-0.753156, 0.440117, -0.488930,
		29.914244, 36.945545, 51.265976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807858, 36.272148, 51.392914>,  <30.441452, 36.637463, 51.608227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807858, 36.272148, 51.392914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955029, 36.555794, 51.152317>,  <30.043331, 36.725979, 51.007961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955029, 36.555794, 51.152317>,  <29.807858, 36.272148, 51.392914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955029, 36.555794, 51.152317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307748, -0.703272, -0.640858,
		-0.877450, 0.050684, -0.476983,
		0.367930, 0.709112, -0.601488,
		30.065407, 36.768528, 50.971870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617363, 36.095898, 50.667992>,  <29.807858, 36.272148, 51.392914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617363, 36.095898, 50.667992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920397, 36.356533, 50.652489>,  <30.102217, 36.512913, 50.643188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920397, 36.356533, 50.652489>,  <29.617363, 36.095898, 50.667992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920397, 36.356533, 50.652489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394711, -0.504592, -0.767847,
		-0.519873, 0.566413, -0.639460,
		0.757585, 0.651585, -0.038755,
		30.147673, 36.552010, 50.640862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636017, 36.261513, 50.041004>,  <29.617363, 36.095898, 50.667992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636017, 36.261513, 50.041004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998259, 36.368786, 50.172432>,  <30.215603, 36.433151, 50.251289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998259, 36.368786, 50.172432>,  <29.636017, 36.261513, 50.041004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998259, 36.368786, 50.172432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416261, -0.413514, -0.809774,
		-0.081300, 0.870105, -0.486114,
		0.905603, 0.268184, 0.328572,
		30.269939, 36.449242, 50.271004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050253, 36.443188, 49.513023>,  <29.636017, 36.261513, 50.041004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050253, 36.443188, 49.513023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337111, 36.377705, 49.783993>,  <30.509224, 36.338417, 49.946575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337111, 36.377705, 49.783993>,  <30.050253, 36.443188, 49.513023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337111, 36.377705, 49.783993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583404, -0.390717, -0.712026,
		0.381245, 0.905837, -0.184693,
		0.717142, -0.163706, 0.677427,
		30.552254, 36.328594, 49.987221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689198, 36.667984, 49.239613>,  <30.050253, 36.443188, 49.513023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689198, 36.667984, 49.239613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789766, 36.412090, 49.530136>,  <30.850107, 36.258553, 49.704449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789766, 36.412090, 49.530136>,  <30.689198, 36.667984, 49.239613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789766, 36.412090, 49.530136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653545, -0.441294, -0.614929,
		0.713908, 0.629284, 0.307144,
		0.251424, -0.639735, 0.726309,
		30.865194, 36.220169, 49.748028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408592, 36.583061, 49.136593>,  <30.689198, 36.667984, 49.239613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408592, 36.583061, 49.136593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295938, 36.264885, 49.351238>,  <31.228346, 36.073978, 49.480026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295938, 36.264885, 49.351238>,  <31.408592, 36.583061, 49.136593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295938, 36.264885, 49.351238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546915, -0.592589, -0.591373,
		0.788394, 0.126931, 0.601933,
		-0.281635, -0.795441, 0.536614,
		31.211449, 36.026253, 49.512222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957075, 36.252972, 49.385197>,  <31.408592, 36.583061, 49.136593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957075, 36.252972, 49.385197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684124, 35.960976, 49.369835>,  <31.520353, 35.785778, 49.360619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684124, 35.960976, 49.369835>,  <31.957075, 36.252972, 49.385197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684124, 35.960976, 49.369835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596302, -0.525488, -0.606866,
		0.422826, -0.437012, 0.793876,
		-0.682379, -0.729989, -0.038401,
		31.479410, 35.741978, 49.358315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303200, 35.595627, 49.297180>,  <31.957075, 36.252972, 49.385197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303200, 35.595627, 49.297180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930405, 35.519257, 49.173920>,  <31.706728, 35.473434, 49.099964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930405, 35.519257, 49.173920>,  <32.303200, 35.595627, 49.297180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930405, 35.519257, 49.173920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360563, -0.400441, -0.842402,
		0.037437, -0.896212, 0.442043,
		-0.931983, -0.190921, -0.308150,
		31.650810, 35.461979, 49.081474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360882, 34.919647, 49.016773>,  <32.303200, 35.595627, 49.297180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360882, 34.919647, 49.016773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040321, 35.095127, 48.854145>,  <31.847984, 35.200413, 48.756569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040321, 35.095127, 48.854145>,  <32.360882, 34.919647, 49.016773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040321, 35.095127, 48.854145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234193, -0.395325, -0.888185,
		-0.550372, -0.807009, 0.214075,
		-0.801402, 0.438697, -0.406571,
		31.799900, 35.226734, 48.732174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915510, 34.361774, 48.646687>,  <32.360882, 34.919647, 49.016773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915510, 34.361774, 48.646687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831339, 34.724800, 48.501331>,  <31.780836, 34.942616, 48.414120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831339, 34.724800, 48.501331>,  <31.915510, 34.361774, 48.646687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831339, 34.724800, 48.501331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025106, -0.376602, -0.926035,
		-0.977287, -0.185742, 0.102033,
		-0.210429, 0.907563, -0.363385,
		31.768209, 34.997070, 48.392315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497625, 34.264977, 48.134583>,  <31.915510, 34.361774, 48.646687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497625, 34.264977, 48.134583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587276, 34.646358, 48.053902>,  <31.641068, 34.875187, 48.005493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587276, 34.646358, 48.053902>,  <31.497625, 34.264977, 48.134583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587276, 34.646358, 48.053902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173831, -0.164535, -0.970933,
		-0.958931, 0.252676, 0.128863,
		0.224129, 0.953459, -0.201701,
		31.654514, 34.932396, 47.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922289, 34.482040, 47.764572>,  <31.497625, 34.264977, 48.134583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922289, 34.482040, 47.764572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207743, 34.748611, 47.678226>,  <31.379015, 34.908554, 47.626419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207743, 34.748611, 47.678226>,  <30.922289, 34.482040, 47.764572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207743, 34.748611, 47.678226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139744, -0.166518, -0.976086,
		-0.686440, 0.726732, -0.025703,
		0.713633, 0.666432, -0.215861,
		31.421833, 34.948540, 47.613468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632282, 35.073147, 47.315163>,  <30.922289, 34.482040, 47.764572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632282, 35.073147, 47.315163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021973, 35.034718, 47.233528>,  <31.255787, 35.011658, 47.184547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021973, 35.034718, 47.233528>,  <30.632282, 35.073147, 47.315163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021973, 35.034718, 47.233528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214731, -0.117971, -0.969522,
		0.069073, 0.988358, -0.135561,
		0.974228, -0.096077, -0.204083,
		31.314241, 35.005894, 47.172302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756399, 35.440880, 46.732800>,  <30.632282, 35.073147, 47.315163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756399, 35.440880, 46.732800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060816, 35.181824, 46.747646>,  <31.243465, 35.026390, 46.756554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060816, 35.181824, 46.747646>,  <30.756399, 35.440880, 46.732800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060816, 35.181824, 46.747646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066775, -0.135128, -0.988575,
		0.645259, 0.749867, -0.146085,
		0.761040, -0.647642, 0.037120,
		31.289127, 34.987530, 46.758781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359816, 35.619080, 46.392216>,  <30.756399, 35.440880, 46.732800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359816, 35.619080, 46.392216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374058, 35.219662, 46.376038>,  <31.382603, 34.980011, 46.366333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374058, 35.219662, 46.376038>,  <31.359816, 35.619080, 46.392216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374058, 35.219662, 46.376038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090682, 0.037073, -0.995190,
		0.995243, 0.039100, -0.089230,
		0.035604, -0.998548, -0.040442,
		31.384739, 34.920097, 46.363903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821444, 35.516113, 45.821537>,  <31.359816, 35.619080, 46.392216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821444, 35.516113, 45.821537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640554, 35.163509, 45.875851>,  <31.532021, 34.951946, 45.908440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640554, 35.163509, 45.875851>,  <31.821444, 35.516113, 45.821537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640554, 35.163509, 45.875851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027516, -0.138384, -0.989996,
		0.891480, -0.451435, 0.038325,
		-0.452223, -0.881508, 0.135788,
		31.504887, 34.899055, 45.916588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189854, 35.048130, 45.362736>,  <31.821444, 35.516113, 45.821537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189854, 35.048130, 45.362736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835466, 34.893322, 45.464943>,  <31.622835, 34.800438, 45.526268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835466, 34.893322, 45.464943>,  <32.189854, 35.048130, 45.362736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835466, 34.893322, 45.464943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241578, -0.085164, -0.966637,
		0.395864, -0.918132, -0.018042,
		-0.885963, -0.387016, 0.255513,
		31.569677, 34.777218, 45.541595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245884, 34.397942, 45.187607>,  <32.189854, 35.048130, 45.362736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245884, 34.397942, 45.187607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849901, 34.452827, 45.201225>,  <31.612312, 34.485760, 45.209396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849901, 34.452827, 45.201225>,  <32.245884, 34.397942, 45.187607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849901, 34.452827, 45.201225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053108, -0.137764, -0.989040,
		-0.130977, -0.980921, 0.143666,
		-0.989962, 0.137172, 0.034051,
		31.552914, 34.493992, 45.211437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945999, 33.901112, 44.716293>,  <32.245884, 34.397942, 45.187607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945999, 33.901112, 44.716293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660692, 34.173508, 44.782639>,  <31.489508, 34.336945, 44.822445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660692, 34.173508, 44.782639>,  <31.945999, 33.901112, 44.716293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660692, 34.173508, 44.782639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298555, -0.081092, -0.950941,
		-0.634127, -0.727793, 0.261152,
		-0.713265, 0.680986, 0.165864,
		31.446712, 34.377804, 44.832397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246456, 33.577682, 44.512989>,  <31.945999, 33.901112, 44.716293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246456, 33.577682, 44.512989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189901, 33.973663, 44.514183>,  <31.155968, 34.211250, 44.514900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189901, 33.973663, 44.514183>,  <31.246456, 33.577682, 44.512989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189901, 33.973663, 44.514183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222158, -0.028794, -0.974586,
		-0.964705, -0.138458, 0.223997,
		-0.141389, 0.989950, 0.002982,
		31.147484, 34.270649, 44.515076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621071, 33.704967, 44.288296>,  <31.246456, 33.577682, 44.512989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621071, 33.704967, 44.288296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818308, 34.048634, 44.233604>,  <30.936649, 34.254833, 44.200790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818308, 34.048634, 44.233604>,  <30.621071, 33.704967, 44.288296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818308, 34.048634, 44.233604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371355, 0.065743, -0.926161,
		-0.786737, 0.507457, 0.351473,
		0.493093, 0.859166, -0.136724,
		30.966236, 34.306385, 44.192589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161713, 34.160881, 43.971706>,  <30.621071, 33.704967, 44.288296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161713, 34.160881, 43.971706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516613, 34.328243, 43.894016>,  <30.729553, 34.428661, 43.847404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516613, 34.328243, 43.894016>,  <30.161713, 34.160881, 43.971706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516613, 34.328243, 43.894016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281545, 0.157661, -0.946507,
		-0.365406, 0.894470, 0.257686,
		0.887249, 0.418410, -0.194223,
		30.782787, 34.453766, 43.835751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946384, 34.765877, 43.729061>,  <30.161713, 34.160881, 43.971706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946384, 34.765877, 43.729061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315649, 34.704529, 43.588062>,  <30.537207, 34.667721, 43.503464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315649, 34.704529, 43.588062>,  <29.946384, 34.765877, 43.729061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315649, 34.704529, 43.588062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350756, 0.039164, -0.935647,
		0.157309, 0.987392, -0.017642,
		0.923160, -0.153374, -0.352495,
		30.592596, 34.658516, 43.482315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020943, 35.190575, 43.142616>,  <29.946384, 34.765877, 43.729061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020943, 35.190575, 43.142616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327623, 34.938557, 43.093285>,  <30.511631, 34.787346, 43.063686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327623, 34.938557, 43.093285>,  <30.020943, 35.190575, 43.142616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327623, 34.938557, 43.093285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137771, 0.026161, -0.990119,
		0.627049, 0.776115, -0.066744,
		0.766700, -0.630048, -0.123330,
		30.557632, 34.749542, 43.056286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415358, 35.367901, 42.482975>,  <30.020943, 35.190575, 43.142616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415358, 35.367901, 42.482975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539043, 34.990654, 42.531837>,  <30.613255, 34.764305, 42.561157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539043, 34.990654, 42.531837>,  <30.415358, 35.367901, 42.482975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539043, 34.990654, 42.531837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214515, -0.194315, -0.957196,
		0.926483, 0.269773, -0.262397,
		0.309214, -0.943114, 0.122159,
		30.631807, 34.707718, 42.568485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752153, 35.179077, 41.858067>,  <30.415358, 35.367901, 42.482975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752153, 35.179077, 41.858067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656263, 34.835018, 42.038147>,  <30.598728, 34.628582, 42.146194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656263, 34.835018, 42.038147>,  <30.752153, 35.179077, 41.858067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656263, 34.835018, 42.038147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101598, -0.438953, -0.892747,
		0.965510, -0.259756, 0.017840,
		-0.239727, -0.860144, 0.450204,
		30.584345, 34.576977, 42.173210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877218, 34.821693, 41.242977>,  <30.752153, 35.179077, 41.858067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877218, 34.821693, 41.242977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722570, 34.545673, 41.487713>,  <30.629782, 34.380062, 41.634556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722570, 34.545673, 41.487713>,  <30.877218, 34.821693, 41.242977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722570, 34.545673, 41.487713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044107, -0.648838, -0.759648,
		0.921183, -0.320682, 0.220418,
		-0.386621, -0.690053, 0.611843,
		30.606585, 34.338657, 41.671265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324123, 34.283199, 41.386902>,  <30.877218, 34.821693, 41.242977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324123, 34.283199, 41.386902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950304, 34.145851, 41.424236>,  <30.726013, 34.063442, 41.446636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950304, 34.145851, 41.424236>,  <31.324123, 34.283199, 41.386902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950304, 34.145851, 41.424236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105494, -0.517883, -0.848922,
		0.339837, -0.783512, 0.520211,
		-0.934549, -0.343374, 0.093340,
		30.669939, 34.042839, 41.452240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377550, 33.586124, 41.232830>,  <31.324123, 34.283199, 41.386902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377550, 33.586124, 41.232830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987577, 33.667248, 41.196217>,  <30.753593, 33.715923, 41.174248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987577, 33.667248, 41.196217>,  <31.377550, 33.586124, 41.232830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987577, 33.667248, 41.196217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030588, -0.529611, -0.847689,
		-0.220397, -0.823638, 0.522537,
		-0.974930, 0.202811, -0.091531,
		30.695099, 33.728092, 41.168758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043808, 32.933022, 41.184483>,  <31.377550, 33.586124, 41.232830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043808, 32.933022, 41.184483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784504, 33.192490, 41.024986>,  <30.628922, 33.348171, 40.929291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784504, 33.192490, 41.024986>,  <31.043808, 32.933022, 41.184483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784504, 33.192490, 41.024986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217715, -0.659721, -0.719284,
		-0.729632, -0.379470, 0.568894,
		-0.648257, 0.648669, -0.398737,
		30.590027, 33.387089, 40.905365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526062, 32.526237, 40.895473>,  <31.043808, 32.933022, 41.184483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526062, 32.526237, 40.895473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450096, 32.873699, 40.712444>,  <30.404516, 33.082176, 40.602627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450096, 32.873699, 40.712444>,  <30.526062, 32.526237, 40.895473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450096, 32.873699, 40.712444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011211, -0.467946, -0.883686,
		-0.981736, -0.162696, 0.098609,
		-0.189916, 0.868652, -0.457576,
		30.393122, 33.134296, 40.575172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020847, 32.283531, 40.419460>,  <30.526062, 32.526237, 40.895473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020847, 32.283531, 40.419460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158918, 32.633919, 40.284687>,  <30.241760, 32.844151, 40.203823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158918, 32.633919, 40.284687>,  <30.020847, 32.283531, 40.419460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158918, 32.633919, 40.284687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124866, -0.398671, -0.908553,
		-0.930194, 0.271540, -0.246992,
		0.345177, 0.875972, -0.336936,
		30.262472, 32.896709, 40.183605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685171, 32.586262, 39.872562>,  <30.020847, 32.283531, 40.419460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685171, 32.586262, 39.872562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052183, 32.737904, 39.824535>,  <30.272390, 32.828888, 39.795719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052183, 32.737904, 39.824535>,  <29.685171, 32.586262, 39.872562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052183, 32.737904, 39.824535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017742, -0.340651, -0.940022,
		-0.397270, 0.860369, -0.319284,
		0.917530, 0.379107, -0.120066,
		30.327442, 32.851635, 39.788517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641825, 32.711094, 39.198959>,  <29.685171, 32.586262, 39.872562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641825, 32.711094, 39.198959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025692, 32.765701, 39.297264>,  <30.256012, 32.798466, 39.356247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025692, 32.765701, 39.297264>,  <29.641825, 32.711094, 39.198959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025692, 32.765701, 39.297264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275344, -0.279996, -0.919667,
		-0.056738, 0.950245, -0.306293,
		0.959670, 0.136516, 0.245758,
		30.313593, 32.806656, 39.370991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908278, 33.033531, 38.637115>,  <29.641825, 32.711094, 39.198959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908278, 33.033531, 38.637115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213070, 32.864452, 38.833366>,  <30.395945, 32.763004, 38.951115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213070, 32.864452, 38.833366>,  <29.908278, 33.033531, 38.637115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213070, 32.864452, 38.833366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499904, -0.097682, -0.860555,
		0.411680, 0.900991, 0.136876,
		0.761981, -0.422698, 0.490623,
		30.441664, 32.737644, 38.980553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496559, 33.321121, 38.337570>,  <29.908278, 33.033531, 38.637115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496559, 33.321121, 38.337570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629316, 32.997597, 38.531757>,  <30.708971, 32.803482, 38.648270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629316, 32.997597, 38.531757>,  <30.496559, 33.321121, 38.337570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629316, 32.997597, 38.531757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554880, -0.248795, -0.793857,
		0.762859, 0.532851, 0.366218,
		0.331894, -0.808808, 0.485464,
		30.728884, 32.754955, 38.677395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154549, 33.462421, 38.433815>,  <30.496559, 33.321121, 38.337570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154549, 33.462421, 38.433815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089319, 33.068291, 38.413643>,  <31.050182, 32.831814, 38.401539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089319, 33.068291, 38.413643>,  <31.154549, 33.462421, 38.433815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089319, 33.068291, 38.413643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673970, -0.073925, -0.735050,
		0.720535, -0.153853, 0.676135,
		-0.163073, -0.985324, -0.050427,
		31.040398, 32.772694, 38.398514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809732, 33.209442, 38.273621>,  <31.154549, 33.462421, 38.433815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809732, 33.209442, 38.273621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559195, 32.901249, 38.226227>,  <31.408871, 32.716331, 38.197788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559195, 32.901249, 38.226227>,  <31.809732, 33.209442, 38.273621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559195, 32.901249, 38.226227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567440, -0.346411, -0.747001,
		0.534510, -0.535116, 0.654179,
		-0.626347, -0.770487, -0.118486,
		31.371290, 32.670101, 38.190681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020420, 32.624275, 38.097050>,  <31.809732, 33.209442, 38.273621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020420, 32.624275, 38.097050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395725, 32.509422, 38.019878>,  <32.620907, 32.440510, 37.973576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395725, 32.509422, 38.019878>,  <32.020420, 32.624275, 38.097050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395725, 32.509422, 38.019878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204552, 0.010735, 0.978797,
		-0.278974, -0.957830, 0.068806,
		0.938260, -0.287134, -0.192931,
		32.677204, 32.423283, 37.961998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236176, 32.132973, 38.690319>,  <32.020420, 32.624275, 38.097050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236176, 32.132973, 38.690319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561848, 32.303001, 38.532116>,  <32.757252, 32.405018, 38.437195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561848, 32.303001, 38.532116>,  <32.236176, 32.132973, 38.690319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561848, 32.303001, 38.532116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418503, 0.042530, 0.907219,
		0.402456, -0.904159, -0.143267,
		0.814177, 0.425074, -0.395509,
		32.806103, 32.430523, 38.413464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815506, 31.603466, 38.841503>,  <32.236176, 32.132973, 38.690319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815506, 31.603466, 38.841503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940109, 31.974665, 38.759743>,  <33.014870, 32.197384, 38.710686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940109, 31.974665, 38.759743>,  <32.815506, 31.603466, 38.841503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940109, 31.974665, 38.759743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441533, 0.049123, 0.895899,
		0.841435, -0.369330, -0.394440,
		0.311507, 0.927999, -0.204405,
		33.033562, 32.253063, 38.698421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521534, 31.582947, 39.012516>,  <32.815506, 31.603466, 38.841503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521534, 31.582947, 39.012516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441654, 31.974445, 39.031185>,  <33.393726, 32.209343, 39.042385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441654, 31.974445, 39.031185>,  <33.521534, 31.582947, 39.012516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441654, 31.974445, 39.031185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452985, 0.049981, 0.890116,
		0.868863, 0.198901, -0.453338,
		-0.199703, 0.978744, 0.046673,
		33.381744, 32.268070, 39.045185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164845, 31.974138, 39.064545>,  <33.521534, 31.582947, 39.012516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164845, 31.974138, 39.064545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863304, 32.202946, 39.193851>,  <33.682381, 32.340229, 39.271435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863304, 32.202946, 39.193851>,  <34.164845, 31.974138, 39.064545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863304, 32.202946, 39.193851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499897, 0.180052, 0.847163,
		0.426387, 0.800236, -0.421682,
		-0.753855, 0.572017, 0.323264,
		33.637146, 32.374550, 39.290833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472542, 32.396656, 39.449257>,  <34.164845, 31.974138, 39.064545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472542, 32.396656, 39.449257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094845, 32.466461, 39.560932>,  <33.868225, 32.508343, 39.627937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094845, 32.466461, 39.560932>,  <34.472542, 32.396656, 39.449257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094845, 32.466461, 39.560932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326203, 0.380979, 0.865128,
		0.044612, 0.907965, -0.416664,
		-0.944246, 0.174512, 0.279184,
		33.811569, 32.518814, 39.644688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498108, 33.130966, 39.685024>,  <34.472542, 32.396656, 39.449257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498108, 33.130966, 39.685024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185246, 32.960060, 39.866432>,  <33.997528, 32.857517, 39.975277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185246, 32.960060, 39.866432>,  <34.498108, 33.130966, 39.685024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185246, 32.960060, 39.866432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338778, 0.319255, 0.885046,
		-0.522935, 0.845886, -0.104960,
		-0.782156, -0.427263, 0.453517,
		33.950600, 32.831882, 40.002487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239780, 33.658127, 40.169037>,  <34.498108, 33.130966, 39.685024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239780, 33.658127, 40.169037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117176, 33.299976, 40.298256>,  <34.043613, 33.085087, 40.375786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117176, 33.299976, 40.298256>,  <34.239780, 33.658127, 40.169037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117176, 33.299976, 40.298256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081131, 0.362722, 0.928359,
		-0.948403, 0.258344, -0.183821,
		-0.306512, -0.895372, 0.323047,
		34.025223, 33.031364, 40.395168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633591, 33.880047, 40.527851>,  <34.239780, 33.658127, 40.169037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633591, 33.880047, 40.527851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714432, 33.522385, 40.687675>,  <33.762936, 33.307789, 40.783569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714432, 33.522385, 40.687675>,  <33.633591, 33.880047, 40.527851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714432, 33.522385, 40.687675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007250, 0.409336, 0.912355,
		-0.979339, -0.181488, 0.089209,
		0.202098, -0.894151, 0.399563,
		33.775063, 33.254139, 40.807545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114326, 33.768215, 41.143940>,  <33.633591, 33.880047, 40.527851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114326, 33.768215, 41.143940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437386, 33.537823, 41.194462>,  <33.631222, 33.399586, 41.224773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437386, 33.537823, 41.194462>,  <33.114326, 33.768215, 41.143940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437386, 33.537823, 41.194462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059289, 0.292432, 0.954447,
		-0.586683, -0.763364, 0.270331,
		0.807644, -0.575985, 0.126306,
		33.679680, 33.365028, 41.232353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148090, 33.606083, 41.877144>,  <33.114326, 33.768215, 41.143940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148090, 33.606083, 41.877144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511166, 33.482925, 41.763088>,  <33.729012, 33.409031, 41.694656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511166, 33.482925, 41.763088>,  <33.148090, 33.606083, 41.877144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511166, 33.482925, 41.763088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389373, 0.364548, 0.845868,
		-0.156490, -0.878810, 0.450782,
		0.907689, -0.307892, -0.285137,
		33.783474, 33.390556, 41.677547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413746, 33.085842, 42.337101>,  <33.148090, 33.606083, 41.877144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413746, 33.085842, 42.337101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731392, 33.255432, 42.162914>,  <33.921978, 33.357185, 42.058403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731392, 33.255432, 42.162914>,  <33.413746, 33.085842, 42.337101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731392, 33.255432, 42.162914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315925, 0.324145, 0.891696,
		0.519210, -0.845681, 0.123464,
		0.794111, 0.423972, -0.435471,
		33.969624, 33.382622, 42.032272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955441, 32.916843, 42.712395>,  <33.413746, 33.085842, 42.337101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955441, 32.916843, 42.712395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074978, 33.247650, 42.521927>,  <34.146698, 33.446133, 42.407646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074978, 33.247650, 42.521927>,  <33.955441, 32.916843, 42.712395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074978, 33.247650, 42.521927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216776, 0.427102, 0.877833,
		0.929356, -0.365554, -0.051642,
		0.298839, 0.827015, -0.476174,
		34.164631, 33.495754, 42.379074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712471, 33.053062, 42.814438>,  <33.955441, 32.916843, 42.712395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712471, 33.053062, 42.814438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525833, 33.395527, 42.725647>,  <34.413849, 33.601006, 42.672371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525833, 33.395527, 42.725647>,  <34.712471, 33.053062, 42.814438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525833, 33.395527, 42.725647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218484, 0.354766, 0.909069,
		0.857062, 0.375667, -0.352589,
		-0.466594, 0.856163, -0.221979,
		34.385857, 33.652374, 42.659054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218372, 33.668335, 42.950336>,  <34.712471, 33.053062, 42.814438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218372, 33.668335, 42.950336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855137, 33.834457, 42.971859>,  <34.637196, 33.934132, 42.984772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855137, 33.834457, 42.971859>,  <35.218372, 33.668335, 42.950336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855137, 33.834457, 42.971859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231088, 0.389802, 0.891433,
		0.349242, 0.821935, -0.449947,
		-0.908091, 0.415303, 0.053804,
		34.582710, 33.959049, 42.987999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378654, 34.212067, 43.169685>,  <35.218372, 33.668335, 42.950336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378654, 34.212067, 43.169685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984665, 34.219803, 43.238327>,  <34.748272, 34.224445, 43.279510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984665, 34.219803, 43.238327>,  <35.378654, 34.212067, 43.169685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984665, 34.219803, 43.238327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151157, 0.577075, 0.802581,
		-0.083506, 0.816462, -0.571328,
		-0.984976, 0.019340, 0.171603,
		34.689171, 34.225605, 43.289806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254719, 34.854393, 43.430424>,  <35.378654, 34.212067, 43.169685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254719, 34.854393, 43.430424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901657, 34.686546, 43.515118>,  <34.689819, 34.585838, 43.565933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901657, 34.686546, 43.515118>,  <35.254719, 34.854393, 43.430424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901657, 34.686546, 43.515118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012879, 0.471914, 0.881550,
		-0.469839, 0.775380, -0.421943,
		-0.882658, -0.419621, 0.211737,
		34.636860, 34.560661, 43.578640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801273, 35.259979, 43.738697>,  <35.254719, 34.854393, 43.430424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801273, 35.259979, 43.738697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612701, 34.943466, 43.894451>,  <34.499557, 34.753559, 43.987904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612701, 34.943466, 43.894451>,  <34.801273, 35.259979, 43.738697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612701, 34.943466, 43.894451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177050, 0.517460, 0.837191,
		-0.863946, 0.325740, -0.384045,
		-0.471434, -0.791283, 0.389385,
		34.471272, 34.706081, 44.011265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207691, 35.558868, 44.032944>,  <34.801273, 35.259979, 43.738697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207691, 35.558868, 44.032944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261532, 35.204624, 44.210739>,  <34.293839, 34.992077, 44.317417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261532, 35.204624, 44.210739>,  <34.207691, 35.558868, 44.032944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261532, 35.204624, 44.210739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240765, 0.405899, 0.881634,
		-0.961204, -0.225689, -0.158589,
		0.134604, -0.885613, 0.444490,
		34.301914, 34.938942, 44.344086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655518, 35.448570, 44.475834>,  <34.207691, 35.558868, 44.032944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655518, 35.448570, 44.475834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881130, 35.161953, 44.639992>,  <34.016499, 34.989983, 44.738487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881130, 35.161953, 44.639992>,  <33.655518, 35.448570, 44.475834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881130, 35.161953, 44.639992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369240, 0.225684, 0.901515,
		-0.738597, -0.660021, -0.137284,
		0.564036, -0.716547, 0.410396,
		34.050343, 34.946987, 44.763111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314899, 35.210243, 44.992195>,  <33.655518, 35.448570, 44.475834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314899, 35.210243, 44.992195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687176, 35.117622, 45.105473>,  <33.910542, 35.062050, 45.173439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687176, 35.117622, 45.105473>,  <33.314899, 35.210243, 44.992195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687176, 35.117622, 45.105473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208462, 0.300449, 0.930738,
		-0.300601, -0.925264, 0.231355,
		0.930689, -0.231552, 0.283198,
		33.966381, 35.048157, 45.190434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382248, 34.642250, 45.531834>,  <33.314899, 35.210243, 44.992195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382248, 34.642250, 45.531834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694344, 34.892433, 45.529663>,  <33.881599, 35.042542, 45.528362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694344, 34.892433, 45.529663>,  <33.382248, 34.642250, 45.531834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694344, 34.892433, 45.529663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181209, 0.234339, 0.955117,
		0.598655, -0.744238, 0.296179,
		0.780240, 0.625456, -0.005426,
		33.928417, 35.080070, 45.528034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767059, 34.466721, 46.157894>,  <33.382248, 34.642250, 45.531834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767059, 34.466721, 46.157894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872032, 34.836239, 46.046379>,  <33.935017, 35.057949, 45.979469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872032, 34.836239, 46.046379>,  <33.767059, 34.466721, 46.157894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872032, 34.836239, 46.046379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244428, 0.343134, 0.906926,
		0.933481, -0.169859, 0.315851,
		0.262428, 0.923801, -0.278791,
		33.950760, 35.113380, 45.962742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257439, 34.637623, 46.747978>,  <33.767059, 34.466721, 46.157894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257439, 34.637623, 46.747978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127686, 34.976795, 46.580269>,  <34.049835, 35.180298, 46.479641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127686, 34.976795, 46.580269>,  <34.257439, 34.637623, 46.747978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127686, 34.976795, 46.580269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125385, 0.400790, 0.907550,
		0.937579, 0.346965, -0.023692,
		-0.324384, 0.847929, -0.419276,
		34.030369, 35.231174, 46.454487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687965, 35.159016, 46.998974>,  <34.257439, 34.637623, 46.747978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687965, 35.159016, 46.998974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339581, 35.325680, 46.894806>,  <34.130550, 35.425678, 46.832306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339581, 35.325680, 46.894806>,  <34.687965, 35.159016, 46.998974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339581, 35.325680, 46.894806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017689, 0.503088, 0.864054,
		0.491030, 0.757166, -0.430801,
		-0.870963, 0.416656, -0.260424,
		34.078293, 35.450676, 46.816677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819401, 35.866116, 47.199711>,  <34.687965, 35.159016, 46.998974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819401, 35.866116, 47.199711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424656, 35.836597, 47.142212>,  <34.187809, 35.818886, 47.107712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424656, 35.836597, 47.142212>,  <34.819401, 35.866116, 47.199711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424656, 35.836597, 47.142212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161467, 0.484655, 0.859673,
		0.006226, 0.871587, -0.490202,
		-0.986858, -0.073799, -0.143750,
		34.128597, 35.814457, 47.099087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594746, 36.581501, 47.363243>,  <34.819401, 35.866116, 47.199711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594746, 36.581501, 47.363243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265846, 36.354519, 47.380684>,  <34.068508, 36.218330, 47.391148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265846, 36.354519, 47.380684>,  <34.594746, 36.581501, 47.363243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265846, 36.354519, 47.380684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353957, 0.569872, 0.741593,
		-0.445668, 0.594341, -0.669432,
		-0.822250, -0.567454, 0.043602,
		34.019173, 36.184284, 47.393764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080521, 36.944729, 47.041622>,  <34.594746, 36.581501, 47.363243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080521, 36.944729, 47.041622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919395, 36.688900, 47.303520>,  <33.822720, 36.535404, 47.460659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919395, 36.688900, 47.303520>,  <34.080521, 36.944729, 47.041622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919395, 36.688900, 47.303520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390708, 0.767050, 0.508903,
		-0.827703, -0.050824, -0.558860,
		-0.402809, -0.639571, 0.654746,
		33.798553, 36.497028, 47.499943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452621, 37.185883, 47.259148>,  <34.080521, 36.944729, 47.041622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452621, 37.185883, 47.259148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498077, 36.915882, 47.550755>,  <33.525349, 36.753883, 47.725719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498077, 36.915882, 47.550755>,  <33.452621, 37.185883, 47.259148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498077, 36.915882, 47.550755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479340, 0.605470, 0.635326,
		-0.870241, -0.421644, -0.254750,
		0.113638, -0.674998, 0.729015,
		33.532169, 36.713383, 47.769459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802471, 37.031219, 47.579548>,  <33.452621, 37.185883, 47.259148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802471, 37.031219, 47.579548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080101, 36.945370, 47.854412>,  <33.246681, 36.893860, 48.019329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080101, 36.945370, 47.854412>,  <32.802471, 37.031219, 47.579548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080101, 36.945370, 47.854412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482773, 0.569307, 0.665447,
		-0.534028, -0.793615, 0.291529,
		0.694078, -0.214625, 0.687162,
		33.288326, 36.880981, 48.060562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382530, 36.941807, 48.204319>,  <32.802471, 37.031219, 47.579548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382530, 36.941807, 48.204319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757278, 36.967983, 48.341717>,  <32.982128, 36.983688, 48.424156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757278, 36.967983, 48.341717>,  <32.382530, 36.941807, 48.204319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757278, 36.967983, 48.341717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311375, 0.603119, 0.734366,
		-0.159111, -0.794962, 0.585422,
		0.936872, 0.065440, 0.343494,
		33.038342, 36.987614, 48.444763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294174, 36.949829, 48.906113>,  <32.382530, 36.941807, 48.204319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294174, 36.949829, 48.906113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651958, 37.114277, 48.835773>,  <32.866627, 37.212948, 48.793568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651958, 37.114277, 48.835773>,  <32.294174, 36.949829, 48.906113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651958, 37.114277, 48.835773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205766, 0.727593, 0.654423,
		0.396995, -0.549170, 0.735396,
		0.894458, 0.411122, -0.175850,
		32.920296, 37.237614, 48.783020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663307, 36.939110, 49.565933>,  <32.294174, 36.949829, 48.906113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663307, 36.939110, 49.565933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834427, 37.223179, 49.342274>,  <32.937099, 37.393620, 49.208076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834427, 37.223179, 49.342274>,  <32.663307, 36.939110, 49.565933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834427, 37.223179, 49.342274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308984, 0.696247, 0.647896,
		0.849423, -0.104398, 0.517283,
		0.427795, 0.710170, -0.559151,
		32.962765, 37.436230, 49.174530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205765, 37.357891, 49.984528>,  <32.663307, 36.939110, 49.565933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205765, 37.357891, 49.984528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125652, 37.600670, 49.676891>,  <33.077583, 37.746338, 49.492310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125652, 37.600670, 49.676891>,  <33.205765, 37.357891, 49.984528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125652, 37.600670, 49.676891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164001, 0.753155, 0.637073,
		0.965915, 0.253726, -0.051304,
		-0.200281, 0.606944, -0.769095,
		33.065567, 37.782753, 49.446163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593311, 37.975670, 50.102364>,  <33.205765, 37.357891, 49.984528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593311, 37.975670, 50.102364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283298, 38.057137, 49.863083>,  <33.097290, 38.106018, 49.719513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283298, 38.057137, 49.863083>,  <33.593311, 37.975670, 50.102364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283298, 38.057137, 49.863083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249997, 0.770591, 0.586252,
		0.580369, 0.603912, -0.546316,
		-0.775031, 0.203665, -0.598204,
		33.050789, 38.118237, 49.683620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515064, 38.686443, 50.153732>,  <33.593311, 37.975670, 50.102364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515064, 38.686443, 50.153732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186058, 38.634914, 49.932144>,  <32.988655, 38.603996, 49.799191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186058, 38.634914, 49.932144>,  <33.515064, 38.686443, 50.153732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186058, 38.634914, 49.932144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463317, 0.716679, 0.521257,
		0.329867, 0.685403, -0.649162,
		-0.822511, -0.128822, -0.553967,
		32.939304, 38.596268, 49.765953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267246, 39.412003, 49.905571>,  <33.515064, 38.686443, 50.153732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267246, 39.412003, 49.905571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974449, 39.141579, 49.939327>,  <32.798771, 38.979324, 49.959579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974449, 39.141579, 49.939327>,  <33.267246, 39.412003, 49.905571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974449, 39.141579, 49.939327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534904, 0.646987, 0.543402,
		-0.421972, 0.352628, -0.835220,
		-0.731996, -0.676063, 0.084389,
		32.754852, 38.938759, 49.964645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102283, 40.172981, 49.851906>,  <33.267246, 39.412003, 49.905571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102283, 40.172981, 49.851906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930824, 40.476505, 49.655754>,  <32.827950, 40.658619, 49.538063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930824, 40.476505, 49.655754>,  <33.102283, 40.172981, 49.851906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930824, 40.476505, 49.655754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302330, -0.391010, -0.869315,
		-0.851388, -0.520882, -0.061808,
		-0.428643, 0.758811, -0.490379,
		32.802231, 40.704147, 49.508640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567905, 39.995457, 49.420994>,  <33.102283, 40.172981, 49.851906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567905, 39.995457, 49.420994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757111, 40.316654, 49.275967>,  <32.870632, 40.509373, 49.188950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757111, 40.316654, 49.275967>,  <32.567905, 39.995457, 49.420994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757111, 40.316654, 49.275967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095174, -0.455675, -0.885044,
		-0.875900, 0.384130, -0.291964,
		0.473013, 0.802997, -0.362567,
		32.899014, 40.557552, 49.167198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382202, 39.916164, 48.815048>,  <32.567905, 39.995457, 49.420994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382202, 39.916164, 48.815048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699314, 40.159023, 48.793594>,  <32.889580, 40.304737, 48.780724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699314, 40.159023, 48.793594>,  <32.382202, 39.916164, 48.815048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699314, 40.159023, 48.793594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179901, -0.317160, -0.931152,
		-0.582353, 0.728550, -0.360664,
		0.792780, 0.607144, -0.053632,
		32.937149, 40.341167, 48.777504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288982, 40.306438, 48.139973>,  <32.382202, 39.916164, 48.815048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288982, 40.306438, 48.139973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669659, 40.338264, 48.258598>,  <32.898064, 40.357361, 48.329773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669659, 40.338264, 48.258598>,  <32.288982, 40.306438, 48.139973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669659, 40.338264, 48.258598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305667, -0.153875, -0.939622,
		-0.029124, 0.984882, -0.170761,
		0.951693, 0.079561, 0.296564,
		32.955166, 40.362133, 48.347569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649296, 40.487011, 47.570957>,  <32.288982, 40.306438, 48.139973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649296, 40.487011, 47.570957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945324, 40.344551, 47.799152>,  <33.122940, 40.259075, 47.936069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945324, 40.344551, 47.799152>,  <32.649296, 40.487011, 47.570957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945324, 40.344551, 47.799152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491967, -0.291672, -0.820303,
		0.458547, 0.887740, -0.040643,
		0.740070, -0.356152, 0.570484,
		33.167343, 40.237705, 47.970299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221931, 40.614510, 47.232140>,  <32.649296, 40.487011, 47.570957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221931, 40.614510, 47.232140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385727, 40.341774, 47.474598>,  <33.484005, 40.178131, 47.620071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385727, 40.341774, 47.474598>,  <33.221931, 40.614510, 47.232140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385727, 40.341774, 47.474598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584176, -0.314364, -0.748274,
		0.700753, 0.660507, 0.269585,
		0.409493, -0.681840, 0.606143,
		33.508575, 40.137222, 47.656441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855484, 40.766350, 47.153252>,  <33.221931, 40.614510, 47.232140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855484, 40.766350, 47.153252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822468, 40.389256, 47.282520>,  <33.802658, 40.162998, 47.360081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822468, 40.389256, 47.282520>,  <33.855484, 40.766350, 47.153252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822468, 40.389256, 47.282520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500600, -0.319617, -0.804515,
		0.861735, 0.095371, 0.498315,
		-0.082543, -0.942735, 0.323168,
		33.797707, 40.106434, 47.379471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492085, 40.459690, 46.940098>,  <33.855484, 40.766350, 47.153252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492085, 40.459690, 46.940098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224781, 40.168175, 46.999828>,  <34.064400, 39.993267, 47.035667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224781, 40.168175, 46.999828>,  <34.492085, 40.459690, 46.940098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224781, 40.168175, 46.999828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379716, -0.506761, -0.773957,
		0.639722, -0.460503, 0.615380,
		-0.668260, -0.728787, 0.149326,
		34.024303, 39.949539, 47.044624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839764, 39.970577, 46.664268>,  <34.492085, 40.459690, 46.940098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839764, 39.970577, 46.664268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466789, 39.826595, 46.676918>,  <34.243004, 39.740204, 46.684509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466789, 39.826595, 46.676918>,  <34.839764, 39.970577, 46.664268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466789, 39.826595, 46.676918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140000, -0.440560, -0.886739,
		0.333120, -0.822398, 0.461187,
		-0.932433, -0.359957, 0.031624,
		34.187057, 39.718609, 46.686405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968033, 39.173256, 46.823093>,  <34.839764, 39.970577, 46.664268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968033, 39.173256, 46.823093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606293, 39.238457, 46.665321>,  <34.389248, 39.277576, 46.570660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606293, 39.238457, 46.665321>,  <34.968033, 39.173256, 46.823093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606293, 39.238457, 46.665321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222705, -0.608138, -0.761952,
		-0.364067, -0.776916, 0.513670,
		-0.904355, 0.163005, -0.394426,
		34.334988, 39.287357, 46.546993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645332, 38.593735, 46.604321>,  <34.968033, 39.173256, 46.823093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645332, 38.593735, 46.604321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449261, 38.855392, 46.373905>,  <34.331619, 39.012386, 46.235657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449261, 38.855392, 46.373905>,  <34.645332, 38.593735, 46.604321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449261, 38.855392, 46.373905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050762, -0.638335, -0.768082,
		-0.870143, -0.405738, 0.279692,
		-0.490177, 0.654144, -0.576040,
		34.302208, 39.051636, 46.201092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200516, 38.159752, 46.255482>,  <34.645332, 38.593735, 46.604321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200516, 38.159752, 46.255482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204422, 38.491554, 46.032120>,  <34.206768, 38.690636, 45.898102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204422, 38.491554, 46.032120>,  <34.200516, 38.159752, 46.255482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204422, 38.491554, 46.032120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124857, -0.555077, -0.822374,
		-0.992127, -0.061688, -0.108993,
		0.009769, 0.829508, -0.558409,
		34.207352, 38.740406, 45.864597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721104, 38.018826, 45.716572>,  <34.200516, 38.159752, 46.255482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721104, 38.018826, 45.716572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978710, 38.307564, 45.615238>,  <34.133274, 38.480808, 45.554440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978710, 38.307564, 45.615238>,  <33.721104, 38.018826, 45.716572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978710, 38.307564, 45.615238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168596, -0.456929, -0.873379,
		-0.746203, 0.519759, -0.415970,
		0.644015, 0.721850, -0.253333,
		34.171913, 38.524120, 45.539238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542282, 38.239597, 45.108620>,  <33.721104, 38.018826, 45.716572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542282, 38.239597, 45.108620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926750, 38.349365, 45.120308>,  <34.157429, 38.415226, 45.127319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926750, 38.349365, 45.120308>,  <33.542282, 38.239597, 45.108620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926750, 38.349365, 45.120308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165457, -0.488291, -0.856852,
		-0.220873, 0.828411, -0.514734,
		0.961166, 0.274421, 0.029216,
		34.215099, 38.431690, 45.129074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707882, 38.429390, 44.487755>,  <33.542282, 38.239597, 45.108620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707882, 38.429390, 44.487755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070938, 38.330109, 44.623158>,  <34.288773, 38.270538, 44.704399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070938, 38.330109, 44.623158>,  <33.707882, 38.429390, 44.487755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070938, 38.330109, 44.623158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113311, -0.631616, -0.766956,
		0.404169, 0.734476, -0.545154,
		0.907639, -0.248208, 0.338504,
		34.343231, 38.255646, 44.724709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102119, 38.425201, 43.889053>,  <33.707882, 38.429390, 44.487755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102119, 38.425201, 43.889053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355843, 38.255829, 44.147778>,  <34.508076, 38.154205, 44.303013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355843, 38.255829, 44.147778>,  <34.102119, 38.425201, 43.889053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355843, 38.255829, 44.147778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317056, -0.620577, -0.717188,
		0.705073, 0.659993, -0.259387,
		0.634309, -0.423430, 0.646807,
		34.546135, 38.128799, 44.341820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817654, 38.503426, 43.642933>,  <34.102119, 38.425201, 43.889053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817654, 38.503426, 43.642933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793709, 38.184231, 43.882809>,  <34.779343, 37.992714, 44.026733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793709, 38.184231, 43.882809>,  <34.817654, 38.503426, 43.642933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793709, 38.184231, 43.882809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393106, -0.571068, -0.720659,
		0.917543, 0.192605, 0.347877,
		-0.059859, -0.797988, 0.599693,
		34.775749, 37.944836, 44.062717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493679, 38.226791, 43.626732>,  <34.817654, 38.503426, 43.642933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493679, 38.226791, 43.626732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238869, 37.946777, 43.755821>,  <35.085983, 37.778770, 43.833275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238869, 37.946777, 43.755821>,  <35.493679, 38.226791, 43.626732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238869, 37.946777, 43.755821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367029, -0.643611, -0.671606,
		0.677855, -0.309381, 0.666930,
		-0.637025, -0.700035, 0.322723,
		35.047760, 37.736767, 43.852638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809475, 37.579948, 43.528816>,  <35.493679, 38.226791, 43.626732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809475, 37.579948, 43.528816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440716, 37.426231, 43.548534>,  <35.219460, 37.334003, 43.560364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440716, 37.426231, 43.548534>,  <35.809475, 37.579948, 43.528816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440716, 37.426231, 43.548534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244615, -0.675993, -0.695123,
		0.300452, -0.628773, 0.717198,
		-0.921896, -0.384289, 0.049296,
		35.164146, 37.310944, 43.563324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824570, 36.836086, 43.530849>,  <35.809475, 37.579948, 43.528816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824570, 36.836086, 43.530849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457836, 36.911972, 43.390324>,  <35.237797, 36.957504, 43.306007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457836, 36.911972, 43.390324>,  <35.824570, 36.836086, 43.530849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457836, 36.911972, 43.390324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118793, -0.710439, -0.693660,
		-0.381187, -0.677705, 0.628818,
		-0.916834, 0.189715, -0.351317,
		35.182785, 36.968887, 43.284927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536160, 36.104858, 43.440060>,  <35.824570, 36.836086, 43.530849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536160, 36.104858, 43.440060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305229, 36.351170, 43.225578>,  <35.166672, 36.498955, 43.096889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305229, 36.351170, 43.225578>,  <35.536160, 36.104858, 43.440060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305229, 36.351170, 43.225578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013508, -0.649406, -0.760322,
		-0.816403, -0.446196, 0.366601,
		-0.577325, 0.615776, -0.536204,
		35.132030, 36.535904, 43.064716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006054, 35.651226, 43.145794>,  <35.536160, 36.104858, 43.440060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006054, 35.651226, 43.145794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012241, 35.984051, 42.924011>,  <35.015953, 36.183746, 42.790939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012241, 35.984051, 42.924011>,  <35.006054, 35.651226, 43.145794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012241, 35.984051, 42.924011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126115, -0.548475, -0.826601,
		-0.991895, 0.082710, 0.096454,
		0.015466, 0.832066, -0.554461,
		35.016880, 36.233669, 42.757671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507355, 35.414917, 42.630920>,  <35.006054, 35.651226, 43.145794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507355, 35.414917, 42.630920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668003, 35.761768, 42.513077>,  <34.764393, 35.969879, 42.442371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668003, 35.761768, 42.513077>,  <34.507355, 35.414917, 42.630920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668003, 35.761768, 42.513077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061308, -0.295516, -0.953368,
		-0.913753, 0.400951, -0.065523,
		0.401617, 0.867126, -0.294611,
		34.788486, 36.021908, 42.424694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082554, 35.741665, 42.023937>,  <34.507355, 35.414917, 42.630920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082554, 35.741665, 42.023937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461380, 35.868130, 42.001610>,  <34.688675, 35.944008, 41.988213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461380, 35.868130, 42.001610>,  <34.082554, 35.741665, 42.023937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461380, 35.868130, 42.001610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064127, -0.356633, -0.932041,
		-0.314585, 0.879120, -0.358028,
		0.947061, 0.316165, -0.055816,
		34.745499, 35.962978, 41.984863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161793, 36.101215, 41.345394>,  <34.082554, 35.741665, 42.023937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161793, 36.101215, 41.345394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527550, 36.000614, 41.472290>,  <34.747002, 35.940254, 41.548428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527550, 36.000614, 41.472290>,  <34.161793, 36.101215, 41.345394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527550, 36.000614, 41.472290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182915, -0.442413, -0.877960,
		0.361159, 0.860824, -0.358533,
		0.914388, -0.251502, 0.317239,
		34.801865, 35.925163, 41.567463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703869, 36.244194, 40.732342>,  <34.161793, 36.101215, 41.345394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703869, 36.244194, 40.732342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915787, 36.006279, 40.974186>,  <35.042938, 35.863529, 41.119293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915787, 36.006279, 40.974186>,  <34.703869, 36.244194, 40.732342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915787, 36.006279, 40.974186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331725, -0.510769, -0.793142,
		0.780564, 0.620764, -0.073297,
		0.529792, -0.594783, 0.604610,
		35.074726, 35.827843, 41.155567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343033, 36.209991, 40.392937>,  <34.703869, 36.244194, 40.732342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343033, 36.209991, 40.392937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359196, 35.905163, 40.651432>,  <35.368893, 35.722267, 40.806530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359196, 35.905163, 40.651432>,  <35.343033, 36.209991, 40.392937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359196, 35.905163, 40.651432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373139, -0.588462, -0.717272,
		0.926895, 0.270120, 0.260578,
		0.040409, -0.762068, 0.646235,
		35.371319, 35.676544, 40.845303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052059, 35.923424, 40.409302>,  <35.343033, 36.209991, 40.392937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052059, 35.923424, 40.409302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815495, 35.607811, 40.475834>,  <35.673553, 35.418446, 40.515755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815495, 35.607811, 40.475834>,  <36.052059, 35.923424, 40.409302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815495, 35.607811, 40.475834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333947, -0.427411, -0.840118,
		0.733969, -0.441311, 0.516270,
		-0.591413, -0.789027, 0.166332,
		35.638069, 35.371101, 40.525734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449657, 35.286682, 40.632221>,  <36.052059, 35.923424, 40.409302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449657, 35.286682, 40.632221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104477, 35.166267, 40.469894>,  <35.897369, 35.094021, 40.372498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104477, 35.166267, 40.469894>,  <36.449657, 35.286682, 40.632221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104477, 35.166267, 40.469894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505272, -0.508955, -0.696897,
		0.003247, -0.806438, 0.591310,
		-0.862954, -0.301035, -0.405818,
		35.845592, 35.075958, 40.348148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505756, 34.586834, 40.504391>,  <36.449657, 35.286682, 40.632221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505756, 34.586834, 40.504391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214695, 34.686043, 40.248577>,  <36.040058, 34.745567, 40.095089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214695, 34.686043, 40.248577>,  <36.505756, 34.586834, 40.504391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214695, 34.686043, 40.248577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540848, -0.366006, -0.757313,
		-0.421904, -0.896953, 0.132184,
		-0.727654, 0.248022, -0.639535,
		35.996399, 34.760448, 40.056717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273163, 33.922268, 40.179352>,  <36.505756, 34.586834, 40.504391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273163, 33.922268, 40.179352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159569, 34.215542, 39.932194>,  <36.091412, 34.391506, 39.783897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159569, 34.215542, 39.932194>,  <36.273163, 33.922268, 40.179352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159569, 34.215542, 39.932194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336336, -0.527312, -0.780270,
		-0.897905, -0.429404, -0.096848,
		-0.283982, 0.733181, -0.617900,
		36.074375, 34.435497, 39.746822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042721, 33.485123, 39.567879>,  <36.273163, 33.922268, 40.179352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042721, 33.485123, 39.567879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040436, 33.860077, 39.428581>,  <36.039066, 34.085049, 39.345005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040436, 33.860077, 39.428581>,  <36.042721, 33.485123, 39.567879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040436, 33.860077, 39.428581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520903, -0.294476, -0.801214,
		-0.853597, -0.185976, -0.486606,
		-0.005713, 0.937388, -0.348239,
		36.038723, 34.141293, 39.324108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794930, 33.557026, 38.862270>,  <36.042721, 33.485123, 39.567879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794930, 33.557026, 38.862270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022171, 33.885830, 38.878075>,  <36.158516, 34.083111, 38.887558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022171, 33.885830, 38.878075>,  <35.794930, 33.557026, 38.862270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022171, 33.885830, 38.878075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344899, -0.194225, -0.918325,
		-0.747197, 0.535330, -0.393850,
		0.568103, 0.822009, 0.039510,
		36.192600, 34.132431, 38.889927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871086, 33.622746, 38.201500>,  <35.794930, 33.557026, 38.862270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871086, 33.622746, 38.201500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136089, 33.890385, 38.336197>,  <36.295090, 34.050968, 38.417015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136089, 33.890385, 38.336197>,  <35.871086, 33.622746, 38.201500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136089, 33.890385, 38.336197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444288, 0.010938, -0.895818,
		-0.603070, 0.743097, -0.290024,
		0.662507, 0.669095, 0.336745,
		36.334843, 34.091114, 38.437222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903454, 34.139164, 37.688404>,  <35.871086, 33.622746, 38.201500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903454, 34.139164, 37.688404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235779, 34.182304, 37.906807>,  <36.435173, 34.208187, 38.037849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235779, 34.182304, 37.906807>,  <35.903454, 34.139164, 37.688404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235779, 34.182304, 37.906807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511214, 0.239981, -0.825269,
		-0.220038, 0.964768, 0.144244,
		0.830809, 0.107851, 0.546008,
		36.485020, 34.214661, 38.070610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118870, 34.900738, 37.656422>,  <35.903454, 34.139164, 37.688404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118870, 34.900738, 37.656422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422237, 34.650349, 37.729031>,  <36.604259, 34.500114, 37.772594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422237, 34.650349, 37.729031>,  <36.118870, 34.900738, 37.656422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422237, 34.650349, 37.729031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504413, 0.387356, -0.771701,
		0.412752, 0.676837, 0.609530,
		0.758421, -0.625977, 0.181524,
		36.649765, 34.462555, 37.783489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709167, 35.217091, 37.375992>,  <36.118870, 34.900738, 37.656422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709167, 35.217091, 37.375992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883884, 34.867970, 37.463112>,  <36.988716, 34.658497, 37.515385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883884, 34.867970, 37.463112>,  <36.709167, 35.217091, 37.375992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883884, 34.867970, 37.463112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736974, 0.208365, -0.643003,
		0.515831, 0.441370, 0.734242,
		0.436792, -0.872798, 0.217797,
		37.014923, 34.606129, 37.528450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498554, 35.276375, 37.599693>,  <36.709167, 35.217091, 37.375992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498554, 35.276375, 37.599693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445126, 34.900906, 37.472546>,  <37.413067, 34.675625, 37.396255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445126, 34.900906, 37.472546>,  <37.498554, 35.276375, 37.599693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445126, 34.900906, 37.472546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675901, 0.148288, -0.721920,
		0.724786, -0.311279, 0.614646,
		-0.133574, -0.938678, -0.317871,
		37.405052, 34.619301, 37.377186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117424, 35.076569, 37.343975>,  <37.498554, 35.276375, 37.599693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117424, 35.076569, 37.343975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879845, 34.813663, 37.158401>,  <37.737297, 34.655922, 37.047058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879845, 34.813663, 37.158401>,  <38.117424, 35.076569, 37.343975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879845, 34.813663, 37.158401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506878, 0.142095, -0.850226,
		0.624742, -0.740149, 0.248753,
		-0.593947, -0.657259, -0.463938,
		37.701660, 34.616486, 37.019218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559093, 34.603558, 37.190689>,  <38.117424, 35.076569, 37.343975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559093, 34.603558, 37.190689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259346, 34.552471, 36.930801>,  <38.079498, 34.521820, 36.774868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259346, 34.552471, 36.930801>,  <38.559093, 34.603558, 37.190689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259346, 34.552471, 36.930801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643651, 0.089858, -0.760025,
		0.155453, -0.987731, 0.014871,
		-0.749364, -0.127720, -0.649723,
		38.034538, 34.514156, 36.735886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767502, 34.138557, 36.785862>,  <38.559093, 34.603558, 37.190689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767502, 34.138557, 36.785862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480328, 34.321346, 36.575817>,  <38.308022, 34.431023, 36.449791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480328, 34.321346, 36.575817>,  <38.767502, 34.138557, 36.785862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480328, 34.321346, 36.575817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580421, -0.023461, -0.813979,
		-0.384290, -0.889169, -0.248395,
		-0.717937, 0.456977, -0.525108,
		38.264946, 34.458439, 36.418285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226841, 33.558285, 37.032719>,  <38.767502, 34.138557, 36.785862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226841, 33.558285, 37.032719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603218, 33.434937, 36.976810>,  <39.829044, 33.360928, 36.943268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603218, 33.434937, 36.976810>,  <39.226841, 33.558285, 37.032719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603218, 33.434937, 36.976810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194696, 0.830568, -0.521776,
		0.276987, 0.463749, 0.841555,
		0.940942, -0.308372, -0.139767,
		39.885502, 33.342426, 36.934879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803711, 34.029255, 37.324963>,  <39.226841, 33.558285, 37.032719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803711, 34.029255, 37.324963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922543, 33.842236, 36.991943>,  <39.993843, 33.730022, 36.792130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922543, 33.842236, 36.991943>,  <39.803711, 34.029255, 37.324963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922543, 33.842236, 36.991943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171719, 0.883860, -0.435090,
		0.939284, -0.013707, 0.342866,
		0.297082, -0.467550, -0.832550,
		40.011665, 33.701969, 36.742180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400261, 34.435673, 37.184078>,  <39.803711, 34.029255, 37.324963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400261, 34.435673, 37.184078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266106, 34.241062, 36.861389>,  <40.185612, 34.124294, 36.667774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266106, 34.241062, 36.861389>,  <40.400261, 34.435673, 37.184078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266106, 34.241062, 36.861389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043714, 0.847361, -0.529214,
		0.941064, -0.212759, -0.262930,
		-0.335392, -0.486531, -0.806722,
		40.165489, 34.095104, 36.619373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883430, 34.579830, 36.582047>,  <40.400261, 34.435673, 37.184078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883430, 34.579830, 36.582047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503338, 34.519066, 36.473244>,  <40.275284, 34.482609, 36.407963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503338, 34.519066, 36.473244>,  <40.883430, 34.579830, 36.582047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503338, 34.519066, 36.473244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070437, 0.745713, -0.662533,
		0.303486, -0.648718, -0.697898,
		-0.950229, -0.151912, -0.272007,
		40.218269, 34.473492, 36.391640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134502, 33.921795, 36.650326>,  <40.883430, 34.579830, 36.582047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134502, 33.921795, 36.650326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445446, 33.688881, 36.745529>,  <41.632011, 33.549133, 36.802650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445446, 33.688881, 36.745529>,  <41.134502, 33.921795, 36.650326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445446, 33.688881, 36.745529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184637, -0.572903, -0.798556,
		0.601345, 0.576823, -0.552865,
		0.777363, -0.582287, 0.238010,
		41.678654, 33.514194, 36.816933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616943, 33.878342, 35.971272>,  <41.134502, 33.921795, 36.650326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616943, 33.878342, 35.971272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629635, 33.556931, 36.209042>,  <41.637249, 33.364086, 36.351704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629635, 33.556931, 36.209042>,  <41.616943, 33.878342, 35.971272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629635, 33.556931, 36.209042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339994, -0.567936, -0.749568,
		0.939892, -0.178318, -0.291213,
		0.031729, -0.803524, 0.594426,
		41.639153, 33.315872, 36.387371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296288, 33.921757, 35.641121>,  <41.616943, 33.878342, 35.971272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296288, 33.921757, 35.641121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432018, 34.296459, 35.606823>,  <42.513458, 34.521278, 35.586243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432018, 34.296459, 35.606823>,  <42.296288, 33.921757, 35.641121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432018, 34.296459, 35.606823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433634, 0.074884, -0.897972,
		-0.834756, 0.341889, 0.431618,
		0.339328, 0.936752, -0.085745,
		42.533817, 34.577484, 35.581100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719997, 34.482899, 35.417480>,  <42.296288, 33.921757, 35.641121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719997, 34.482899, 35.417480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082680, 34.600605, 35.296619>,  <42.300289, 34.671230, 35.224102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082680, 34.600605, 35.296619>,  <41.719997, 34.482899, 35.417480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082680, 34.600605, 35.296619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340780, 0.089008, -0.935920,
		-0.248515, 0.951570, 0.180984,
		0.906702, 0.294266, -0.302156,
		42.354691, 34.688885, 35.205971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667709, 35.172634, 35.174057>,  <41.719997, 34.482899, 35.417480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667709, 35.172634, 35.174057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973804, 34.985138, 34.997559>,  <42.157459, 34.872643, 34.891659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973804, 34.985138, 34.997559>,  <41.667709, 35.172634, 35.174057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973804, 34.985138, 34.997559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381829, 0.221357, -0.897334,
		0.518286, 0.855154, -0.009587,
		0.765236, -0.468736, -0.441249,
		42.203377, 34.844517, 34.865185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863552, 35.624744, 34.646152>,  <41.667709, 35.172634, 35.174057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863552, 35.624744, 34.646152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004707, 35.265697, 34.540508>,  <42.089401, 35.050270, 34.477119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004707, 35.265697, 34.540508>,  <41.863552, 35.624744, 34.646152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004707, 35.265697, 34.540508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407632, 0.106590, -0.906904,
		0.842202, 0.427699, -0.328282,
		0.352891, -0.897615, -0.264114,
		42.110573, 34.996414, 34.461273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126148, 35.749386, 34.047489>,  <41.863552, 35.624744, 34.646152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126148, 35.749386, 34.047489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084274, 35.351585, 34.045933>,  <42.059151, 35.112907, 34.044998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084274, 35.351585, 34.045933>,  <42.126148, 35.749386, 34.047489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084274, 35.351585, 34.045933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490915, 0.055077, -0.869465,
		0.864895, -0.089115, -0.493980,
		-0.104689, -0.994498, -0.003888,
		42.052868, 35.053238, 34.044765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412224, 35.558338, 33.407078>,  <42.126148, 35.749386, 34.047489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412224, 35.558338, 33.407078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212318, 35.229259, 33.515453>,  <42.092373, 35.031815, 33.580479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212318, 35.229259, 33.515453>,  <42.412224, 35.558338, 33.407078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212318, 35.229259, 33.515453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329860, -0.108457, -0.937779,
		0.800891, -0.558043, -0.217170,
		-0.499767, -0.822694, 0.270938,
		42.062389, 34.982452, 33.596733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694153, 34.986286, 33.076290>,  <42.412224, 35.558338, 33.407078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694153, 34.986286, 33.076290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312233, 34.896729, 33.154503>,  <42.083080, 34.842995, 33.201431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312233, 34.896729, 33.154503>,  <42.694153, 34.986286, 33.076290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312233, 34.896729, 33.154503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139296, -0.244102, -0.959693,
		0.262603, -0.943549, 0.201880,
		-0.954796, -0.223897, 0.195534,
		42.025795, 34.829559, 33.213161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501720, 34.369171, 32.666080>,  <42.694153, 34.986286, 33.076290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501720, 34.369171, 32.666080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146339, 34.530006, 32.754608>,  <41.933113, 34.626507, 32.807724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146339, 34.530006, 32.754608>,  <42.501720, 34.369171, 32.666080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146339, 34.530006, 32.754608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277334, -0.086101, -0.956908,
		-0.365707, -0.911543, 0.188010,
		-0.888450, 0.402089, 0.221314,
		41.879803, 34.650635, 32.821003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140923, 34.075077, 32.215816>,  <42.501720, 34.369171, 32.666080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140923, 34.075077, 32.215816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897476, 34.363033, 32.349293>,  <41.751408, 34.535809, 32.429379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897476, 34.363033, 32.349293>,  <42.140923, 34.075077, 32.215816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897476, 34.363033, 32.349293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446965, 0.036429, -0.893809,
		-0.655601, -0.693131, 0.299595,
		-0.608613, 0.719891, 0.333688,
		41.714893, 34.578999, 32.449398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541737, 33.883991, 32.130394>,  <42.140923, 34.075077, 32.215816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541737, 33.883991, 32.130394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477898, 34.278625, 32.144108>,  <41.439594, 34.515408, 32.152336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477898, 34.278625, 32.144108>,  <41.541737, 33.883991, 32.130394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477898, 34.278625, 32.144108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476195, -0.046516, -0.878109,
		-0.864736, -0.156468, 0.477231,
		-0.159595, 0.986587, 0.034285,
		41.430019, 34.574600, 32.154392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892467, 33.983017, 31.940674>,  <41.541737, 33.883991, 32.130394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892467, 33.983017, 31.940674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066845, 34.336666, 31.873413>,  <41.171471, 34.548855, 31.833057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066845, 34.336666, 31.873413>,  <40.892467, 33.983017, 31.940674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066845, 34.336666, 31.873413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204146, -0.084824, -0.975259,
		-0.876513, 0.459488, 0.143512,
		0.435947, 0.884124, -0.168152,
		41.197628, 34.601902, 31.822968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450176, 34.384899, 31.490917>,  <40.892467, 33.983017, 31.940674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450176, 34.384899, 31.490917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800541, 34.572151, 31.444206>,  <41.010761, 34.684502, 31.416180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800541, 34.572151, 31.444206>,  <40.450176, 34.384899, 31.490917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800541, 34.572151, 31.444206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208709, 0.149414, -0.966497,
		-0.434996, 0.870937, 0.228577,
		0.875910, 0.468129, -0.116778,
		41.063313, 34.712589, 31.409172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292522, 34.843716, 30.990446>,  <40.450176, 34.384899, 31.490917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292522, 34.843716, 30.990446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692245, 34.847164, 31.004946>,  <40.932079, 34.849232, 31.013645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692245, 34.847164, 31.004946>,  <40.292522, 34.843716, 30.990446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692245, 34.847164, 31.004946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034421, 0.159009, -0.986677,
		-0.014266, 0.987240, 0.158602,
		0.999306, 0.008617, 0.036250,
		40.992039, 34.849751, 31.015821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581829, 35.574459, 30.729721>,  <40.292522, 34.843716, 30.990446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581829, 35.574459, 30.729721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854790, 35.285683, 30.683897>,  <41.018566, 35.112415, 30.656403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854790, 35.285683, 30.683897>,  <40.581829, 35.574459, 30.729721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854790, 35.285683, 30.683897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048826, 0.201387, -0.978294,
		0.729344, 0.661997, 0.172677,
		0.682403, -0.721944, -0.114558,
		41.059509, 35.069099, 30.649530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164978, 35.841366, 30.259975>,  <40.581829, 35.574459, 30.729721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164978, 35.841366, 30.259975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170975, 35.441944, 30.239304>,  <41.174572, 35.202293, 30.226900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170975, 35.441944, 30.239304>,  <41.164978, 35.841366, 30.259975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170975, 35.441944, 30.239304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008085, 0.051565, -0.998637,
		0.999855, 0.015392, -0.007300,
		0.014994, -0.998551, -0.051682,
		41.175472, 35.142380, 30.223799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612175, 35.832890, 29.686506>,  <41.164978, 35.841366, 30.259975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612175, 35.832890, 29.686506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465813, 35.462788, 29.726545>,  <41.377995, 35.240726, 29.750568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465813, 35.462788, 29.726545>,  <41.612175, 35.832890, 29.686506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465813, 35.462788, 29.726545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113904, -0.062226, -0.991541,
		0.923655, -0.374212, -0.082622,
		-0.365905, -0.925254, 0.100099,
		41.356041, 35.185211, 29.756575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982288, 35.513577, 29.196907>,  <41.612175, 35.832890, 29.686506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982288, 35.513577, 29.196907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680561, 35.262753, 29.274683>,  <41.499527, 35.112259, 29.321348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680561, 35.262753, 29.274683>,  <41.982288, 35.513577, 29.196907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680561, 35.262753, 29.274683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111549, -0.414279, -0.903289,
		0.646968, -0.659674, 0.382444,
		-0.754314, -0.627060, 0.194439,
		41.454266, 35.074635, 29.333015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212036, 34.811779, 29.194643>,  <41.982288, 35.513577, 29.196907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212036, 34.811779, 29.194643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821541, 34.805523, 29.108187>,  <41.587246, 34.801769, 29.056313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821541, 34.805523, 29.108187>,  <42.212036, 34.811779, 29.194643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821541, 34.805523, 29.108187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190785, -0.535062, -0.822988,
		-0.102778, -0.844668, 0.525331,
		-0.976237, -0.015640, -0.216143,
		41.528671, 34.800831, 29.043344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010777, 34.176994, 28.958988>,  <42.212036, 34.811779, 29.194643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010777, 34.176994, 28.958988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697613, 34.376343, 28.810032>,  <41.509716, 34.495953, 28.720657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697613, 34.376343, 28.810032>,  <42.010777, 34.176994, 28.958988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697613, 34.376343, 28.810032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080802, -0.512047, -0.855149,
		-0.616867, -0.699594, 0.360616,
		-0.782909, 0.498374, -0.372393,
		41.462742, 34.525856, 28.698315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683079, 33.742554, 28.558624>,  <42.010777, 34.176994, 28.958988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683079, 33.742554, 28.558624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506706, 34.071533, 28.414869>,  <41.400883, 34.268921, 28.328617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506706, 34.071533, 28.414869>,  <41.683079, 33.742554, 28.558624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506706, 34.071533, 28.414869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176619, -0.472091, -0.863676,
		-0.879993, -0.317346, 0.353418,
		-0.440929, 0.822449, -0.359387,
		41.374428, 34.318268, 28.307053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031883, 33.510056, 28.260836>,  <41.683079, 33.742554, 28.558624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031883, 33.510056, 28.260836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133026, 33.860535, 28.096720>,  <41.193714, 34.070824, 27.998251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133026, 33.860535, 28.096720>,  <41.031883, 33.510056, 28.260836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133026, 33.860535, 28.096720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098416, -0.398575, -0.911840,
		-0.962484, 0.270947, -0.014552,
		0.252860, 0.876200, -0.410288,
		41.208885, 34.123394, 27.973633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579361, 33.427269, 27.775732>,  <41.031883, 33.510056, 28.260836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579361, 33.427269, 27.775732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815258, 33.730709, 27.664928>,  <40.956795, 33.912773, 27.598446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815258, 33.730709, 27.664928>,  <40.579361, 33.427269, 27.775732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815258, 33.730709, 27.664928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006577, -0.347505, -0.937655,
		-0.807567, 0.551151, -0.209927,
		0.589740, 0.758599, -0.277009,
		40.992180, 33.958290, 27.581825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443699, 33.797550, 27.004732>,  <40.579361, 33.427269, 27.775732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443699, 33.797550, 27.004732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827507, 33.805935, 27.117073>,  <41.057793, 33.810966, 27.184477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827507, 33.805935, 27.117073>,  <40.443699, 33.797550, 27.004732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827507, 33.805935, 27.117073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266810, -0.386931, -0.882664,
		0.090168, 0.921870, -0.376862,
		0.959522, 0.020963, 0.280853,
		41.115364, 33.812225, 27.201328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834503, 34.183517, 26.560560>,  <40.443699, 33.797550, 27.004732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834503, 34.183517, 26.560560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065353, 33.902100, 26.726429>,  <41.203865, 33.733250, 26.825951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065353, 33.902100, 26.726429>,  <40.834503, 34.183517, 26.560560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065353, 33.902100, 26.726429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277756, -0.308398, -0.909803,
		0.767971, 0.640248, 0.017430,
		0.577124, -0.703544, 0.414674,
		41.238491, 33.691036, 26.850832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593479, 34.873360, 26.557501>,  <40.834503, 34.183517, 26.560560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593479, 34.873360, 26.557501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876907, 35.138947, 26.653065>,  <41.046963, 35.298298, 26.710403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876907, 35.138947, 26.653065>,  <40.593479, 34.873360, 26.557501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876907, 35.138947, 26.653065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461216, 0.179541, 0.868933,
		0.534050, -0.725887, 0.433450,
		0.708569, 0.663967, 0.238907,
		41.089478, 35.338135, 26.724737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065552, 35.456165, 26.206070>,  <40.593479, 34.873360, 26.557501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065552, 35.456165, 26.206070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313782, 35.422325, 25.894241>,  <41.462719, 35.402020, 25.707144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313782, 35.422325, 25.894241>,  <41.065552, 35.456165, 26.206070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313782, 35.422325, 25.894241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660154, -0.480160, 0.577619,
		-0.423185, -0.873092, -0.242126,
		0.620574, -0.084599, -0.779571,
		41.499954, 35.396946, 25.660370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775204, 35.656578, 26.330898>,  <41.065552, 35.456165, 26.206070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775204, 35.656578, 26.330898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103729, 35.882710, 26.361507>,  <42.300842, 36.018387, 26.379873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103729, 35.882710, 26.361507>,  <41.775204, 35.656578, 26.330898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103729, 35.882710, 26.361507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569692, 0.819819, 0.057853,
		-0.030028, -0.091109, 0.995388,
		0.821309, 0.565327, 0.076522,
		42.350121, 36.052307, 26.384464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536751, 36.369564, 26.511072>,  <41.775204, 35.656578, 26.330898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536751, 36.369564, 26.511072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933090, 36.410549, 26.475916>,  <42.170895, 36.435143, 26.454823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933090, 36.410549, 26.475916>,  <41.536751, 36.369564, 26.511072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933090, 36.410549, 26.475916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092862, 0.989896, 0.107158,
		0.097982, -0.098015, 0.990350,
		0.990846, 0.102466, -0.087890,
		42.230343, 36.441288, 26.449549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597771, 36.853966, 27.011015>,  <41.536751, 36.369564, 26.511072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597771, 36.853966, 27.011015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879311, 36.892097, 26.729446>,  <42.048233, 36.914978, 26.560505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879311, 36.892097, 26.729446>,  <41.597771, 36.853966, 27.011015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879311, 36.892097, 26.729446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083719, 0.995180, 0.051069,
		0.705398, 0.022987, 0.708438,
		0.703849, 0.095333, -0.703923,
		42.090466, 36.920696, 26.518269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773193, 37.499405, 27.065105>,  <41.597771, 36.853966, 27.011015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773193, 37.499405, 27.065105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996395, 37.417358, 26.743469>,  <42.130314, 37.368130, 26.550488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996395, 37.417358, 26.743469>,  <41.773193, 37.499405, 27.065105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996395, 37.417358, 26.743469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212394, 0.971997, -0.100551,
		0.802199, -0.114676, 0.585940,
		0.558001, -0.205112, -0.804092,
		42.163795, 37.355824, 26.502241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341854, 37.943336, 27.046177>,  <41.773193, 37.499405, 27.065105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341854, 37.943336, 27.046177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307236, 37.831955, 26.663561>,  <42.286465, 37.765125, 26.433990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307236, 37.831955, 26.663561>,  <42.341854, 37.943336, 27.046177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307236, 37.831955, 26.663561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092546, 0.953746, -0.286015,
		0.991940, -0.113277, -0.056773,
		-0.086545, -0.278455, -0.956542,
		42.281273, 37.748417, 26.376598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096657, 38.466324, 27.572353>,  <42.341854, 37.943336, 27.046177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096657, 38.466324, 27.572353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830185, 38.527302, 27.864372>,  <41.670303, 38.563889, 28.039583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830185, 38.527302, 27.864372>,  <42.096657, 38.466324, 27.572353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830185, 38.527302, 27.864372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738567, -0.001088, 0.674179,
		0.103572, 0.988311, -0.111869,
		-0.666177, 0.152449, 0.730046,
		41.630333, 38.573036, 28.083385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430813, 38.854321, 28.079041>,  <42.096657, 38.466324, 27.572353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430813, 38.854321, 28.079041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127392, 38.667080, 28.260357>,  <41.945339, 38.554733, 28.369146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127392, 38.667080, 28.260357>,  <42.430813, 38.854321, 28.079041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127392, 38.667080, 28.260357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519968, -0.015577, 0.854044,
		-0.392722, 0.883535, 0.255216,
		-0.758553, -0.468105, 0.453293,
		41.899826, 38.526649, 28.396345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140232, 39.204090, 28.794167>,  <42.430813, 38.854321, 28.079041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140232, 39.204090, 28.794167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082893, 38.808430, 28.807035>,  <42.048492, 38.571033, 28.814756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082893, 38.808430, 28.807035>,  <42.140232, 39.204090, 28.794167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082893, 38.808430, 28.807035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287417, -0.010503, 0.957748,
		-0.947019, 0.146534, 0.285804,
		-0.143344, -0.989150, 0.032170,
		42.039890, 38.511684, 28.816687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940502, 38.984520, 29.509785>,  <42.140232, 39.204090, 28.794167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940502, 38.984520, 29.509785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064125, 38.627583, 29.378212>,  <42.138298, 38.413418, 29.299269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064125, 38.627583, 29.378212>,  <41.940502, 38.984520, 29.509785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064125, 38.627583, 29.378212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438976, -0.172967, 0.881693,
		-0.843671, -0.416891, 0.338262,
		0.309061, -0.892348, -0.328932,
		42.156845, 38.359879, 29.279531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807281, 38.437294, 30.035881>,  <41.940502, 38.984520, 29.509785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807281, 38.437294, 30.035881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093891, 38.279884, 29.805496>,  <42.265858, 38.185440, 29.667265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093891, 38.279884, 29.805496>,  <41.807281, 38.437294, 30.035881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093891, 38.279884, 29.805496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539333, -0.211116, 0.815200,
		-0.442394, -0.894746, 0.060970,
		0.716525, -0.393523, -0.575962,
		42.308849, 38.161827, 29.632708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912148, 37.686825, 30.259581>,  <41.807281, 38.437294, 30.035881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912148, 37.686825, 30.259581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251305, 37.740849, 30.054510>,  <42.454800, 37.773262, 29.931467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251305, 37.740849, 30.054510>,  <41.912148, 37.686825, 30.259581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251305, 37.740849, 30.054510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522531, -0.376445, 0.765017,
		-0.089671, -0.916541, -0.389758,
		0.847891, 0.135061, -0.512678,
		42.505672, 37.781368, 29.900707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232922, 37.108570, 30.292503>,  <41.912148, 37.686825, 30.259581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232922, 37.108570, 30.292503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537247, 37.346889, 30.189594>,  <42.719841, 37.489883, 30.127848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537247, 37.346889, 30.189594>,  <42.232922, 37.108570, 30.292503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537247, 37.346889, 30.189594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515697, -0.314359, 0.797016,
		0.393987, -0.739053, -0.546420,
		0.760809, 0.595801, -0.257274,
		42.765488, 37.525631, 30.112411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885349, 36.762150, 30.410807>,  <42.232922, 37.108570, 30.292503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885349, 36.762150, 30.410807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015106, 37.140347, 30.422256>,  <43.092960, 37.367264, 30.429127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015106, 37.140347, 30.422256>,  <42.885349, 36.762150, 30.410807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015106, 37.140347, 30.422256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558645, -0.215915, 0.800810,
		0.763338, -0.243785, -0.598234,
		0.324393, 0.945489, 0.028627,
		43.112423, 37.423992, 30.430845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694019, 36.671696, 30.361963>,  <42.885349, 36.762150, 30.410807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694019, 36.671696, 30.361963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662842, 37.058849, 30.457563>,  <43.644135, 37.291142, 30.514923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662842, 37.058849, 30.457563>,  <43.694019, 36.671696, 30.361963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662842, 37.058849, 30.457563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740461, -0.104323, 0.663954,
		0.667565, 0.228718, -0.708551,
		-0.077940, 0.967887, 0.238999,
		43.639462, 37.349216, 30.529263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415291, 36.910320, 30.359642>,  <43.694019, 36.671696, 30.361963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415291, 36.910320, 30.359642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180779, 37.135323, 30.592833>,  <44.040070, 37.270325, 30.732746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180779, 37.135323, 30.592833>,  <44.415291, 36.910320, 30.359642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180779, 37.135323, 30.592833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573635, -0.219879, 0.789048,
		0.572025, 0.797022, -0.193759,
		-0.586285, 0.562502, 0.582976,
		44.004894, 37.304073, 30.767725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874283, 37.257217, 30.746828>,  <44.415291, 36.910320, 30.359642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874283, 37.257217, 30.746828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530613, 37.233101, 30.950079>,  <44.324413, 37.218632, 31.072029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530613, 37.233101, 30.950079>,  <44.874283, 37.257217, 30.746828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530613, 37.233101, 30.950079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508793, -0.206182, 0.835834,
		0.054377, 0.976655, 0.207819,
		-0.859170, -0.060287, 0.508126,
		44.272861, 37.215015, 31.102516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050133, 37.547165, 31.319475>,  <44.874283, 37.257217, 30.746828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050133, 37.547165, 31.319475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726852, 37.325874, 31.400232>,  <44.532887, 37.193100, 31.448687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726852, 37.325874, 31.400232>,  <45.050133, 37.547165, 31.319475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726852, 37.325874, 31.400232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374385, -0.218022, 0.901278,
		-0.454589, 0.803997, 0.383323,
		-0.808198, -0.553222, 0.201895,
		44.484394, 37.159908, 31.460800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939640, 37.639378, 31.959774>,  <45.050133, 37.547165, 31.319475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939640, 37.639378, 31.959774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.698723, 37.324974, 31.904011>,  <44.554173, 37.136333, 31.870552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.698723, 37.324974, 31.904011>,  <44.939640, 37.639378, 31.959774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.698723, 37.324974, 31.904011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156611, -0.287589, 0.944863,
		-0.782764, 0.547248, 0.296310,
		-0.602290, -0.786010, -0.139410,
		44.518036, 37.089172, 31.862188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548950, 37.616425, 32.544628>,  <44.939640, 37.639378, 31.959774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548950, 37.616425, 32.544628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535130, 37.247555, 32.390541>,  <44.526836, 37.026234, 32.298088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535130, 37.247555, 32.390541>,  <44.548950, 37.616425, 32.544628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535130, 37.247555, 32.390541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108694, -0.386632, 0.915806,
		-0.993474, -0.010225, 0.113596,
		-0.034556, -0.922177, -0.385221,
		44.524761, 36.970901, 32.274975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336258, 37.261700, 33.096485>,  <44.548950, 37.616425, 32.544628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336258, 37.261700, 33.096485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464775, 36.967319, 32.858105>,  <44.541885, 36.790691, 32.715076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464775, 36.967319, 32.858105>,  <44.336258, 37.261700, 33.096485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464775, 36.967319, 32.858105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204125, -0.560699, 0.802465,
		-0.924719, -0.379473, -0.029923,
		0.321292, -0.735946, -0.595949,
		44.561161, 36.746536, 32.679321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891388, 36.673557, 33.316105>,  <44.336258, 37.261700, 33.096485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891388, 36.673557, 33.316105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224243, 36.535511, 33.142467>,  <44.423958, 36.452682, 33.038284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224243, 36.535511, 33.142467>,  <43.891388, 36.673557, 33.316105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224243, 36.535511, 33.142467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121661, -0.650083, 0.750060,
		-0.541053, -0.676968, -0.498974,
		0.832142, -0.345116, -0.434091,
		44.473885, 36.431976, 33.012241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976070, 35.932289, 33.416588>,  <43.891388, 36.673557, 33.316105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976070, 35.932289, 33.416588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356228, 35.980335, 33.301823>,  <44.584324, 36.009163, 33.232964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356228, 35.980335, 33.301823>,  <43.976070, 35.932289, 33.416588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356228, 35.980335, 33.301823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300313, -0.594547, 0.745873,
		-0.080997, -0.795039, -0.601126,
		0.950395, 0.120112, -0.286917,
		44.641346, 36.016369, 33.215748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273182, 35.241604, 33.344215>,  <43.976070, 35.932289, 33.416588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273182, 35.241604, 33.344215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581047, 35.494858, 33.377102>,  <44.765766, 35.646809, 33.396835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581047, 35.494858, 33.377102>,  <44.273182, 35.241604, 33.344215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581047, 35.494858, 33.377102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455947, -0.635220, 0.623384,
		0.446911, -0.442309, -0.777582,
		0.769664, 0.633133, 0.082217,
		44.811947, 35.684799, 33.401768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848579, 34.818382, 33.254307>,  <44.273182, 35.241604, 33.344215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848579, 34.818382, 33.254307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952976, 35.148895, 33.453964>,  <45.015614, 35.347202, 33.573757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952976, 35.148895, 33.453964>,  <44.848579, 34.818382, 33.254307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952976, 35.148895, 33.453964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424728, -0.562614, 0.709275,
		0.866886, 0.026886, -0.497781,
		0.260989, 0.826282, 0.499141,
		45.031273, 35.396778, 33.603706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507915, 34.648830, 33.669376>,  <44.848579, 34.818382, 33.254307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507915, 34.648830, 33.669376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400318, 34.994659, 33.839153>,  <45.335758, 35.202156, 33.941017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400318, 34.994659, 33.839153>,  <45.507915, 34.648830, 33.669376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400318, 34.994659, 33.839153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176775, -0.388878, 0.904170,
		0.946780, 0.318246, -0.048230,
		-0.268993, 0.864577, 0.424440,
		45.319622, 35.254032, 33.966484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028385, 34.768364, 34.136002>,  <45.507915, 34.648830, 33.669376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028385, 34.768364, 34.136002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700172, 34.951385, 34.273045>,  <45.503246, 35.061199, 34.355270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700172, 34.951385, 34.273045>,  <46.028385, 34.768364, 34.136002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700172, 34.951385, 34.273045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154246, -0.399901, 0.903486,
		0.550401, 0.794182, 0.257555,
		-0.820529, 0.457553, 0.342605,
		45.454014, 35.088650, 34.375828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.117912, 34.591499, 34.852592>,  <46.028385, 34.768364, 34.136002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.117912, 34.591499, 34.852592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763489, 34.770302, 34.803467>,  <45.550835, 34.877583, 34.773991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763489, 34.770302, 34.803467>,  <46.117912, 34.591499, 34.852592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763489, 34.770302, 34.803467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187236, -0.102727, 0.976929,
		0.424072, 0.888615, 0.174717,
		-0.886062, 0.447002, -0.122817,
		45.497669, 34.904404, 34.766621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065445, 35.113052, 35.368992>,  <46.117912, 34.591499, 34.852592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065445, 35.113052, 35.368992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681828, 35.035400, 35.286480>,  <45.451656, 34.988811, 35.236973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681828, 35.035400, 35.286480>,  <46.065445, 35.113052, 35.368992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681828, 35.035400, 35.286480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176746, -0.158978, 0.971333,
		-0.221356, 0.968009, 0.118155,
		-0.959043, -0.194126, -0.206282,
		45.394115, 34.977161, 35.224594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661850, 35.618561, 35.142662>,  <46.065445, 35.113052, 35.368992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661850, 35.618561, 35.142662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.999489, 35.722748, 34.955189>,  <47.202072, 35.785259, 34.842705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.999489, 35.722748, 34.955189>,  <46.661850, 35.618561, 35.142662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.999489, 35.722748, 34.955189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504885, -0.680396, 0.531179,
		-0.180533, -0.684995, -0.705825,
		0.844096, 0.260465, -0.468678,
		47.252716, 35.800888, 34.814587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.906471, 35.122677, 34.741482>,  <46.661850, 35.618561, 35.142662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.906471, 35.122677, 34.741482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216110, 35.342365, 34.867416>,  <47.401894, 35.474178, 34.942978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216110, 35.342365, 34.867416>,  <46.906471, 35.122677, 34.741482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.216110, 35.342365, 34.867416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283615, -0.745500, 0.603152,
		0.565976, -0.377608, -0.732860,
		0.774102, 0.549219, 0.314840,
		47.448341, 35.507130, 34.961868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.668423, 34.845699, 34.617325>,  <46.906471, 35.122677, 34.741482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.668423, 34.845699, 34.617325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603943, 35.059032, 34.949486>,  <47.565254, 35.187035, 35.148781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603943, 35.059032, 34.949486>,  <47.668423, 34.845699, 34.617325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603943, 35.059032, 34.949486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201360, -0.805934, 0.556708,
		0.966162, 0.256951, 0.022524,
		-0.161200, 0.533335, 0.830403,
		47.555584, 35.219032, 35.198608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.703743, 40.287312, 42.707035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.341955, 40.132835, 42.634598>,  <30.124884, 40.040150, 42.591137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.341955, 40.132835, 42.634598>,  <30.703743, 40.287312, 42.707035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341955, 40.132835, 42.634598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343569, -0.407999, -0.845870,
		0.252781, -0.827281, 0.501705,
		-0.904468, -0.386190, -0.181094,
		30.070614, 40.016979, 42.580269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852200, 39.613216, 42.556377>,  <30.703743, 40.287312, 42.707035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852200, 39.613216, 42.556377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.484081, 39.656975, 42.406132>,  <30.263210, 39.683231, 42.315987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.484081, 39.656975, 42.406132>,  <30.852200, 39.613216, 42.556377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484081, 39.656975, 42.406132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277696, -0.493604, -0.824160,
		-0.275566, -0.862778, 0.423883,
		-0.920298, 0.109399, -0.375611,
		30.207993, 39.689796, 42.293449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679106, 38.995735, 42.302338>,  <30.852200, 39.613216, 42.556377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679106, 38.995735, 42.302338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.419954, 39.222466, 42.098785>,  <30.264463, 39.358505, 41.976654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.419954, 39.222466, 42.098785>,  <30.679106, 38.995735, 42.302338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419954, 39.222466, 42.098785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280585, -0.443502, -0.851221,
		-0.708187, -0.694272, 0.128291,
		-0.647876, 0.566827, -0.508885,
		30.225592, 39.392513, 41.946121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289122, 38.557045, 41.857353>,  <30.679106, 38.995735, 42.302338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289122, 38.557045, 41.857353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.241184, 38.918510, 41.692902>,  <30.212421, 39.135391, 41.594231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.241184, 38.918510, 41.692902>,  <30.289122, 38.557045, 41.857353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241184, 38.918510, 41.692902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159118, -0.391280, -0.906411,
		-0.979959, -0.174044, -0.096897,
		-0.119841, 0.903664, -0.411132,
		30.205233, 39.189610, 41.569561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837145, 38.470333, 41.242638>,  <30.289122, 38.557045, 41.857353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837145, 38.470333, 41.242638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.025003, 38.814003, 41.161396>,  <30.137718, 39.020206, 41.112652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.025003, 38.814003, 41.161396>,  <29.837145, 38.470333, 41.242638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025003, 38.814003, 41.161396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163438, -0.310690, -0.936354,
		-0.867595, 0.406559, -0.286336,
		0.469646, 0.859174, -0.203106,
		30.165897, 39.071754, 41.100464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754808, 38.552170, 40.478889>,  <29.837145, 38.470333, 41.242638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754808, 38.552170, 40.478889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.056704, 38.803188, 40.555370>,  <30.237841, 38.953800, 40.601257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.056704, 38.803188, 40.555370>,  <29.754808, 38.552170, 40.478889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056704, 38.803188, 40.555370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365382, -0.160046, -0.916996,
		-0.544855, 0.761953, -0.350087,
		0.754738, 0.627545, 0.191202,
		30.283125, 38.991451, 40.612732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852270, 38.913063, 39.797005>,  <29.754808, 38.552170, 40.478889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852270, 38.913063, 39.797005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.194326, 38.956539, 39.999752>,  <30.399561, 38.982624, 40.121403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.194326, 38.956539, 39.999752>,  <29.852270, 38.913063, 39.797005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194326, 38.956539, 39.999752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492380, -0.476155, -0.728586,
		0.162160, 0.872618, -0.460697,
		0.855141, 0.108690, 0.506873,
		30.450869, 38.989147, 40.151814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461617, 39.115025, 39.265053>,  <29.852270, 38.913063, 39.797005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461617, 39.115025, 39.265053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.657364, 38.940239, 39.566936>,  <30.774813, 38.835369, 39.748066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.657364, 38.940239, 39.566936>,  <30.461617, 39.115025, 39.265053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657364, 38.940239, 39.566936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584618, -0.477780, -0.655704,
		0.647101, 0.762097, 0.021644,
		0.489369, -0.436960, 0.754708,
		30.804174, 38.809151, 39.793350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178404, 39.135773, 39.042458>,  <30.461617, 39.115025, 39.265053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178404, 39.135773, 39.042458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126760, 38.867382, 39.334518>,  <31.095776, 38.706348, 39.509754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126760, 38.867382, 39.334518>,  <31.178404, 39.135773, 39.042458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126760, 38.867382, 39.334518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556620, -0.658407, -0.506631,
		0.820674, 0.341005, 0.458486,
		-0.129106, -0.670981, 0.730148,
		31.088028, 38.666088, 39.553562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889399, 38.913902, 39.176041>,  <31.178404, 39.135773, 39.042458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889399, 38.913902, 39.176041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.635277, 38.638882, 39.316704>,  <31.482803, 38.473869, 39.401100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.635277, 38.638882, 39.316704>,  <31.889399, 38.913902, 39.176041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635277, 38.638882, 39.316704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558965, -0.723597, -0.404925,
		0.532865, -0.060687, 0.844021,
		-0.635305, -0.687549, 0.351658,
		31.444685, 38.432617, 39.422203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385876, 38.373615, 39.390461>,  <31.889399, 38.913902, 39.176041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385876, 38.373615, 39.390461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.015259, 38.231510, 39.340981>,  <31.792889, 38.146248, 39.311291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.015259, 38.231510, 39.340981>,  <32.385876, 38.373615, 39.390461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015259, 38.231510, 39.340981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375923, -0.886690, -0.269189,
		-0.014053, -0.295919, 0.955110,
		-0.926544, -0.355265, -0.123704,
		31.737295, 38.124931, 39.303871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370102, 37.684616, 39.760483>,  <32.385876, 38.373615, 39.390461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370102, 37.684616, 39.760483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.070213, 37.670353, 39.496166>,  <31.890280, 37.661797, 39.337578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.070213, 37.670353, 39.496166>,  <32.370102, 37.684616, 39.760483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070213, 37.670353, 39.496166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335014, -0.881584, -0.332529,
		-0.570684, -0.470679, 0.672890,
		-0.749723, -0.035658, -0.660790,
		31.845297, 37.659657, 39.297928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041737, 37.035217, 39.794842>,  <32.370102, 37.684616, 39.760483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041737, 37.035217, 39.794842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.934090, 37.175575, 39.436077>,  <31.869501, 37.259792, 39.220818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.934090, 37.175575, 39.436077>,  <32.041737, 37.035217, 39.794842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934090, 37.175575, 39.436077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326853, -0.842722, -0.427769,
		-0.905949, -0.408277, 0.112097,
		-0.269115, 0.350897, -0.896911,
		31.853355, 37.280846, 39.167004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844688, 36.398582, 39.554722>,  <32.041737, 37.035217, 39.794842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844688, 36.398582, 39.554722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.809050, 36.644276, 39.241089>,  <31.787666, 36.791691, 39.052910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.809050, 36.644276, 39.241089>,  <31.844688, 36.398582, 39.554722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809050, 36.644276, 39.241089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149987, -0.769960, -0.620214,
		-0.984665, -0.172861, -0.023526,
		-0.089097, 0.614232, -0.784080,
		31.782320, 36.828545, 39.005863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459902, 36.132660, 39.051254>,  <31.844688, 36.398582, 39.554722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459902, 36.132660, 39.051254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.712278, 36.375156, 38.857601>,  <31.863705, 36.520653, 38.741409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.712278, 36.375156, 38.857601>,  <31.459902, 36.132660, 39.051254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712278, 36.375156, 38.857601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327182, -0.773731, -0.542487,
		-0.703468, 0.183877, -0.686529,
		0.630940, 0.606242, -0.484134,
		31.901560, 36.557030, 38.712360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438877, 36.016430, 38.337204>,  <31.459902, 36.132660, 39.051254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438877, 36.016430, 38.337204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.796278, 36.192173, 38.374344>,  <32.010719, 36.297619, 38.396626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.796278, 36.192173, 38.374344>,  <31.438877, 36.016430, 38.337204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796278, 36.192173, 38.374344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406431, -0.703276, -0.583281,
		-0.190972, 0.558899, -0.806946,
		0.893501, 0.439358, 0.092848,
		32.064327, 36.323982, 38.402199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680046, 36.011707, 37.727257>,  <31.438877, 36.016430, 38.337204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680046, 36.011707, 37.727257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.014652, 36.030979, 37.945587>,  <32.215416, 36.042542, 38.076584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.014652, 36.030979, 37.945587>,  <31.680046, 36.011707, 37.727257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014652, 36.030979, 37.945587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419145, -0.697868, -0.580773,
		0.352935, 0.714604, -0.603968,
		0.836513, 0.048175, 0.545825,
		32.265606, 36.045433, 38.109333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147583, 35.897610, 37.212517>,  <31.680046, 36.011707, 37.727257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147583, 35.897610, 37.212517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.370445, 35.838535, 37.539383>,  <32.504162, 35.803093, 37.735504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.370445, 35.838535, 37.539383>,  <32.147583, 35.897610, 37.212517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370445, 35.838535, 37.539383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522931, -0.702033, -0.483418,
		0.645073, 0.696663, -0.313914,
		0.557157, -0.147684, 0.817169,
		32.537594, 35.794231, 37.784534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818604, 35.856792, 36.950684>,  <32.147583, 35.897610, 37.212517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818604, 35.856792, 36.950684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.815044, 35.664738, 37.301544>,  <32.812908, 35.549507, 37.512062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.815044, 35.664738, 37.301544>,  <32.818604, 35.856792, 36.950684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815044, 35.664738, 37.301544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504500, -0.759517, -0.410625,
		0.863365, 0.438867, 0.248989,
		-0.008902, -0.480134, 0.877150,
		32.812374, 35.520699, 37.564690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370846, 35.526165, 36.871147>,  <32.818604, 35.856792, 36.950684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370846, 35.526165, 36.871147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199062, 35.344471, 37.183361>,  <33.095993, 35.235455, 37.370689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199062, 35.344471, 37.183361>,  <33.370846, 35.526165, 36.871147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199062, 35.344471, 37.183361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441890, -0.859456, -0.257037,
		0.787590, 0.234524, 0.569825,
		-0.429458, -0.454239, 0.780533,
		33.070225, 35.208199, 37.417522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948589, 35.216473, 37.173199>,  <33.370846, 35.526165, 36.871147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948589, 35.216473, 37.173199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.613529, 35.020851, 37.270496>,  <33.412491, 34.903481, 37.328876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.613529, 35.020851, 37.270496>,  <33.948589, 35.216473, 37.173199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613529, 35.020851, 37.270496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436296, -0.867013, -0.240695,
		0.328610, -0.095492, 0.939626,
		-0.837652, -0.489049, 0.243247,
		33.362232, 34.874138, 37.343472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584976, 35.483868, 36.720284>,  <33.948589, 35.216473, 37.173199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584976, 35.483868, 36.720284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.631809, 35.490013, 36.323082>,  <34.659908, 35.493698, 36.084763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.631809, 35.490013, 36.323082>,  <34.584976, 35.483868, 36.720284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631809, 35.490013, 36.323082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497990, 0.865998, -0.045318,
		0.859243, 0.499811, 0.109040,
		0.117078, 0.015362, -0.993004,
		34.666931, 35.494621, 36.025181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038372, 35.767368, 36.212326>,  <34.584976, 35.483868, 36.720284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038372, 35.767368, 36.212326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.357586, 36.008102, 36.200081>,  <35.549114, 36.152542, 36.192734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.357586, 36.008102, 36.200081>,  <35.038372, 35.767368, 36.212326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357586, 36.008102, 36.200081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165011, 0.267103, 0.949435,
		0.579578, -0.752632, 0.312466,
		0.798036, 0.601832, -0.030614,
		35.596996, 36.188652, 36.190895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391132, 35.655254, 36.821156>,  <35.038372, 35.767368, 36.212326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391132, 35.655254, 36.821156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492344, 36.019814, 36.691338>,  <35.553070, 36.238548, 36.613445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492344, 36.019814, 36.691338>,  <35.391132, 35.655254, 36.821156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492344, 36.019814, 36.691338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064741, 0.350661, 0.934262,
		0.965291, -0.215380, 0.147731,
		0.253025, 0.911399, -0.324546,
		35.568253, 36.293232, 36.593975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944584, 35.884392, 37.306526>,  <35.391132, 35.655254, 36.821156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944584, 35.884392, 37.306526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807487, 36.211281, 37.121193>,  <35.725231, 36.407413, 37.009995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807487, 36.211281, 37.121193>,  <35.944584, 35.884392, 37.306526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807487, 36.211281, 37.121193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141456, 0.442684, 0.885450,
		0.928719, 0.369021, -0.036125,
		-0.342742, 0.817224, -0.463328,
		35.704666, 36.456448, 36.982193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074993, 36.477337, 37.776501>,  <35.944584, 35.884392, 37.306526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074993, 36.477337, 37.776501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.824432, 36.646111, 37.514328>,  <35.674095, 36.747375, 37.357025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.824432, 36.646111, 37.514328>,  <36.074993, 36.477337, 37.776501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824432, 36.646111, 37.514328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383863, 0.564850, 0.730475,
		0.678432, 0.709168, -0.191859,
		-0.626401, 0.421930, -0.655436,
		35.636513, 36.772690, 37.317696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051914, 37.145329, 37.964451>,  <36.074993, 36.477337, 37.776501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051914, 37.145329, 37.964451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.737690, 37.159164, 37.717323>,  <35.549156, 37.167465, 37.569046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.737690, 37.159164, 37.717323>,  <36.051914, 37.145329, 37.964451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737690, 37.159164, 37.717323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480378, 0.595255, 0.644134,
		0.390039, 0.802792, -0.450993,
		-0.785562, 0.034590, -0.617816,
		35.502022, 37.169540, 37.531979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827145, 37.822876, 37.838093>,  <36.051914, 37.145329, 37.964451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827145, 37.822876, 37.838093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496784, 37.598579, 37.814575>,  <35.298569, 37.464001, 37.800465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496784, 37.598579, 37.814575>,  <35.827145, 37.822876, 37.838093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496784, 37.598579, 37.814575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376663, 0.471139, 0.797592,
		-0.419544, 0.680876, -0.600325,
		-0.825898, -0.560745, -0.058797,
		35.249016, 37.430355, 37.796936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270084, 38.286232, 38.032677>,  <35.827145, 37.822876, 37.838093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270084, 38.286232, 38.032677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078259, 37.935677, 38.050400>,  <34.963165, 37.725342, 38.061035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078259, 37.935677, 38.050400>,  <35.270084, 38.286232, 38.032677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078259, 37.935677, 38.050400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626906, 0.377502, 0.681528,
		-0.614011, 0.299056, -0.730449,
		-0.479561, -0.876389, 0.044311,
		34.934391, 37.672760, 38.063694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553471, 38.505619, 38.042763>,  <35.270084, 38.286232, 38.032677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553471, 38.505619, 38.042763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.578266, 38.133343, 38.186970>,  <34.593143, 37.909977, 38.273495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.578266, 38.133343, 38.186970>,  <34.553471, 38.505619, 38.042763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578266, 38.133343, 38.186970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439555, 0.298837, 0.847047,
		-0.896074, -0.210974, -0.390565,
		0.061990, -0.930691, 0.360515,
		34.596863, 37.854134, 38.295124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859322, 38.192406, 38.282776>,  <34.553471, 38.505619, 38.042763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859322, 38.192406, 38.282776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147945, 38.017418, 38.497425>,  <34.321121, 37.912426, 38.626213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147945, 38.017418, 38.497425>,  <33.859322, 38.192406, 38.282776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147945, 38.017418, 38.497425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476723, 0.248134, 0.843306,
		-0.502076, -0.864320, -0.029508,
		0.721564, -0.437471, 0.536623,
		34.364414, 37.886177, 38.658413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455429, 37.852661, 38.836227>,  <33.859322, 38.192406, 38.282776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455429, 37.852661, 38.836227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.840359, 37.844395, 38.944679>,  <34.071316, 37.839436, 39.009750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.840359, 37.844395, 38.944679>,  <33.455429, 37.852661, 38.836227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840359, 37.844395, 38.944679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257346, 0.252760, 0.932677,
		-0.087802, -0.967308, 0.237919,
		0.962322, -0.020664, 0.271126,
		34.129055, 37.838196, 39.026016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438843, 37.485794, 39.394043>,  <33.455429, 37.852661, 38.836227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438843, 37.485794, 39.394043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.771400, 37.707409, 39.411148>,  <33.970936, 37.840378, 39.421413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.771400, 37.707409, 39.411148>,  <33.438843, 37.485794, 39.394043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771400, 37.707409, 39.411148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294142, 0.373486, 0.879766,
		0.471449, -0.744012, 0.473479,
		0.831394, 0.554035, 0.042766,
		34.020821, 37.873619, 39.423977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762650, 37.335674, 39.975452>,  <33.438843, 37.485794, 39.394043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762650, 37.335674, 39.975452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916759, 37.688984, 39.868576>,  <34.009228, 37.900970, 39.804451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916759, 37.688984, 39.868576>,  <33.762650, 37.335674, 39.975452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916759, 37.688984, 39.868576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109042, 0.331089, 0.937278,
		0.916336, -0.331977, 0.223876,
		0.385277, 0.883273, -0.267189,
		34.032341, 37.953964, 39.788418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176819, 37.488110, 40.443737>,  <33.762650, 37.335674, 39.975452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176819, 37.488110, 40.443737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084522, 37.832848, 40.263081>,  <34.029144, 38.039692, 40.154686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084522, 37.832848, 40.263081>,  <34.176819, 37.488110, 40.443737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084522, 37.832848, 40.263081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016233, 0.460694, 0.887410,
		0.972879, 0.212097, -0.092313,
		-0.230745, 0.861844, -0.451643,
		34.015297, 38.091400, 40.127586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707367, 37.922585, 40.615108>,  <34.176819, 37.488110, 40.443737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707367, 37.922585, 40.615108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.373936, 38.122974, 40.522003>,  <34.173878, 38.243206, 40.466141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.373936, 38.122974, 40.522003>,  <34.707367, 37.922585, 40.615108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373936, 38.122974, 40.522003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007696, 0.410796, 0.911695,
		0.552352, 0.761758, -0.338574,
		-0.833576, 0.500971, -0.232767,
		34.123863, 38.273266, 40.452171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769485, 38.696541, 40.953220>,  <34.707367, 37.922585, 40.615108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769485, 38.696541, 40.953220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.380337, 38.644741, 40.876545>,  <34.146847, 38.613663, 40.830540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.380337, 38.644741, 40.876545>,  <34.769485, 38.696541, 40.953220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380337, 38.644741, 40.876545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230492, 0.471986, 0.850942,
		-0.019719, 0.872044, -0.489031,
		-0.972874, -0.129498, -0.191692,
		34.088474, 38.605892, 40.819038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449268, 39.285233, 41.178570>,  <34.769485, 38.696541, 40.953220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449268, 39.285233, 41.178570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143490, 39.028648, 41.152813>,  <33.960022, 38.874699, 41.137360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143490, 39.028648, 41.152813>,  <34.449268, 39.285233, 41.178570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143490, 39.028648, 41.152813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379301, 0.366755, 0.849483,
		-0.521296, 0.673809, -0.523672,
		-0.764449, -0.641461, -0.064389,
		33.914154, 38.836208, 41.133495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833466, 39.686138, 41.103611>,  <34.449268, 39.285233, 41.178570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833466, 39.686138, 41.103611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.706451, 39.334908, 41.246803>,  <33.630241, 39.124168, 41.332718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.706451, 39.334908, 41.246803>,  <33.833466, 39.686138, 41.103611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706451, 39.334908, 41.246803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483585, 0.474688, 0.735403,
		-0.815669, 0.060406, -0.575357,
		-0.317538, -0.878079, 0.357976,
		33.611191, 39.071484, 41.354195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149578, 39.882515, 41.318127>,  <33.833466, 39.686138, 41.103611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149578, 39.882515, 41.318127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.242168, 39.548733, 41.518166>,  <33.297722, 39.348461, 41.638187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.242168, 39.548733, 41.518166>,  <33.149578, 39.882515, 41.318127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242168, 39.548733, 41.518166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614824, 0.272903, 0.739943,
		-0.753930, -0.478750, -0.449875,
		0.231476, -0.834459, 0.500096,
		33.311611, 39.298393, 41.668194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.530376, 39.583958, 41.605339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823532, 39.437847, 41.834927>,  <32.999428, 39.350182, 41.972679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823532, 39.437847, 41.834927>,  <32.530376, 39.583958, 41.605339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823532, 39.437847, 41.834927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474535, 0.330096, 0.815998,
		-0.487531, -0.870408, 0.068588,
		0.732892, -0.365277, 0.573971,
		33.043400, 39.328262, 42.007118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175098, 39.478474, 42.191494>,  <32.530376, 39.583958, 41.605339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175098, 39.478474, 42.191494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.545303, 39.433426, 42.336124>,  <32.767426, 39.406399, 42.422901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.545303, 39.433426, 42.336124>,  <32.175098, 39.478474, 42.191494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545303, 39.433426, 42.336124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297245, 0.375580, 0.877830,
		-0.234660, -0.919922, 0.314130,
		0.925516, -0.112618, 0.361576,
		32.822960, 39.399639, 42.444595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158161, 39.023468, 42.757301>,  <32.175098, 39.478474, 42.191494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158161, 39.023468, 42.757301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.478195, 39.260799, 42.792675>,  <32.670216, 39.403198, 42.813900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.478195, 39.260799, 42.792675>,  <32.158161, 39.023468, 42.757301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478195, 39.260799, 42.792675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327707, 0.308824, 0.892880,
		0.502460, -0.743364, 0.441524,
		0.800089, 0.593327, 0.088434,
		32.718224, 39.438797, 42.819206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279369, 39.110546, 43.467594>,  <32.158161, 39.023468, 42.757301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279369, 39.110546, 43.467594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507729, 39.409237, 43.331085>,  <32.644745, 39.588451, 43.249180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507729, 39.409237, 43.331085>,  <32.279369, 39.110546, 43.467594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507729, 39.409237, 43.331085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223611, 0.541373, 0.810502,
		0.789982, -0.386403, 0.476047,
		0.570900, 0.746731, -0.341270,
		32.678997, 39.633255, 43.228703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615704, 39.280785, 44.025795>,  <32.279369, 39.110546, 43.467594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615704, 39.280785, 44.025795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629749, 39.588688, 43.770847>,  <32.638176, 39.773430, 43.617878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629749, 39.588688, 43.770847>,  <32.615704, 39.280785, 44.025795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629749, 39.588688, 43.770847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216584, 0.628468, 0.747073,
		0.975632, 0.111808, 0.188788,
		0.035119, 0.769757, -0.637370,
		32.640285, 39.819614, 43.579636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841061, 39.897354, 44.351353>,  <32.615704, 39.280785, 44.025795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841061, 39.897354, 44.351353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689453, 40.095860, 44.038929>,  <32.598488, 40.214962, 43.851475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689453, 40.095860, 44.038929>,  <32.841061, 39.897354, 44.351353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689453, 40.095860, 44.038929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290163, 0.737739, 0.609546,
		0.878719, 0.457667, -0.135621,
		-0.379022, 0.496268, -0.781064,
		32.575745, 40.244740, 43.804611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035507, 40.567959, 44.491730>,  <32.841061, 39.897354, 44.351353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035507, 40.567959, 44.491730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741013, 40.617939, 44.225693>,  <32.564316, 40.647926, 44.066071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741013, 40.617939, 44.225693>,  <33.035507, 40.567959, 44.491730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741013, 40.617939, 44.225693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291896, 0.828044, 0.478686,
		0.610538, 0.546562, -0.573160,
		-0.736233, 0.124953, -0.665092,
		32.520142, 40.655426, 44.026165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964191, 41.263424, 44.176991>,  <33.035507, 40.567959, 44.491730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964191, 41.263424, 44.176991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598953, 41.101334, 44.158905>,  <32.379810, 41.004082, 44.148052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598953, 41.101334, 44.158905>,  <32.964191, 41.263424, 44.176991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598953, 41.101334, 44.158905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377266, 0.797587, 0.470665,
		-0.154663, 0.446822, -0.881152,
		-0.913099, -0.405223, -0.045214,
		32.325024, 40.979767, 44.145340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559776, 41.861248, 44.182217>,  <32.964191, 41.263424, 44.176991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559776, 41.861248, 44.182217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.295338, 41.577644, 44.280411>,  <32.136673, 41.407482, 44.339329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.295338, 41.577644, 44.280411>,  <32.559776, 41.861248, 44.182217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295338, 41.577644, 44.280411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352537, 0.582344, 0.732525,
		-0.662321, 0.397728, -0.634936,
		-0.661097, -0.709005, 0.245485,
		32.097008, 41.364944, 44.354057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067112, 42.286465, 44.486427>,  <32.559776, 41.861248, 44.182217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067112, 42.286465, 44.486427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.980532, 41.913994, 44.603771>,  <31.928583, 41.690514, 44.674179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.980532, 41.913994, 44.603771>,  <32.067112, 42.286465, 44.486427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980532, 41.913994, 44.603771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206240, 0.337317, 0.918522,
		-0.954261, 0.138311, -0.265058,
		-0.216450, -0.931175, 0.293363,
		31.915596, 41.634640, 44.691780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196785, 42.198078, 44.700035>,  <32.067112, 42.286465, 44.486427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196785, 42.198078, 44.700035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432154, 41.931835, 44.883656>,  <31.573376, 41.772091, 44.993828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432154, 41.931835, 44.883656>,  <31.196785, 42.198078, 44.700035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432154, 41.931835, 44.883656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416389, 0.237215, 0.877695,
		-0.693093, -0.707600, -0.137568,
		0.588424, -0.665606, 0.459049,
		31.608681, 41.732155, 45.021370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810658, 42.022629, 45.158249>,  <31.196785, 42.198078, 44.700035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810658, 42.022629, 45.158249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158127, 41.876965, 45.292587>,  <31.366608, 41.789566, 45.373192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158127, 41.876965, 45.292587>,  <30.810658, 42.022629, 45.158249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158127, 41.876965, 45.292587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250705, 0.261558, 0.932059,
		-0.427267, -0.893852, 0.135910,
		0.868671, -0.364164, 0.335849,
		31.418728, 41.767715, 45.393341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649614, 41.681240, 45.793682>,  <30.810658, 42.022629, 45.158249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649614, 41.681240, 45.793682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041864, 41.758572, 45.781048>,  <31.277214, 41.804970, 45.773468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041864, 41.758572, 45.781048>,  <30.649614, 41.681240, 45.793682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041864, 41.758572, 45.781048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030377, 0.309365, 0.950458,
		0.193521, -0.931084, 0.309244,
		0.980626, 0.193327, -0.031585,
		31.336052, 41.816570, 45.771572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057173, 41.162521, 46.307362>,  <30.649614, 41.681240, 45.793682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057173, 41.162521, 46.307362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.327808, 41.453148, 46.259491>,  <31.490191, 41.627525, 46.230770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.327808, 41.453148, 46.259491>,  <31.057173, 41.162521, 46.307362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327808, 41.453148, 46.259491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026998, 0.186889, 0.982010,
		0.735864, -0.661188, 0.146064,
		0.676591, 0.726569, -0.119674,
		31.530787, 41.671120, 46.223587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629210, 41.104034, 46.926926>,  <31.057173, 41.162521, 46.307362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629210, 41.104034, 46.926926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.612827, 41.473129, 46.773624>,  <31.602999, 41.694584, 46.681644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.612827, 41.473129, 46.773624>,  <31.629210, 41.104034, 46.926926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612827, 41.473129, 46.773624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120745, 0.385339, 0.914842,
		0.991838, -0.008809, -0.127197,
		-0.040955, 0.922733, -0.383257,
		31.600540, 41.749950, 46.658646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143303, 41.553444, 47.165054>,  <31.629210, 41.104034, 46.926926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143303, 41.553444, 47.165054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848972, 41.799904, 47.052681>,  <31.672373, 41.947781, 46.985256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848972, 41.799904, 47.052681>,  <32.143303, 41.553444, 47.165054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848972, 41.799904, 47.052681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128307, 0.280486, 0.951244,
		0.664901, 0.735998, -0.127334,
		-0.735829, 0.616145, -0.280929,
		31.628223, 41.984749, 46.968403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143829, 41.907619, 47.759232>,  <32.143303, 41.553444, 47.165054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143829, 41.907619, 47.759232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841740, 42.087376, 47.568367>,  <31.660486, 42.195229, 47.453850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841740, 42.087376, 47.568367>,  <32.143829, 41.907619, 47.759232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841740, 42.087376, 47.568367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167465, 0.571516, 0.803321,
		0.633711, 0.686596, -0.356365,
		-0.755225, 0.449395, -0.477157,
		31.615171, 42.222195, 47.425220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245426, 42.645836, 47.855396>,  <32.143829, 41.907619, 47.759232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245426, 42.645836, 47.855396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.860289, 42.608177, 47.754154>,  <31.629206, 42.585583, 47.693409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.860289, 42.608177, 47.754154>,  <32.245426, 42.645836, 47.855396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860289, 42.608177, 47.754154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269961, 0.311243, 0.911180,
		-0.007008, 0.945655, -0.325096,
		-0.962846, -0.094149, -0.253109,
		31.571434, 42.579933, 47.678223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856119, 43.254562, 48.066212>,  <32.245426, 42.645836, 47.855396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856119, 43.254562, 48.066212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586342, 42.959843, 48.047253>,  <31.424475, 42.783009, 48.035877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586342, 42.959843, 48.047253>,  <31.856119, 43.254562, 48.066212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586342, 42.959843, 48.047253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299438, 0.214282, 0.929742,
		-0.674879, 0.641253, -0.365148,
		-0.674444, -0.736803, -0.047401,
		31.384008, 42.738800, 48.033031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357561, 43.491009, 48.367630>,  <31.856119, 43.254562, 48.066212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357561, 43.491009, 48.367630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260576, 43.103191, 48.381527>,  <31.202385, 42.870502, 48.389866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260576, 43.103191, 48.381527>,  <31.357561, 43.491009, 48.367630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260576, 43.103191, 48.381527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379630, 0.127767, 0.916273,
		-0.892801, 0.208973, -0.399045,
		-0.242461, -0.969539, 0.034739,
		31.187838, 42.812328, 48.391949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661346, 43.483124, 48.671337>,  <31.357561, 43.491009, 48.367630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661346, 43.483124, 48.671337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.802481, 43.111347, 48.714497>,  <30.887161, 42.888279, 48.740391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.802481, 43.111347, 48.714497>,  <30.661346, 43.483124, 48.671337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802481, 43.111347, 48.714497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352078, -0.025039, 0.935636,
		-0.866919, -0.368113, -0.336072,
		0.352834, -0.929444, 0.107897,
		30.908331, 42.832516, 48.746864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110819, 43.022713, 48.965019>,  <30.661346, 43.483124, 48.671337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110819, 43.022713, 48.965019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.443888, 42.814865, 49.041603>,  <30.643728, 42.690159, 49.087555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.443888, 42.814865, 49.041603>,  <30.110819, 43.022713, 48.965019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443888, 42.814865, 49.041603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328920, -0.185938, 0.925872,
		-0.445499, -0.833922, -0.325738,
		0.832672, -0.519616, 0.191458,
		30.693689, 42.658981, 49.099041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814447, 42.874138, 49.743294>,  <30.110819, 43.022713, 48.965019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814447, 42.874138, 49.743294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.063799, 43.152580, 49.885754>,  <30.213409, 43.319645, 49.971230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.063799, 43.152580, 49.885754>,  <29.814447, 42.874138, 49.743294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063799, 43.152580, 49.885754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362904, -0.145886, 0.920336,
		0.692604, -0.702965, 0.161676,
		0.623378, 0.696102, 0.356150,
		30.250813, 43.361412, 49.992599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183622, 42.698814, 50.335590>,  <29.814447, 42.874138, 49.743294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183622, 42.698814, 50.335590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109388, 43.090801, 50.364510>,  <30.064848, 43.325993, 50.381863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109388, 43.090801, 50.364510>,  <30.183622, 42.698814, 50.335590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109388, 43.090801, 50.364510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180650, -0.106350, 0.977781,
		0.965880, 0.168401, 0.196768,
		-0.185585, 0.979965, 0.072300,
		30.053713, 43.384792, 50.386200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451101, 42.309662, 50.269093>,  <30.183622, 42.698814, 50.335590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451101, 42.309662, 50.269093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.086121, 42.148376, 50.241241>,  <28.867132, 42.051605, 50.224529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.086121, 42.148376, 50.241241>,  <29.451101, 42.309662, 50.269093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086121, 42.148376, 50.241241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228813, -0.361712, -0.903775,
		0.339231, -0.840583, 0.422306,
		-0.912451, -0.403218, -0.069632,
		28.812386, 42.027412, 50.220352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457361, 41.458649, 50.203423>,  <29.451101, 42.309662, 50.269093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457361, 41.458649, 50.203423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.120352, 41.606377, 50.046574>,  <28.918146, 41.695015, 49.952465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.120352, 41.606377, 50.046574>,  <29.457361, 41.458649, 50.203423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120352, 41.606377, 50.046574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204418, -0.454287, -0.867085,
		-0.498370, -0.810694, 0.307250,
		-0.842520, 0.369322, -0.392124,
		28.867596, 41.717171, 49.928936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282980, 40.971878, 49.800419>,  <29.457361, 41.458649, 50.203423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282980, 40.971878, 49.800419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.031115, 41.239418, 49.642349>,  <28.879995, 41.399944, 49.547508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.031115, 41.239418, 49.642349>,  <29.282980, 40.971878, 49.800419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031115, 41.239418, 49.642349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083252, -0.447647, -0.890326,
		-0.772396, -0.593503, 0.226183,
		-0.629662, 0.668854, -0.395171,
		28.842216, 41.440075, 49.523800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720360, 40.626694, 49.400093>,  <29.282980, 40.971878, 49.800419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720360, 40.626694, 49.400093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730597, 41.000183, 49.257263>,  <28.736738, 41.224277, 49.171566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730597, 41.000183, 49.257263>,  <28.720360, 40.626694, 49.400093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730597, 41.000183, 49.257263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206005, -0.344598, -0.915868,
		-0.978216, 0.096999, 0.183532,
		0.025593, 0.933726, -0.357073,
		28.738274, 41.280300, 49.150143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101732, 40.774120, 49.002018>,  <28.720360, 40.626694, 49.400093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101732, 40.774120, 49.002018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.402151, 41.012432, 48.888191>,  <28.582401, 41.155418, 48.819897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.402151, 41.012432, 48.888191>,  <28.101732, 40.774120, 49.002018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402151, 41.012432, 48.888191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098858, -0.324661, -0.940650,
		-0.652808, 0.734602, -0.184937,
		0.751045, 0.595782, -0.284563,
		28.627464, 41.191166, 48.802822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949558, 40.799122, 48.274662>,  <28.101732, 40.774120, 49.002018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949558, 40.799122, 48.274662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.274340, 41.031937, 48.292400>,  <28.469210, 41.171623, 48.303043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.274340, 41.031937, 48.292400>,  <27.949558, 40.799122, 48.274662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274340, 41.031937, 48.292400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143954, -0.126035, -0.981525,
		-0.565691, 0.803339, -0.186121,
		0.811955, 0.582033, 0.044347,
		28.517927, 41.206547, 48.305706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949350, 41.153862, 47.666451>,  <27.949558, 40.799122, 48.274662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949350, 41.153862, 47.666451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.322435, 41.172226, 47.809525>,  <28.546288, 41.183243, 47.895367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.322435, 41.172226, 47.809525>,  <27.949350, 41.153862, 47.666451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322435, 41.172226, 47.809525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360303, -0.159958, -0.919018,
		0.015024, 0.986056, -0.165735,
		0.932714, 0.045908, 0.357682,
		28.602249, 41.185997, 47.916828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308773, 41.659313, 47.240749>,  <27.949350, 41.153862, 47.666451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308773, 41.659313, 47.240749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.560083, 41.399704, 47.412350>,  <28.710869, 41.243938, 47.515312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.560083, 41.399704, 47.412350>,  <28.308773, 41.659313, 47.240749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560083, 41.399704, 47.412350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380241, -0.224916, -0.897123,
		0.678741, 0.726764, 0.105475,
		0.628274, -0.649020, 0.429005,
		28.748566, 41.204998, 47.541050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925579, 41.869240, 47.003204>,  <28.308773, 41.659313, 47.240749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925579, 41.869240, 47.003204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.014923, 41.503242, 47.137608>,  <29.068529, 41.283646, 47.218250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.014923, 41.503242, 47.137608>,  <28.925579, 41.869240, 47.003204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014923, 41.503242, 47.137608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441757, -0.212260, -0.871663,
		0.868885, 0.343131, 0.356792,
		0.223361, -0.914990, 0.336010,
		29.081932, 41.228745, 47.238411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616043, 41.747154, 46.849079>,  <28.925579, 41.869240, 47.003204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616043, 41.747154, 46.849079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.452045, 41.382969, 46.870823>,  <29.353647, 41.164455, 46.883869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.452045, 41.382969, 46.870823>,  <29.616043, 41.747154, 46.849079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452045, 41.382969, 46.870823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485429, -0.268274, -0.832098,
		0.772180, -0.314770, 0.551958,
		-0.409996, -0.910466, 0.054357,
		29.329046, 41.109829, 46.887131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132212, 41.428139, 46.418369>,  <29.616043, 41.747154, 46.849079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132212, 41.428139, 46.418369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.815304, 41.185249, 46.442352>,  <29.625160, 41.039516, 46.456741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.815304, 41.185249, 46.442352>,  <30.132212, 41.428139, 46.418369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815304, 41.185249, 46.442352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278812, -0.447668, -0.849622,
		0.542749, -0.656411, 0.523974,
		-0.792268, -0.607221, 0.059956,
		29.577623, 41.003082, 46.460339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383825, 40.722466, 46.321018>,  <30.132212, 41.428139, 46.418369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383825, 40.722466, 46.321018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.988958, 40.725590, 46.257225>,  <29.752037, 40.727463, 46.218948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.988958, 40.725590, 46.257225>,  <30.383825, 40.722466, 46.321018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988958, 40.725590, 46.257225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131318, -0.528552, -0.838683,
		-0.090845, -0.848865, 0.520745,
		-0.987169, 0.007807, -0.159487,
		29.692808, 40.727932, 46.209377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087637, 40.018749, 46.254185>,  <30.383825, 40.722466, 46.321018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087637, 40.018749, 46.254185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855343, 40.277977, 46.057102>,  <29.715967, 40.433514, 45.938854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855343, 40.277977, 46.057102>,  <30.087637, 40.018749, 46.254185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855343, 40.277977, 46.057102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082011, -0.555569, -0.827416,
		-0.809952, -0.520915, 0.269489,
		-0.580733, 0.648067, -0.492705,
		29.681124, 40.472397, 45.909290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645124, 39.656338, 45.859856>,  <30.087637, 40.018749, 46.254185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645124, 39.656338, 45.859856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598299, 40.014694, 45.688427>,  <29.570204, 40.229710, 45.585567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598299, 40.014694, 45.688427>,  <29.645124, 39.656338, 45.859856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598299, 40.014694, 45.688427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075923, -0.438352, -0.895591,
		-0.990218, -0.072304, 0.119334,
		-0.117065, 0.895890, -0.428574,
		29.563179, 40.283463, 45.559856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137014, 39.605160, 45.286911>,  <29.645124, 39.656338, 45.859856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137014, 39.605160, 45.286911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.292011, 39.950432, 45.157440>,  <29.385010, 40.157597, 45.079758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.292011, 39.950432, 45.157440>,  <29.137014, 39.605160, 45.286911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292011, 39.950432, 45.157440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081613, -0.317609, -0.944703,
		-0.918253, 0.392482, -0.052624,
		0.387493, 0.863181, -0.323677,
		29.408258, 40.209385, 45.060337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822130, 39.689816, 44.677559>,  <29.137014, 39.605160, 45.286911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822130, 39.689816, 44.677559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.134544, 39.938343, 44.652431>,  <29.321993, 40.087460, 44.637356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.134544, 39.938343, 44.652431>,  <28.822130, 39.689816, 44.677559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134544, 39.938343, 44.652431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031461, -0.139617, -0.989706,
		-0.623692, 0.771020, -0.128593,
		0.781037, 0.621317, -0.062821,
		29.368855, 40.124737, 44.633587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652367, 40.224884, 44.107521>,  <28.822130, 39.689816, 44.677559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652367, 40.224884, 44.107521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.051859, 40.212387, 44.123329>,  <29.291553, 40.204887, 44.132812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.051859, 40.212387, 44.123329>,  <28.652367, 40.224884, 44.107521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051859, 40.212387, 44.123329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040459, 0.030018, -0.998730,
		0.030018, 0.999061, 0.031244,
		0.998730, -0.031244, 0.039520,
		29.351479, 40.203014, 44.135185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904802, 40.665810, 43.474762>,  <28.652367, 40.224884, 44.107521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904802, 40.665810, 43.474762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228945, 40.459793, 43.586514>,  <29.423431, 40.336182, 43.653564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228945, 40.459793, 43.586514>,  <28.904802, 40.665810, 43.474762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228945, 40.459793, 43.586514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324216, -0.003022, -0.945978,
		0.488061, 0.857161, 0.164535,
		0.810358, -0.515040, 0.279381,
		29.472052, 40.305283, 43.670326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455645, 40.969078, 43.142567>,  <28.904802, 40.665810, 43.474762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455645, 40.969078, 43.142567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527689, 40.580799, 43.206203>,  <29.570915, 40.347832, 43.244385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527689, 40.580799, 43.206203>,  <29.455645, 40.969078, 43.142567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527689, 40.580799, 43.206203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259457, -0.109127, -0.959569,
		0.948811, 0.214107, 0.232199,
		0.180111, -0.970695, 0.159092,
		29.581722, 40.289589, 43.253933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223112, 40.828068, 42.910229>,  <29.455645, 40.969078, 43.142567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223112, 40.828068, 42.910229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.033657, 40.476158, 42.893898>,  <29.919983, 40.265015, 42.884098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.033657, 40.476158, 42.893898>,  <30.223112, 40.828068, 42.910229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033657, 40.476158, 42.893898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381805, -0.163332, -0.909697,
		0.793657, -0.446456, 0.413262,
		-0.473638, -0.879773, -0.040829,
		29.891565, 40.212227, 42.881649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.727974, 34.818630, 26.973606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.471878, 34.580227, 27.167459>,  <41.318222, 34.437183, 27.283772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.471878, 34.580227, 27.167459>,  <41.727974, 34.818630, 26.973606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471878, 34.580227, 27.167459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002433, 0.629310, 0.777150,
		-0.768174, 0.498739, -0.401457,
		-0.640236, -0.596010, 0.484633,
		41.279808, 34.401424, 27.312849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341259, 35.281952, 27.475290>,  <41.727974, 34.818630, 26.973606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341259, 35.281952, 27.475290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.280128, 34.921665, 27.637943>,  <41.243450, 34.705494, 27.735535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.280128, 34.921665, 27.637943>,  <41.341259, 35.281952, 27.475290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280128, 34.921665, 27.637943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188794, 0.430497, 0.882626,
		-0.970052, 0.058118, -0.235841,
		-0.152826, -0.900719, 0.406633,
		41.234280, 34.651451, 27.759933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789127, 35.349728, 27.814987>,  <41.341259, 35.281952, 27.475290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789127, 35.349728, 27.814987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.959671, 35.030899, 27.986055>,  <41.061996, 34.839603, 28.088696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.959671, 35.030899, 27.986055>,  <40.789127, 35.349728, 27.814987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959671, 35.030899, 27.986055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315686, 0.311951, 0.896119,
		-0.847680, -0.517075, -0.118621,
		0.426357, -0.797070, 0.427668,
		41.087578, 34.791779, 28.114355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311172, 34.995834, 28.290308>,  <40.789127, 35.349728, 27.814987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311172, 34.995834, 28.290308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683826, 34.900063, 28.399651>,  <40.907421, 34.842602, 28.465256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683826, 34.900063, 28.399651>,  <40.311172, 34.995834, 28.290308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683826, 34.900063, 28.399651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206438, 0.270358, 0.940367,
		-0.299053, -0.932514, 0.202449,
		0.931639, -0.239426, 0.273357,
		40.963318, 34.828236, 28.481657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268162, 34.738449, 28.944607>,  <40.311172, 34.995834, 28.290308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268162, 34.738449, 28.944607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.666328, 34.776703, 28.944855>,  <40.905228, 34.799656, 28.945004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.666328, 34.776703, 28.944855>,  <40.268162, 34.738449, 28.944607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666328, 34.776703, 28.944855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011529, 0.113566, 0.993464,
		0.094925, -0.988918, 0.114148,
		0.995418, 0.095621, 0.000621,
		40.964954, 34.805393, 28.945040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431156, 34.246201, 29.411943>,  <40.268162, 34.738449, 28.944607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431156, 34.246201, 29.411943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.762142, 34.469997, 29.392891>,  <40.960732, 34.604275, 29.381458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.762142, 34.469997, 29.392891>,  <40.431156, 34.246201, 29.411943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762142, 34.469997, 29.392891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124246, -0.099706, 0.987229,
		0.547602, -0.822814, -0.152018,
		0.827463, 0.559496, -0.047632,
		41.010380, 34.637848, 29.378601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821320, 34.024288, 29.925962>,  <40.431156, 34.246201, 29.411943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821320, 34.024288, 29.925962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999321, 34.376335, 29.859795>,  <41.106121, 34.587563, 29.820093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999321, 34.376335, 29.859795>,  <40.821320, 34.024288, 29.925962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999321, 34.376335, 29.859795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438295, -0.052966, 0.897269,
		0.780939, -0.471794, -0.409321,
		0.445007, 0.880116, -0.165422,
		41.132824, 34.640369, 29.810167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478226, 33.867298, 30.243664>,  <40.821320, 34.024288, 29.925962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478226, 33.867298, 30.243664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.396160, 34.258770, 30.239889>,  <41.346920, 34.493652, 30.237625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.396160, 34.258770, 30.239889>,  <41.478226, 33.867298, 30.243664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396160, 34.258770, 30.239889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297695, 0.071585, 0.951974,
		0.932354, 0.192505, -0.306035,
		-0.205167, 0.978681, -0.009435,
		41.334610, 34.552376, 30.237059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938950, 34.084309, 30.635977>,  <41.478226, 33.867298, 30.243664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938950, 34.084309, 30.635977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668564, 34.378948, 30.627056>,  <41.506332, 34.555733, 30.621704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668564, 34.378948, 30.627056>,  <41.938950, 34.084309, 30.635977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668564, 34.378948, 30.627056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151308, 0.168343, 0.974046,
		0.721237, 0.655042, -0.225247,
		-0.675961, 0.736600, -0.022302,
		41.465775, 34.599930, 30.620365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274014, 34.710831, 30.816484>,  <41.938950, 34.084309, 30.635977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274014, 34.710831, 30.816484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884590, 34.741779, 30.902462>,  <41.650936, 34.760349, 30.954048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884590, 34.741779, 30.902462>,  <42.274014, 34.710831, 30.816484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884590, 34.741779, 30.902462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226984, 0.221401, 0.948398,
		0.025793, 0.972108, -0.233109,
		-0.973557, 0.077375, 0.214943,
		41.592522, 34.764992, 30.966946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184788, 35.310791, 31.192667>,  <42.274014, 34.710831, 30.816484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184788, 35.310791, 31.192667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.848236, 35.111843, 31.277235>,  <41.646305, 34.992474, 31.327976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.848236, 35.111843, 31.277235>,  <42.184788, 35.310791, 31.192667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848236, 35.111843, 31.277235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055457, 0.309676, 0.949224,
		-0.537589, 0.810384, -0.232973,
		-0.841381, -0.497372, 0.211419,
		41.595821, 34.962631, 31.340660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799221, 35.762993, 31.621574>,  <42.184788, 35.310791, 31.192667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799221, 35.762993, 31.621574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650463, 35.398430, 31.692043>,  <41.561207, 35.179691, 31.734324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650463, 35.398430, 31.692043>,  <41.799221, 35.762993, 31.621574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650463, 35.398430, 31.692043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004252, 0.188108, 0.982139,
		-0.928264, 0.366004, -0.066082,
		-0.371897, -0.911404, 0.176170,
		41.538895, 35.125008, 31.744894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280914, 35.899551, 32.149277>,  <41.799221, 35.762993, 31.621574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280914, 35.899551, 32.149277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.343761, 35.504700, 32.137344>,  <41.381470, 35.267788, 32.130184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.343761, 35.504700, 32.137344>,  <41.280914, 35.899551, 32.149277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343761, 35.504700, 32.137344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005282, -0.029369, 0.999555,
		-0.987566, -0.157203, 0.000600,
		0.157116, -0.987129, -0.029835,
		41.390896, 35.208561, 32.128395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940762, 35.577068, 32.794247>,  <41.280914, 35.899551, 32.149277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940762, 35.577068, 32.794247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157314, 35.252003, 32.708004>,  <41.287247, 35.056965, 32.656258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157314, 35.252003, 32.708004>,  <40.940762, 35.577068, 32.794247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157314, 35.252003, 32.708004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241009, -0.095678, 0.965795,
		-0.805495, -0.574826, 0.144060,
		0.541381, -0.812663, -0.215606,
		41.319729, 35.008205, 32.643322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656300, 35.018867, 33.134747>,  <40.940762, 35.577068, 32.794247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656300, 35.018867, 33.134747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.035648, 34.928329, 33.045872>,  <41.263256, 34.874008, 32.992546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.035648, 34.928329, 33.045872>,  <40.656300, 35.018867, 33.134747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035648, 34.928329, 33.045872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220195, -0.034336, 0.974851,
		-0.228278, -0.973442, 0.017276,
		0.948369, -0.226342, -0.222185,
		41.320160, 34.860428, 32.979218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879009, 34.367474, 33.605034>,  <40.656300, 35.018867, 33.134747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879009, 34.367474, 33.605034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.227375, 34.514187, 33.474205>,  <41.436394, 34.602215, 33.395710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.227375, 34.514187, 33.474205>,  <40.879009, 34.367474, 33.605034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227375, 34.514187, 33.474205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353689, -0.005750, 0.935345,
		0.341192, -0.930287, -0.134737,
		0.870914, 0.366787, -0.327070,
		41.488647, 34.624222, 33.376083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366089, 33.944118, 33.920841>,  <40.879009, 34.367474, 33.605034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366089, 33.944118, 33.920841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586330, 34.259197, 33.810310>,  <41.718475, 34.448246, 33.743992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586330, 34.259197, 33.810310>,  <41.366089, 33.944118, 33.920841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586330, 34.259197, 33.810310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470332, -0.019256, 0.882279,
		0.689651, -0.615756, -0.381083,
		0.550607, 0.787701, -0.276330,
		41.751514, 34.495506, 33.727413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984814, 33.736107, 33.985909>,  <41.366089, 33.944118, 33.920841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984814, 33.736107, 33.985909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004894, 34.134708, 34.012634>,  <42.016945, 34.373867, 34.028671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004894, 34.134708, 34.012634>,  <41.984814, 33.736107, 33.985909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004894, 34.134708, 34.012634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646108, -0.083421, 0.758673,
		0.761593, 0.005083, -0.648036,
		0.050204, 0.996501, 0.066817,
		42.019955, 34.433659, 34.032681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644382, 33.875874, 34.051407>,  <41.984814, 33.736107, 33.985909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644382, 33.875874, 34.051407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.502632, 34.223072, 34.190552>,  <42.417583, 34.431389, 34.274040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.502632, 34.223072, 34.190552>,  <42.644382, 33.875874, 34.051407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502632, 34.223072, 34.190552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691070, -0.007509, 0.722749,
		0.629952, 0.496522, -0.597182,
		-0.354376, 0.867992, 0.347862,
		42.396320, 34.483471, 34.294910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200382, 34.238491, 34.256702>,  <42.644382, 33.875874, 34.051407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200382, 34.238491, 34.256702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898746, 34.404995, 34.459908>,  <42.717766, 34.504898, 34.581829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898746, 34.404995, 34.459908>,  <43.200382, 34.238491, 34.256702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898746, 34.404995, 34.459908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614572, 0.174443, 0.769331,
		0.231623, 0.892355, -0.387367,
		-0.754090, 0.416260, 0.508012,
		42.672520, 34.529873, 34.612312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526932, 34.818783, 34.597713>,  <43.200382, 34.238491, 34.256702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526932, 34.818783, 34.597713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.186882, 34.725410, 34.786518>,  <42.982853, 34.669388, 34.899803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.186882, 34.725410, 34.786518>,  <43.526932, 34.818783, 34.597713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186882, 34.725410, 34.786518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397861, 0.302466, 0.866153,
		-0.344952, 0.924135, -0.164263,
		-0.850126, -0.233428, 0.472013,
		42.931843, 34.655380, 34.928123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239265, 35.202103, 34.621403>,  <43.526932, 34.818783, 34.597713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239265, 35.202103, 34.621403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631081, 35.145535, 34.678677>,  <44.866169, 35.111595, 34.713039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631081, 35.145535, 34.678677>,  <44.239265, 35.202103, 34.621403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631081, 35.145535, 34.678677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193441, 0.465409, -0.863699,
		0.055505, 0.873725, 0.483243,
		0.979541, -0.141419, 0.143181,
		44.924942, 35.103107, 34.721630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454037, 35.820610, 34.746181>,  <44.239265, 35.202103, 34.621403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454037, 35.820610, 34.746181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.738155, 35.579762, 34.600342>,  <44.908627, 35.435253, 34.512836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.738155, 35.579762, 34.600342>,  <44.454037, 35.820610, 34.746181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738155, 35.579762, 34.600342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102791, 0.601142, -0.792504,
		0.696360, 0.525432, 0.488880,
		0.710293, -0.602121, -0.364601,
		44.951244, 35.399124, 34.490963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920357, 36.312393, 34.576717>,  <44.454037, 35.820610, 34.746181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920357, 36.312393, 34.576717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031719, 35.990196, 34.367462>,  <45.098537, 35.796879, 34.241909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031719, 35.990196, 34.367462>,  <44.920357, 36.312393, 34.576717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031719, 35.990196, 34.367462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089336, 0.564024, -0.820911,
		0.956299, 0.181813, 0.228988,
		0.278407, -0.805494, -0.523134,
		45.115242, 35.748547, 34.210522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553116, 36.452953, 34.151962>,  <44.920357, 36.312393, 34.576717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553116, 36.452953, 34.151962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.402863, 36.126751, 33.975853>,  <45.312710, 35.931030, 33.870186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.402863, 36.126751, 33.975853>,  <45.553116, 36.452953, 34.151962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402863, 36.126751, 33.975853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095184, 0.438605, -0.893625,
		0.921868, -0.377581, -0.087131,
		-0.375632, -0.815511, -0.440276,
		45.290173, 35.882099, 33.843769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869877, 36.463715, 33.514282>,  <45.553116, 36.452953, 34.151962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869877, 36.463715, 33.514282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545704, 36.231152, 33.485565>,  <45.351200, 36.091614, 33.468334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545704, 36.231152, 33.485565>,  <45.869877, 36.463715, 33.514282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545704, 36.231152, 33.485565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222003, 0.418217, -0.880800,
		0.542133, -0.697893, -0.468013,
		-0.810436, -0.581412, -0.071795,
		45.302574, 36.056728, 33.464027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888630, 36.354950, 32.930000>,  <45.869877, 36.463715, 33.514282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888630, 36.354950, 32.930000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.515896, 36.241398, 33.020412>,  <45.292255, 36.173267, 33.074661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.515896, 36.241398, 33.020412>,  <45.888630, 36.354950, 32.930000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515896, 36.241398, 33.020412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313460, 0.315885, -0.895522,
		0.182822, -0.905333, -0.383339,
		-0.931836, -0.283883, 0.226034,
		45.236343, 36.156231, 33.088223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511402, 36.075256, 32.324764>,  <45.888630, 36.354950, 32.930000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511402, 36.075256, 32.324764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.199200, 36.175133, 32.554008>,  <45.011879, 36.235058, 32.691555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.199200, 36.175133, 32.554008>,  <45.511402, 36.075256, 32.324764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.199200, 36.175133, 32.554008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457314, 0.397006, -0.795770,
		-0.426228, -0.883198, -0.195679,
		-0.780509, 0.249692, 0.573114,
		44.965046, 36.250042, 32.725945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970371, 35.810444, 31.907700>,  <45.511402, 36.075256, 32.324764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970371, 35.810444, 31.907700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837074, 36.091255, 32.159447>,  <44.757095, 36.259743, 32.310493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837074, 36.091255, 32.159447>,  <44.970371, 35.810444, 31.907700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837074, 36.091255, 32.159447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467528, 0.456632, -0.756904,
		-0.818760, -0.546478, 0.176051,
		-0.333241, 0.702031, 0.629366,
		44.737103, 36.301865, 32.348255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233479, 35.798691, 31.931236>,  <44.970371, 35.810444, 31.907700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233479, 35.798691, 31.931236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320683, 36.177708, 32.024738>,  <44.373005, 36.405117, 32.080841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320683, 36.177708, 32.024738>,  <44.233479, 35.798691, 31.931236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320683, 36.177708, 32.024738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605525, 0.319171, -0.729019,
		-0.765381, 0.017391, 0.643342,
		0.218015, 0.947538, 0.233757,
		44.386086, 36.461967, 32.094864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775135, 36.109879, 31.535727>,  <44.233479, 35.798691, 31.931236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775135, 36.109879, 31.535727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.974903, 36.428036, 31.673088>,  <44.094765, 36.618931, 31.755505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.974903, 36.428036, 31.673088>,  <43.775135, 36.109879, 31.535727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974903, 36.428036, 31.673088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472928, 0.582404, -0.661169,
		-0.725890, 0.167798, 0.667030,
		0.499424, 0.795393, 0.343405,
		44.124729, 36.666653, 31.776110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273067, 36.599392, 31.622698>,  <43.775135, 36.109879, 31.535727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273067, 36.599392, 31.622698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.629471, 36.777042, 31.585047>,  <43.843311, 36.883633, 31.562456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.629471, 36.777042, 31.585047>,  <43.273067, 36.599392, 31.622698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629471, 36.777042, 31.585047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406771, 0.688903, -0.599959,
		-0.201613, 0.572855, 0.794474,
		0.891005, 0.444128, -0.094129,
		43.896770, 36.910282, 31.556808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138531, 37.323948, 31.697937>,  <43.273067, 36.599392, 31.622698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138531, 37.323948, 31.697937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492458, 37.295547, 31.513739>,  <43.704815, 37.278507, 31.403219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492458, 37.295547, 31.513739>,  <43.138531, 37.323948, 31.697937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492458, 37.295547, 31.513739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319632, 0.626618, -0.710764,
		0.339020, 0.776085, 0.531748,
		0.884817, -0.070999, -0.460498,
		43.757904, 37.274246, 31.375589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344994, 38.099182, 31.483315>,  <43.138531, 37.323948, 31.697937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344994, 38.099182, 31.483315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.552021, 37.832870, 31.268332>,  <43.676235, 37.673084, 31.139341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.552021, 37.832870, 31.268332>,  <43.344994, 38.099182, 31.483315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552021, 37.832870, 31.268332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301133, 0.446216, -0.842740,
		0.800903, 0.598018, 0.030457,
		0.517564, -0.665782, -0.537459,
		43.707291, 37.633137, 31.107094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489990, 38.532394, 31.014904>,  <43.344994, 38.099182, 31.483315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489990, 38.532394, 31.014904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.546471, 38.174046, 30.846390>,  <43.580357, 37.959038, 30.745281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.546471, 38.174046, 30.846390>,  <43.489990, 38.532394, 31.014904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546471, 38.174046, 30.846390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448515, 0.321480, -0.833957,
		0.882551, 0.306707, -0.356418,
		0.141199, -0.895869, -0.421285,
		43.588829, 37.905285, 30.720005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483055, 38.644348, 30.366840>,  <43.489990, 38.532394, 31.014904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483055, 38.644348, 30.366840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399536, 38.253166, 30.368397>,  <43.349426, 38.018459, 30.369331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399536, 38.253166, 30.368397>,  <43.483055, 38.644348, 30.366840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399536, 38.253166, 30.368397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419902, 0.086057, -0.903480,
		0.883225, -0.190278, -0.428612,
		-0.208798, -0.977951, 0.003891,
		43.336895, 37.959782, 30.369564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694881, 38.420361, 29.796602>,  <43.483055, 38.644348, 30.366840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694881, 38.420361, 29.796602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.427380, 38.130020, 29.860979>,  <43.266876, 37.955814, 29.899605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.427380, 38.130020, 29.860979>,  <43.694881, 38.420361, 29.796602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427380, 38.130020, 29.860979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371807, 0.139052, -0.917837,
		0.643834, -0.673650, -0.362868,
		-0.668758, -0.725852, 0.160941,
		43.226753, 37.912266, 29.909262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591866, 38.036518, 29.196861>,  <43.694881, 38.420361, 29.796602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591866, 38.036518, 29.196861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.258812, 37.958786, 29.404303>,  <43.058979, 37.912148, 29.528767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.258812, 37.958786, 29.404303>,  <43.591866, 38.036518, 29.196861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258812, 37.958786, 29.404303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541062, 0.085618, -0.836613,
		0.118190, -0.977190, -0.176441,
		-0.832636, -0.194345, 0.518601,
		43.009022, 37.900486, 29.559883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152206, 37.641308, 28.794569>,  <43.591866, 38.036518, 29.196861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152206, 37.641308, 28.794569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899548, 37.793911, 29.064526>,  <42.747952, 37.885475, 29.226500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899548, 37.793911, 29.064526>,  <43.152206, 37.641308, 28.794569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899548, 37.793911, 29.064526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676792, 0.153241, -0.720048,
		-0.378127, -0.911574, 0.161410,
		-0.631642, 0.381511, 0.674890,
		42.710056, 37.908363, 29.266993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571625, 37.301426, 28.594463>,  <43.152206, 37.641308, 28.794569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571625, 37.301426, 28.594463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448967, 37.624950, 28.795181>,  <42.375370, 37.819065, 28.915613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448967, 37.624950, 28.795181>,  <42.571625, 37.301426, 28.594463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448967, 37.624950, 28.795181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698166, 0.167196, -0.696139,
		-0.646940, -0.563806, 0.513411,
		-0.306647, 0.808807, 0.501796,
		42.356972, 37.867592, 28.945721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777023, 37.272621, 28.709673>,  <42.571625, 37.301426, 28.594463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777023, 37.272621, 28.709673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.882416, 37.657372, 28.738976>,  <41.945652, 37.888222, 28.756557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.882416, 37.657372, 28.738976>,  <41.777023, 37.272621, 28.709673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882416, 37.657372, 28.738976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637320, 0.230574, -0.735295,
		-0.724157, 0.147045, 0.673777,
		0.263477, 0.961880, 0.073257,
		41.961460, 37.945934, 28.760952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177502, 37.646126, 28.956572>,  <41.777023, 37.272621, 28.709673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177502, 37.646126, 28.956572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.413345, 37.906273, 28.764999>,  <41.554852, 38.062363, 28.650057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.413345, 37.906273, 28.764999>,  <41.177502, 37.646126, 28.956572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413345, 37.906273, 28.764999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724229, 0.163210, -0.669967,
		-0.357561, 0.741876, 0.567248,
		0.589613, 0.650371, -0.478931,
		41.590229, 38.101383, 28.621321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.651752, 39.072060, 39.456963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446590, 38.743530, 39.556843>,  <34.323494, 38.546413, 39.616772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446590, 38.743530, 39.556843>,  <34.651752, 39.072060, 39.456963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446590, 38.743530, 39.556843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424101, -0.495343, -0.758139,
		0.746366, -0.282957, 0.602390,
		-0.512910, -0.821323, 0.249705,
		34.292717, 38.497135, 39.631756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122860, 38.521782, 39.587936>,  <34.651752, 39.072060, 39.456963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122860, 38.521782, 39.587936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782688, 38.322659, 39.519863>,  <34.578587, 38.203182, 39.479019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782688, 38.322659, 39.519863>,  <35.122860, 38.521782, 39.587936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782688, 38.322659, 39.519863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443302, -0.503868, -0.741350,
		0.283303, -0.705905, 0.649182,
		-0.850425, -0.497810, -0.170182,
		34.527561, 38.173317, 39.468807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318111, 37.791733, 39.547493>,  <35.122860, 38.521782, 39.587936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318111, 37.791733, 39.547493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952873, 37.800629, 39.384636>,  <34.733730, 37.805965, 39.286922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952873, 37.800629, 39.384636>,  <35.318111, 37.791733, 39.547493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952873, 37.800629, 39.384636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308946, -0.613904, -0.726412,
		-0.266101, -0.789068, 0.553681,
		-0.913095, 0.022241, -0.407140,
		34.678944, 37.807301, 39.262493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281372, 37.250175, 39.258793>,  <35.318111, 37.791733, 39.547493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281372, 37.250175, 39.258793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964558, 37.433296, 39.097256>,  <34.774467, 37.543171, 39.000336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964558, 37.433296, 39.097256>,  <35.281372, 37.250175, 39.258793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964558, 37.433296, 39.097256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186505, -0.448433, -0.874142,
		-0.581283, -0.767673, 0.269794,
		-0.792040, 0.457806, -0.403841,
		34.726944, 37.570637, 38.976105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890064, 36.769150, 38.921337>,  <35.281372, 37.250175, 39.258793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890064, 36.769150, 38.921337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784241, 37.097385, 38.718700>,  <34.720745, 37.294327, 38.597118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784241, 37.097385, 38.718700>,  <34.890064, 36.769150, 38.921337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784241, 37.097385, 38.718700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228887, -0.456870, -0.859582,
		-0.936813, -0.343365, -0.066953,
		-0.264562, 0.820592, -0.506593,
		34.704872, 37.343563, 38.566723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347351, 36.547733, 38.328186>,  <34.890064, 36.769150, 38.921337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347351, 36.547733, 38.328186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521500, 36.895344, 38.234165>,  <34.625988, 37.103909, 38.177753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521500, 36.895344, 38.234165>,  <34.347351, 36.547733, 38.328186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521500, 36.895344, 38.234165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238739, -0.363196, -0.900607,
		-0.868018, 0.335983, -0.365595,
		0.435371, 0.869025, -0.235048,
		34.652111, 37.156052, 38.163651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397888, 36.488075, 37.638378>,  <34.347351, 36.547733, 38.328186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397888, 36.488075, 37.638378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655685, 36.785976, 37.707626>,  <34.810364, 36.964718, 37.749176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655685, 36.785976, 37.707626>,  <34.397888, 36.488075, 37.638378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655685, 36.785976, 37.707626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468935, -0.206164, -0.858834,
		-0.603925, 0.634699, -0.482111,
		0.644495, 0.744751, 0.173125,
		34.849033, 37.009403, 37.759563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339401, 36.806362, 37.044655>,  <34.397888, 36.488075, 37.638378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339401, 36.806362, 37.044655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694214, 36.921440, 37.189102>,  <34.907101, 36.990486, 37.275768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694214, 36.921440, 37.189102>,  <34.339401, 36.806362, 37.044655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694214, 36.921440, 37.189102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432466, -0.243794, -0.868066,
		-0.161700, 0.926173, -0.340672,
		0.887033, 0.287695, 0.361116,
		34.960323, 37.007748, 37.297436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680290, 37.270817, 36.560184>,  <34.339401, 36.806362, 37.044655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680290, 37.270817, 36.560184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961315, 37.092773, 36.782280>,  <35.129929, 36.985947, 36.915539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961315, 37.092773, 36.782280>,  <34.680290, 37.270817, 36.560184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961315, 37.092773, 36.782280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502420, -0.242315, -0.829974,
		0.503969, 0.862070, 0.053389,
		0.702559, -0.445106, 0.555241,
		35.172081, 36.959240, 36.948853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308762, 37.504253, 36.290783>,  <34.680290, 37.270817, 36.560184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308762, 37.504253, 36.290783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399689, 37.173817, 36.497044>,  <35.454247, 36.975555, 36.620800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399689, 37.173817, 36.497044>,  <35.308762, 37.504253, 36.290783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399689, 37.173817, 36.497044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645777, -0.268462, -0.714773,
		0.728901, 0.495479, 0.472444,
		0.227321, -0.826092, 0.515651,
		35.467884, 36.925987, 36.651737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066727, 37.484825, 36.276730>,  <35.308762, 37.504253, 36.290783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066727, 37.484825, 36.276730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913078, 37.124287, 36.356762>,  <35.820889, 36.907963, 36.404781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913078, 37.124287, 36.356762>,  <36.066727, 37.484825, 36.276730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913078, 37.124287, 36.356762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411013, -0.360986, -0.837112,
		0.826752, -0.239316, 0.509126,
		-0.384122, -0.901342, 0.200084,
		35.797840, 36.853886, 36.416786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614494, 36.957138, 36.136124>,  <36.066727, 37.484825, 36.276730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614494, 36.957138, 36.136124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296455, 36.715111, 36.152657>,  <36.105633, 36.569893, 36.162575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296455, 36.715111, 36.152657>,  <36.614494, 36.957138, 36.136124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296455, 36.715111, 36.152657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369946, -0.537879, -0.757513,
		0.480580, -0.587007, 0.651510,
		-0.795099, -0.605069, 0.041333,
		36.057926, 36.533588, 36.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855415, 36.288647, 36.042110>,  <36.614494, 36.957138, 36.136124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855415, 36.288647, 36.042110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466549, 36.256840, 35.953949>,  <36.233231, 36.237755, 35.901051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466549, 36.256840, 35.953949>,  <36.855415, 36.288647, 36.042110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466549, 36.256840, 35.953949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216982, -0.660551, -0.718743,
		-0.088437, -0.746558, 0.659416,
		-0.972161, -0.079518, -0.220406,
		36.174900, 36.232983, 35.887829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846794, 35.639038, 35.837124>,  <36.855415, 36.288647, 36.042110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846794, 35.639038, 35.837124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494404, 35.768562, 35.699120>,  <36.282970, 35.846275, 35.616318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494404, 35.768562, 35.699120>,  <36.846794, 35.639038, 35.837124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494404, 35.768562, 35.699120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023546, -0.758251, -0.651537,
		-0.472574, -0.565866, 0.675626,
		-0.880977, 0.323807, -0.345006,
		36.230110, 35.865704, 35.595619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250935, 34.940361, 35.702682>,  <36.846794, 35.639038, 35.837124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250935, 34.940361, 35.702682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538994, 34.749046, 35.903728>,  <37.711830, 34.634258, 36.024357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538994, 34.749046, 35.903728>,  <37.250935, 34.940361, 35.702682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538994, 34.749046, 35.903728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670703, -0.294474, 0.680766,
		-0.177595, -0.827361, -0.532855,
		0.720151, -0.478288, 0.502617,
		37.755039, 34.605560, 36.054512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107792, 34.282192, 35.858418>,  <37.250935, 34.940361, 35.702682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107792, 34.282192, 35.858418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378002, 34.361206, 36.142570>,  <37.540131, 34.408615, 36.313061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378002, 34.361206, 36.142570>,  <37.107792, 34.282192, 35.858418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378002, 34.361206, 36.142570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618003, -0.373797, 0.691627,
		0.402160, -0.906231, -0.130432,
		0.675529, 0.197538, 0.710380,
		37.580662, 34.420467, 36.355686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075680, 33.715145, 36.387825>,  <37.107792, 34.282192, 35.858418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075680, 33.715145, 36.387825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261707, 34.001442, 36.596218>,  <37.373322, 34.173222, 36.721252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261707, 34.001442, 36.596218>,  <37.075680, 33.715145, 36.387825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261707, 34.001442, 36.596218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411809, -0.346039, 0.843013,
		0.783662, -0.606602, 0.133819,
		0.465067, 0.715745, 0.520982,
		37.401226, 34.216164, 36.752514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212711, 33.397942, 36.989941>,  <37.075680, 33.715145, 36.387825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212711, 33.397942, 36.989941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271011, 33.775303, 37.109104>,  <37.305992, 34.001720, 37.180603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271011, 33.775303, 37.109104>,  <37.212711, 33.397942, 36.989941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271011, 33.775303, 37.109104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446458, -0.205995, 0.870771,
		0.882854, -0.259921, 0.391164,
		0.145754, 0.943402, 0.297907,
		37.314739, 34.058323, 37.198475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427086, 33.365826, 37.708164>,  <37.212711, 33.397942, 36.989941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427086, 33.365826, 37.708164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300373, 33.739235, 37.641018>,  <37.224346, 33.963280, 37.600731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300373, 33.739235, 37.641018>,  <37.427086, 33.365826, 37.708164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300373, 33.739235, 37.641018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484728, -0.007207, 0.874635,
		0.815284, 0.358439, 0.454789,
		-0.316781, 0.933525, -0.167870,
		37.205338, 34.019291, 37.590656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634010, 33.653168, 38.310329>,  <37.427086, 33.365826, 37.708164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634010, 33.653168, 38.310329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374470, 33.917873, 38.160091>,  <37.218746, 34.076694, 38.069950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374470, 33.917873, 38.160091>,  <37.634010, 33.653168, 38.310329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374470, 33.917873, 38.160091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503131, -0.002820, 0.864205,
		0.570838, 0.749710, 0.334782,
		-0.648848, 0.661760, -0.375593,
		37.179817, 34.116402, 38.047413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559826, 34.251030, 38.788406>,  <37.634010, 33.653168, 38.310329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559826, 34.251030, 38.788406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236500, 34.232151, 38.553661>,  <37.042503, 34.220821, 38.412815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236500, 34.232151, 38.553661>,  <37.559826, 34.251030, 38.788406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236500, 34.232151, 38.553661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564252, 0.346663, 0.749296,
		0.168076, 0.936801, -0.306844,
		-0.808313, -0.047199, -0.586858,
		36.994007, 34.217991, 38.377605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203255, 34.853455, 38.965321>,  <37.559826, 34.251030, 38.788406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203255, 34.853455, 38.965321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918755, 34.628723, 38.796341>,  <36.748055, 34.493885, 38.694954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918755, 34.628723, 38.796341>,  <37.203255, 34.853455, 38.965321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918755, 34.628723, 38.796341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661738, 0.332443, 0.672000,
		-0.237109, 0.757515, -0.608235,
		-0.711254, -0.561830, -0.422451,
		36.705379, 34.460175, 38.669605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725826, 35.274170, 38.832150>,  <37.203255, 34.853455, 38.965321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725826, 35.274170, 38.832150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556515, 34.913052, 38.862606>,  <36.454929, 34.696381, 38.880882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556515, 34.913052, 38.862606>,  <36.725826, 35.274170, 38.832150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556515, 34.913052, 38.862606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662195, 0.365636, 0.654071,
		-0.618333, 0.226431, -0.752591,
		-0.423276, -0.902795, 0.076143,
		36.429531, 34.642212, 38.885448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042931, 35.416649, 38.968433>,  <36.725826, 35.274170, 38.832150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042931, 35.416649, 38.968433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043129, 35.029346, 39.068420>,  <36.043247, 34.796967, 39.128410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043129, 35.029346, 39.068420>,  <36.042931, 35.416649, 38.968433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043129, 35.029346, 39.068420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688024, 0.181067, 0.702736,
		-0.725688, -0.172328, -0.666093,
		0.000494, -0.968255, 0.249964,
		36.043278, 34.738869, 39.143410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402458, 35.328072, 39.026344>,  <36.042931, 35.416649, 38.968433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402458, 35.328072, 39.026344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605114, 35.051292, 39.232071>,  <35.726707, 34.885223, 39.355507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605114, 35.051292, 39.232071>,  <35.402458, 35.328072, 39.026344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605114, 35.051292, 39.232071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595693, 0.150315, 0.789022,
		-0.623273, -0.706124, -0.336035,
		0.506636, -0.691950, 0.514321,
		35.757103, 34.843708, 39.386368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897854, 35.002316, 39.340599>,  <35.402458, 35.328072, 39.026344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897854, 35.002316, 39.340599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232418, 34.933140, 39.548641>,  <35.433159, 34.891636, 39.673466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232418, 34.933140, 39.548641>,  <34.897854, 35.002316, 39.340599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232418, 34.933140, 39.548641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518168, 0.059793, 0.853186,
		-0.178650, -0.983115, -0.039602,
		0.836413, -0.172942, 0.520101,
		35.483341, 34.881256, 39.704670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694279, 34.595257, 39.905102>,  <34.897854, 35.002316, 39.340599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694279, 34.595257, 39.905102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048141, 34.732422, 40.031456>,  <35.260460, 34.814720, 40.107269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048141, 34.732422, 40.031456>,  <34.694279, 34.595257, 39.905102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048141, 34.732422, 40.031456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369775, 0.103386, 0.923351,
		0.283972, -0.933660, 0.218263,
		0.884662, 0.342914, 0.315886,
		35.313541, 34.835297, 40.126221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931408, 34.214897, 40.563972>,  <34.694279, 34.595257, 39.905102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931408, 34.214897, 40.563972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115421, 34.570057, 40.562714>,  <35.225830, 34.783154, 40.561958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115421, 34.570057, 40.562714>,  <34.931408, 34.214897, 40.563972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115421, 34.570057, 40.562714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447400, 0.234858, 0.862945,
		0.766946, -0.395574, 0.505288,
		0.460030, 0.887898, -0.003143,
		35.253429, 34.836426, 40.561771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960644, 33.781322, 41.295204>,  <34.931408, 34.214897, 40.563972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960644, 33.781322, 41.295204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667377, 33.666798, 41.541943>,  <34.491417, 33.598083, 41.689983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667377, 33.666798, 41.541943>,  <34.960644, 33.781322, 41.295204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667377, 33.666798, 41.541943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266810, -0.713222, -0.648172,
		0.625526, -0.639797, 0.446518,
		-0.733164, -0.286313, 0.616842,
		34.447430, 33.580902, 41.726994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987591, 32.982410, 41.399490>,  <34.960644, 33.781322, 41.295204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987591, 32.982410, 41.399490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610306, 33.077015, 41.492798>,  <34.383934, 33.133778, 41.548782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610306, 33.077015, 41.492798>,  <34.987591, 32.982410, 41.399490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610306, 33.077015, 41.492798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331307, -0.618432, -0.712585,
		-0.024270, -0.749403, 0.661669,
		-0.943211, 0.236509, 0.233273,
		34.327343, 33.147968, 41.562778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632530, 32.405128, 41.406281>,  <34.987591, 32.982410, 41.399490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632530, 32.405128, 41.406281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344601, 32.679211, 41.361851>,  <34.171841, 32.843662, 41.335194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344601, 32.679211, 41.361851>,  <34.632530, 32.405128, 41.406281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344601, 32.679211, 41.361851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282685, -0.435507, -0.854648,
		-0.633985, -0.583800, 0.507188,
		-0.719828, 0.685208, -0.111074,
		34.128651, 32.884773, 41.328529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089531, 32.021915, 41.178120>,  <34.632530, 32.405128, 41.406281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089531, 32.021915, 41.178120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987644, 32.393978, 41.072346>,  <33.926514, 32.617214, 41.008881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987644, 32.393978, 41.072346>,  <34.089531, 32.021915, 41.178120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987644, 32.393978, 41.072346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274271, -0.331718, -0.902629,
		-0.927306, -0.157382, 0.339608,
		-0.254712, 0.930158, -0.264439,
		33.911232, 32.673027, 40.993015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448166, 31.910875, 40.825100>,  <34.089531, 32.021915, 41.178120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448166, 31.910875, 40.825100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613743, 32.253613, 40.702156>,  <33.713089, 32.459255, 40.628391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613743, 32.253613, 40.702156>,  <33.448166, 31.910875, 40.825100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613743, 32.253613, 40.702156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254406, -0.215300, -0.942828,
		-0.874030, 0.468472, 0.128864,
		0.413944, 0.856843, -0.307360,
		33.737926, 32.510666, 40.609947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876389, 32.420197, 40.647316>,  <33.448166, 31.910875, 40.825100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876389, 32.420197, 40.647316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212357, 32.496147, 40.443951>,  <33.413937, 32.541718, 40.321934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212357, 32.496147, 40.443951>,  <32.876389, 32.420197, 40.647316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212357, 32.496147, 40.443951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500527, -0.091091, -0.860915,
		-0.209781, 0.977573, 0.018530,
		0.839919, 0.189878, -0.508411,
		33.464333, 32.553112, 40.291428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660244, 32.887398, 40.151459>,  <32.876389, 32.420197, 40.647316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660244, 32.887398, 40.151459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990986, 32.718822, 40.002491>,  <33.189430, 32.617676, 39.913109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990986, 32.718822, 40.002491>,  <32.660244, 32.887398, 40.151459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990986, 32.718822, 40.002491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398330, 0.028646, -0.916795,
		0.397040, 0.906405, -0.144185,
		0.826857, -0.421438, -0.372422,
		33.239044, 32.592392, 39.890766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781883, 33.327957, 39.560383>,  <32.660244, 32.887398, 40.151459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781883, 33.327957, 39.560383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008224, 33.003033, 39.503876>,  <33.144028, 32.808079, 39.469971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008224, 33.003033, 39.503876>,  <32.781883, 33.327957, 39.560383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008224, 33.003033, 39.503876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084559, 0.113260, -0.989961,
		0.820158, 0.572119, -0.004599,
		0.565855, -0.812313, -0.141269,
		33.177982, 32.759338, 39.461494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076263, 33.565876, 38.987652>,  <32.781883, 33.327957, 39.560383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076263, 33.565876, 38.987652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128246, 33.171692, 39.031422>,  <33.159435, 32.935181, 39.057682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128246, 33.171692, 39.031422>,  <33.076263, 33.565876, 38.987652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128246, 33.171692, 39.031422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153821, -0.129060, -0.979634,
		0.979515, 0.110482, -0.168357,
		0.129960, -0.985463, 0.109422,
		33.167233, 32.876053, 39.064247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566853, 33.447582, 38.408649>,  <33.076263, 33.565876, 38.987652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566853, 33.447582, 38.408649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422592, 33.085503, 38.498581>,  <33.336037, 32.868256, 38.552540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422592, 33.085503, 38.498581>,  <33.566853, 33.447582, 38.408649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422592, 33.085503, 38.498581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219409, -0.151951, -0.963727,
		0.906527, -0.396897, -0.143808,
		-0.360649, -0.905198, 0.224831,
		33.314396, 32.813942, 38.566029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824291, 33.088509, 37.879189>,  <33.566853, 33.447582, 38.408649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824291, 33.088509, 37.879189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525478, 32.882130, 38.046871>,  <33.346191, 32.758301, 38.147480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525478, 32.882130, 38.046871>,  <33.824291, 33.088509, 37.879189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525478, 32.882130, 38.046871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215623, -0.408450, -0.886947,
		0.628843, -0.752973, 0.193877,
		-0.747036, -0.515947, 0.419209,
		33.301369, 32.727345, 38.172634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949352, 32.311436, 37.796524>,  <33.824291, 33.088509, 37.879189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949352, 32.311436, 37.796524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557468, 32.385605, 37.826973>,  <33.322338, 32.430107, 37.845242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557468, 32.385605, 37.826973>,  <33.949352, 32.311436, 37.796524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557468, 32.385605, 37.826973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184568, -0.686419, -0.703394,
		-0.078175, -0.703169, 0.706712,
		-0.979706, 0.185424, 0.076122,
		33.263557, 32.441231, 37.849808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.202965, 34.781292, 45.491722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.812893, 34.820873, 45.412498>,  <34.578850, 34.844624, 45.364964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.812893, 34.820873, 45.412498>,  <35.202965, 34.781292, 45.491722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812893, 34.820873, 45.412498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140057, -0.417112, -0.897999,
		-0.171474, -0.903452, 0.392901,
		-0.975183, 0.098955, -0.198059,
		34.520340, 34.850559, 45.353081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938408, 34.128071, 45.193478>,  <35.202965, 34.781292, 45.491722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938408, 34.128071, 45.193478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669159, 34.385235, 45.047291>,  <34.507610, 34.539532, 44.959579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669159, 34.385235, 45.047291>,  <34.938408, 34.128071, 45.193478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669159, 34.385235, 45.047291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043879, -0.528044, -0.848082,
		-0.738225, -0.554829, 0.383651,
		-0.673125, 0.642910, -0.365470,
		34.467220, 34.578110, 44.937649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498077, 33.715191, 44.879818>,  <34.938408, 34.128071, 45.193478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498077, 33.715191, 44.879818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.407227, 34.075916, 44.732765>,  <34.352715, 34.292351, 44.644535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.407227, 34.075916, 44.732765>,  <34.498077, 33.715191, 44.879818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407227, 34.075916, 44.732765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210565, -0.414042, -0.885568,
		-0.950828, -0.123728, 0.283931,
		-0.227129, 0.901810, -0.367630,
		34.339088, 34.346458, 44.622475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878197, 33.672043, 44.484505>,  <34.498077, 33.715191, 44.879818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878197, 33.672043, 44.484505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.049171, 33.998352, 44.328655>,  <34.151756, 34.194138, 44.235146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.049171, 33.998352, 44.328655>,  <33.878197, 33.672043, 44.484505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049171, 33.998352, 44.328655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078534, -0.395845, -0.914953,
		-0.900629, 0.421681, -0.105131,
		0.427434, 0.815777, -0.389626,
		34.177402, 34.243084, 44.211769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536488, 33.827557, 43.920471>,  <33.878197, 33.672043, 44.484505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536488, 33.827557, 43.920471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.862881, 34.038208, 43.825115>,  <34.058716, 34.164597, 43.767902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.862881, 34.038208, 43.825115>,  <33.536488, 33.827557, 43.920471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862881, 34.038208, 43.825115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213628, -0.108488, -0.970873,
		-0.537150, 0.843146, 0.023978,
		0.815986, 0.526626, -0.238394,
		34.107677, 34.196198, 43.753597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436798, 34.415924, 43.396568>,  <33.536488, 33.827557, 43.920471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436798, 34.415924, 43.396568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829651, 34.346214, 43.368179>,  <34.065365, 34.304390, 43.351147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829651, 34.346214, 43.368179>,  <33.436798, 34.415924, 43.396568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829651, 34.346214, 43.368179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106879, -0.206220, -0.972651,
		0.154870, 0.962861, -0.221162,
		0.982137, -0.174272, -0.070972,
		34.124290, 34.293934, 43.346889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528610, 34.634705, 42.767319>,  <33.436798, 34.415924, 43.396568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528610, 34.634705, 42.767319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.866444, 34.433250, 42.840019>,  <34.069141, 34.312378, 42.883640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.866444, 34.433250, 42.840019>,  <33.528610, 34.634705, 42.767319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866444, 34.433250, 42.840019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001596, -0.337091, -0.941471,
		0.535424, 0.795439, -0.283897,
		0.844582, -0.503633, 0.181756,
		34.119820, 34.282162, 42.894547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909336, 34.757351, 42.142330>,  <33.528610, 34.634705, 42.767319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909336, 34.757351, 42.142330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.061222, 34.441170, 42.334579>,  <34.152355, 34.251461, 42.449928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.061222, 34.441170, 42.334579>,  <33.909336, 34.757351, 42.142330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061222, 34.441170, 42.334579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119236, -0.473383, -0.872749,
		0.917386, 0.388706, -0.085501,
		0.379717, -0.790454, 0.480623,
		34.175137, 34.204033, 42.478767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636456, 34.538349, 41.874405>,  <33.909336, 34.757351, 42.142330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636456, 34.538349, 41.874405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.453201, 34.215538, 42.023441>,  <34.343250, 34.021851, 42.112862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.453201, 34.215538, 42.023441>,  <34.636456, 34.538349, 41.874405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453201, 34.215538, 42.023441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004876, -0.421438, -0.906844,
		0.888870, -0.413639, 0.197010,
		-0.458134, -0.807027, 0.372587,
		34.315762, 33.973431, 42.135216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311443, 34.698807, 41.630096>,  <34.636456, 34.538349, 41.874405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311443, 34.698807, 41.630096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.341171, 35.012238, 41.383366>,  <35.359009, 35.200298, 41.235325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.341171, 35.012238, 41.383366>,  <35.311443, 34.698807, 41.630096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341171, 35.012238, 41.383366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179484, 0.618950, 0.764648,
		0.980950, 0.053882, 0.186640,
		0.074320, 0.783580, -0.616830,
		35.363468, 35.247311, 41.198318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643864, 35.154636, 42.044426>,  <35.311443, 34.698807, 41.630096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643864, 35.154636, 42.044426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.510601, 35.377224, 41.739967>,  <35.430641, 35.510777, 41.557293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.510601, 35.377224, 41.739967>,  <35.643864, 35.154636, 42.044426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510601, 35.377224, 41.739967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214467, 0.741383, 0.635889,
		0.918154, 0.375095, -0.127656,
		-0.333161, 0.556466, -0.761150,
		35.410652, 35.544163, 41.511623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991211, 35.812180, 42.029263>,  <35.643864, 35.154636, 42.044426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991211, 35.812180, 42.029263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.625729, 35.839638, 41.869049>,  <35.406437, 35.856113, 41.772923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.625729, 35.839638, 41.869049>,  <35.991211, 35.812180, 42.029263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625729, 35.839638, 41.869049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240572, 0.702974, 0.669292,
		0.327508, 0.707895, -0.625799,
		-0.913709, 0.068649, -0.400529,
		35.351616, 35.860233, 41.748890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914871, 36.567940, 41.885426>,  <35.991211, 35.812180, 42.029263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914871, 36.567940, 41.885426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559448, 36.384548, 41.891842>,  <35.346195, 36.274513, 41.895691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559448, 36.384548, 41.891842>,  <35.914871, 36.567940, 41.885426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559448, 36.384548, 41.891842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373368, 0.743050, 0.555403,
		-0.266562, 0.487519, -0.831426,
		-0.888561, -0.458477, 0.016045,
		35.292881, 36.247005, 41.896656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267647, 36.975388, 41.715477>,  <35.914871, 36.567940, 41.885426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267647, 36.975388, 41.715477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.141300, 36.687290, 41.962536>,  <35.065491, 36.514431, 42.110771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.141300, 36.687290, 41.962536>,  <35.267647, 36.975388, 41.715477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141300, 36.687290, 41.962536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355563, 0.693388, 0.626728,
		-0.879661, -0.021648, -0.475109,
		-0.315867, -0.720240, 0.617643,
		35.046539, 36.471218, 42.147827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792084, 37.279953, 42.071995>,  <35.267647, 36.975388, 41.715477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792084, 37.279953, 42.071995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848598, 36.946129, 42.284996>,  <34.882507, 36.745834, 42.412796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848598, 36.946129, 42.284996>,  <34.792084, 37.279953, 42.071995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848598, 36.946129, 42.284996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326782, 0.468429, 0.820846,
		-0.934480, -0.289982, -0.206537,
		0.141283, -0.834556, 0.532499,
		34.890984, 36.695763, 42.444744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174118, 37.126625, 42.399639>,  <34.792084, 37.279953, 42.071995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174118, 37.126625, 42.399639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.473763, 36.949265, 42.596508>,  <34.653549, 36.842850, 42.714630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.473763, 36.949265, 42.596508>,  <34.174118, 37.126625, 42.399639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473763, 36.949265, 42.596508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281416, 0.459580, 0.842373,
		-0.599701, -0.769533, 0.219495,
		0.749109, -0.443402, 0.492169,
		34.698494, 36.816242, 42.744160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928204, 36.997368, 43.043808>,  <34.174118, 37.126625, 42.399639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928204, 36.997368, 43.043808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324116, 36.986790, 43.099861>,  <34.561665, 36.980442, 43.133495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324116, 36.986790, 43.099861>,  <33.928204, 36.997368, 43.043808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324116, 36.986790, 43.099861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118615, 0.392853, 0.911919,
		-0.079170, -0.919221, 0.385701,
		0.989779, -0.026446, 0.140135,
		34.621048, 36.978855, 43.141903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080143, 36.664665, 43.639023>,  <33.928204, 36.997368, 43.043808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080143, 36.664665, 43.639023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.390175, 36.913315, 43.593708>,  <34.576195, 37.062504, 43.566521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.390175, 36.913315, 43.593708>,  <34.080143, 36.664665, 43.639023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390175, 36.913315, 43.593708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252096, 0.468627, 0.846662,
		0.579398, -0.627669, 0.519932,
		0.775078, 0.621626, -0.113289,
		34.622700, 37.099804, 43.559723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371185, 36.682625, 44.303387>,  <34.080143, 36.664665, 43.639023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371185, 36.682625, 44.303387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584660, 36.984207, 44.150166>,  <34.712742, 37.165157, 44.058231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584660, 36.984207, 44.150166>,  <34.371185, 36.682625, 44.303387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584660, 36.984207, 44.150166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111494, 0.511727, 0.851883,
		0.838303, -0.411927, 0.357162,
		0.533683, 0.753958, -0.383054,
		34.744766, 37.210396, 44.035248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835224, 36.922966, 44.810341>,  <34.371185, 36.682625, 44.303387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835224, 36.922966, 44.810341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786572, 37.235855, 44.565933>,  <34.757378, 37.423588, 44.419289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786572, 37.235855, 44.565933>,  <34.835224, 36.922966, 44.810341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786572, 37.235855, 44.565933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104114, 0.602135, 0.791577,
		0.987099, 0.159899, 0.008199,
		-0.121635, 0.782218, -0.611015,
		34.750080, 37.470520, 44.382629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306229, 37.431797, 45.134705>,  <34.835224, 36.922966, 44.810341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306229, 37.431797, 45.134705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070320, 37.653568, 44.899834>,  <34.928776, 37.786629, 44.758911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070320, 37.653568, 44.899834>,  <35.306229, 37.431797, 45.134705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070320, 37.653568, 44.899834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037478, 0.745102, 0.665896,
		0.806699, 0.370721, -0.460220,
		-0.589772, 0.554426, -0.587180,
		34.893387, 37.819897, 44.723679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510078, 38.155144, 45.185326>,  <35.306229, 37.431797, 45.134705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510078, 38.155144, 45.185326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140232, 38.194328, 45.038090>,  <34.918324, 38.217838, 44.949749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140232, 38.194328, 45.038090>,  <35.510078, 38.155144, 45.185326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140232, 38.194328, 45.038090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143972, 0.804803, 0.575816,
		0.352648, 0.585403, -0.730029,
		-0.924614, 0.097957, -0.368093,
		34.862846, 38.223717, 44.927662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409855, 38.826912, 45.060513>,  <35.510078, 38.155144, 45.185326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409855, 38.826912, 45.060513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035027, 38.693466, 45.101704>,  <34.810131, 38.613400, 45.126419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035027, 38.693466, 45.101704>,  <35.409855, 38.826912, 45.060513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035027, 38.693466, 45.101704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241431, 0.832211, 0.499135,
		-0.252221, 0.442861, -0.860383,
		-0.937068, -0.333615, 0.102981,
		34.753906, 38.593380, 45.132599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.288597, 38.089294, 44.219166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.656376, 38.009495, 44.354702>,  <27.877043, 37.961613, 44.436024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.656376, 38.009495, 44.354702>,  <27.288597, 38.089294, 44.219166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656376, 38.009495, 44.354702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309901, -0.162751, -0.936736,
		0.242028, 0.966287, -0.087815,
		0.919448, -0.199503, 0.338843,
		27.932211, 37.949642, 44.456356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761194, 38.564533, 43.838242>,  <27.288597, 38.089294, 44.219166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761194, 38.564533, 43.838242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.974159, 38.250286, 43.964321>,  <28.101938, 38.061737, 44.039967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.974159, 38.250286, 43.964321>,  <27.761194, 38.564533, 43.838242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974159, 38.250286, 43.964321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375518, -0.114511, -0.919714,
		0.758634, 0.608028, 0.234045,
		0.532411, -0.785614, 0.315197,
		28.133883, 38.014603, 44.058880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404575, 38.682278, 43.594765>,  <27.761194, 38.564533, 43.838242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404575, 38.682278, 43.594765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.391512, 38.289234, 43.667885>,  <28.383675, 38.053410, 43.711758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.391512, 38.289234, 43.667885>,  <28.404575, 38.682278, 43.594765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391512, 38.289234, 43.667885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177118, -0.185696, -0.966513,
		0.983648, 0.000815, 0.180101,
		-0.032656, -0.982607, 0.182803,
		28.381716, 37.994453, 43.722725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039810, 38.418606, 43.564701>,  <28.404575, 38.682278, 43.594765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039810, 38.418606, 43.564701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.803902, 38.103397, 43.494061>,  <28.662357, 37.914272, 43.451675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.803902, 38.103397, 43.494061>,  <29.039810, 38.418606, 43.564701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803902, 38.103397, 43.494061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403408, -0.098034, -0.909754,
		0.699595, -0.607788, 0.375713,
		-0.589770, -0.788025, -0.176603,
		28.626970, 37.866989, 43.441078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433599, 37.898495, 43.305672>,  <29.039810, 38.418606, 43.564701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433599, 37.898495, 43.305672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.086782, 37.715549, 43.226624>,  <28.878693, 37.605782, 43.179195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.086782, 37.715549, 43.226624>,  <29.433599, 37.898495, 43.305672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086782, 37.715549, 43.226624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371319, -0.328719, -0.868370,
		0.332200, -0.826295, 0.454841,
		-0.867044, -0.457363, -0.197619,
		28.826670, 37.578339, 43.167339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565132, 37.235676, 43.110249>,  <29.433599, 37.898495, 43.305672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565132, 37.235676, 43.110249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.194948, 37.290730, 42.969063>,  <28.972837, 37.323761, 42.884350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.194948, 37.290730, 42.969063>,  <29.565132, 37.235676, 43.110249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194948, 37.290730, 42.969063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309574, -0.262322, -0.913975,
		-0.218381, -0.955115, 0.200162,
		-0.925459, 0.137630, -0.352965,
		28.917311, 37.332020, 42.863174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293936, 36.600395, 42.879662>,  <29.565132, 37.235676, 43.110249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293936, 36.600395, 42.879662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.070257, 36.872486, 42.690098>,  <28.936050, 37.035740, 42.576359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.070257, 36.872486, 42.690098>,  <29.293936, 36.600395, 42.879662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070257, 36.872486, 42.690098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147323, -0.481007, -0.864250,
		-0.815841, -0.553102, 0.168764,
		-0.559196, 0.680228, -0.473909,
		28.902498, 37.076553, 42.547924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890739, 36.206730, 42.448753>,  <29.293936, 36.600395, 42.879662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890739, 36.206730, 42.448753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.872435, 36.579784, 42.305595>,  <28.861452, 36.803619, 42.219700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.872435, 36.579784, 42.305595>,  <28.890739, 36.206730, 42.448753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872435, 36.579784, 42.305595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119238, -0.350608, -0.928901,
		-0.991810, -0.085184, -0.095161,
		-0.045764, 0.932640, -0.357894,
		28.858706, 36.859577, 42.198227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495932, 36.114822, 41.901726>,  <28.890739, 36.206730, 42.448753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495932, 36.114822, 41.901726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.692472, 36.457676, 41.839905>,  <28.810396, 36.663387, 41.802811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.692472, 36.457676, 41.839905>,  <28.495932, 36.114822, 41.901726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692472, 36.457676, 41.839905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188192, -0.277746, -0.942041,
		-0.850387, 0.433787, -0.297778,
		0.491352, 0.857138, -0.154557,
		28.839878, 36.714817, 41.793537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315905, 36.292568, 41.209057>,  <28.495932, 36.114822, 41.901726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315905, 36.292568, 41.209057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.633411, 36.529232, 41.265446>,  <28.823915, 36.671230, 41.299278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.633411, 36.529232, 41.265446>,  <28.315905, 36.292568, 41.209057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633411, 36.529232, 41.265446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326471, -0.218912, -0.919508,
		-0.513174, 0.775898, -0.366925,
		0.793769, 0.591658, 0.140969,
		28.871542, 36.706730, 41.307735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313559, 36.763348, 40.688648>,  <28.315905, 36.292568, 41.209057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313559, 36.763348, 40.688648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.693214, 36.749802, 40.813858>,  <28.921009, 36.741673, 40.888985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.693214, 36.749802, 40.813858>,  <28.313559, 36.763348, 40.688648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693214, 36.749802, 40.813858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311064, -0.052874, -0.948917,
		0.048689, 0.998027, -0.039650,
		0.949141, -0.033868, 0.313025,
		28.977957, 36.739639, 40.907764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661484, 37.311176, 40.377453>,  <28.313559, 36.763348, 40.688648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661484, 37.311176, 40.377453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.953407, 37.059963, 40.485493>,  <29.128561, 36.909237, 40.550316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.953407, 37.059963, 40.485493>,  <28.661484, 37.311176, 40.377453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953407, 37.059963, 40.485493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470599, 0.174928, -0.864833,
		0.495896, 0.758271, 0.423216,
		0.729811, -0.628032, 0.270096,
		29.172350, 36.871555, 40.566521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245384, 37.548824, 40.038048>,  <28.661484, 37.311176, 40.377453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245384, 37.548824, 40.038048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.377163, 37.182274, 40.129013>,  <29.456230, 36.962345, 40.183594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.377163, 37.182274, 40.129013>,  <29.245384, 37.548824, 40.038048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377163, 37.182274, 40.129013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491265, -0.039324, -0.870122,
		0.806303, 0.398380, 0.437229,
		0.329446, -0.916377, 0.227417,
		29.475996, 36.907360, 40.197239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906662, 37.509968, 39.702454>,  <29.245384, 37.548824, 40.038048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906662, 37.509968, 39.702454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.785645, 37.134277, 39.767361>,  <29.713034, 36.908863, 39.806305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.785645, 37.134277, 39.767361>,  <29.906662, 37.509968, 39.702454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785645, 37.134277, 39.767361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354714, -0.268968, -0.895452,
		0.884673, -0.213352, 0.414529,
		-0.302541, -0.939222, 0.162270,
		29.694881, 36.852512, 39.816040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660877, 37.563728, 39.966259>,  <29.906662, 37.509968, 39.702454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660877, 37.563728, 39.966259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.923597, 37.819515, 39.806416>,  <31.081230, 37.972988, 39.710510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.923597, 37.819515, 39.806416>,  <30.660877, 37.563728, 39.966259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923597, 37.819515, 39.806416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397237, 0.743866, 0.537463,
		0.640947, -0.194268, 0.742595,
		0.656803, 0.639472, -0.399608,
		31.120638, 38.011356, 39.686535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107208, 37.756763, 40.494823>,  <30.660877, 37.563728, 39.966259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107208, 37.756763, 40.494823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.080667, 38.040245, 40.213875>,  <31.064743, 38.210335, 40.045303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.080667, 38.040245, 40.213875>,  <31.107208, 37.756763, 40.494823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080667, 38.040245, 40.213875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441829, 0.610284, 0.657526,
		0.894642, 0.353958, 0.272635,
		-0.066352, 0.708708, -0.702375,
		31.060762, 38.252857, 40.003162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169537, 38.269485, 40.910332>,  <31.107208, 37.756763, 40.494823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169537, 38.269485, 40.910332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078005, 38.440975, 40.560741>,  <31.023087, 38.543869, 40.350986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078005, 38.440975, 40.560741>,  <31.169537, 38.269485, 40.910332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078005, 38.440975, 40.560741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440776, 0.754861, 0.485698,
		0.867959, 0.496370, 0.016236,
		-0.228830, 0.428722, -0.873976,
		31.009356, 38.569592, 40.298550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491997, 38.983059, 40.899776>,  <31.169537, 38.269485, 40.910332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491997, 38.983059, 40.899776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.171995, 38.985237, 40.659790>,  <30.979994, 38.986546, 40.515797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.171995, 38.985237, 40.659790>,  <31.491997, 38.983059, 40.899776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171995, 38.985237, 40.659790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437702, 0.678643, 0.589797,
		0.410380, 0.734448, -0.540532,
		-0.800003, 0.005449, -0.599971,
		30.931993, 38.986874, 40.479797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328850, 39.645844, 40.891106>,  <31.491997, 38.983059, 40.899776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328850, 39.645844, 40.891106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.994663, 39.438992, 40.816730>,  <30.794151, 39.314880, 40.772106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.994663, 39.438992, 40.816730>,  <31.328850, 39.645844, 40.891106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994663, 39.438992, 40.816730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469916, 0.496858, 0.729596,
		-0.284908, 0.696930, -0.658116,
		-0.835467, -0.517127, -0.185940,
		30.744022, 39.283852, 40.760948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816557, 40.155285, 40.842010>,  <31.328850, 39.645844, 40.891106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816557, 40.155285, 40.842010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.625051, 39.815754, 40.931702>,  <30.510149, 39.612034, 40.985516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.625051, 39.815754, 40.931702>,  <30.816557, 40.155285, 40.842010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625051, 39.815754, 40.931702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402979, 0.439368, 0.802847,
		-0.779997, 0.294016, -0.552413,
		-0.478762, -0.848829, 0.224223,
		30.481422, 39.561104, 40.998970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069901, 40.355976, 41.020554>,  <30.816557, 40.155285, 40.842010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069901, 40.355976, 41.020554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.114136, 39.995850, 41.188938>,  <30.140676, 39.779774, 41.289970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.114136, 39.995850, 41.188938>,  <30.069901, 40.355976, 41.020554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114136, 39.995850, 41.188938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544058, 0.299621, 0.783727,
		-0.831728, -0.315697, -0.456688,
		0.110587, -0.900312, 0.420961,
		30.147312, 39.725758, 41.315228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386148, 40.124722, 41.267319>,  <30.069901, 40.355976, 41.020554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386148, 40.124722, 41.267319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.660833, 39.923512, 41.477234>,  <29.825644, 39.802788, 41.603184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.660833, 39.923512, 41.477234>,  <29.386148, 40.124722, 41.267319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660833, 39.923512, 41.477234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474614, 0.236558, 0.847810,
		-0.550609, -0.831270, -0.076294,
		0.686711, -0.503022, 0.524783,
		29.866846, 39.772606, 41.634670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987848, 39.777962, 41.817745>,  <29.386148, 40.124722, 41.267319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987848, 39.777962, 41.817745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.364365, 39.769238, 41.952499>,  <29.590275, 39.764004, 42.033352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.364365, 39.769238, 41.952499>,  <28.987848, 39.777962, 41.817745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364365, 39.769238, 41.952499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323986, 0.222093, 0.919624,
		-0.094883, -0.974781, 0.201986,
		0.941292, -0.021816, 0.336889,
		29.646751, 39.762691, 42.053566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931459, 39.451496, 42.403740>,  <28.987848, 39.777962, 41.817745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931459, 39.451496, 42.403740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.274406, 39.651165, 42.453934>,  <29.480175, 39.770966, 42.484051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.274406, 39.651165, 42.453934>,  <28.931459, 39.451496, 42.403740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274406, 39.651165, 42.453934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263625, 0.216485, 0.940019,
		0.442070, -0.839021, 0.317202,
		0.857366, 0.499177, 0.125486,
		29.531616, 39.800919, 42.491581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319813, 39.092613, 43.035187>,  <28.931459, 39.451496, 42.403740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319813, 39.092613, 43.035187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.519609, 39.436600, 42.993309>,  <29.639488, 39.642994, 42.968182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.519609, 39.436600, 42.993309>,  <29.319813, 39.092613, 43.035187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519609, 39.436600, 42.993309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170585, 0.216112, 0.961351,
		0.849358, -0.462329, 0.254644,
		0.499492, 0.859970, -0.104690,
		29.669456, 39.694592, 42.961903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935055, 39.090916, 43.501316>,  <29.319813, 39.092613, 43.035187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935055, 39.090916, 43.501316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.818922, 39.467056, 43.430386>,  <29.749243, 39.692741, 43.387829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.818922, 39.467056, 43.430386>,  <29.935055, 39.090916, 43.501316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818922, 39.467056, 43.430386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138575, 0.142039, 0.980113,
		0.946839, 0.309133, 0.089071,
		-0.290333, 0.940352, -0.177326,
		29.731823, 39.749161, 43.377190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267815, 39.419994, 44.091530>,  <29.935055, 39.090916, 43.501316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267815, 39.419994, 44.091530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.050026, 39.724770, 43.951244>,  <29.919353, 39.907635, 43.867073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.050026, 39.724770, 43.951244>,  <30.267815, 39.419994, 44.091530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050026, 39.724770, 43.951244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051942, 0.386697, 0.920743,
		0.837171, 0.519533, -0.170968,
		-0.544469, 0.761939, -0.350717,
		29.886684, 39.953350, 43.846027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657906, 40.000546, 44.309284>,  <30.267815, 39.419994, 44.091530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657906, 40.000546, 44.309284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.268570, 40.080490, 44.264267>,  <30.034967, 40.128456, 44.237259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.268570, 40.080490, 44.264267>,  <30.657906, 40.000546, 44.309284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268570, 40.080490, 44.264267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020466, 0.413019, 0.910492,
		0.228451, 0.888522, -0.397918,
		-0.973340, 0.199859, -0.112539,
		29.976568, 40.140450, 44.230507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125153, 40.538944, 43.893021>,  <30.657906, 40.000546, 44.309284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125153, 40.538944, 43.893021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485895, 40.683899, 43.987114>,  <31.702341, 40.770874, 44.043568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485895, 40.683899, 43.987114>,  <31.125153, 40.538944, 43.893021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485895, 40.683899, 43.987114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401089, -0.499901, -0.767611,
		-0.160582, 0.786621, -0.596188,
		0.901854, 0.362389, 0.235230,
		31.756451, 40.792614, 44.057682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418884, 40.787651, 43.284939>,  <31.125153, 40.538944, 43.893021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418884, 40.787651, 43.284939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.750854, 40.727287, 43.499767>,  <31.950037, 40.691071, 43.628666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.750854, 40.727287, 43.499767>,  <31.418884, 40.787651, 43.284939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750854, 40.727287, 43.499767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361509, -0.587754, -0.723779,
		0.424890, 0.794841, -0.433239,
		0.829928, -0.150907, 0.537073,
		31.999832, 40.682014, 43.660889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985250, 40.895058, 42.893482>,  <31.418884, 40.787651, 43.284939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985250, 40.895058, 42.893482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.166470, 40.673321, 43.172752>,  <32.275200, 40.540279, 43.340313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.166470, 40.673321, 43.172752>,  <31.985250, 40.895058, 42.893482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166470, 40.673321, 43.172752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492491, -0.497177, -0.714331,
		0.743103, 0.667470, 0.047766,
		0.453046, -0.554346, 0.698176,
		32.302383, 40.507015, 43.382206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722832, 40.858795, 42.804813>,  <31.985250, 40.895058, 42.893482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722832, 40.858795, 42.804813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.688053, 40.532425, 43.033443>,  <32.667187, 40.336601, 43.170624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.688053, 40.532425, 43.033443>,  <32.722832, 40.858795, 42.804813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688053, 40.532425, 43.033443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673694, -0.470819, -0.569618,
		0.733878, 0.335543, 0.590622,
		-0.086945, -0.815929, 0.571577,
		32.661968, 40.287647, 43.204918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339733, 40.587952, 42.660366>,  <32.722832, 40.858795, 42.804813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339733, 40.587952, 42.660366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150032, 40.285091, 42.840057>,  <33.036213, 40.103374, 42.947872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150032, 40.285091, 42.840057>,  <33.339733, 40.587952, 42.660366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150032, 40.285091, 42.840057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521163, -0.652697, -0.549888,
		0.709559, -0.026663, 0.704141,
		-0.474252, -0.757150, 0.449232,
		33.007755, 40.057945, 42.974827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846851, 40.107712, 42.932957>,  <33.339733, 40.587952, 42.660366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846851, 40.107712, 42.932957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502823, 39.907589, 42.893002>,  <33.296406, 39.787518, 42.869030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502823, 39.907589, 42.893002>,  <33.846851, 40.107712, 42.932957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502823, 39.907589, 42.893002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431228, -0.608276, -0.666365,
		0.272626, -0.616194, 0.738905,
		-0.860068, -0.500305, -0.099888,
		33.244801, 39.757496, 42.863033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078274, 39.413460, 42.846558>,  <33.846851, 40.107712, 42.932957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078274, 39.413460, 42.846558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.696033, 39.399223, 42.729549>,  <33.466690, 39.390682, 42.659344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.696033, 39.399223, 42.729549>,  <34.078274, 39.413460, 42.846558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696033, 39.399223, 42.729549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232343, -0.701584, -0.673645,
		-0.181248, -0.711698, 0.678702,
		-0.955597, -0.035595, -0.292518,
		33.409355, 39.388546, 42.641792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842484, 38.667679, 42.823006>,  <34.078274, 39.413460, 42.846558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842484, 38.667679, 42.823006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605183, 38.858490, 42.563625>,  <33.462803, 38.972977, 42.407997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605183, 38.858490, 42.563625>,  <33.842484, 38.667679, 42.823006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605183, 38.858490, 42.563625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405707, -0.518569, -0.752654,
		-0.695308, -0.709596, 0.114108,
		-0.593253, 0.477032, -0.648453,
		33.427208, 39.001598, 42.369091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666035, 38.216797, 42.259857>,  <33.842484, 38.667679, 42.823006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666035, 38.216797, 42.259857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548199, 38.557991, 42.087517>,  <33.477497, 38.762707, 41.984112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548199, 38.557991, 42.087517>,  <33.666035, 38.216797, 42.259857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548199, 38.557991, 42.087517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254218, -0.364659, -0.895766,
		-0.921188, -0.373416, -0.109418,
		-0.294594, 0.852985, -0.430849,
		33.459820, 38.813889, 41.958263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126835, 37.959404, 41.791466>,  <33.666035, 38.216797, 42.259857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126835, 37.959404, 41.791466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.290962, 38.298725, 41.657585>,  <33.389439, 38.502316, 41.577255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.290962, 38.298725, 41.657585>,  <33.126835, 37.959404, 41.791466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290962, 38.298725, 41.657585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195184, -0.440212, -0.876423,
		-0.890809, 0.294284, -0.346202,
		0.410319, 0.848299, -0.334705,
		33.414059, 38.553215, 41.557175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833332, 38.092480, 41.084370>,  <33.126835, 37.959404, 41.791466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833332, 38.092480, 41.084370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163319, 38.317997, 41.100204>,  <33.361309, 38.453308, 41.109703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163319, 38.317997, 41.100204>,  <32.833332, 38.092480, 41.084370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163319, 38.317997, 41.100204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150927, -0.152265, -0.976748,
		-0.544655, 0.811760, -0.210705,
		0.824968, 0.563792, 0.039585,
		33.410809, 38.487133, 41.112080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835762, 38.461800, 40.428242>,  <32.833332, 38.092480, 41.084370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835762, 38.461800, 40.428242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212440, 38.496330, 40.558323>,  <33.438446, 38.517048, 40.636372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212440, 38.496330, 40.558323>,  <32.835762, 38.461800, 40.428242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212440, 38.496330, 40.558323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330823, -0.061341, -0.941697,
		-0.061341, 0.994377, -0.086322,
		0.941697, 0.086322, 0.325200,
		33.494949, 38.522228, 40.655884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074936, 38.947418, 40.026447>,  <32.835762, 38.461800, 40.428242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074936, 38.947418, 40.026447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412395, 38.778198, 40.158680>,  <33.614872, 38.676666, 40.238022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412395, 38.778198, 40.158680>,  <33.074936, 38.947418, 40.026447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412395, 38.778198, 40.158680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298340, -0.142531, -0.943758,
		0.446376, 0.894825, 0.005967,
		0.843648, -0.423052, 0.330584,
		33.665489, 38.651283, 40.257854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629673, 39.336231, 39.712982>,  <33.074936, 38.947418, 40.026447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629673, 39.336231, 39.712982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.741623, 38.962639, 39.801834>,  <33.808792, 38.738483, 39.855145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.741623, 38.962639, 39.801834>,  <33.629673, 39.336231, 39.712982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741623, 38.962639, 39.801834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477333, -0.065374, -0.876287,
		0.832960, 0.351284, 0.427525,
		0.279876, -0.933984, 0.222134,
		33.825584, 38.682446, 39.868473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.425238, 42.921932, 34.705971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.661945, 42.722977, 34.452229>,  <28.803970, 42.603603, 34.299984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.661945, 42.722977, 34.452229>,  <28.425238, 42.921932, 34.705971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661945, 42.722977, 34.452229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750828, -0.626495, -0.209190,
		-0.293373, 0.600086, -0.744197,
		0.591768, -0.497393, -0.634359,
		28.839476, 42.573757, 34.261921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879328, 42.894955, 34.141884>,  <28.425238, 42.921932, 34.705971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879328, 42.894955, 34.141884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882658, 42.819466, 33.749084>,  <27.884655, 42.774174, 33.513405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882658, 42.819466, 33.749084>,  <27.879328, 42.894955, 34.141884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882658, 42.819466, 33.749084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595528, -0.789818, 0.146742,
		-0.803291, 0.583584, -0.118964,
		0.008324, -0.188723, -0.981995,
		27.885155, 42.762848, 33.454487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203053, 42.774857, 33.805454>,  <27.879328, 42.894955, 34.141884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203053, 42.774857, 33.805454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495403, 42.581764, 33.612461>,  <27.670813, 42.465908, 33.496666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495403, 42.581764, 33.612461>,  <27.203053, 42.774857, 33.805454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495403, 42.581764, 33.612461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545886, -0.837784, 0.011299,
		-0.409670, 0.255121, -0.875833,
		0.730876, -0.482734, -0.482482,
		27.714666, 42.436943, 33.467716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809710, 42.359127, 33.310410>,  <27.203053, 42.774857, 33.805454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809710, 42.359127, 33.310410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.176682, 42.210091, 33.366268>,  <27.396864, 42.120670, 33.399784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.176682, 42.210091, 33.366268>,  <26.809710, 42.359127, 33.310410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176682, 42.210091, 33.366268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394801, -0.896094, 0.202850,
		0.049560, -0.241234, -0.969200,
		0.917429, -0.372588, 0.139650,
		27.451910, 42.098312, 33.408161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962076, 42.000362, 32.736149>,  <26.809710, 42.359127, 33.310410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962076, 42.000362, 32.736149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156828, 41.870461, 33.060490>,  <27.273680, 41.792519, 33.255093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156828, 41.870461, 33.060490>,  <26.962076, 42.000362, 32.736149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156828, 41.870461, 33.060490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380684, -0.914404, -0.137643,
		0.786148, -0.241663, -0.568833,
		0.486880, -0.324754, 0.810853,
		27.302893, 41.773033, 33.303745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155611, 41.290974, 32.539906>,  <26.962076, 42.000362, 32.736149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155611, 41.290974, 32.539906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.178291, 41.304989, 32.939014>,  <27.191900, 41.313396, 33.178482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.178291, 41.304989, 32.939014>,  <27.155611, 41.290974, 32.539906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178291, 41.304989, 32.939014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404011, -0.913098, 0.055021,
		0.912995, -0.406232, -0.037620,
		0.056702, 0.035035, 0.997776,
		27.195301, 41.315498, 33.238346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275621, 40.559254, 32.794453>,  <27.155611, 41.290974, 32.539906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275621, 40.559254, 32.794453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160854, 40.743351, 33.130512>,  <27.091993, 40.853809, 33.332150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160854, 40.743351, 33.130512>,  <27.275621, 40.559254, 32.794453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160854, 40.743351, 33.130512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343701, -0.868090, 0.358175,
		0.894174, -0.185992, 0.407259,
		-0.286920, 0.460246, 0.840149,
		27.074778, 40.881424, 33.382557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540958, 40.037388, 33.380661>,  <27.275621, 40.559254, 32.794453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540958, 40.037388, 33.380661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273914, 40.282864, 33.549274>,  <27.113688, 40.430149, 33.650440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273914, 40.282864, 33.549274>,  <27.540958, 40.037388, 33.380661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273914, 40.282864, 33.549274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324124, -0.749284, 0.577510,
		0.670255, 0.248922, 0.699139,
		-0.667608, 0.613687, 0.421529,
		27.073631, 40.466969, 33.675732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676811, 39.953846, 34.116814>,  <27.540958, 40.037388, 33.380661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676811, 39.953846, 34.116814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.316559, 40.121826, 34.072079>,  <27.100407, 40.222614, 34.045238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.316559, 40.121826, 34.072079>,  <27.676811, 39.953846, 34.116814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316559, 40.121826, 34.072079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335359, -0.507914, 0.793447,
		0.276400, 0.752109, 0.598276,
		-0.900632, 0.419946, -0.111839,
		27.046370, 40.247810, 34.038528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456900, 40.196011, 34.793232>,  <27.676811, 39.953846, 34.116814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456900, 40.196011, 34.793232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131041, 40.158138, 34.564362>,  <26.935526, 40.135414, 34.427040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131041, 40.158138, 34.564362>,  <27.456900, 40.196011, 34.793232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131041, 40.158138, 34.564362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411151, -0.601533, 0.684918,
		-0.409031, 0.793218, 0.451109,
		-0.814646, -0.094678, -0.572178,
		26.886646, 40.129734, 34.392708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833113, 40.287312, 35.201767>,  <27.456900, 40.196011, 34.793232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833113, 40.287312, 35.201767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.736868, 40.072140, 34.878597>,  <26.679121, 39.943035, 34.684696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.736868, 40.072140, 34.878597>,  <26.833113, 40.287312, 35.201767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736868, 40.072140, 34.878597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593395, -0.577180, 0.561022,
		-0.768107, 0.614405, -0.180329,
		-0.240613, -0.537931, -0.807921,
		26.664684, 39.910759, 34.636223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059555, 40.205997, 35.271774>,  <26.833113, 40.287312, 35.201767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059555, 40.205997, 35.271774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.173992, 39.909359, 35.029060>,  <26.242655, 39.731377, 34.883430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.173992, 39.909359, 35.029060>,  <26.059555, 40.205997, 35.271774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173992, 39.909359, 35.029060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779260, -0.548568, 0.303032,
		-0.557592, 0.386155, -0.734831,
		0.286087, -0.741592, -0.606792,
		26.259819, 39.686882, 34.847023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397120, 39.831657, 35.004677>,  <26.059555, 40.205997, 35.271774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397120, 39.831657, 35.004677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.672516, 39.561665, 34.898563>,  <25.837753, 39.399670, 34.834896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.672516, 39.561665, 34.898563>,  <25.397120, 39.831657, 35.004677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672516, 39.561665, 34.898563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574380, -0.730813, 0.368782,
		-0.442793, -0.101532, -0.890857,
		0.688493, -0.674985, -0.265281,
		25.879063, 39.359169, 34.818977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015499, 39.226448, 34.674809>,  <25.397120, 39.831657, 35.004677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015499, 39.226448, 34.674809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.364790, 39.099155, 34.822430>,  <25.574364, 39.022778, 34.911003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.364790, 39.099155, 34.822430>,  <25.015499, 39.226448, 34.674809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364790, 39.099155, 34.822430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447655, -0.823100, 0.349445,
		0.192564, -0.470355, -0.861212,
		0.873226, -0.318235, 0.369056,
		25.626759, 39.003685, 34.933147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097923, 38.525242, 34.443829>,  <25.015499, 39.226448, 34.674809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097923, 38.525242, 34.443829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.348080, 38.562645, 34.753704>,  <25.498173, 38.585087, 34.939629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.348080, 38.562645, 34.753704>,  <25.097923, 38.525242, 34.443829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348080, 38.562645, 34.753704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272684, -0.904014, 0.329245,
		0.731117, -0.417152, -0.539863,
		0.625389, 0.093504, 0.774691,
		25.535696, 38.590694, 34.986111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462599, 37.954414, 34.364330>,  <25.097923, 38.525242, 34.443829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462599, 37.954414, 34.364330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.540504, 38.074356, 34.737888>,  <25.587248, 38.146320, 34.962021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.540504, 38.074356, 34.737888>,  <25.462599, 37.954414, 34.364330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540504, 38.074356, 34.737888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119293, -0.937814, 0.325997,
		0.973568, -0.174899, -0.146883,
		0.194766, 0.299858, 0.933890,
		25.598934, 38.164314, 35.018055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074665, 37.546608, 34.546566>,  <25.462599, 37.954414, 34.364330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074665, 37.546608, 34.546566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.871719, 37.649803, 34.875446>,  <25.749952, 37.711720, 35.072777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.871719, 37.649803, 34.875446>,  <26.074665, 37.546608, 34.546566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871719, 37.649803, 34.875446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186223, -0.964412, 0.187698,
		0.841368, -0.057882, 0.537354,
		-0.507366, 0.257991, 0.822204,
		25.719509, 37.727200, 35.122108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183079, 36.998791, 34.919010>,  <26.074665, 37.546608, 34.546566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183079, 36.998791, 34.919010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.856674, 37.173664, 35.070271>,  <25.660831, 37.278587, 35.161026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.856674, 37.173664, 35.070271>,  <26.183079, 36.998791, 34.919010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856674, 37.173664, 35.070271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427532, -0.896759, 0.114192,
		0.389031, -0.068488, 0.918675,
		-0.816010, 0.437187, 0.378148,
		25.611872, 37.304821, 35.183716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003660, 36.531998, 35.441128>,  <26.183079, 36.998791, 34.919010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003660, 36.531998, 35.441128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.670027, 36.747803, 35.395103>,  <25.469847, 36.877285, 35.367489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.670027, 36.747803, 35.395103>,  <26.003660, 36.531998, 35.441128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670027, 36.747803, 35.395103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511100, -0.834268, -0.206817,
		-0.207569, -0.113696, 0.971591,
		-0.834082, 0.539508, -0.115058,
		25.419802, 36.909657, 35.360584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476067, 36.176388, 35.032925>,  <26.003660, 36.531998, 35.441128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476067, 36.176388, 35.032925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856930, 36.055729, 35.052544>,  <27.085447, 35.983334, 35.064316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856930, 36.055729, 35.052544>,  <26.476067, 36.176388, 35.032925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856930, 36.055729, 35.052544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271145, 0.907861, 0.319795,
		-0.140994, -0.291196, 0.946217,
		0.952156, -0.301651, 0.049047,
		27.142576, 35.965233, 35.067257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692780, 36.337330, 35.658592>,  <26.476067, 36.176388, 35.032925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692780, 36.337330, 35.658592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024416, 36.301353, 35.437859>,  <27.223398, 36.279766, 35.305416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024416, 36.301353, 35.437859>,  <26.692780, 36.337330, 35.658592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024416, 36.301353, 35.437859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343157, 0.861074, 0.375225,
		0.441424, -0.500461, 0.744771,
		0.829089, -0.089940, -0.551835,
		27.273142, 36.274372, 35.272308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274820, 36.464748, 36.205765>,  <26.692780, 36.337330, 35.658592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274820, 36.464748, 36.205765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.428171, 36.505665, 35.838600>,  <27.520182, 36.530212, 35.618301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.428171, 36.505665, 35.838600>,  <27.274820, 36.464748, 36.205765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428171, 36.505665, 35.838600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527230, 0.791768, 0.308435,
		0.758322, -0.602197, 0.249614,
		0.383375, 0.102288, -0.917911,
		27.543184, 36.536350, 35.563229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049917, 36.561646, 36.289143>,  <27.274820, 36.464748, 36.205765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049917, 36.561646, 36.289143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959562, 36.715885, 35.931309>,  <27.905350, 36.808430, 35.716606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959562, 36.715885, 35.931309>,  <28.049917, 36.561646, 36.289143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959562, 36.715885, 35.931309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515949, 0.826300, 0.225887,
		0.826300, -0.410536, -0.385601,
		-0.225887, 0.385601, -0.894588,
		27.891796, 36.831566, 35.662933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709209, 36.812420, 35.922245>,  <28.049917, 36.561646, 36.289143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709209, 36.812420, 35.922245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.386492, 37.015900, 35.802040>,  <28.192862, 37.137989, 35.729916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.386492, 37.015900, 35.802040>,  <28.709209, 36.812420, 35.922245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386492, 37.015900, 35.802040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479280, 0.860920, 0.170606,
		0.345505, -0.006385, -0.938395,
		-0.806794, 0.508700, -0.300512,
		28.144453, 37.168510, 35.711887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991547, 37.383598, 35.733437>,  <28.709209, 36.812420, 35.922245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991547, 37.383598, 35.733437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611359, 37.506462, 35.714394>,  <28.383245, 37.580181, 35.702969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611359, 37.506462, 35.714394>,  <28.991547, 37.383598, 35.733437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611359, 37.506462, 35.714394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303491, 0.950167, 0.071250,
		0.067116, 0.053273, -0.996322,
		-0.950468, 0.307157, -0.047604,
		28.326218, 37.598610, 35.700111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967709, 37.978714, 35.250408>,  <28.991547, 37.383598, 35.733437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967709, 37.978714, 35.250408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630453, 38.029732, 35.459347>,  <28.428101, 38.060341, 35.584709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630453, 38.029732, 35.459347>,  <28.967709, 37.978714, 35.250408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630453, 38.029732, 35.459347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210180, 0.972344, 0.101843,
		-0.494915, 0.195655, -0.846627,
		-0.843139, 0.127541, 0.522351,
		28.377512, 38.067993, 35.616051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637026, 38.566898, 34.984543>,  <28.967709, 37.978714, 35.250408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637026, 38.566898, 34.984543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477650, 38.529263, 35.349483>,  <28.382025, 38.506680, 35.568447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477650, 38.529263, 35.349483>,  <28.637026, 38.566898, 34.984543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477650, 38.529263, 35.349483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169620, 0.970007, 0.174115,
		-0.901374, 0.224128, -0.370528,
		-0.398439, -0.094094, 0.912356,
		28.358118, 38.501034, 35.623192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292227, 39.135273, 35.055153>,  <28.637026, 38.566898, 34.984543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292227, 39.135273, 35.055153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316910, 39.017284, 35.436558>,  <28.331720, 38.946491, 35.665401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316910, 39.017284, 35.436558>,  <28.292227, 39.135273, 35.055153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316910, 39.017284, 35.436558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102694, 0.952139, 0.287897,
		-0.992797, 0.080154, 0.089047,
		0.061709, -0.294968, 0.953512,
		28.335423, 38.928795, 35.722610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901699, 39.565376, 35.417049>,  <28.292227, 39.135273, 35.055153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901699, 39.565376, 35.417049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151442, 39.406521, 35.686111>,  <28.301287, 39.311207, 35.847549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151442, 39.406521, 35.686111>,  <27.901699, 39.565376, 35.417049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151442, 39.406521, 35.686111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180523, 0.911163, 0.370397,
		-0.759993, -0.109831, 0.640584,
		0.624357, -0.397139, 0.672651,
		28.338749, 39.287380, 35.887905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729967, 39.842594, 36.036182>,  <27.901699, 39.565376, 35.417049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729967, 39.842594, 36.036182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095310, 39.709232, 36.129665>,  <28.314516, 39.629215, 36.185753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095310, 39.709232, 36.129665>,  <27.729967, 39.842594, 36.036182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095310, 39.709232, 36.129665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241121, 0.905430, 0.349367,
		-0.328085, -0.262745, 0.907372,
		0.913357, -0.333409, 0.233705,
		28.369318, 39.609211, 36.199776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856142, 40.054127, 36.672127>,  <27.729967, 39.842594, 36.036182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856142, 40.054127, 36.672127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214939, 39.977238, 36.512901>,  <28.430218, 39.931103, 36.417366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214939, 39.977238, 36.512901>,  <27.856142, 40.054127, 36.672127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214939, 39.977238, 36.512901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347321, 0.863517, 0.365659,
		0.273444, -0.466249, 0.841333,
		0.896993, -0.192225, -0.398061,
		28.484037, 39.919571, 36.393482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380455, 40.180042, 37.157124>,  <27.856142, 40.054127, 36.672127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380455, 40.180042, 37.157124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572710, 40.202984, 36.807106>,  <28.688063, 40.216751, 36.597095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572710, 40.202984, 36.807106>,  <28.380455, 40.180042, 37.157124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572710, 40.202984, 36.807106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549517, 0.757936, 0.351516,
		0.683388, -0.649802, 0.332772,
		0.480636, 0.057358, -0.875042,
		28.716900, 40.220192, 36.544594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943253, 40.226688, 37.403667>,  <28.380455, 40.180042, 37.157124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943253, 40.226688, 37.403667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.012495, 40.346455, 37.028351>,  <29.054041, 40.418312, 36.803162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.012495, 40.346455, 37.028351>,  <28.943253, 40.226688, 37.403667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012495, 40.346455, 37.028351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588356, 0.732570, 0.342312,
		0.789856, -0.611304, -0.049351,
		0.173104, 0.299414, -0.938289,
		29.064426, 40.436279, 36.746864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671322, 40.348854, 37.397156>,  <28.943253, 40.226688, 37.403667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671322, 40.348854, 37.397156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466768, 40.542015, 37.112820>,  <29.344036, 40.657913, 36.942219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466768, 40.542015, 37.112820>,  <29.671322, 40.348854, 37.397156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466768, 40.542015, 37.112820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536803, 0.825447, 0.174583,
		0.671067, -0.292301, -0.681344,
		-0.511382, 0.482904, -0.710839,
		29.313354, 40.686886, 36.899567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010519, 40.887615, 37.230076>,  <29.671322, 40.348854, 37.397156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010519, 40.887615, 37.230076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666847, 41.028557, 37.081665>,  <29.460644, 41.113121, 36.992619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666847, 41.028557, 37.081665>,  <30.010519, 40.887615, 37.230076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666847, 41.028557, 37.081665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352942, 0.933109, 0.068837,
		0.370463, -0.071807, -0.926068,
		-0.859179, 0.352350, -0.371026,
		29.409094, 41.134262, 36.970356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149773, 41.246445, 36.670341>,  <30.010519, 40.887615, 37.230076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149773, 41.246445, 36.670341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805103, 41.411865, 36.787979>,  <29.598301, 41.511116, 36.858562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805103, 41.411865, 36.787979>,  <30.149773, 41.246445, 36.670341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805103, 41.411865, 36.787979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467327, 0.872565, 0.142252,
		-0.197790, 0.260014, -0.945130,
		-0.861675, 0.413549, 0.294097,
		29.546600, 41.535931, 36.876209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153900, 41.859673, 36.275860>,  <30.149773, 41.246445, 36.670341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153900, 41.859673, 36.275860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882795, 41.929100, 36.561661>,  <29.720133, 41.970757, 36.733143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882795, 41.929100, 36.561661>,  <30.153900, 41.859673, 36.275860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882795, 41.929100, 36.561661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387621, 0.910086, 0.146608,
		-0.624812, 0.376321, -0.684099,
		-0.677761, 0.173568, 0.714503,
		29.679466, 41.981171, 36.776012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043587, 42.519814, 36.103535>,  <30.153900, 41.859673, 36.275860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043587, 42.519814, 36.103535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888855, 42.460583, 36.467609>,  <29.796017, 42.425045, 36.686054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888855, 42.460583, 36.467609>,  <30.043587, 42.519814, 36.103535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888855, 42.460583, 36.467609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310913, 0.908288, 0.279903,
		-0.868157, 0.391263, -0.305314,
		-0.386829, -0.148074, 0.910185,
		29.772806, 42.416161, 36.740665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710102, 43.118019, 36.279877>,  <30.043587, 42.519814, 36.103535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710102, 43.118019, 36.279877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762323, 42.928825, 36.628414>,  <29.793655, 42.815308, 36.837536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762323, 42.928825, 36.628414>,  <29.710102, 43.118019, 36.279877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762323, 42.928825, 36.628414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270990, 0.862424, 0.427539,
		-0.953688, 0.180310, 0.240764,
		0.130551, -0.472984, 0.871346,
		29.801489, 42.786930, 36.889816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479385, 43.640873, 36.769886>,  <29.710102, 43.118019, 36.279877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479385, 43.640873, 36.769886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712252, 43.384750, 36.970322>,  <29.851973, 43.231079, 37.090584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712252, 43.384750, 36.970322>,  <29.479385, 43.640873, 36.769886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712252, 43.384750, 36.970322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351933, 0.754016, 0.554620,
		-0.732956, -0.146531, 0.664307,
		0.582167, -0.640304, 0.501091,
		29.886902, 43.192657, 37.120647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712397, 43.924450, 37.430023>,  <29.479385, 43.640873, 36.769886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712397, 43.924450, 37.430023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994106, 43.640968, 37.413372>,  <30.163132, 43.470879, 37.403381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994106, 43.640968, 37.413372>,  <29.712397, 43.924450, 37.430023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994106, 43.640968, 37.413372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604438, 0.567839, 0.558760,
		-0.372360, -0.418682, 0.828284,
		0.704275, -0.708706, -0.041627,
		30.205389, 43.428356, 37.400883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078096, 43.873024, 38.081779>,  <29.712397, 43.924450, 37.430023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078096, 43.873024, 38.081779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.334116, 43.705738, 37.823963>,  <30.487728, 43.605366, 37.669273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.334116, 43.705738, 37.823963>,  <30.078096, 43.873024, 38.081779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334116, 43.705738, 37.823963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748925, 0.526952, 0.401786,
		0.171612, -0.739878, 0.650485,
		0.640047, -0.418213, -0.644545,
		30.526131, 43.580273, 37.630600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.884392, 39.506943, 45.137424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654621, 39.199787, 45.250824>,  <34.516758, 39.015491, 45.318863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654621, 39.199787, 45.250824>,  <34.884392, 39.506943, 45.137424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654621, 39.199787, 45.250824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422686, 0.574859, 0.700624,
		-0.700978, 0.282625, -0.654792,
		-0.574427, -0.767894, 0.283502,
		34.482292, 38.969418, 45.335873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329636, 39.846504, 45.218918>,  <34.884392, 39.506943, 45.137424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329636, 39.846504, 45.218918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258411, 39.500107, 45.405827>,  <34.215675, 39.292267, 45.517971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258411, 39.500107, 45.405827>,  <34.329636, 39.846504, 45.218918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258411, 39.500107, 45.405827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515411, 0.486590, 0.705395,
		-0.838240, -0.115234, -0.532987,
		-0.178061, -0.865997, 0.467272,
		34.204994, 39.240307, 45.546009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590153, 39.843754, 45.450947>,  <34.329636, 39.846504, 45.218918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590153, 39.843754, 45.450947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801300, 39.595623, 45.682999>,  <33.927990, 39.446743, 45.822231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801300, 39.595623, 45.682999>,  <33.590153, 39.843754, 45.450947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801300, 39.595623, 45.682999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243030, 0.544166, 0.803007,
		-0.813812, -0.564871, 0.136491,
		0.527869, -0.620326, 0.580130,
		33.959660, 39.409527, 45.857037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141609, 39.601154, 45.878185>,  <33.590153, 39.843754, 45.450947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141609, 39.601154, 45.878185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482231, 39.540768, 46.079010>,  <33.686604, 39.504536, 46.199505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482231, 39.540768, 46.079010>,  <33.141609, 39.601154, 45.878185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482231, 39.540768, 46.079010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433952, 0.334398, 0.836578,
		-0.294188, -0.930261, 0.219243,
		0.851551, -0.150970, 0.502065,
		33.737698, 39.495476, 46.229630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962566, 39.323608, 46.543686>,  <33.141609, 39.601154, 45.878185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962566, 39.323608, 46.543686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338982, 39.445381, 46.602692>,  <33.564831, 39.518444, 46.638096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338982, 39.445381, 46.602692>,  <32.962566, 39.323608, 46.543686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338982, 39.445381, 46.602692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203857, 0.162319, 0.965451,
		0.269975, -0.938600, 0.214811,
		0.941040, 0.304438, 0.147518,
		33.621292, 39.536713, 46.646946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204235, 38.950073, 47.095901>,  <32.962566, 39.323608, 46.543686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204235, 38.950073, 47.095901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.441978, 39.271503, 47.083244>,  <33.584625, 39.464363, 47.075649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.441978, 39.271503, 47.083244>,  <33.204235, 38.950073, 47.095901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441978, 39.271503, 47.083244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243517, 0.217339, 0.945232,
		0.766448, -0.554096, 0.324862,
		0.594355, 0.803580, -0.031647,
		33.620285, 39.512577, 47.073750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546860, 38.943016, 47.803970>,  <33.204235, 38.950073, 47.095901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546860, 38.943016, 47.803970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642914, 39.308182, 47.671955>,  <33.700546, 39.527279, 47.592747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642914, 39.308182, 47.671955>,  <33.546860, 38.943016, 47.803970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642914, 39.308182, 47.671955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111412, 0.363664, 0.924844,
		0.964324, -0.185321, 0.189039,
		0.240140, 0.912910, -0.330043,
		33.714954, 39.582054, 47.572941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958694, 39.197353, 48.400837>,  <33.546860, 38.943016, 47.803970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958694, 39.197353, 48.400837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831394, 39.502571, 48.175812>,  <33.755016, 39.685703, 48.040798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831394, 39.502571, 48.175812>,  <33.958694, 39.197353, 48.400837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831394, 39.502571, 48.175812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147342, 0.546392, 0.824467,
		0.936487, 0.345274, -0.061459,
		-0.318248, 0.763047, -0.562563,
		33.735920, 39.731483, 48.007042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251862, 39.923019, 48.569206>,  <33.958694, 39.197353, 48.400837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251862, 39.923019, 48.569206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901688, 40.016277, 48.399853>,  <33.691582, 40.072231, 48.298241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901688, 40.016277, 48.399853>,  <34.251862, 39.923019, 48.569206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901688, 40.016277, 48.399853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266709, 0.497520, 0.825434,
		0.403086, 0.835536, -0.373366,
		-0.875436, 0.233141, -0.423388,
		33.639057, 40.086220, 48.272835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226822, 40.566616, 48.600346>,  <34.251862, 39.923019, 48.569206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226822, 40.566616, 48.600346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838791, 40.492954, 48.537045>,  <33.605972, 40.448757, 48.499062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838791, 40.492954, 48.537045>,  <34.226822, 40.566616, 48.600346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838791, 40.492954, 48.537045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234444, 0.540746, 0.807855,
		-0.063194, 0.820780, -0.567737,
		-0.970073, -0.184154, -0.158255,
		33.547768, 40.437710, 48.489567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967358, 41.199001, 48.627548>,  <34.226822, 40.566616, 48.600346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967358, 41.199001, 48.627548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652458, 40.961391, 48.693729>,  <33.463520, 40.818825, 48.733437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652458, 40.961391, 48.693729>,  <33.967358, 41.199001, 48.627548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652458, 40.961391, 48.693729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274423, 0.577781, 0.768675,
		-0.552207, 0.559734, -0.617871,
		-0.787248, -0.594026, 0.165450,
		33.416283, 40.783184, 48.743366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378658, 41.673698, 48.670113>,  <33.967358, 41.199001, 48.627548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378658, 41.673698, 48.670113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273376, 41.331596, 48.848671>,  <33.210205, 41.126335, 48.955807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273376, 41.331596, 48.848671>,  <33.378658, 41.673698, 48.670113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273376, 41.331596, 48.848671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208047, 0.502141, 0.839387,
		-0.942040, 0.128061, -0.310099,
		-0.263207, -0.855252, 0.446394,
		33.194416, 41.075020, 48.982590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884983, 41.901642, 49.000374>,  <33.378658, 41.673698, 48.670113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884983, 41.901642, 49.000374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.968689, 41.545853, 49.162876>,  <33.018913, 41.332378, 49.260376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.968689, 41.545853, 49.162876>,  <32.884983, 41.901642, 49.000374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968689, 41.545853, 49.162876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123751, 0.388022, 0.913304,
		-0.969997, -0.241397, -0.028874,
		0.209265, -0.889475, 0.406253,
		33.031467, 41.279011, 49.284752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381943, 41.723198, 49.656437>,  <32.884983, 41.901642, 49.000374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381943, 41.723198, 49.656437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.730438, 41.533234, 49.706081>,  <32.939537, 41.419254, 49.735867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.730438, 41.533234, 49.706081>,  <32.381943, 41.723198, 49.656437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730438, 41.533234, 49.706081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199886, -0.112328, 0.973359,
		-0.448318, -0.872836, -0.192792,
		0.871239, -0.474911, 0.124109,
		32.991810, 41.390762, 49.743313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899843, 42.126156, 49.163002>,  <32.381943, 41.723198, 49.656437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899843, 42.126156, 49.163002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.524519, 42.264442, 49.160198>,  <31.299324, 42.347416, 49.158516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.524519, 42.264442, 49.160198>,  <31.899843, 42.126156, 49.163002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524519, 42.264442, 49.160198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055801, -0.171389, -0.983622,
		-0.341258, -0.922553, 0.180108,
		-0.938312, 0.345719, -0.007009,
		31.243025, 42.368156, 49.158096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441687, 41.680309, 48.796783>,  <31.899843, 42.126156, 49.163002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441687, 41.680309, 48.796783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.243370, 42.026897, 48.773411>,  <31.124380, 42.234852, 48.759388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.243370, 42.026897, 48.773411>,  <31.441687, 41.680309, 48.796783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243370, 42.026897, 48.773411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069060, -0.027738, -0.997227,
		-0.865691, -0.498453, -0.046086,
		-0.495792, 0.866472, -0.058436,
		31.094633, 42.286839, 48.755878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851078, 41.581226, 48.316101>,  <31.441687, 41.680309, 48.796783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851078, 41.581226, 48.316101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957912, 41.965759, 48.342926>,  <31.022013, 42.196480, 48.359020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957912, 41.965759, 48.342926>,  <30.851078, 41.581226, 48.316101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957912, 41.965759, 48.342926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058320, 0.085589, -0.994622,
		-0.961906, 0.261738, 0.078925,
		0.267086, 0.961336, 0.067065,
		31.038038, 42.254162, 48.363045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424267, 41.867950, 47.892700>,  <30.851078, 41.581226, 48.316101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424267, 41.867950, 47.892700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.715109, 42.139332, 47.934685>,  <30.889614, 42.302162, 47.959877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.715109, 42.139332, 47.934685>,  <30.424267, 41.867950, 47.892700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715109, 42.139332, 47.934685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096265, 0.050625, -0.994067,
		-0.679745, 0.732895, -0.028502,
		0.727104, 0.678456, 0.104964,
		30.933241, 42.342869, 47.966175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268620, 42.448460, 47.427597>,  <30.424267, 41.867950, 47.892700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268620, 42.448460, 47.427597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.659153, 42.471603, 47.510952>,  <30.893473, 42.485489, 47.560966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.659153, 42.471603, 47.510952>,  <30.268620, 42.448460, 47.427597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659153, 42.471603, 47.510952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209265, -0.009494, -0.977813,
		-0.054595, 0.998280, -0.021377,
		0.976334, 0.057857, 0.208386,
		30.952053, 42.488960, 47.573467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651857, 42.958702, 46.837524>,  <30.268620, 42.448460, 47.427597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651857, 42.958702, 46.837524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927372, 42.722366, 47.005566>,  <31.092680, 42.580566, 47.106392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927372, 42.722366, 47.005566>,  <30.651857, 42.958702, 46.837524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927372, 42.722366, 47.005566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409155, -0.161561, -0.898048,
		0.598471, 0.790450, 0.130463,
		0.688785, -0.590835, 0.420107,
		31.134007, 42.545116, 47.131599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294527, 43.124191, 46.685966>,  <30.651857, 42.958702, 46.837524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294527, 43.124191, 46.685966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.357691, 42.738964, 46.773212>,  <31.395588, 42.507828, 46.825558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.357691, 42.738964, 46.773212>,  <31.294527, 43.124191, 46.685966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357691, 42.738964, 46.773212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476049, -0.119272, -0.871293,
		0.865125, 0.241415, 0.439632,
		0.157907, -0.963064, 0.218110,
		31.405064, 42.450047, 46.838646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592325, 42.967484, 46.130680>,  <31.294527, 43.124191, 46.685966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592325, 42.967484, 46.130680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616514, 42.608719, 46.305901>,  <31.631027, 42.393459, 46.411034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616514, 42.608719, 46.305901>,  <31.592325, 42.967484, 46.130680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616514, 42.608719, 46.305901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434963, -0.371317, -0.820324,
		0.898416, 0.240142, 0.367670,
		0.060472, -0.896914, 0.438050,
		31.634655, 42.339645, 46.437317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311115, 42.674408, 45.964317>,  <31.592325, 42.967484, 46.130680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311115, 42.674408, 45.964317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047943, 42.383121, 46.041077>,  <31.890039, 42.208347, 46.087132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047943, 42.383121, 46.041077>,  <32.311115, 42.674408, 45.964317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047943, 42.383121, 46.041077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214265, -0.425303, -0.879323,
		0.721956, -0.537414, 0.435850,
		-0.657928, -0.728220, 0.191901,
		31.850565, 42.164654, 46.098648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634457, 42.098160, 45.793041>,  <32.311115, 42.674408, 45.964317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634457, 42.098160, 45.793041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.251625, 41.982380, 45.798923>,  <32.021927, 41.912910, 45.802452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.251625, 41.982380, 45.798923>,  <32.634457, 42.098160, 45.793041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251625, 41.982380, 45.798923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174171, -0.614976, -0.769070,
		0.231656, -0.733499, 0.638995,
		-0.957079, -0.289454, 0.014708,
		31.964500, 41.895542, 45.803337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614956, 41.418194, 45.713776>,  <32.634457, 42.098160, 45.793041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614956, 41.418194, 45.713776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.231571, 41.496742, 45.631027>,  <32.001541, 41.543873, 45.581379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.231571, 41.496742, 45.631027>,  <32.614956, 41.418194, 45.713776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231571, 41.496742, 45.631027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088038, -0.486176, -0.869415,
		-0.271302, -0.851511, 0.448692,
		-0.958459, 0.196372, -0.206866,
		31.944033, 41.555653, 45.568966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168442, 40.753101, 45.614357>,  <32.614956, 41.418194, 45.713776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168442, 40.753101, 45.614357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.994640, 41.057671, 45.421925>,  <31.890360, 41.240414, 45.306465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.994640, 41.057671, 45.421925>,  <32.168442, 40.753101, 45.614357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994640, 41.057671, 45.421925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075051, -0.562892, -0.823116,
		-0.897539, -0.321540, 0.301723,
		-0.434502, 0.761423, -0.481086,
		31.864290, 41.286098, 45.277599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575943, 40.491840, 45.153080>,  <32.168442, 40.753101, 45.614357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575943, 40.491840, 45.153080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.682375, 40.847019, 45.003014>,  <31.746235, 41.060127, 44.912975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.682375, 40.847019, 45.003014>,  <31.575943, 40.491840, 45.153080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682375, 40.847019, 45.003014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017389, -0.384709, -0.922874,
		-0.963794, 0.252082, -0.086923,
		0.266080, 0.887949, -0.375163,
		31.762199, 41.113403, 44.890465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113773, 40.638649, 44.636124>,  <31.575943, 40.491840, 45.153080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113773, 40.638649, 44.636124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.455614, 40.826683, 44.547878>,  <31.660719, 40.939503, 44.494930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.455614, 40.826683, 44.547878>,  <31.113773, 40.638649, 44.636124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455614, 40.826683, 44.547878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066646, -0.520618, -0.851185,
		-0.514986, 0.712723, -0.476252,
		0.854604, 0.470089, -0.220611,
		31.711996, 40.967709, 44.481693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436941, 40.841789, 44.523544>,  <31.113773, 40.638649, 44.636124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436941, 40.841789, 44.523544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.089184, 40.646133, 44.551529>,  <29.880529, 40.528740, 44.568317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.089184, 40.646133, 44.551529>,  <30.436941, 40.841789, 44.523544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089184, 40.646133, 44.551529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228905, 0.524169, 0.820274,
		-0.437900, 0.697128, -0.567676,
		-0.869394, -0.489142, 0.069957,
		29.828365, 40.499390, 44.572517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951658, 41.282253, 44.647358>,  <30.436941, 40.841789, 44.523544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951658, 41.282253, 44.647358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.764950, 40.951523, 44.772888>,  <29.652925, 40.753086, 44.848206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.764950, 40.951523, 44.772888>,  <29.951658, 41.282253, 44.647358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764950, 40.951523, 44.772888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318065, 0.488057, 0.812795,
		-0.825204, 0.279571, -0.490794,
		-0.466769, -0.826826, 0.313825,
		29.624920, 40.703476, 44.867035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223516, 41.378265, 44.858917>,  <29.951658, 41.282253, 44.647358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223516, 41.378265, 44.858917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.367367, 41.071789, 45.071938>,  <29.453676, 40.887901, 45.199749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.367367, 41.071789, 45.071938>,  <29.223516, 41.378265, 44.858917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367367, 41.071789, 45.071938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375906, 0.403411, 0.834239,
		-0.854028, -0.500204, -0.142940,
		0.359625, -0.766196, 0.532554,
		29.475254, 40.841930, 45.231705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694874, 41.171505, 45.442272>,  <29.223516, 41.378265, 44.858917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694874, 41.171505, 45.442272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.014519, 40.979290, 45.586769>,  <29.206306, 40.863960, 45.673470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.014519, 40.979290, 45.586769>,  <28.694874, 41.171505, 45.442272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014519, 40.979290, 45.586769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319711, 0.169182, 0.932289,
		-0.509119, -0.860499, -0.018439,
		0.799114, -0.480541, 0.361245,
		29.254253, 40.835129, 45.695141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421364, 40.652855, 45.846344>,  <28.694874, 41.171505, 45.442272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421364, 40.652855, 45.846344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.804195, 40.670486, 45.960926>,  <29.033894, 40.681065, 46.029675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.804195, 40.670486, 45.960926>,  <28.421364, 40.652855, 45.846344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804195, 40.670486, 45.960926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289313, 0.086380, 0.953329,
		0.017276, -0.995287, 0.095425,
		0.957079, 0.044077, 0.286457,
		29.091318, 40.683712, 46.046864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467495, 40.235683, 46.461403>,  <28.421364, 40.652855, 45.846344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467495, 40.235683, 46.461403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.799774, 40.456203, 46.492405>,  <28.999142, 40.588516, 46.511005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.799774, 40.456203, 46.492405>,  <28.467495, 40.235683, 46.461403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799774, 40.456203, 46.492405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179066, 0.132769, 0.974837,
		0.527142, -0.823673, 0.209010,
		0.830697, 0.551304, 0.077504,
		29.048983, 40.621593, 46.515656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858644, 39.901924, 46.940704>,  <28.467495, 40.235683, 46.461403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858644, 39.901924, 46.940704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.990765, 40.278885, 46.919609>,  <29.070036, 40.505062, 46.906952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.990765, 40.278885, 46.919609>,  <28.858644, 39.901924, 46.940704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990765, 40.278885, 46.919609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159041, 0.110638, 0.981053,
		0.930381, -0.315654, 0.186424,
		0.330299, 0.942402, -0.052734,
		29.089855, 40.561607, 46.903790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920105, 39.168243, 47.165936>,  <28.858644, 39.901924, 46.940704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920105, 39.168243, 47.165936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.619448, 38.916359, 47.244419>,  <28.439054, 38.765228, 47.291508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.619448, 38.916359, 47.244419>,  <28.920105, 39.168243, 47.165936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619448, 38.916359, 47.244419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047574, -0.244940, -0.968370,
		0.657854, -0.737201, 0.154149,
		-0.751641, -0.629713, 0.196207,
		28.393955, 38.727444, 47.303280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973373, 38.515511, 46.854649>,  <28.920105, 39.168243, 47.165936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973373, 38.515511, 46.854649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.579479, 38.471436, 46.908550>,  <28.343143, 38.444992, 46.940891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.579479, 38.471436, 46.908550>,  <28.973373, 38.515511, 46.854649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579479, 38.471436, 46.908550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045178, -0.585832, -0.809172,
		0.168102, -0.802907, 0.571911,
		-0.984734, -0.110185, 0.134753,
		28.284060, 38.438381, 46.948975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801199, 37.821999, 46.693462>,  <28.973373, 38.515511, 46.854649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801199, 37.821999, 46.693462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.440872, 37.994366, 46.672150>,  <28.224676, 38.097786, 46.659363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.440872, 37.994366, 46.672150>,  <28.801199, 37.821999, 46.693462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440872, 37.994366, 46.672150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166157, -0.455482, -0.874601,
		-0.401148, -0.779003, 0.481906,
		-0.900817, 0.430917, -0.053279,
		28.170628, 38.123642, 46.656166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280981, 37.330223, 46.416206>,  <28.801199, 37.821999, 46.693462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280981, 37.330223, 46.416206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.133581, 37.691563, 46.328411>,  <28.045141, 37.908367, 46.275734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.133581, 37.691563, 46.328411>,  <28.280981, 37.330223, 46.416206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133581, 37.691563, 46.328411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126185, -0.282521, -0.950925,
		-0.921024, -0.322721, 0.218098,
		-0.368501, 0.903345, -0.219486,
		28.023031, 37.962566, 46.262566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716608, 37.182865, 45.960423>,  <28.280981, 37.330223, 46.416206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716608, 37.182865, 45.960423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.842564, 37.555420, 45.887360>,  <27.918137, 37.778954, 45.843521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.842564, 37.555420, 45.887360>,  <27.716608, 37.182865, 45.960423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842564, 37.555420, 45.887360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074859, -0.167472, -0.983031,
		-0.946171, 0.323220, 0.016987,
		0.314891, 0.931387, -0.182654,
		27.937031, 37.834835, 45.832565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307388, 37.362141, 45.379467>,  <27.716608, 37.182865, 45.960423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307388, 37.362141, 45.379467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.609123, 37.624187, 45.362534>,  <27.790165, 37.781418, 45.352375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.609123, 37.624187, 45.362534>,  <27.307388, 37.362141, 45.379467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609123, 37.624187, 45.362534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021508, -0.089115, -0.995789,
		-0.656134, 0.750251, -0.081313,
		0.754338, 0.655120, -0.042335,
		27.835424, 37.820724, 45.349834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181025, 37.648224, 44.799942>,  <27.307388, 37.362141, 45.379467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181025, 37.648224, 44.799942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.567558, 37.731518, 44.860394>,  <27.799479, 37.781494, 44.896664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.567558, 37.731518, 44.860394>,  <27.181025, 37.648224, 44.799942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567558, 37.731518, 44.860394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196040, -0.215468, -0.956630,
		-0.166644, 0.954049, -0.249037,
		0.966332, 0.208238, 0.151125,
		27.857458, 37.793987, 44.905731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.217201, 38.294861, 50.775284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153690, 38.592281, 50.515461>,  <32.115585, 38.770733, 50.359566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153690, 38.592281, 50.515461>,  <32.217201, 38.294861, 50.775284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153690, 38.592281, 50.515461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636484, -0.425859, -0.643064,
		-0.754770, -0.515537, -0.405641,
		-0.158778, 0.743550, -0.649557,
		32.106056, 38.815346, 50.320595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791094, 38.103790, 50.181320>,  <32.217201, 38.294861, 50.775284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791094, 38.103790, 50.181320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.062988, 38.380543, 50.083950>,  <32.226124, 38.546593, 50.025528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.062988, 38.380543, 50.083950>,  <31.791094, 38.103790, 50.181320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062988, 38.380543, 50.083950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298256, -0.563955, -0.770064,
		-0.670075, 0.450838, -0.589699,
		0.679738, 0.691881, -0.243427,
		32.266911, 38.588108, 50.010921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760740, 38.257805, 49.391010>,  <31.791094, 38.103790, 50.181320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760740, 38.257805, 49.391010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126869, 38.379780, 49.496231>,  <32.346546, 38.452965, 49.559364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126869, 38.379780, 49.496231>,  <31.760740, 38.257805, 49.391010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126869, 38.379780, 49.496231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399078, -0.599171, -0.694068,
		-0.054036, 0.740275, -0.670129,
		0.915323, 0.304938, 0.263051,
		32.401466, 38.471260, 49.575146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156052, 38.486095, 48.835506>,  <31.760740, 38.257805, 49.391010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156052, 38.486095, 48.835506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418541, 38.364468, 49.111740>,  <32.576035, 38.291489, 49.277481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418541, 38.364468, 49.111740>,  <32.156052, 38.486095, 48.835506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418541, 38.364468, 49.111740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427078, -0.604839, -0.672141,
		0.622074, 0.736009, -0.267046,
		0.656222, -0.304072, 0.690588,
		32.615406, 38.273247, 49.318916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803627, 38.559872, 48.456036>,  <32.156052, 38.486095, 48.835506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803627, 38.559872, 48.456036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.880428, 38.315052, 48.762901>,  <32.926510, 38.168159, 48.947021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.880428, 38.315052, 48.762901>,  <32.803627, 38.559872, 48.456036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880428, 38.315052, 48.762901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465019, -0.631641, -0.620312,
		0.864230, 0.475845, 0.163337,
		0.192001, -0.612046, 0.767160,
		32.938030, 38.131439, 48.993050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573757, 38.306549, 48.478050>,  <32.803627, 38.559872, 48.456036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573757, 38.306549, 48.478050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.348492, 38.028259, 48.656406>,  <33.213333, 37.861286, 48.763420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.348492, 38.028259, 48.656406>,  <33.573757, 38.306549, 48.478050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348492, 38.028259, 48.656406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509065, -0.717131, -0.475999,
		0.650924, -0.041079, 0.758030,
		-0.563161, -0.695726, 0.445886,
		33.179543, 37.819542, 48.790173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050842, 37.834896, 48.687557>,  <33.573757, 38.306549, 48.478050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050842, 37.834896, 48.687557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.694855, 37.652660, 48.679707>,  <33.481262, 37.543320, 48.674995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.694855, 37.652660, 48.679707>,  <34.050842, 37.834896, 48.687557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694855, 37.652660, 48.679707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382360, -0.722078, -0.576545,
		0.248495, -0.520615, 0.816830,
		-0.889973, -0.455592, -0.019629,
		33.427864, 37.515984, 48.673817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247688, 37.159317, 48.832676>,  <34.050842, 37.834896, 48.687557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247688, 37.159317, 48.832676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.869251, 37.120232, 48.709148>,  <33.642189, 37.096783, 48.635033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.869251, 37.120232, 48.709148>,  <34.247688, 37.159317, 48.832676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869251, 37.120232, 48.709148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250011, -0.826463, -0.504434,
		-0.205937, -0.554447, 0.806336,
		-0.946089, -0.097711, -0.308817,
		33.585426, 37.090919, 48.616505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190109, 36.543541, 48.920609>,  <34.247688, 37.159317, 48.832676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190109, 36.543541, 48.920609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.912651, 36.637821, 48.648346>,  <33.746174, 36.694389, 48.484989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.912651, 36.637821, 48.648346>,  <34.190109, 36.543541, 48.920609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912651, 36.637821, 48.648346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286758, -0.776483, -0.561109,
		-0.660773, -0.584397, 0.471019,
		-0.693649, 0.235697, -0.680660,
		33.704556, 36.708530, 48.444149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800453, 35.859531, 48.733616>,  <34.190109, 36.543541, 48.920609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800453, 35.859531, 48.733616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737808, 36.126057, 48.441998>,  <33.700222, 36.285973, 48.267029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737808, 36.126057, 48.441998>,  <33.800453, 35.859531, 48.733616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737808, 36.126057, 48.441998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154583, -0.712517, -0.684415,
		-0.975488, -0.219886, 0.008589,
		-0.156612, 0.666311, -0.729042,
		33.690823, 36.325951, 48.223286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312023, 35.517132, 48.253254>,  <33.800453, 35.859531, 48.733616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312023, 35.517132, 48.253254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.472179, 35.811886, 48.035378>,  <33.568275, 35.988739, 47.904652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.472179, 35.811886, 48.035378>,  <33.312023, 35.517132, 48.253254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472179, 35.811886, 48.035378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147564, -0.638514, -0.755331,
		-0.904383, 0.222053, -0.364395,
		0.400394, 0.736880, -0.544694,
		33.592297, 36.032951, 47.871971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007950, 35.443054, 47.566643>,  <33.312023, 35.517132, 48.253254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007950, 35.443054, 47.566643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.312534, 35.690868, 47.490376>,  <33.495285, 35.839558, 47.444614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.312534, 35.690868, 47.490376>,  <33.007950, 35.443054, 47.566643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312534, 35.690868, 47.490376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095374, -0.398021, -0.912405,
		-0.641153, 0.676579, -0.362166,
		0.761464, 0.619532, -0.190664,
		33.540974, 35.876728, 47.433178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337982, 35.834839, 47.383827>,  <33.007950, 35.443054, 47.566643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337982, 35.834839, 47.383827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059635, 35.554283, 47.445580>,  <31.892628, 35.385952, 47.482632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059635, 35.554283, 47.445580>,  <32.337982, 35.834839, 47.383827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059635, 35.554283, 47.445580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145275, 0.347991, 0.926174,
		-0.703327, 0.622063, -0.344048,
		-0.695863, -0.701385, 0.154381,
		31.850876, 35.343868, 47.491894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914921, 36.144939, 47.839764>,  <32.337982, 35.834839, 47.383827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914921, 36.144939, 47.839764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.811758, 35.759037, 47.860683>,  <31.749861, 35.527496, 47.873234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.811758, 35.759037, 47.860683>,  <31.914921, 36.144939, 47.839764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811758, 35.759037, 47.860683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109615, 0.082998, 0.990503,
		-0.959931, 0.249727, -0.127157,
		-0.257909, -0.964753, 0.052298,
		31.734386, 35.469612, 47.876373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237440, 36.140079, 48.000443>,  <31.914921, 36.144939, 47.839764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237440, 36.140079, 48.000443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.412437, 35.799858, 48.117165>,  <31.517435, 35.595726, 48.187199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.412437, 35.799858, 48.117165>,  <31.237440, 36.140079, 48.000443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412437, 35.799858, 48.117165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315855, 0.158479, 0.935478,
		-0.841924, -0.501434, -0.199320,
		0.437493, -0.850558, 0.291808,
		31.543686, 35.544689, 48.204708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719469, 35.899132, 48.301476>,  <31.237440, 36.140079, 48.000443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719469, 35.899132, 48.301476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.017708, 35.659492, 48.418213>,  <31.196651, 35.515709, 48.488255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.017708, 35.659492, 48.418213>,  <30.719469, 35.899132, 48.301476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017708, 35.659492, 48.418213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319425, 0.063053, 0.945511,
		-0.584852, -0.798192, -0.144353,
		0.745598, -0.599094, 0.291839,
		31.241386, 35.479763, 48.505764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389444, 35.380440, 48.686329>,  <30.719469, 35.899132, 48.301476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389444, 35.380440, 48.686329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.771408, 35.359943, 48.803303>,  <31.000587, 35.347645, 48.873486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.771408, 35.359943, 48.803303>,  <30.389444, 35.380440, 48.686329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771408, 35.359943, 48.803303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282226, 0.149081, 0.947694,
		-0.092161, -0.987496, 0.127897,
		0.954911, -0.051245, 0.292436,
		31.057882, 35.344570, 48.891033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411177, 35.012157, 49.341919>,  <30.389444, 35.380440, 48.686329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411177, 35.012157, 49.341919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.753269, 35.219234, 49.351543>,  <30.958525, 35.343479, 49.357319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.753269, 35.219234, 49.351543>,  <30.411177, 35.012157, 49.341919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753269, 35.219234, 49.351543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316849, 0.485579, 0.814751,
		0.410102, -0.704425, 0.579311,
		0.855233, 0.517686, 0.024060,
		31.009838, 35.374542, 49.358761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746902, 34.969967, 50.046116>,  <30.411177, 35.012157, 49.341919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746902, 34.969967, 50.046116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.893995, 35.297276, 49.869385>,  <30.982250, 35.493660, 49.763348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.893995, 35.297276, 49.869385>,  <30.746902, 34.969967, 50.046116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893995, 35.297276, 49.869385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366607, 0.564199, 0.739783,
		0.854619, -0.110064, 0.507456,
		0.367730, 0.818270, -0.441825,
		31.004314, 35.542755, 49.736835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038225, 35.328148, 50.627819>,  <30.746902, 34.969967, 50.046116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038225, 35.328148, 50.627819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.020931, 35.614384, 50.348946>,  <31.010555, 35.786125, 50.181622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.020931, 35.614384, 50.348946>,  <31.038225, 35.328148, 50.627819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020931, 35.614384, 50.348946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390736, 0.630139, 0.671007,
		0.919487, 0.301426, 0.252362,
		-0.043236, 0.715589, -0.697182,
		31.007961, 35.829060, 50.139790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354940, 35.905014, 50.866104>,  <31.038225, 35.328148, 50.627819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354940, 35.905014, 50.866104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.128397, 36.058952, 50.574589>,  <30.992472, 36.151314, 50.399681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.128397, 36.058952, 50.574589>,  <31.354940, 35.905014, 50.866104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128397, 36.058952, 50.574589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327379, 0.706469, 0.627474,
		0.756348, 0.593965, -0.274123,
		-0.566357, 0.384847, -0.728788,
		30.958490, 36.174408, 50.355953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459471, 36.610161, 50.807178>,  <31.354940, 35.905014, 50.866104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459471, 36.610161, 50.807178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.096622, 36.558422, 50.646976>,  <30.878914, 36.527378, 50.550854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.096622, 36.558422, 50.646976>,  <31.459471, 36.610161, 50.807178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096622, 36.558422, 50.646976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374909, 0.680759, 0.629293,
		0.191254, 0.720998, -0.666022,
		-0.907119, -0.129342, -0.400506,
		30.824486, 36.519619, 50.526825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173080, 37.296940, 50.619972>,  <31.459471, 36.610161, 50.807178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173080, 37.296940, 50.619972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.866018, 37.043427, 50.657974>,  <30.681782, 36.891319, 50.680775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.866018, 37.043427, 50.657974>,  <31.173080, 37.296940, 50.619972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866018, 37.043427, 50.657974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546988, 0.725214, 0.418173,
		-0.333930, 0.269046, -0.903385,
		-0.767656, -0.633781, 0.095006,
		30.635721, 36.853291, 50.686478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654556, 37.479313, 50.114845>,  <31.173080, 37.296940, 50.619972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654556, 37.479313, 50.114845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.482828, 37.276241, 50.413628>,  <30.379791, 37.154400, 50.592899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.482828, 37.276241, 50.413628>,  <30.654556, 37.479313, 50.114845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482828, 37.276241, 50.413628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497657, 0.823149, 0.273429,
		-0.753671, -0.254341, -0.606045,
		-0.429321, -0.507678, 0.746958,
		30.354033, 37.123940, 50.637714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912172, 37.525597, 50.157829>,  <30.654556, 37.479313, 50.114845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912172, 37.525597, 50.157829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.131725, 37.514870, 50.492016>,  <30.263458, 37.508434, 50.692528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.131725, 37.514870, 50.492016>,  <29.912172, 37.525597, 50.157829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131725, 37.514870, 50.492016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468978, 0.817478, 0.334350,
		-0.691944, -0.575336, 0.436122,
		0.548884, -0.026820, 0.835468,
		30.296391, 37.506824, 50.742657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609154, 38.181347, 50.436367>,  <29.912172, 37.525597, 50.157829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609154, 38.181347, 50.436367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.288004, 38.417381, 50.470291>,  <29.095314, 38.559002, 50.490646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.288004, 38.417381, 50.470291>,  <29.609154, 38.181347, 50.436367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288004, 38.417381, 50.470291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246806, -0.199505, -0.948306,
		-0.542662, -0.782302, 0.305814,
		-0.802873, 0.590086, 0.084813,
		29.047142, 38.594406, 50.495735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054483, 37.866039, 50.269360>,  <29.609154, 38.181347, 50.436367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054483, 37.866039, 50.269360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.015785, 38.254925, 50.184090>,  <28.992565, 38.488255, 50.132927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.015785, 38.254925, 50.184090>,  <29.054483, 37.866039, 50.269360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015785, 38.254925, 50.184090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452384, -0.233733, -0.860649,
		-0.886560, 0.013173, 0.462426,
		-0.096747, 0.972211, -0.213178,
		28.986761, 38.546589, 50.120136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580999, 37.786545, 49.756165>,  <29.054483, 37.866039, 50.269360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580999, 37.786545, 49.756165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.677557, 38.174091, 49.734177>,  <28.735491, 38.406620, 49.720985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.677557, 38.174091, 49.734177>,  <28.580999, 37.786545, 49.756165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677557, 38.174091, 49.734177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351792, 0.034581, -0.935439,
		-0.904417, 0.245146, 0.349188,
		0.241395, 0.968869, -0.054965,
		28.749975, 38.464752, 49.717686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993345, 38.246456, 49.569473>,  <28.580999, 37.786545, 49.756165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993345, 38.246456, 49.569473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.321909, 38.452332, 49.471184>,  <28.519047, 38.575855, 49.412209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.321909, 38.452332, 49.471184>,  <27.993345, 38.246456, 49.569473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321909, 38.452332, 49.471184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378590, 0.169814, -0.909853,
		-0.426564, 0.840392, 0.334343,
		0.821409, 0.514689, -0.245728,
		28.568331, 38.606739, 49.397465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789122, 38.859222, 49.319927>,  <27.993345, 38.246456, 49.569473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789122, 38.859222, 49.319927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.153831, 38.810596, 49.163013>,  <28.372658, 38.781422, 49.068863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.153831, 38.810596, 49.163013>,  <27.789122, 38.859222, 49.319927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153831, 38.810596, 49.163013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371714, 0.161891, -0.914122,
		0.174633, 0.979292, 0.102421,
		0.911774, -0.121564, -0.392288,
		28.427364, 38.774128, 49.045326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736483, 39.297859, 48.725842>,  <27.789122, 38.859222, 49.319927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736483, 39.297859, 48.725842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071505, 39.084961, 48.676491>,  <28.272518, 38.957222, 48.646881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071505, 39.084961, 48.676491>,  <27.736483, 39.297859, 48.725842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071505, 39.084961, 48.676491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164387, -0.030135, -0.985935,
		0.521038, 0.846056, -0.112733,
		0.837554, -0.532242, -0.123379,
		28.322771, 38.925289, 48.639477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094128, 39.636299, 48.168098>,  <27.736483, 39.297859, 48.725842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094128, 39.636299, 48.168098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.200397, 39.250782, 48.177212>,  <28.264160, 39.019470, 48.182678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.200397, 39.250782, 48.177212>,  <28.094128, 39.636299, 48.168098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200397, 39.250782, 48.177212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192430, -0.076170, -0.978350,
		0.944663, 0.255539, -0.205699,
		0.265675, -0.963794, 0.022782,
		28.280100, 38.961643, 48.184048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423609, 39.567142, 47.536804>,  <28.094128, 39.636299, 48.168098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423609, 39.567142, 47.536804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.343212, 39.188690, 47.638344>,  <28.294973, 38.961620, 47.699268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.343212, 39.188690, 47.638344>,  <28.423609, 39.567142, 47.536804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343212, 39.188690, 47.638344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211648, -0.211071, -0.954282,
		0.956455, -0.245529, -0.157824,
		-0.200992, -0.946131, 0.253846,
		28.282915, 38.904850, 47.714497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168156, 39.938095, 47.593910>,  <28.423609, 39.567142, 47.536804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168156, 39.938095, 47.593910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.156704, 40.320507, 47.477158>,  <29.149834, 40.549953, 47.407108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.156704, 40.320507, 47.477158>,  <29.168156, 39.938095, 47.593910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156704, 40.320507, 47.477158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281824, 0.272431, 0.919976,
		0.959039, 0.108597, 0.261631,
		-0.028630, 0.956027, -0.291877,
		29.148115, 40.607315, 47.389595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596388, 40.375092, 48.041248>,  <29.168156, 39.938095, 47.593910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596388, 40.375092, 48.041248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.355371, 40.648216, 47.875980>,  <29.210762, 40.812092, 47.776821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.355371, 40.648216, 47.875980>,  <29.596388, 40.375092, 48.041248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355371, 40.648216, 47.875980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138463, 0.420412, 0.896706,
		0.785986, 0.597510, -0.158770,
		-0.602540, 0.682815, -0.413171,
		29.174610, 40.853062, 47.752029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848728, 40.964935, 48.246494>,  <29.596388, 40.375092, 48.041248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848728, 40.964935, 48.246494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.467905, 41.049755, 48.158295>,  <29.239410, 41.100647, 48.105373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.467905, 41.049755, 48.158295>,  <29.848728, 40.964935, 48.246494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467905, 41.049755, 48.158295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093126, 0.485674, 0.869165,
		0.291397, 0.848030, -0.442643,
		-0.952058, 0.212051, -0.220498,
		29.182287, 41.113369, 48.092144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761763, 41.696358, 48.240528>,  <29.848728, 40.964935, 48.246494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761763, 41.696358, 48.240528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.393419, 41.554817, 48.306023>,  <29.172413, 41.469891, 48.345322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.393419, 41.554817, 48.306023>,  <29.761763, 41.696358, 48.240528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393419, 41.554817, 48.306023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058981, 0.541535, 0.838607,
		-0.385414, 0.762579, -0.519547,
		-0.920857, -0.353854, 0.163738,
		29.117163, 41.448662, 48.355145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279001, 42.230438, 48.463150>,  <29.761763, 41.696358, 48.240528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279001, 42.230438, 48.463150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.097977, 41.890785, 48.572083>,  <28.989361, 41.686993, 48.637444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.097977, 41.890785, 48.572083>,  <29.279001, 42.230438, 48.463150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097977, 41.890785, 48.572083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224582, 0.404084, 0.886723,
		-0.862988, 0.340138, -0.373574,
		-0.452564, -0.849130, 0.272331,
		28.962208, 41.636047, 48.653782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725189, 42.461575, 48.675240>,  <29.279001, 42.230438, 48.463150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725189, 42.461575, 48.675240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.746149, 42.095936, 48.836079>,  <28.758724, 41.876553, 48.932583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.746149, 42.095936, 48.836079>,  <28.725189, 42.461575, 48.675240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746149, 42.095936, 48.836079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239634, 0.379377, 0.893671,
		-0.969448, -0.143183, -0.199170,
		0.052398, -0.914096, 0.402098,
		28.761869, 41.821709, 48.956707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101784, 42.356041, 49.126141>,  <28.725189, 42.461575, 48.675240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101784, 42.356041, 49.126141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.334320, 42.050884, 49.239311>,  <28.473843, 41.867790, 49.307213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.334320, 42.050884, 49.239311>,  <28.101784, 42.356041, 49.126141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334320, 42.050884, 49.239311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203613, 0.200255, 0.958353,
		-0.787772, -0.614736, -0.038918,
		0.581341, -0.762887, 0.282924,
		28.508722, 41.822018, 49.324188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615263, 41.991024, 49.488033>,  <28.101784, 42.356041, 49.126141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615263, 41.991024, 49.488033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.990955, 41.921299, 49.606331>,  <28.216370, 41.879463, 49.677311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.990955, 41.921299, 49.606331>,  <27.615263, 41.991024, 49.488033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990955, 41.921299, 49.606331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310925, -0.066760, 0.948087,
		-0.145522, -0.982424, -0.116901,
		0.939228, -0.174315, 0.295745,
		28.272724, 41.869007, 49.695053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581297, 41.628468, 50.066673>,  <27.615263, 41.991024, 49.488033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581297, 41.628468, 50.066673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.962727, 41.742985, 50.104046>,  <28.191586, 41.811695, 50.126469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.962727, 41.742985, 50.104046>,  <27.581297, 41.628468, 50.066673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962727, 41.742985, 50.104046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132778, 0.121227, 0.983704,
		0.270305, -0.950441, 0.153613,
		0.953575, 0.286296, 0.093430,
		28.248798, 41.828873, 50.132076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.387428, 34.403748, 36.978333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738995, 34.334824, 37.156239>,  <32.949936, 34.293468, 37.262981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738995, 34.334824, 37.156239>,  <32.387428, 34.403748, 36.978333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738995, 34.334824, 37.156239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142004, 0.795647, 0.588881,
		-0.455345, -0.580735, 0.674839,
		0.878917, -0.172315, 0.444761,
		33.002670, 34.283131, 37.289665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270283, 34.301464, 37.681057>,  <32.387428, 34.403748, 36.978333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270283, 34.301464, 37.681057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630367, 34.455612, 37.599964>,  <32.846420, 34.548100, 37.551308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630367, 34.455612, 37.599964>,  <32.270283, 34.301464, 37.681057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630367, 34.455612, 37.599964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208941, 0.790763, 0.575358,
		0.382042, -0.475587, 0.792377,
		0.900216, 0.385371, -0.202735,
		32.900433, 34.571224, 37.539143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495628, 34.467400, 38.291679>,  <32.270283, 34.301464, 37.681057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495628, 34.467400, 38.291679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681797, 34.711926, 38.035656>,  <32.793499, 34.858643, 37.882042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681797, 34.711926, 38.035656>,  <32.495628, 34.467400, 38.291679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681797, 34.711926, 38.035656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227405, 0.781473, 0.581023,
		0.855377, -0.124868, 0.502731,
		0.465422, 0.611317, -0.640058,
		32.821423, 34.895321, 37.843639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823071, 34.963505, 38.722424>,  <32.495628, 34.467400, 38.291679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823071, 34.963505, 38.722424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835217, 35.143227, 38.365280>,  <32.842503, 35.251060, 38.150993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835217, 35.143227, 38.365280>,  <32.823071, 34.963505, 38.722424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835217, 35.143227, 38.365280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176430, 0.881656, 0.437670,
		0.983845, 0.144239, 0.106041,
		0.030363, 0.449308, -0.892861,
		32.844326, 35.278019, 38.097424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223434, 35.471581, 38.844566>,  <32.823071, 34.963505, 38.722424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223434, 35.471581, 38.844566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014114, 35.577110, 38.520454>,  <32.888523, 35.640427, 38.325985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014114, 35.577110, 38.520454>,  <33.223434, 35.471581, 38.844566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014114, 35.577110, 38.520454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225150, 0.874272, 0.430064,
		0.821868, 0.407487, -0.398105,
		-0.523298, 0.263822, -0.810282,
		32.857124, 35.656258, 38.277370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371380, 36.194534, 38.739452>,  <33.223434, 35.471581, 38.844566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371380, 36.194534, 38.739452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032494, 36.150002, 38.531673>,  <32.829163, 36.123283, 38.407005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032494, 36.150002, 38.531673>,  <33.371380, 36.194534, 38.739452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032494, 36.150002, 38.531673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262817, 0.937592, 0.227703,
		0.461684, 0.329435, -0.823602,
		-0.847216, -0.111329, -0.519452,
		32.778328, 36.116604, 38.375839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202332, 36.877422, 38.464581>,  <33.371380, 36.194534, 38.739452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202332, 36.877422, 38.464581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839108, 36.711040, 38.444927>,  <32.621174, 36.611210, 38.433136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839108, 36.711040, 38.444927>,  <33.202332, 36.877422, 38.464581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839108, 36.711040, 38.444927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415105, 0.878076, 0.238056,
		-0.055875, 0.236565, -0.970007,
		-0.908056, -0.415956, -0.049137,
		32.566692, 36.586254, 38.430187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781265, 37.403446, 38.269855>,  <33.202332, 36.877422, 38.464581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781265, 37.403446, 38.269855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511875, 37.137451, 38.398983>,  <32.350239, 36.977852, 38.476460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511875, 37.137451, 38.398983>,  <32.781265, 37.403446, 38.269855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511875, 37.137451, 38.398983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639977, 0.743088, 0.195574,
		-0.369939, -0.074883, -0.926033,
		-0.673479, -0.664991, 0.322821,
		32.309830, 36.937954, 38.495831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173496, 37.734676, 38.096550>,  <32.781265, 37.403446, 38.269855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173496, 37.734676, 38.096550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053951, 37.444920, 38.345043>,  <31.982224, 37.271065, 38.494141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053951, 37.444920, 38.345043>,  <32.173496, 37.734676, 38.096550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053951, 37.444920, 38.345043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717990, 0.599515, 0.353656,
		-0.628627, -0.340348, -0.699279,
		-0.298862, -0.724393, 0.621238,
		31.964293, 37.227600, 38.531414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382170, 37.636467, 37.960007>,  <32.173496, 37.734676, 38.096550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382170, 37.636467, 37.960007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519859, 37.544712, 38.324181>,  <31.602474, 37.489658, 38.542686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519859, 37.544712, 38.324181>,  <31.382170, 37.636467, 37.960007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519859, 37.544712, 38.324181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495521, 0.779258, 0.383688,
		-0.797476, -0.583214, 0.154574,
		0.344226, -0.229387, 0.910434,
		31.623127, 37.475895, 38.597309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860170, 37.730515, 38.453728>,  <31.382170, 37.636467, 37.960007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860170, 37.730515, 38.453728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154396, 37.692551, 38.722038>,  <31.330933, 37.669773, 38.883022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154396, 37.692551, 38.722038>,  <30.860170, 37.730515, 38.453728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154396, 37.692551, 38.722038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422099, 0.710248, 0.563364,
		-0.529883, -0.697524, 0.482374,
		0.735565, -0.094907, 0.670773,
		31.375065, 37.664078, 38.923271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585476, 37.603512, 39.056446>,  <30.860170, 37.730515, 38.453728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585476, 37.603512, 39.056446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941904, 37.767891, 39.133507>,  <31.155762, 37.866520, 39.179745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941904, 37.767891, 39.133507>,  <30.585476, 37.603512, 39.056446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941904, 37.767891, 39.133507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410570, 0.548918, 0.728094,
		0.193460, -0.727880, 0.657848,
		0.891070, 0.410950, 0.192653,
		31.209225, 37.891174, 39.191303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534479, 36.954380, 39.464600>,  <30.585476, 37.603512, 39.056446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534479, 36.954380, 39.464600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172920, 36.784363, 39.483795>,  <29.955984, 36.682350, 39.495312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172920, 36.784363, 39.483795>,  <30.534479, 36.954380, 39.464600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172920, 36.784363, 39.483795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202749, -0.524519, -0.826905,
		0.376643, -0.737709, 0.560290,
		-0.903899, -0.425046, 0.047987,
		29.901751, 36.656849, 39.498192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648260, 36.417545, 39.007797>,  <30.534479, 36.954380, 39.464600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648260, 36.417545, 39.007797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251818, 36.378014, 39.043453>,  <30.013952, 36.354294, 39.064846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251818, 36.378014, 39.043453>,  <30.648260, 36.417545, 39.007797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251818, 36.378014, 39.043453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004555, -0.644184, -0.764857,
		0.133007, -0.758459, 0.638004,
		-0.991105, -0.098825, 0.089136,
		29.954487, 36.348366, 39.070194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568518, 35.789623, 38.687611>,  <30.648260, 36.417545, 39.007797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568518, 35.789623, 38.687611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193972, 35.928928, 38.705173>,  <29.969244, 36.012512, 38.715710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193972, 35.928928, 38.705173>,  <30.568518, 35.789623, 38.687611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193972, 35.928928, 38.705173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252673, -0.581890, -0.773020,
		-0.243668, -0.734924, 0.632860,
		-0.936366, 0.348267, 0.043907,
		29.913061, 36.033409, 38.718346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049606, 35.211483, 38.794567>,  <30.568518, 35.789623, 38.687611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049606, 35.211483, 38.794567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850216, 35.516758, 38.630096>,  <29.730581, 35.699924, 38.531414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850216, 35.516758, 38.630096>,  <30.049606, 35.211483, 38.794567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850216, 35.516758, 38.630096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244245, -0.578733, -0.778082,
		-0.831785, -0.287427, 0.474889,
		-0.498476, 0.763187, -0.411179,
		29.700672, 35.745712, 38.506744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378740, 35.007740, 38.714909>,  <30.049606, 35.211483, 38.794567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378740, 35.007740, 38.714909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435247, 35.291191, 38.438393>,  <29.469152, 35.461262, 38.272484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435247, 35.291191, 38.438393>,  <29.378740, 35.007740, 38.714909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435247, 35.291191, 38.438393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428732, -0.585622, -0.687921,
		-0.892318, 0.393563, 0.221081,
		0.141270, 0.708629, -0.691294,
		29.477629, 35.503780, 38.231003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789404, 34.994473, 38.316479>,  <29.378740, 35.007740, 38.714909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789404, 34.994473, 38.316479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025019, 35.198818, 38.066021>,  <29.166388, 35.321426, 37.915749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025019, 35.198818, 38.066021>,  <28.789404, 34.994473, 38.316479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025019, 35.198818, 38.066021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211997, -0.650002, -0.729763,
		-0.779803, 0.562598, -0.274574,
		0.589038, 0.510863, -0.626142,
		29.201731, 35.352077, 37.878178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351608, 35.124081, 37.681961>,  <28.789404, 34.994473, 38.316479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351608, 35.124081, 37.681961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729481, 35.158840, 37.555454>,  <28.956203, 35.179695, 37.479549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729481, 35.158840, 37.555454>,  <28.351608, 35.124081, 37.681961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729481, 35.158840, 37.555454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245855, -0.450659, -0.858174,
		-0.217100, 0.888457, -0.404366,
		0.944681, 0.086894, -0.316270,
		29.012886, 35.184910, 37.460575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333879, 35.320671, 36.884781>,  <28.351608, 35.124081, 37.681961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333879, 35.320671, 36.884781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695623, 35.160164, 36.942905>,  <28.912670, 35.063862, 36.977779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695623, 35.160164, 36.942905>,  <28.333879, 35.320671, 36.884781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695623, 35.160164, 36.942905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159645, -0.633861, -0.756792,
		0.395781, 0.661216, -0.637300,
		0.904362, -0.401266, 0.145311,
		28.966932, 35.039783, 36.986500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666561, 35.153721, 36.214470>,  <28.333879, 35.320671, 36.884781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666561, 35.153721, 36.214470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907581, 34.941429, 36.452885>,  <29.052193, 34.814056, 36.595932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907581, 34.941429, 36.452885>,  <28.666561, 35.153721, 36.214470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907581, 34.941429, 36.452885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014861, -0.739248, -0.673269,
		0.797942, 0.414537, -0.437548,
		0.602551, -0.530727, 0.596037,
		29.088346, 34.782211, 36.631695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276297, 34.954556, 35.830727>,  <28.666561, 35.153721, 36.214470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276297, 34.954556, 35.830727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233728, 34.691639, 36.129158>,  <29.208187, 34.533890, 36.308216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233728, 34.691639, 36.129158>,  <29.276297, 34.954556, 35.830727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233728, 34.691639, 36.129158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013405, -0.749327, -0.662064,
		0.994231, -0.080459, 0.070934,
		-0.106422, -0.657294, 0.746083,
		29.201801, 34.494450, 36.352982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774553, 34.343857, 35.638710>,  <29.276297, 34.954556, 35.830727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774553, 34.343857, 35.638710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502211, 34.204391, 35.896351>,  <29.338804, 34.120712, 36.050934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502211, 34.204391, 35.896351>,  <29.774553, 34.343857, 35.638710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502211, 34.204391, 35.896351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047786, -0.898691, -0.435972,
		0.730855, -0.266056, 0.628541,
		-0.680857, -0.348668, 0.644099,
		29.297953, 34.099792, 36.089581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083719, 33.733067, 35.939743>,  <29.774553, 34.343857, 35.638710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083719, 33.733067, 35.939743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686922, 33.707382, 35.983250>,  <29.448845, 33.691971, 36.009354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686922, 33.707382, 35.983250>,  <30.083719, 33.733067, 35.939743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686922, 33.707382, 35.983250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029104, -0.954174, -0.297833,
		0.122908, -0.292282, 0.948401,
		-0.991991, -0.064208, 0.108769,
		29.389324, 33.688118, 36.015881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994278, 33.098637, 36.337048>,  <30.083719, 33.733067, 35.939743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994278, 33.098637, 36.337048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652586, 33.165504, 36.140133>,  <29.447571, 33.205627, 36.021984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652586, 33.165504, 36.140133>,  <29.994278, 33.098637, 36.337048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652586, 33.165504, 36.140133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034246, -0.962931, -0.267567,
		-0.518770, -0.211705, 0.828287,
		-0.854228, 0.167171, -0.492289,
		29.396318, 33.215656, 35.992447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580734, 32.552773, 36.567543>,  <29.994278, 33.098637, 36.337048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580734, 32.552773, 36.567543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399256, 32.679310, 36.234295>,  <29.290369, 32.755234, 36.034348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399256, 32.679310, 36.234295>,  <29.580734, 32.552773, 36.567543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399256, 32.679310, 36.234295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294473, -0.935578, -0.194884,
		-0.841097, 0.156912, 0.517625,
		-0.453698, 0.316343, -0.833117,
		29.263145, 32.774212, 35.984360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190973, 32.685448, 36.918266>,  <29.580734, 32.552773, 36.567543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190973, 32.685448, 36.918266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050701, 32.597672, 37.282436>,  <29.966537, 32.545006, 37.500938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050701, 32.597672, 37.282436>,  <30.190973, 32.685448, 36.918266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050701, 32.597672, 37.282436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102373, -0.975316, -0.195650,
		0.930884, 0.024592, 0.364487,
		-0.350679, -0.219441, 0.910423,
		29.945498, 32.531837, 37.555565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437290, 32.093166, 37.285320>,  <30.190973, 32.685448, 36.918266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437290, 32.093166, 37.285320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773237, 32.195385, 37.476868>,  <30.974806, 32.256714, 37.591797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773237, 32.195385, 37.476868>,  <30.437290, 32.093166, 37.285320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773237, 32.195385, 37.476868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489707, -0.023784, 0.871563,
		0.234113, -0.966505, 0.105167,
		0.839868, 0.255545, 0.478872,
		31.025198, 32.272049, 37.620529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594875, 31.628969, 37.849548>,  <30.437290, 32.093166, 37.285320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594875, 31.628969, 37.849548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822371, 31.938059, 37.962284>,  <30.958868, 32.123512, 38.029926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822371, 31.938059, 37.962284>,  <30.594875, 31.628969, 37.849548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822371, 31.938059, 37.962284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297490, -0.126204, 0.946347,
		0.766834, -0.622069, 0.158100,
		0.568740, 0.772724, 0.281837,
		30.992992, 32.169876, 38.046837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802189, 31.433708, 38.515137>,  <30.594875, 31.628969, 37.849548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802189, 31.433708, 38.515137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888138, 31.822159, 38.473682>,  <30.939707, 32.055229, 38.448811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888138, 31.822159, 38.473682>,  <30.802189, 31.433708, 38.515137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888138, 31.822159, 38.473682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219516, 0.151424, 0.963786,
		0.951652, -0.184342, 0.245715,
		0.214874, 0.971128, -0.103637,
		30.952600, 32.113499, 38.442593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965113, 31.635798, 39.213646>,  <30.802189, 31.433708, 38.515137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965113, 31.635798, 39.213646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921862, 31.989140, 39.031223>,  <30.895910, 32.201145, 38.921768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921862, 31.989140, 39.031223>,  <30.965113, 31.635798, 39.213646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921862, 31.989140, 39.031223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285413, 0.411852, 0.865400,
		0.952285, 0.223740, 0.207588,
		-0.108129, 0.883356, -0.456059,
		30.889423, 32.254147, 38.894405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464724, 32.185406, 39.521172>,  <30.965113, 31.635798, 39.213646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464724, 32.185406, 39.521172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142878, 32.358318, 39.358334>,  <30.949770, 32.462067, 39.260632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142878, 32.358318, 39.358334>,  <31.464724, 32.185406, 39.521172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142878, 32.358318, 39.358334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174427, 0.483264, 0.857922,
		0.567602, 0.761304, -0.313438,
		-0.804614, 0.432286, -0.407094,
		30.901493, 32.488003, 39.236206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587494, 32.837372, 39.624580>,  <31.464724, 32.185406, 39.521172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587494, 32.837372, 39.624580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194382, 32.829079, 39.551136>,  <30.958515, 32.824104, 39.507069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194382, 32.829079, 39.551136>,  <31.587494, 32.837372, 39.624580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194382, 32.829079, 39.551136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160981, 0.583860, 0.795734,
		0.090709, 0.811590, -0.577143,
		-0.982780, -0.020729, -0.183612,
		30.899548, 32.822861, 39.496052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369520, 33.519203, 39.642715>,  <31.587494, 32.837372, 39.624580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369520, 33.519203, 39.642715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041698, 33.297756, 39.701828>,  <30.845005, 33.164886, 39.737297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041698, 33.297756, 39.701828>,  <31.369520, 33.519203, 39.642715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041698, 33.297756, 39.701828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315749, 0.651548, 0.689774,
		-0.478160, 0.518643, -0.708782,
		-0.819552, -0.553620, 0.147784,
		30.795834, 33.131672, 39.746162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830206, 34.006493, 39.812885>,  <31.369520, 33.519203, 39.642715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830206, 34.006493, 39.812885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662754, 33.664841, 39.936314>,  <30.562283, 33.459850, 40.010372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662754, 33.664841, 39.936314>,  <30.830206, 34.006493, 39.812885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662754, 33.664841, 39.936314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342053, 0.463054, 0.817668,
		-0.841278, 0.236752, -0.486005,
		-0.418631, -0.854125, 0.308575,
		30.537165, 33.408604, 40.028885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127449, 34.203571, 39.943600>,  <30.830206, 34.006493, 39.812885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127449, 34.203571, 39.943600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220213, 33.868237, 40.140945>,  <30.275871, 33.667034, 40.259354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220213, 33.868237, 40.140945>,  <30.127449, 34.203571, 39.943600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220213, 33.868237, 40.140945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291455, 0.424005, 0.857481,
		-0.928047, -0.342653, -0.146006,
		0.231911, -0.838337, 0.493365,
		30.289785, 33.616737, 40.288956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671782, 34.271255, 40.490063>,  <30.127449, 34.203571, 39.943600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671782, 34.271255, 40.490063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943207, 34.000229, 40.603519>,  <30.106062, 33.837612, 40.671593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943207, 34.000229, 40.603519>,  <29.671782, 34.271255, 40.490063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943207, 34.000229, 40.603519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004736, 0.390170, 0.920730,
		-0.734526, -0.623431, 0.267964,
		0.678563, -0.677570, 0.283638,
		30.146776, 33.796959, 40.688610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407360, 33.969875, 41.079998>,  <29.671782, 34.271255, 40.490063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407360, 33.969875, 41.079998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799860, 33.893524, 41.090668>,  <30.035360, 33.847713, 41.097069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799860, 33.893524, 41.090668>,  <29.407360, 33.969875, 41.079998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799860, 33.893524, 41.090668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056295, 0.416231, 0.907515,
		-0.184330, -0.888998, 0.419172,
		0.981251, -0.190880, 0.026677,
		30.094234, 33.836262, 41.098671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497927, 33.508232, 41.545746>,  <29.407360, 33.969875, 41.079998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497927, 33.508232, 41.545746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840084, 33.711750, 41.506901>,  <30.045380, 33.833858, 41.483593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840084, 33.711750, 41.506901>,  <29.497927, 33.508232, 41.545746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840084, 33.711750, 41.506901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060544, 0.284415, 0.956787,
		0.514426, -0.812551, 0.274092,
		0.855395, 0.508791, -0.097116,
		30.096703, 33.864388, 41.477768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826981, 33.431992, 42.227192>,  <29.497927, 33.508232, 41.545746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826981, 33.431992, 42.227192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071512, 33.714935, 42.085251>,  <30.218231, 33.884701, 42.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071512, 33.714935, 42.085251>,  <29.826981, 33.431992, 42.227192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071512, 33.714935, 42.085251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240520, 0.261116, 0.934863,
		0.753942, -0.656856, -0.010507,
		0.611327, 0.707360, -0.354853,
		30.254910, 33.927143, 41.978794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417765, 33.348816, 42.537384>,  <29.826981, 33.431992, 42.227192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417765, 33.348816, 42.537384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462446, 33.734543, 42.441364>,  <30.489256, 33.965977, 42.383755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462446, 33.734543, 42.441364>,  <30.417765, 33.348816, 42.537384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462446, 33.734543, 42.441364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351362, 0.187628, 0.917246,
		0.929552, -0.186804, -0.317864,
		0.111705, 0.964313, -0.240046,
		30.495958, 34.023838, 42.369350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019817, 33.536854, 42.847130>,  <30.417765, 33.348816, 42.537384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019817, 33.536854, 42.847130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872673, 33.898987, 42.762230>,  <30.784386, 34.116268, 42.711288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872673, 33.898987, 42.762230>,  <31.019817, 33.536854, 42.847130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872673, 33.898987, 42.762230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390535, 0.357564, 0.848310,
		0.843896, 0.229170, -0.485099,
		-0.367861, 0.905334, -0.212248,
		30.762314, 34.170586, 42.698555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612457, 33.978317, 42.952015>,  <31.019817, 33.536854, 42.847130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612457, 33.978317, 42.952015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285435, 34.206715, 42.981884>,  <31.089222, 34.343754, 42.999805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285435, 34.206715, 42.981884>,  <31.612457, 33.978317, 42.952015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285435, 34.206715, 42.981884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252359, 0.238700, 0.937730,
		0.517609, 0.785489, -0.339245,
		-0.817555, 0.570989, 0.074672,
		31.040169, 34.378010, 43.004284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829264, 34.732372, 43.047688>,  <31.612457, 33.978317, 42.952015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829264, 34.732372, 43.047688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455601, 34.693611, 43.185066>,  <31.231403, 34.670353, 43.267494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455601, 34.693611, 43.185066>,  <31.829264, 34.732372, 43.047688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455601, 34.693611, 43.185066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313185, 0.238728, 0.919198,
		-0.171065, 0.966239, -0.192660,
		-0.934158, -0.096905, 0.343449,
		31.175354, 34.664539, 43.288101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900946, 35.137634, 43.660595>,  <31.829264, 34.732372, 43.047688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900946, 35.137634, 43.660595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550282, 34.948566, 43.696480>,  <31.339884, 34.835125, 43.718010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550282, 34.948566, 43.696480>,  <31.900946, 35.137634, 43.660595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550282, 34.948566, 43.696480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002353, 0.182247, 0.983250,
		-0.481103, 0.862187, -0.158657,
		-0.876661, -0.472672, 0.089709,
		31.287283, 34.806767, 43.723392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617777, 35.451820, 44.236931>,  <31.900946, 35.137634, 43.660595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617777, 35.451820, 44.236931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404417, 35.115696, 44.198235>,  <31.276402, 34.914021, 44.175018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404417, 35.115696, 44.198235>,  <31.617777, 35.451820, 44.236931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404417, 35.115696, 44.198235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025883, -0.098100, 0.994840,
		-0.845468, 0.533149, 0.030577,
		-0.533398, -0.840314, -0.096740,
		31.244398, 34.863602, 44.169212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092543, 35.540474, 44.704025>,  <31.617777, 35.451820, 44.236931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092543, 35.540474, 44.704025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114698, 35.150051, 44.619881>,  <31.127993, 34.915798, 44.569393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114698, 35.150051, 44.619881>,  <31.092543, 35.540474, 44.704025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114698, 35.150051, 44.619881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085235, -0.214534, 0.972990,
		-0.994820, -0.035963, -0.095077,
		0.055389, -0.976054, -0.210358,
		31.131315, 34.857235, 44.556774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558756, 35.269333, 45.116032>,  <31.092543, 35.540474, 44.704025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558756, 35.269333, 45.116032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800819, 34.969395, 45.009056>,  <30.946056, 34.789433, 44.944870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800819, 34.969395, 45.009056>,  <30.558756, 35.269333, 45.116032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800819, 34.969395, 45.009056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039341, -0.363689, 0.930689,
		-0.795133, -0.552692, -0.249589,
		0.605157, -0.749841, -0.267438,
		30.982367, 34.744442, 44.928825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258146, 34.650978, 45.411976>,  <30.558756, 35.269333, 45.116032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258146, 34.650978, 45.411976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646652, 34.597103, 45.333485>,  <30.879755, 34.564777, 45.286388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646652, 34.597103, 45.333485>,  <30.258146, 34.650978, 45.411976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646652, 34.597103, 45.333485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170563, -0.181147, 0.968553,
		-0.165989, -0.974191, -0.152971,
		0.971265, -0.134678, -0.196229,
		30.938030, 34.556698, 45.274616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496202, 34.048187, 45.811356>,  <30.258146, 34.650978, 45.411976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496202, 34.048187, 45.811356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793150, 34.305149, 45.735245>,  <30.971317, 34.459328, 45.689579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793150, 34.305149, 45.735245>,  <30.496202, 34.048187, 45.811356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793150, 34.305149, 45.735245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330665, -0.104297, 0.937968,
		0.582712, -0.759233, -0.289848,
		0.742367, 0.642407, -0.190277,
		31.015860, 34.497871, 45.678162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039183, 33.731567, 46.129387>,  <30.496202, 34.048187, 45.811356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039183, 33.731567, 46.129387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173494, 34.101810, 46.059532>,  <31.254082, 34.323956, 46.017620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173494, 34.101810, 46.059532>,  <31.039183, 33.731567, 46.129387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173494, 34.101810, 46.059532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288294, 0.075519, 0.954560,
		0.896739, -0.370866, -0.241490,
		0.335777, 0.925611, -0.174639,
		31.274227, 34.379494, 46.007141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722017, 33.723808, 46.440155>,  <31.039183, 33.731567, 46.129387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722017, 33.723808, 46.440155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602001, 34.104843, 46.419949>,  <31.529991, 34.333466, 46.407825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602001, 34.104843, 46.419949>,  <31.722017, 33.723808, 46.440155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602001, 34.104843, 46.419949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144921, 0.097855, 0.984592,
		0.942854, 0.288097, -0.167410,
		-0.300040, 0.952588, -0.050512,
		31.511990, 34.390621, 46.404797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221977, 34.060608, 46.849644>,  <31.722017, 33.723808, 46.440155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221977, 34.060608, 46.849644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926508, 34.329479, 46.829472>,  <31.749228, 34.490803, 46.817368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926508, 34.329479, 46.829472>,  <32.221977, 34.060608, 46.849644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926508, 34.329479, 46.829472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249584, 0.342233, 0.905861,
		0.626157, 0.656548, -0.420562,
		-0.738671, 0.672177, -0.050427,
		31.704906, 34.531132, 46.814342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532482, 34.796215, 46.961720>,  <32.221977, 34.060608, 46.849644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532482, 34.796215, 46.961720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147739, 34.845737, 47.059292>,  <31.916893, 34.875450, 47.117836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147739, 34.845737, 47.059292>,  <32.532482, 34.796215, 46.961720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147739, 34.845737, 47.059292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270008, 0.572727, 0.774002,
		-0.043880, 0.810343, -0.584310,
		-0.961858, 0.123806, 0.243931,
		31.859182, 34.882877, 47.132469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891689, 35.432083, 46.858681>,  <32.532482, 34.796215, 46.961720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891689, 35.432083, 46.858681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258640, 35.572491, 46.933727>,  <33.478813, 35.656734, 46.978756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258640, 35.572491, 46.933727>,  <32.891689, 35.432083, 46.858681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258640, 35.572491, 46.933727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262461, -0.179156, -0.948165,
		-0.299215, 0.919068, -0.256484,
		0.917379, 0.351022, 0.187613,
		33.533855, 35.677799, 46.990013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073318, 36.069668, 46.361759>,  <32.891689, 35.432083, 46.858681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073318, 36.069668, 46.361759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385029, 35.873848, 46.518257>,  <33.572056, 35.756355, 46.612156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385029, 35.873848, 46.518257>,  <33.073318, 36.069668, 46.361759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385029, 35.873848, 46.518257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325838, -0.216765, -0.920240,
		0.535309, 0.844604, -0.009406,
		0.779277, -0.489548, 0.391241,
		33.618813, 35.726982, 46.635628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521057, 36.240086, 45.848606>,  <33.073318, 36.069668, 46.361759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521057, 36.240086, 45.848606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706112, 35.941917, 46.040573>,  <33.817146, 35.763016, 46.155754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706112, 35.941917, 46.040573>,  <33.521057, 36.240086, 45.848606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706112, 35.941917, 46.040573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471232, -0.251763, -0.845314,
		0.750938, 0.617224, 0.234791,
		0.462636, -0.745419, 0.479914,
		33.844902, 35.718292, 46.184547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181618, 36.319012, 45.655720>,  <33.521057, 36.240086, 45.848606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181618, 36.319012, 45.655720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134842, 35.938946, 45.771317>,  <34.106777, 35.710907, 45.840675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134842, 35.938946, 45.771317>,  <34.181618, 36.319012, 45.655720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134842, 35.938946, 45.771317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469796, -0.309291, -0.826820,
		0.874996, 0.039080, 0.482551,
		-0.116937, -0.950164, 0.288988,
		34.099762, 35.653896, 45.858013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830952, 36.016376, 45.443260>,  <34.181618, 36.319012, 45.655720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830952, 36.016376, 45.443260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541237, 35.741142, 45.460903>,  <34.367409, 35.576000, 45.471489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541237, 35.741142, 45.460903>,  <34.830952, 36.016376, 45.443260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541237, 35.741142, 45.460903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228784, -0.300183, -0.926039,
		0.650438, -0.660624, 0.374841,
		-0.724284, -0.688089, 0.044110,
		34.323952, 35.534714, 45.474136>
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
