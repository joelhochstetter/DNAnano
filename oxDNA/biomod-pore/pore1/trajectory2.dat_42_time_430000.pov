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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<41.035999, 40.383415, 41.486313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983971, 40.541428, 41.850079>,  <40.952755, 40.636234, 42.068336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983971, 40.541428, 41.850079>,  <41.035999, 40.383415, 41.486313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983971, 40.541428, 41.850079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978329, -0.200162, -0.052979,
		0.161102, -0.896596, 0.412506,
		-0.130069, 0.395032, 0.909413,
		40.944950, 40.659939, 42.122902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590942, 39.970161, 41.852398>,  <41.035999, 40.383415, 41.486313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590942, 39.970161, 41.852398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587883, 40.313904, 42.056927>,  <40.586048, 40.520149, 42.179646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587883, 40.313904, 42.056927>,  <40.590942, 39.970161, 41.852398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587883, 40.313904, 42.056927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997823, -0.040051, 0.052385,
		0.065496, -0.509807, 0.857792,
		-0.007649, 0.859356, 0.511321,
		40.585587, 40.571709, 42.210323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089378, 39.804245, 42.512337>,  <40.590942, 39.970161, 41.852398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089378, 39.804245, 42.512337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115665, 40.202293, 42.482925>,  <40.131439, 40.441124, 42.465279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115665, 40.202293, 42.482925>,  <40.089378, 39.804245, 42.512337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115665, 40.202293, 42.482925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990560, 0.073947, 0.115424,
		0.120298, 0.065247, 0.990591,
		0.065720, 0.995126, -0.073527,
		40.135380, 40.500832, 42.460869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764378, 40.099945, 43.110439>,  <40.089378, 39.804245, 42.512337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764378, 40.099945, 43.110439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747955, 40.403557, 42.850536>,  <39.738102, 40.585724, 42.694595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747955, 40.403557, 42.850536>,  <39.764378, 40.099945, 43.110439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747955, 40.403557, 42.850536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938923, 0.193068, 0.284866,
		0.341669, 0.621771, 0.704743,
		-0.041058, 0.759029, -0.649760,
		39.735638, 40.631268, 42.655609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418556, 40.613247, 43.483131>,  <39.764378, 40.099945, 43.110439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418556, 40.613247, 43.483131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392357, 40.717422, 43.097824>,  <39.376637, 40.779930, 42.866642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392357, 40.717422, 43.097824>,  <39.418556, 40.613247, 43.483131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392357, 40.717422, 43.097824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957989, 0.253715, 0.133741,
		0.279227, 0.931557, 0.232882,
		-0.065501, 0.260443, -0.963265,
		39.372707, 40.795555, 42.808846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090511, 41.231483, 43.484798>,  <39.418556, 40.613247, 43.483131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090511, 41.231483, 43.484798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051548, 41.126587, 43.100769>,  <39.028168, 41.063648, 42.870350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051548, 41.126587, 43.100769>,  <39.090511, 41.231483, 43.484798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051548, 41.126587, 43.100769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982173, 0.181161, 0.050170,
		0.160771, 0.947844, -0.275217,
		-0.097412, -0.262245, -0.960072,
		39.022324, 41.047913, 42.812748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626823, 41.734020, 43.209949>,  <39.090511, 41.231483, 43.484798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626823, 41.734020, 43.209949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596676, 41.428108, 42.954002>,  <38.578587, 41.244560, 42.800434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596676, 41.428108, 42.954002>,  <38.626823, 41.734020, 43.209949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596676, 41.428108, 42.954002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995180, 0.098063, 0.000015,
		0.062737, 0.636789, -0.768481,
		-0.075369, -0.764777, -0.639872,
		38.574066, 41.198677, 42.762039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251915, 41.946522, 42.718346>,  <38.626823, 41.734020, 43.209949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251915, 41.946522, 42.718346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213409, 41.549370, 42.690266>,  <38.190308, 41.311081, 42.673416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213409, 41.549370, 42.690266>,  <38.251915, 41.946522, 42.718346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213409, 41.549370, 42.690266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987027, 0.104325, -0.122046,
		0.128501, 0.057545, -0.990039,
		-0.096263, -0.992877, -0.070204,
		38.184532, 41.251507, 42.669205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896675, 41.984566, 42.149731>,  <38.251915, 41.946522, 42.718346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896675, 41.984566, 42.149731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825584, 41.642067, 42.343746>,  <37.782928, 41.436569, 42.460155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825584, 41.642067, 42.343746>,  <37.896675, 41.984566, 42.149731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825584, 41.642067, 42.343746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982373, 0.183391, -0.036219,
		-0.057939, -0.482923, -0.873744,
		-0.177728, -0.856243, 0.485036,
		37.772266, 41.385193, 42.489258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339565, 41.593727, 41.780151>,  <37.896675, 41.984566, 42.149731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339565, 41.593727, 41.780151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343311, 41.468674, 42.160084>,  <37.345558, 41.393642, 42.388042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343311, 41.468674, 42.160084>,  <37.339565, 41.593727, 41.780151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343311, 41.468674, 42.160084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993541, 0.104515, 0.044200,
		-0.113090, -0.944108, -0.309631,
		0.009368, -0.312630, 0.949829,
		37.346123, 41.374886, 42.445034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606377, 41.417389, 41.896679>,  <37.339565, 41.593727, 41.780151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606377, 41.417389, 41.896679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775070, 41.444565, 42.258347>,  <36.876286, 41.460873, 42.475346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775070, 41.444565, 42.258347>,  <36.606377, 41.417389, 41.896679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775070, 41.444565, 42.258347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900982, 0.143401, 0.409473,
		-0.101839, -0.987330, 0.121691,
		0.421735, 0.067941, 0.904170,
		36.901592, 41.464947, 42.529598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075378, 41.142334, 42.368542>,  <36.606377, 41.417389, 41.896679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075378, 41.142334, 42.368542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309017, 41.359901, 42.609535>,  <36.449200, 41.490440, 42.754131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309017, 41.359901, 42.609535>,  <36.075378, 41.142334, 42.368542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309017, 41.359901, 42.609535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784888, 0.189346, 0.589998,
		0.206847, -0.817484, 0.537526,
		0.584093, 0.543937, 0.602468,
		36.484245, 41.523075, 42.790279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030582, 40.814362, 43.036308>,  <36.075378, 41.142334, 42.368542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030582, 40.814362, 43.036308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207958, 41.143852, 43.177631>,  <36.314384, 41.341549, 43.262424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207958, 41.143852, 43.177631>,  <36.030582, 40.814362, 43.036308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207958, 41.143852, 43.177631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599543, -0.020414, 0.800082,
		0.666265, -0.566613, 0.484810,
		0.443440, 0.823731, 0.353310,
		36.340992, 41.390972, 43.283623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250309, 40.656132, 43.723392>,  <36.030582, 40.814362, 43.036308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250309, 40.656132, 43.723392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209297, 41.052727, 43.691288>,  <36.184689, 41.290684, 43.672024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209297, 41.052727, 43.691288>,  <36.250309, 40.656132, 43.723392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209297, 41.052727, 43.691288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358963, 0.038368, 0.932563,
		0.927703, 0.124429, 0.351973,
		-0.102533, 0.991486, -0.080260,
		36.178535, 41.350174, 43.667210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701859, 40.955994, 44.252094>,  <36.250309, 40.656132, 43.723392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701859, 40.955994, 44.252094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429016, 41.229141, 44.147461>,  <36.265312, 41.393028, 44.084682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429016, 41.229141, 44.147461>,  <36.701859, 40.955994, 44.252094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429016, 41.229141, 44.147461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424980, -0.079077, 0.901742,
		0.595087, 0.726248, 0.344144,
		-0.682102, 0.682870, -0.261583,
		36.224384, 41.434002, 44.068985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657360, 41.273514, 44.833397>,  <36.701859, 40.955994, 44.252094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657360, 41.273514, 44.833397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321598, 41.405022, 44.660278>,  <36.120140, 41.483925, 44.556408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321598, 41.405022, 44.660278>,  <36.657360, 41.273514, 44.833397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321598, 41.405022, 44.660278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485170, -0.094334, 0.869317,
		0.244975, 0.939688, 0.238692,
		-0.839403, 0.328767, -0.432799,
		36.069778, 41.503651, 44.530437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332394, 41.765755, 45.310574>,  <36.657360, 41.273514, 44.833397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332394, 41.765755, 45.310574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047119, 41.630096, 45.065186>,  <35.875954, 41.548702, 44.917953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047119, 41.630096, 45.065186>,  <36.332394, 41.765755, 45.310574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047119, 41.630096, 45.065186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615912, -0.114683, 0.779423,
		-0.334690, 0.933719, -0.127091,
		-0.713187, -0.339142, -0.613472,
		35.833164, 41.528355, 44.881145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703835, 42.075951, 45.629211>,  <36.332394, 41.765755, 45.310574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703835, 42.075951, 45.629211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609322, 41.765442, 45.395435>,  <35.552612, 41.579136, 45.255169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609322, 41.765442, 45.395435>,  <35.703835, 42.075951, 45.629211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609322, 41.765442, 45.395435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767837, -0.219432, 0.601893,
		-0.595479, 0.590972, -0.544204,
		-0.236287, -0.776275, -0.584437,
		35.538437, 41.532558, 45.220104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016876, 42.164330, 45.544849>,  <35.703835, 42.075951, 45.629211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016876, 42.164330, 45.544849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137466, 41.786491, 45.492912>,  <35.209820, 41.559788, 45.461750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137466, 41.786491, 45.492912>,  <35.016876, 42.164330, 45.544849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137466, 41.786491, 45.492912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617948, -0.297273, 0.727853,
		-0.726122, -0.139196, -0.673329,
		0.301476, -0.944592, -0.129841,
		35.227909, 41.503113, 45.453960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415466, 41.843437, 45.641312>,  <35.016876, 42.164330, 45.544849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415466, 41.843437, 45.641312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688496, 41.554337, 45.684612>,  <34.852314, 41.380875, 45.710594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688496, 41.554337, 45.684612>,  <34.415466, 41.843437, 45.641312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688496, 41.554337, 45.684612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544833, -0.404528, 0.734516,
		-0.487086, -0.560339, -0.669901,
		0.682572, -0.722757, 0.108251,
		34.893269, 41.337509, 45.717087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027054, 41.357456, 45.918812>,  <34.415466, 41.843437, 45.641312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027054, 41.357456, 45.918812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389046, 41.197311, 45.976379>,  <34.606243, 41.101223, 46.010921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389046, 41.197311, 45.976379>,  <34.027054, 41.357456, 45.918812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389046, 41.197311, 45.976379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372689, -0.582868, 0.722058,
		-0.205200, -0.707088, -0.676698,
		0.904984, -0.400364, 0.143919,
		34.660542, 41.077202, 46.019554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983181, 40.604652, 45.813553>,  <34.027054, 41.357456, 45.918812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983181, 40.604652, 45.813553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292793, 40.675575, 46.056679>,  <34.478561, 40.718128, 46.202553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292793, 40.675575, 46.056679>,  <33.983181, 40.604652, 45.813553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292793, 40.675575, 46.056679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422213, -0.570830, 0.704194,
		0.471819, -0.801695, -0.366977,
		0.774031, 0.177309, 0.607814,
		34.525002, 40.728767, 46.239021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260139, 39.994450, 46.030037>,  <33.983181, 40.604652, 45.813553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260139, 39.994450, 46.030037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401047, 40.227379, 46.323109>,  <34.485592, 40.367134, 46.498951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401047, 40.227379, 46.323109>,  <34.260139, 39.994450, 46.030037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401047, 40.227379, 46.323109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244409, -0.698451, 0.672630,
		0.903423, -0.416016, -0.103715,
		0.352265, 0.582320, 0.732675,
		34.506725, 40.402077, 46.542912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467461, 39.569786, 46.471668>,  <34.260139, 39.994450, 46.030037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467461, 39.569786, 46.471668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459145, 39.905640, 46.688770>,  <34.454155, 40.107151, 46.819031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459145, 39.905640, 46.688770>,  <34.467461, 39.569786, 46.471668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459145, 39.905640, 46.688770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398526, -0.504835, 0.765714,
		0.916921, -0.200384, 0.345111,
		-0.020787, 0.839635, 0.542753,
		34.452908, 40.157532, 46.851597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743092, 39.397263, 47.149914>,  <34.467461, 39.569786, 46.471668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743092, 39.397263, 47.149914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531784, 39.729248, 47.221581>,  <34.404999, 39.928440, 47.264580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531784, 39.729248, 47.221581>,  <34.743092, 39.397263, 47.149914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531784, 39.729248, 47.221581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382302, -0.420910, 0.822605,
		0.758141, 0.366062, 0.539649,
		-0.528268, 0.829960, 0.179163,
		34.373302, 39.978237, 47.275330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795948, 39.544285, 47.830177>,  <34.743092, 39.397263, 47.149914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795948, 39.544285, 47.830177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460609, 39.750343, 47.758854>,  <34.259407, 39.873978, 47.716061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460609, 39.750343, 47.758854>,  <34.795948, 39.544285, 47.830177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460609, 39.750343, 47.758854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394425, -0.347423, 0.850721,
		0.376301, 0.783529, 0.494450,
		-0.838347, 0.515150, -0.178308,
		34.209106, 39.904888, 47.705360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536171, 39.817650, 48.504536>,  <34.795948, 39.544285, 47.830177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536171, 39.817650, 48.504536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224525, 39.839905, 48.254772>,  <34.037540, 39.853260, 48.104912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224525, 39.839905, 48.254772>,  <34.536171, 39.817650, 48.504536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224525, 39.839905, 48.254772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578297, -0.448289, 0.681622,
		-0.241991, 0.892155, 0.381444,
		-0.779110, 0.055642, -0.624413,
		33.990791, 39.856598, 48.067448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058548, 40.224564, 48.882092>,  <34.536171, 39.817650, 48.504536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058548, 40.224564, 48.882092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840965, 40.042923, 48.599842>,  <33.710415, 39.933941, 48.430492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840965, 40.042923, 48.599842>,  <34.058548, 40.224564, 48.882092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840965, 40.042923, 48.599842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702268, -0.213893, 0.679021,
		-0.459270, 0.864896, -0.202548,
		-0.543959, -0.454097, -0.705623,
		33.677776, 39.906693, 48.388157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514111, 40.515141, 48.925495>,  <34.058548, 40.224564, 48.882092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514111, 40.515141, 48.925495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434048, 40.158669, 48.762650>,  <33.386009, 39.944786, 48.664944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434048, 40.158669, 48.762650>,  <33.514111, 40.515141, 48.925495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434048, 40.158669, 48.762650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704120, -0.158091, 0.692259,
		-0.681286, 0.425217, -0.595852,
		-0.200161, -0.891177, -0.407110,
		33.374001, 39.891315, 48.640518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784904, 40.542503, 48.648418>,  <33.514111, 40.515141, 48.925495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784904, 40.542503, 48.648418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907825, 40.168114, 48.717133>,  <32.981579, 39.943478, 48.758362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907825, 40.168114, 48.717133>,  <32.784904, 40.542503, 48.648418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907825, 40.168114, 48.717133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802023, -0.157582, 0.576131,
		-0.512176, -0.314823, -0.799101,
		0.307303, -0.935978, 0.171786,
		33.000015, 39.887321, 48.768669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161514, 40.141056, 48.616138>,  <32.784904, 40.542503, 48.648418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161514, 40.141056, 48.616138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397182, 39.888481, 48.817799>,  <32.538582, 39.736935, 48.938793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397182, 39.888481, 48.817799>,  <32.161514, 40.141056, 48.616138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397182, 39.888481, 48.817799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762080, -0.226882, 0.606431,
		-0.268546, -0.741488, -0.614881,
		0.589167, -0.631443, 0.504145,
		32.573933, 39.699051, 48.969044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818050, 39.422039, 48.655758>,  <32.161514, 40.141056, 48.616138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818050, 39.422039, 48.655758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074688, 39.417107, 48.962536>,  <32.228672, 39.414146, 49.146603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074688, 39.417107, 48.962536>,  <31.818050, 39.422039, 48.655758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074688, 39.417107, 48.962536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721331, -0.349715, 0.597814,
		0.260840, -0.936775, -0.233271,
		0.641595, -0.012332, 0.766944,
		32.267166, 39.413406, 49.192619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649435, 38.778690, 49.054420>,  <31.818050, 39.422039, 48.655758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649435, 38.778690, 49.054420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879175, 38.984276, 49.309280>,  <32.017021, 39.107628, 49.462196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879175, 38.984276, 49.309280>,  <31.649435, 38.778690, 49.054420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879175, 38.984276, 49.309280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623888, -0.229079, 0.747185,
		0.529984, -0.826659, 0.189083,
		0.574352, 0.513963, 0.637151,
		32.051479, 39.138466, 49.500427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709234, 38.360695, 49.678600>,  <31.649435, 38.778690, 49.054420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709234, 38.360695, 49.678600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783062, 38.738525, 49.787201>,  <31.827358, 38.965221, 49.852360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783062, 38.738525, 49.787201>,  <31.709234, 38.360695, 49.678600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783062, 38.738525, 49.787201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736107, -0.050185, 0.675003,
		0.651216, -0.324439, 0.686045,
		0.184568, 0.944575, 0.271502,
		31.838432, 39.021896, 49.868652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923380, 38.337936, 50.423191>,  <31.709234, 38.360695, 49.678600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923380, 38.337936, 50.423191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835859, 38.725014, 50.373070>,  <31.783346, 38.957260, 50.342995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835859, 38.725014, 50.373070>,  <31.923380, 38.337936, 50.423191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835859, 38.725014, 50.373070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640188, -0.045450, 0.766873,
		0.736400, 0.248015, 0.629448,
		-0.218804, 0.967689, -0.125307,
		31.770218, 39.015320, 50.335476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010021, 38.542110, 51.082947>,  <31.923380, 38.337936, 50.423191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010021, 38.542110, 51.082947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779163, 38.795982, 50.877392>,  <31.640648, 38.948307, 50.754059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779163, 38.795982, 50.877392>,  <32.010021, 38.542110, 51.082947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779163, 38.795982, 50.877392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652920, 0.019343, 0.757180,
		0.490507, 0.772533, 0.403231,
		-0.577147, 0.634680, -0.513890,
		31.606020, 38.986385, 50.723225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953753, 39.053532, 51.572754>,  <32.010021, 38.542110, 51.082947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953753, 39.053532, 51.572754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658903, 39.128319, 51.313004>,  <31.481995, 39.173191, 51.157154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658903, 39.128319, 51.313004>,  <31.953753, 39.053532, 51.572754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658903, 39.128319, 51.313004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634111, 0.140766, 0.760321,
		0.233567, 0.972228, 0.014798,
		-0.737122, 0.186970, -0.649379,
		31.437767, 39.184410, 51.118191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632250, 39.684784, 51.853115>,  <31.953753, 39.053532, 51.572754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632250, 39.684784, 51.853115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367342, 39.460403, 51.654427>,  <31.208397, 39.325775, 51.535213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367342, 39.460403, 51.654427>,  <31.632250, 39.684784, 51.853115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367342, 39.460403, 51.654427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702288, 0.233686, 0.672445,
		-0.261133, 0.794181, -0.548714,
		-0.662270, -0.560953, -0.496720,
		31.168661, 39.292118, 51.505409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995356, 40.115353, 51.968567>,  <31.632250, 39.684784, 51.853115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995356, 40.115353, 51.968567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859961, 39.759590, 51.845680>,  <30.778723, 39.546131, 51.771950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859961, 39.759590, 51.845680>,  <30.995356, 40.115353, 51.968567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859961, 39.759590, 51.845680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564881, -0.069049, 0.822278,
		-0.752553, 0.451872, -0.479037,
		-0.338487, -0.889407, -0.307217,
		30.758415, 39.492767, 51.753517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162327, 40.123795, 51.890602>,  <30.995356, 40.115353, 51.968567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162327, 40.123795, 51.890602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300930, 39.757111, 51.970184>,  <30.384092, 39.537102, 52.017933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300930, 39.757111, 51.970184>,  <30.162327, 40.123795, 51.890602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300930, 39.757111, 51.970184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577204, -0.041176, 0.815561,
		-0.739438, -0.397436, -0.543394,
		0.346508, -0.916705, 0.198954,
		30.404882, 39.482098, 52.029869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545712, 39.705891, 51.988167>,  <30.162327, 40.123795, 51.890602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545712, 39.705891, 51.988167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840601, 39.487373, 52.147194>,  <30.017534, 39.356262, 52.242611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840601, 39.487373, 52.147194>,  <29.545712, 39.705891, 51.988167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840601, 39.487373, 52.147194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564042, -0.173666, 0.807278,
		-0.371971, -0.819388, -0.436166,
		0.737221, -0.546299, 0.397570,
		30.061768, 39.323483, 52.266464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205366, 39.009136, 52.280758>,  <29.545712, 39.705891, 51.988167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205366, 39.009136, 52.280758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551844, 39.015839, 52.480530>,  <29.759729, 39.019859, 52.600391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551844, 39.015839, 52.480530>,  <29.205366, 39.009136, 52.280758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551844, 39.015839, 52.480530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492440, -0.141234, 0.858811,
		0.084927, -0.989834, -0.114084,
		0.866193, 0.016757, 0.499428,
		29.811701, 39.020866, 52.630360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266302, 38.391537, 52.542198>,  <29.205366, 39.009136, 52.280758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266302, 38.391537, 52.542198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481758, 38.638603, 52.771408>,  <29.611031, 38.786842, 52.908932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481758, 38.638603, 52.771408>,  <29.266302, 38.391537, 52.542198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481758, 38.638603, 52.771408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450011, -0.364064, 0.815443,
		0.712291, -0.697094, 0.081860,
		0.538638, 0.617670, 0.573020,
		29.643351, 38.823906, 52.943314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822659, 38.127281, 53.025791>,  <29.266302, 38.391537, 52.542198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822659, 38.127281, 53.025791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645061, 38.447006, 53.187763>,  <29.538504, 38.638844, 53.284946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645061, 38.447006, 53.187763>,  <29.822659, 38.127281, 53.025791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645061, 38.447006, 53.187763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213339, -0.533218, 0.818636,
		0.870262, 0.277082, 0.407270,
		-0.443993, 0.799314, 0.404928,
		29.511864, 38.686802, 53.309242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132484, 38.283512, 53.800640>,  <29.822659, 38.127281, 53.025791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132484, 38.283512, 53.800640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766993, 38.431763, 53.734028>,  <29.547697, 38.520714, 53.694061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766993, 38.431763, 53.734028>,  <30.132484, 38.283512, 53.800640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766993, 38.431763, 53.734028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346777, -0.497713, 0.795002,
		0.211768, 0.784165, 0.583301,
		-0.913729, 0.370631, -0.166531,
		29.492874, 38.542953, 53.684071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803425, 38.308678, 54.462734>,  <30.132484, 38.283512, 53.800640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803425, 38.308678, 54.462734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489452, 38.323235, 54.215328>,  <29.301069, 38.331970, 54.066883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489452, 38.323235, 54.215328>,  <29.803425, 38.308678, 54.462734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489452, 38.323235, 54.215328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546213, -0.511868, 0.663055,
		-0.292467, 0.858293, 0.421660,
		-0.784930, 0.036395, -0.618515,
		29.253973, 38.334152, 54.029774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182262, 38.640923, 54.863594>,  <29.803425, 38.308678, 54.462734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182262, 38.640923, 54.863594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077740, 38.365570, 54.592937>,  <29.015026, 38.200359, 54.430542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077740, 38.365570, 54.592937>,  <29.182262, 38.640923, 54.863594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077740, 38.365570, 54.592937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368056, -0.576983, 0.729126,
		-0.892330, 0.439571, -0.102592,
		-0.261308, -0.688381, -0.676646,
		28.999348, 38.159058, 54.389942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553877, 38.803165, 55.136288>,  <29.182262, 38.640923, 54.863594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553877, 38.803165, 55.136288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836855, 38.808533, 55.418945>,  <29.006641, 38.811752, 55.588539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836855, 38.808533, 55.418945>,  <28.553877, 38.803165, 55.136288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836855, 38.808533, 55.418945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624967, 0.455038, -0.634316,
		-0.330061, 0.890371, 0.313527,
		0.707443, 0.013419, 0.706643,
		29.049088, 38.812557, 55.630939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783688, 39.385098, 54.792927>,  <28.553877, 38.803165, 55.136288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783688, 39.385098, 54.792927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027721, 39.224518, 55.066170>,  <29.174143, 39.128170, 55.230114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027721, 39.224518, 55.066170>,  <28.783688, 39.385098, 54.792927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027721, 39.224518, 55.066170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789490, 0.235008, -0.566989,
		0.067079, 0.885219, 0.460312,
		0.610086, -0.401445, 0.683108,
		29.210747, 39.104084, 55.271103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383682, 39.806507, 54.752689>,  <28.783688, 39.385098, 54.792927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383682, 39.806507, 54.752689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499081, 39.475098, 54.944656>,  <29.568319, 39.276253, 55.059837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499081, 39.475098, 54.944656>,  <29.383682, 39.806507, 54.752689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499081, 39.475098, 54.944656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927029, 0.116298, -0.356499,
		0.239555, 0.547742, 0.801618,
		0.288496, -0.828524, 0.479913,
		29.585630, 39.226540, 55.088631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984835, 39.871422, 55.181599>,  <29.383682, 39.806507, 54.752689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984835, 39.871422, 55.181599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983845, 39.480827, 55.095375>,  <29.983250, 39.246471, 55.043640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983845, 39.480827, 55.095375>,  <29.984835, 39.871422, 55.181599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983845, 39.480827, 55.095375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932437, 0.075634, -0.353329,
		0.361325, -0.201873, 0.910325,
		-0.002476, -0.976487, -0.215562,
		29.983103, 39.187881, 55.030708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473740, 39.490746, 55.657135>,  <29.984835, 39.871422, 55.181599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473740, 39.490746, 55.657135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413294, 39.311890, 55.304493>,  <30.377026, 39.204575, 55.092907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413294, 39.311890, 55.304493>,  <30.473740, 39.490746, 55.657135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413294, 39.311890, 55.304493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976307, 0.072229, -0.203981,
		0.154887, -0.891541, 0.425635,
		-0.151114, -0.447144, -0.881605,
		30.367960, 39.177746, 55.040012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043419, 39.064487, 55.498585>,  <30.473740, 39.490746, 55.657135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043419, 39.064487, 55.498585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865065, 39.098793, 55.142197>,  <30.758053, 39.119377, 54.928364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865065, 39.098793, 55.142197>,  <31.043419, 39.064487, 55.498585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865065, 39.098793, 55.142197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883120, -0.120096, -0.453516,
		-0.145899, -0.989051, -0.022194,
		-0.445885, 0.085767, -0.890972,
		30.731298, 39.124523, 54.874905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172506, 38.432388, 55.136288>,  <31.043419, 39.064487, 55.498585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172506, 38.432388, 55.136288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123060, 38.729546, 54.873131>,  <31.093391, 38.907841, 54.715237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123060, 38.729546, 54.873131>,  <31.172506, 38.432388, 55.136288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123060, 38.729546, 54.873131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896539, -0.200580, -0.394950,
		-0.425367, -0.638652, -0.641238,
		-0.123616, 0.742894, -0.657897,
		31.085976, 38.952415, 54.675762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450731, 38.221382, 54.501339>,  <31.172506, 38.432388, 55.136288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450731, 38.221382, 54.501339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453802, 38.620697, 54.478161>,  <31.455645, 38.860287, 54.464252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453802, 38.620697, 54.478161>,  <31.450731, 38.221382, 54.501339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453802, 38.620697, 54.478161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918781, -0.029914, -0.393633,
		-0.394693, -0.050216, -0.917440,
		0.007678, 0.998290, -0.057945,
		31.456106, 38.920185, 54.460777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690643, 38.530933, 53.790573>,  <31.450731, 38.221382, 54.501339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690643, 38.530933, 53.790573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758995, 38.844040, 54.029930>,  <31.800007, 39.031902, 54.173546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758995, 38.844040, 54.029930>,  <31.690643, 38.530933, 53.790573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758995, 38.844040, 54.029930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916076, 0.097391, -0.388997,
		-0.362772, 0.614648, -0.700431,
		0.170881, 0.782766, 0.598396,
		31.810259, 39.078869, 54.209450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864733, 38.994766, 53.266167>,  <31.690643, 38.530933, 53.790573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864733, 38.994766, 53.266167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985556, 39.160973, 53.609352>,  <32.058048, 39.260696, 53.815262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985556, 39.160973, 53.609352>,  <31.864733, 38.994766, 53.266167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985556, 39.160973, 53.609352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825807, 0.335564, -0.453254,
		-0.476238, 0.845423, -0.241779,
		0.302059, 0.415520, 0.857965,
		32.076172, 39.285629, 53.866741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061512, 39.657860, 53.053692>,  <31.864733, 38.994766, 53.266167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061512, 39.657860, 53.053692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248260, 39.614273, 53.404724>,  <32.360310, 39.588120, 53.615345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248260, 39.614273, 53.404724>,  <32.061512, 39.657860, 53.053692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248260, 39.614273, 53.404724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838616, 0.369473, -0.400266,
		-0.280627, 0.922830, 0.263881,
		0.466875, -0.108970, 0.877584,
		32.388325, 39.581581, 53.667999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501236, 40.235672, 53.121330>,  <32.061512, 39.657860, 53.053692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501236, 40.235672, 53.121330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667534, 39.978668, 53.378807>,  <32.767311, 39.824467, 53.533295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667534, 39.978668, 53.378807>,  <32.501236, 40.235672, 53.121330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667534, 39.978668, 53.378807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909316, 0.280165, -0.307656,
		0.017330, 0.713229, 0.700717,
		0.415746, -0.642505, 0.643695,
		32.792259, 39.785915, 53.571915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886486, 40.620239, 53.540253>,  <32.501236, 40.235672, 53.121330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886486, 40.620239, 53.540253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046864, 40.254845, 53.567940>,  <33.143089, 40.035610, 53.584553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046864, 40.254845, 53.567940>,  <32.886486, 40.620239, 53.540253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046864, 40.254845, 53.567940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808111, 0.317081, -0.496403,
		0.431510, 0.254961, 0.865329,
		0.400943, -0.913485, 0.069213,
		33.167145, 39.980801, 53.588703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563263, 40.682167, 53.888866>,  <32.886486, 40.620239, 53.540253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563263, 40.682167, 53.888866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583790, 40.329529, 53.701183>,  <33.596104, 40.117947, 53.588573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583790, 40.329529, 53.701183>,  <33.563263, 40.682167, 53.888866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583790, 40.329529, 53.701183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906589, 0.238182, -0.348377,
		0.418884, -0.407501, 0.811467,
		0.051313, -0.881597, -0.469206,
		33.599182, 40.065048, 53.560421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302811, 40.538723, 53.818901>,  <33.563263, 40.682167, 53.888866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302811, 40.538723, 53.818901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149300, 40.282402, 53.552940>,  <34.057194, 40.128609, 53.393364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149300, 40.282402, 53.552940>,  <34.302811, 40.538723, 53.818901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149300, 40.282402, 53.552940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800619, 0.127886, -0.585367,
		0.460134, -0.756981, 0.463957,
		-0.383778, -0.640800, -0.664898,
		34.034164, 40.090160, 53.353470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833183, 40.061050, 53.668907>,  <34.302811, 40.538723, 53.818901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833183, 40.061050, 53.668907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586952, 40.022408, 53.356056>,  <34.439213, 39.999222, 53.168346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586952, 40.022408, 53.356056>,  <34.833183, 40.061050, 53.668907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586952, 40.022408, 53.356056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781085, 0.057099, -0.621809,
		0.104732, -0.993683, 0.040311,
		-0.615579, -0.096609, -0.782131,
		34.402279, 39.993423, 53.121418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107468, 39.558365, 53.299332>,  <34.833183, 40.061050, 53.668907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107468, 39.558365, 53.299332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860291, 39.766884, 53.063908>,  <34.711987, 39.891994, 52.922653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860291, 39.766884, 53.063908>,  <35.107468, 39.558365, 53.299332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860291, 39.766884, 53.063908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652696, -0.077224, -0.753673,
		-0.438338, -0.849875, -0.292528,
		-0.617938, 0.521296, -0.588560,
		34.674908, 39.923271, 52.887341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205040, 39.200558, 52.691063>,  <35.107468, 39.558365, 53.299332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205040, 39.200558, 52.691063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026924, 39.534348, 52.561214>,  <34.920055, 39.734619, 52.483303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026924, 39.534348, 52.561214>,  <35.205040, 39.200558, 52.691063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026924, 39.534348, 52.561214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569615, -0.015726, -0.821761,
		-0.690840, -0.550829, -0.468325,
		-0.445285, 0.834470, -0.324624,
		34.893337, 39.784687, 52.463829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977058, 39.141834, 52.018444>,  <35.205040, 39.200558, 52.691063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977058, 39.141834, 52.018444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034943, 39.535980, 52.054455>,  <35.069675, 39.772469, 52.076061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034943, 39.535980, 52.054455>,  <34.977058, 39.141834, 52.018444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034943, 39.535980, 52.054455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559643, -0.006476, -0.828708,
		-0.816001, 0.170311, -0.552392,
		0.144715, 0.985369, 0.090029,
		35.078358, 39.831593, 52.081463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690292, 39.453606, 51.435585>,  <34.977058, 39.141834, 52.018444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690292, 39.453606, 51.435585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961075, 39.726570, 51.545887>,  <35.123547, 39.890350, 51.612068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961075, 39.726570, 51.545887>,  <34.690292, 39.453606, 51.435585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961075, 39.726570, 51.545887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323961, 0.060150, -0.944156,
		-0.660891, 0.728488, -0.180356,
		0.676958, 0.682413, 0.275754,
		35.164162, 39.931293, 51.628613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544140, 39.933964, 50.891720>,  <34.690292, 39.453606, 51.435585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544140, 39.933964, 50.891720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900093, 40.005455, 51.059605>,  <35.113667, 40.048347, 51.160336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900093, 40.005455, 51.059605>,  <34.544140, 39.933964, 50.891720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900093, 40.005455, 51.059605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387288, 0.190195, -0.902127,
		-0.241061, 0.965341, 0.100033,
		0.889886, 0.178726, 0.419714,
		35.167061, 40.059074, 51.185520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712421, 40.557335, 50.628002>,  <34.544140, 39.933964, 50.891720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712421, 40.557335, 50.628002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050884, 40.382942, 50.750603>,  <35.253960, 40.278305, 50.824162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050884, 40.382942, 50.750603>,  <34.712421, 40.557335, 50.628002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050884, 40.382942, 50.750603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483928, 0.387654, -0.784562,
		0.223239, 0.812185, 0.538999,
		0.846155, -0.435982, 0.306500,
		35.304729, 40.252148, 50.842552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178101, 41.036873, 50.480320>,  <34.712421, 40.557335, 50.628002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178101, 41.036873, 50.480320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385216, 40.696075, 50.511330>,  <35.509483, 40.491596, 50.529934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385216, 40.696075, 50.511330>,  <35.178101, 41.036873, 50.480320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385216, 40.696075, 50.511330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552216, 0.263633, -0.790920,
		0.653419, 0.452336, 0.606989,
		0.517784, -0.851991, 0.077524,
		35.540550, 40.440479, 50.534588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762341, 41.232891, 50.342648>,  <35.178101, 41.036873, 50.480320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762341, 41.232891, 50.342648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778732, 40.838860, 50.275795>,  <35.788567, 40.602440, 50.235683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778732, 40.838860, 50.275795>,  <35.762341, 41.232891, 50.342648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778732, 40.838860, 50.275795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620457, 0.156201, -0.768528,
		0.783169, -0.072202, 0.617603,
		0.040981, -0.985083, -0.167130,
		35.791027, 40.543335, 50.225655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494701, 41.053101, 50.304768>,  <35.762341, 41.232891, 50.342648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494701, 41.053101, 50.304768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303627, 40.748512, 50.129501>,  <36.188984, 40.565762, 50.024342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303627, 40.748512, 50.129501>,  <36.494701, 41.053101, 50.304768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303627, 40.748512, 50.129501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647146, 0.032318, -0.761681,
		0.594156, -0.647397, 0.477342,
		-0.477683, -0.761467, -0.438163,
		36.160320, 40.520073, 49.998051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060017, 40.647335, 50.175705>,  <36.494701, 41.053101, 50.304768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060017, 40.647335, 50.175705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770454, 40.482262, 49.954559>,  <36.596718, 40.383217, 49.821873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770454, 40.482262, 49.954559>,  <37.060017, 40.647335, 50.175705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770454, 40.482262, 49.954559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644665, -0.119226, -0.755111,
		0.245704, -0.903039, 0.352349,
		-0.723904, -0.412681, -0.552863,
		36.553284, 40.358456, 49.788700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362225, 39.966553, 49.917019>,  <37.060017, 40.647335, 50.175705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362225, 39.966553, 49.917019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062286, 40.099846, 49.688393>,  <36.882324, 40.179821, 49.551216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062286, 40.099846, 49.688393>,  <37.362225, 39.966553, 49.917019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062286, 40.099846, 49.688393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590742, -0.051794, -0.805196,
		-0.297922, -0.941421, -0.158018,
		-0.749844, 0.333234, -0.571568,
		36.837334, 40.199818, 49.516922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311497, 39.472252, 49.360943>,  <37.362225, 39.966553, 49.917019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311497, 39.472252, 49.360943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169357, 39.826042, 49.239994>,  <37.084072, 40.038319, 49.167427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169357, 39.826042, 49.239994>,  <37.311497, 39.472252, 49.360943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169357, 39.826042, 49.239994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575536, -0.047857, -0.816375,
		-0.736536, -0.464122, -0.492042,
		-0.355350, 0.884477, -0.302368,
		37.062752, 40.091385, 49.149284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309574, 39.409874, 48.646458>,  <37.311497, 39.472252, 49.360943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309574, 39.409874, 48.646458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297386, 39.806519, 48.696690>,  <37.290073, 40.044506, 48.726830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297386, 39.806519, 48.696690>,  <37.309574, 39.409874, 48.646458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297386, 39.806519, 48.696690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645265, 0.115461, -0.755183,
		-0.763351, 0.058020, -0.643373,
		-0.030469, 0.991616, 0.125576,
		37.288246, 40.104004, 48.734364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167923, 39.725845, 48.031445>,  <37.309574, 39.409874, 48.646458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167923, 39.725845, 48.031445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342384, 40.030281, 48.223495>,  <37.447060, 40.212940, 48.338726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342384, 40.030281, 48.223495>,  <37.167923, 39.725845, 48.031445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342384, 40.030281, 48.223495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491213, 0.245678, -0.835675,
		-0.753976, 0.600325, -0.266702,
		0.436153, 0.761086, 0.480123,
		37.473228, 40.258606, 48.367531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234371, 40.116718, 47.549923>,  <37.167923, 39.725845, 48.031445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234371, 40.116718, 47.549923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493919, 40.275650, 47.809490>,  <37.649647, 40.371010, 47.965233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493919, 40.275650, 47.809490>,  <37.234371, 40.116718, 47.549923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493919, 40.275650, 47.809490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606613, 0.244708, -0.756398,
		-0.459337, 0.884447, -0.082243,
		0.648868, 0.397331, 0.648920,
		37.688580, 40.394848, 48.004166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591164, 40.657127, 47.252659>,  <37.234371, 40.116718, 47.549923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591164, 40.657127, 47.252659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835548, 40.609352, 47.565697>,  <37.982178, 40.580688, 47.753521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835548, 40.609352, 47.565697>,  <37.591164, 40.657127, 47.252659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835548, 40.609352, 47.565697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740466, 0.435933, -0.511539,
		-0.280065, 0.892019, 0.354777,
		0.610962, -0.119436, 0.782599,
		38.018837, 40.573521, 47.800476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979645, 41.217339, 47.317543>,  <37.591164, 40.657127, 47.252659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979645, 41.217339, 47.317543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200253, 40.945915, 47.511612>,  <38.332615, 40.783062, 47.628056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200253, 40.945915, 47.511612>,  <37.979645, 41.217339, 47.317543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200253, 40.945915, 47.511612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811254, 0.300935, -0.501304,
		0.194156, 0.670077, 0.716450,
		0.551517, -0.678554, 0.485174,
		38.365707, 40.742348, 47.657166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555668, 41.521973, 47.507671>,  <37.979645, 41.217339, 47.317543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555668, 41.521973, 47.507671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669315, 41.139214, 47.531742>,  <38.737503, 40.909557, 47.546185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669315, 41.139214, 47.531742>,  <38.555668, 41.521973, 47.507671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669315, 41.139214, 47.531742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725893, 0.173674, -0.665520,
		0.626383, 0.232770, 0.743950,
		0.284118, -0.956899, 0.060179,
		38.754551, 40.852142, 47.549797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331753, 41.523701, 47.437016>,  <38.555668, 41.521973, 47.507671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331753, 41.523701, 47.437016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262505, 41.134346, 47.376942>,  <39.220955, 40.900734, 47.340897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262505, 41.134346, 47.376942>,  <39.331753, 41.523701, 47.437016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262505, 41.134346, 47.376942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776457, -0.041075, -0.628830,
		0.605923, -0.225476, 0.762901,
		-0.173122, -0.973382, -0.150184,
		39.210567, 40.842331, 47.331886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983849, 41.181454, 47.453022>,  <39.331753, 41.523701, 47.437016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983849, 41.181454, 47.453022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731094, 40.947739, 47.249321>,  <39.579441, 40.807510, 47.127102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731094, 40.947739, 47.249321>,  <39.983849, 41.181454, 47.453022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731094, 40.947739, 47.249321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752637, -0.305656, -0.583190,
		0.185093, -0.751789, 0.632892,
		-0.631884, -0.584283, -0.509250,
		39.541531, 40.772453, 47.096546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432209, 40.697899, 47.330914>,  <39.983849, 41.181454, 47.453022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432209, 40.697899, 47.330914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126617, 40.657303, 47.076031>,  <39.943260, 40.632946, 46.923103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126617, 40.657303, 47.076031>,  <40.432209, 40.697899, 47.330914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126617, 40.657303, 47.076031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625025, -0.361648, -0.691776,
		-0.160233, -0.926774, 0.339728,
		-0.763982, -0.101493, -0.637205,
		39.897423, 40.626854, 46.884869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531940, 39.985317, 46.989964>,  <40.432209, 40.697899, 47.330914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531940, 39.985317, 46.989964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315857, 40.230499, 46.759327>,  <40.186207, 40.377609, 46.620945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315857, 40.230499, 46.759327>,  <40.531940, 39.985317, 46.989964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315857, 40.230499, 46.759327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526059, -0.288826, -0.799900,
		-0.656841, -0.735433, -0.166427,
		-0.540204, 0.612958, -0.576595,
		40.153797, 40.414387, 46.586349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589481, 39.702969, 46.326260>,  <40.531940, 39.985317, 46.989964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589481, 39.702969, 46.326260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470161, 40.081047, 46.273159>,  <40.398571, 40.307896, 46.241299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470161, 40.081047, 46.273159>,  <40.589481, 39.702969, 46.326260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470161, 40.081047, 46.273159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510525, 0.040484, -0.858909,
		-0.806463, -0.323986, -0.494622,
		-0.298299, 0.945195, -0.132754,
		40.380672, 40.364605, 46.233334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551144, 39.762535, 45.502716>,  <40.589481, 39.702969, 46.326260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551144, 39.762535, 45.502716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572960, 40.117096, 45.686592>,  <40.586048, 40.329834, 45.796917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572960, 40.117096, 45.686592>,  <40.551144, 39.762535, 45.502716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572960, 40.117096, 45.686592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469973, 0.383403, -0.795065,
		-0.880994, 0.259400, -0.395677,
		0.054536, 0.886405, 0.459687,
		40.589321, 40.383018, 45.824497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385822, 40.252224, 44.945721>,  <40.551144, 39.762535, 45.502716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385822, 40.252224, 44.945721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539997, 40.490456, 45.227634>,  <40.632504, 40.633392, 45.396782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539997, 40.490456, 45.227634>,  <40.385822, 40.252224, 44.945721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539997, 40.490456, 45.227634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638196, 0.379589, -0.669790,
		-0.666440, 0.707956, -0.233786,
		0.385439, 0.595576, 0.704788,
		40.655628, 40.669128, 45.439072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378094, 40.875923, 44.694721>,  <40.385822, 40.252224, 44.945721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378094, 40.875923, 44.694721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673271, 40.895424, 44.963959>,  <40.850380, 40.907124, 45.125500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673271, 40.895424, 44.963959>,  <40.378094, 40.875923, 44.694721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673271, 40.895424, 44.963959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626903, 0.319741, -0.710464,
		-0.249851, 0.946250, 0.205391,
		0.737948, 0.048750, 0.673094,
		40.894657, 40.910049, 45.165886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679600, 41.572964, 44.621620>,  <40.378094, 40.875923, 44.694721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679600, 41.572964, 44.621620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944813, 41.353050, 44.824848>,  <41.103939, 41.221104, 44.946785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944813, 41.353050, 44.824848>,  <40.679600, 41.572964, 44.621620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944813, 41.353050, 44.824848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745644, 0.424826, -0.513360,
		0.066397, 0.719208, 0.691615,
		0.663029, -0.549784, 0.508066,
		41.143723, 41.188114, 44.977268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270061, 41.972546, 44.611500>,  <40.679600, 41.572964, 44.621620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270061, 41.972546, 44.611500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423893, 41.612885, 44.695045>,  <41.516193, 41.397087, 44.745171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423893, 41.612885, 44.695045>,  <41.270061, 41.972546, 44.611500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423893, 41.612885, 44.695045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798268, 0.210333, -0.564384,
		0.463536, 0.383779, 0.798654,
		0.384582, -0.899152, 0.208862,
		41.539268, 41.343140, 44.757706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974236, 42.175278, 44.766735>,  <41.270061, 41.972546, 44.611500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974236, 42.175278, 44.766735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953171, 41.783607, 44.688309>,  <41.940533, 41.548607, 44.641251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953171, 41.783607, 44.688309>,  <41.974236, 42.175278, 44.766735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953171, 41.783607, 44.688309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849811, 0.059173, -0.523755,
		0.524450, -0.194201, 0.828998,
		-0.052660, -0.979175, -0.196068,
		41.937374, 41.489857, 44.629490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500294, 42.735832, 44.445946>,  <41.974236, 42.175278, 44.766735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500294, 42.735832, 44.445946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358261, 43.099396, 44.358494>,  <42.273041, 43.317535, 44.306023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358261, 43.099396, 44.358494>,  <42.500294, 42.735832, 44.445946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358261, 43.099396, 44.358494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711828, -0.111278, 0.693482,
		0.605983, 0.401873, 0.686500,
		-0.355084, 0.908909, -0.218632,
		42.251736, 43.372070, 44.292904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596786, 43.101013, 45.087448>,  <42.500294, 42.735832, 44.445946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596786, 43.101013, 45.087448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299820, 43.279305, 44.887390>,  <42.121639, 43.386280, 44.767357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299820, 43.279305, 44.887390>,  <42.596786, 43.101013, 45.087448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299820, 43.279305, 44.887390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575538, -0.042247, 0.816683,
		0.342888, 0.894172, 0.287898,
		-0.742418, 0.445727, -0.500144,
		42.077095, 43.413021, 44.737347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416927, 43.753250, 45.537266>,  <42.596786, 43.101013, 45.087448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416927, 43.753250, 45.537266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111759, 43.678413, 45.289734>,  <41.928658, 43.633511, 45.141216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111759, 43.678413, 45.289734>,  <42.416927, 43.753250, 45.537266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111759, 43.678413, 45.289734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642726, 0.116390, 0.757203,
		-0.069638, 0.975424, -0.209043,
		-0.762924, -0.187087, -0.618826,
		41.882881, 43.622288, 45.104088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918018, 44.264709, 45.770840>,  <42.416927, 43.753250, 45.537266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918018, 44.264709, 45.770840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690552, 44.023918, 45.546608>,  <41.554073, 43.879444, 45.412067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690552, 44.023918, 45.546608>,  <41.918018, 44.264709, 45.770840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690552, 44.023918, 45.546608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775931, 0.166350, 0.608489,
		-0.273043, 0.780996, -0.561688,
		-0.568664, -0.601975, -0.560578,
		41.519951, 43.843327, 45.378433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219372, 44.540096, 45.750717>,  <41.918018, 44.264709, 45.770840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219372, 44.540096, 45.750717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175156, 44.153816, 45.656731>,  <41.148624, 43.922050, 45.600338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175156, 44.153816, 45.656731>,  <41.219372, 44.540096, 45.750717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175156, 44.153816, 45.656731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836760, -0.037142, 0.546310,
		-0.536297, 0.256997, -0.803952,
		-0.110539, -0.965698, -0.234964,
		41.141994, 43.864105, 45.586243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549381, 44.433754, 45.518841>,  <41.219372, 44.540096, 45.750717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549381, 44.433754, 45.518841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676186, 44.076073, 45.645271>,  <40.752270, 43.861465, 45.721130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676186, 44.076073, 45.645271>,  <40.549381, 44.433754, 45.518841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676186, 44.076073, 45.645271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803681, -0.076318, 0.590147,
		-0.503588, -0.441111, -0.742846,
		0.317013, -0.894202, 0.316079,
		40.771290, 43.807812, 45.740093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952507, 43.986534, 45.475269>,  <40.549381, 44.433754, 45.518841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952507, 43.986534, 45.475269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209080, 43.806992, 45.724136>,  <40.363026, 43.699265, 45.873455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209080, 43.806992, 45.724136>,  <39.952507, 43.986534, 45.475269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209080, 43.806992, 45.724136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755153, -0.226384, 0.615219,
		-0.135299, -0.864451, -0.484168,
		0.641434, -0.448860, 0.622163,
		40.401508, 43.672333, 45.910786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741203, 43.356380, 45.615932>,  <39.952507, 43.986534, 45.475269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741203, 43.356380, 45.615932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976788, 43.436714, 45.929058>,  <40.118137, 43.484913, 46.116932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976788, 43.436714, 45.929058>,  <39.741203, 43.356380, 45.615932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976788, 43.436714, 45.929058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785733, -0.084323, 0.612792,
		0.189079, -0.975989, 0.108140,
		0.588959, 0.200835, 0.782810,
		40.153477, 43.496964, 46.163902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412193, 43.085472, 46.142883>,  <39.741203, 43.356380, 45.615932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412193, 43.085472, 46.142883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646309, 43.333763, 46.351551>,  <39.786777, 43.482738, 46.476753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646309, 43.333763, 46.351551>,  <39.412193, 43.085472, 46.142883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646309, 43.333763, 46.351551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720122, 0.102252, 0.686272,
		0.372644, -0.777332, 0.506845,
		0.585287, 0.620725, 0.521670,
		39.821896, 43.519981, 46.508053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320591, 42.914913, 46.896561>,  <39.412193, 43.085472, 46.142883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320591, 42.914913, 46.896561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511192, 43.262199, 46.951908>,  <39.625553, 43.470570, 46.985119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511192, 43.262199, 46.951908>,  <39.320591, 42.914913, 46.896561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511192, 43.262199, 46.951908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405060, 0.077112, 0.911033,
		0.780303, -0.490158, 0.388423,
		0.476501, 0.868216, 0.138372,
		39.654144, 43.522663, 46.993420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515652, 42.820663, 47.585403>,  <39.320591, 42.914913, 46.896561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515652, 42.820663, 47.585403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521587, 43.204094, 47.471630>,  <39.525150, 43.434155, 47.403366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521587, 43.204094, 47.471630>,  <39.515652, 42.820663, 47.585403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521587, 43.204094, 47.471630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470517, 0.257700, 0.843922,
		0.882266, 0.121306, 0.454853,
		0.014843, 0.958580, -0.284437,
		39.526039, 43.491669, 47.386299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819618, 43.234890, 48.163483>,  <39.515652, 42.820663, 47.585403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819618, 43.234890, 48.163483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603825, 43.492577, 47.946617>,  <39.474350, 43.647190, 47.816498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603825, 43.492577, 47.946617>,  <39.819618, 43.234890, 48.163483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603825, 43.492577, 47.946617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345729, 0.417641, 0.840266,
		0.767744, 0.640751, -0.002585,
		-0.539481, 0.644216, -0.542168,
		39.441978, 43.685841, 47.783966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014774, 43.803024, 48.330353>,  <39.819618, 43.234890, 48.163483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014774, 43.803024, 48.330353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646133, 43.852608, 48.183231>,  <39.424950, 43.882359, 48.094959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646133, 43.852608, 48.183231>,  <40.014774, 43.803024, 48.330353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646133, 43.852608, 48.183231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322994, 0.280516, 0.903873,
		0.215216, 0.951812, -0.218487,
		-0.921606, 0.123958, -0.367801,
		39.369652, 43.889793, 48.072891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636543, 44.290813, 48.690277>,  <40.014774, 43.803024, 48.330353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636543, 44.290813, 48.690277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338028, 44.077339, 48.531162>,  <39.158916, 43.949257, 48.435696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338028, 44.077339, 48.531162>,  <39.636543, 44.290813, 48.690277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338028, 44.077339, 48.531162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489716, 0.035485, 0.871159,
		-0.450806, 0.844941, -0.287835,
		-0.746292, -0.533681, -0.397784,
		39.114140, 43.917236, 48.411827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102322, 44.483818, 49.077065>,  <39.636543, 44.290813, 48.690277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102322, 44.483818, 49.077065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949287, 44.162491, 48.894501>,  <38.857468, 43.969696, 48.784962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949287, 44.162491, 48.894501>,  <39.102322, 44.483818, 49.077065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949287, 44.162491, 48.894501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566048, -0.186626, 0.802970,
		-0.730217, 0.565555, -0.383316,
		-0.382587, -0.803317, -0.456408,
		38.834511, 43.921497, 48.757580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439568, 44.440315, 49.446629>,  <39.102322, 44.483818, 49.077065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439568, 44.440315, 49.446629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470901, 44.103638, 49.232933>,  <38.489700, 43.901630, 49.104717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470901, 44.103638, 49.232933>,  <38.439568, 44.440315, 49.446629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470901, 44.103638, 49.232933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531226, -0.488705, 0.692073,
		-0.843601, 0.229590, -0.485413,
		0.078331, -0.841698, -0.534236,
		38.494400, 43.851128, 49.072662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770767, 44.236095, 49.259159>,  <38.439568, 44.440315, 49.446629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770767, 44.236095, 49.259159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988651, 43.900848, 49.247536>,  <38.119381, 43.699699, 49.240562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988651, 43.900848, 49.247536>,  <37.770767, 44.236095, 49.259159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988651, 43.900848, 49.247536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630270, -0.431992, 0.645091,
		-0.553218, -0.333072, -0.763553,
		0.544711, -0.838120, -0.029061,
		38.152065, 43.649414, 49.238819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313717, 43.639565, 49.097466>,  <37.770767, 44.236095, 49.259159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313717, 43.639565, 49.097466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651596, 43.511292, 49.268883>,  <37.854324, 43.434326, 49.371731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651596, 43.511292, 49.268883>,  <37.313717, 43.639565, 49.097466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651596, 43.511292, 49.268883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534632, -0.543716, 0.646948,
		0.025538, -0.775587, -0.630724,
		0.844699, -0.320684, 0.428539,
		37.905006, 43.415085, 49.397446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169647, 42.932808, 49.164833>,  <37.313717, 43.639565, 49.097466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169647, 42.932808, 49.164833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453110, 43.012665, 49.435520>,  <37.623188, 43.060577, 49.597931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453110, 43.012665, 49.435520>,  <37.169647, 42.932808, 49.164833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453110, 43.012665, 49.435520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537657, -0.468264, 0.701180,
		0.456866, -0.860740, -0.224502,
		0.708659, 0.199641, 0.676717,
		37.665707, 43.072556, 49.638535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293221, 42.290939, 49.524742>,  <37.169647, 42.932808, 49.164833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293221, 42.290939, 49.524742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437561, 42.569176, 49.773239>,  <37.524166, 42.736118, 49.922337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437561, 42.569176, 49.773239>,  <37.293221, 42.290939, 49.524742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437561, 42.569176, 49.773239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555324, -0.374904, 0.742335,
		0.749268, -0.612862, 0.250994,
		0.360851, 0.695591, 0.621241,
		37.545815, 42.777851, 49.959610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312435, 41.978313, 50.079426>,  <37.293221, 42.290939, 49.524742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312435, 41.978313, 50.079426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332779, 42.356735, 50.207420>,  <37.344986, 42.583790, 50.284218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332779, 42.356735, 50.207420>,  <37.312435, 41.978313, 50.079426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332779, 42.356735, 50.207420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680998, -0.201510, 0.704014,
		0.730517, -0.253710, 0.634016,
		0.050855, 0.946057, 0.319983,
		37.348034, 42.640553, 50.303417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564770, 41.965748, 50.801350>,  <37.312435, 41.978313, 50.079426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564770, 41.965748, 50.801350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369560, 42.308723, 50.736076>,  <37.252434, 42.514507, 50.696911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369560, 42.308723, 50.736076>,  <37.564770, 41.965748, 50.801350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369560, 42.308723, 50.736076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675784, -0.252867, 0.692368,
		0.552399, 0.448171, 0.702850,
		-0.488027, 0.857438, -0.163184,
		37.223152, 42.565956, 50.687122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446339, 42.261353, 51.475964>,  <37.564770, 41.965748, 50.801350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446339, 42.261353, 51.475964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195679, 42.438705, 51.219612>,  <37.045284, 42.545116, 51.065800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195679, 42.438705, 51.219612>,  <37.446339, 42.261353, 51.475964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195679, 42.438705, 51.219612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701643, 0.036875, 0.711573,
		0.339130, 0.895575, 0.287986,
		-0.626648, 0.443379, -0.640880,
		37.007683, 42.571720, 51.027348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229362, 42.847900, 51.788876>,  <37.446339, 42.261353, 51.475964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229362, 42.847900, 51.788876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946129, 42.757317, 51.521343>,  <36.776188, 42.702965, 51.360825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946129, 42.757317, 51.521343>,  <37.229362, 42.847900, 51.788876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946129, 42.757317, 51.521343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683876, -0.015989, 0.729423,
		-0.175880, 0.973889, -0.143550,
		-0.708082, -0.226461, -0.668831,
		36.733704, 42.689377, 51.320694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677788, 43.132114, 52.087624>,  <37.229362, 42.847900, 51.788876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677788, 43.132114, 52.087624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514534, 42.917030, 51.792519>,  <36.416580, 42.787979, 51.615456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514534, 42.917030, 51.792519>,  <36.677788, 43.132114, 52.087624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514534, 42.917030, 51.792519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857533, -0.051397, 0.511855,
		-0.313150, 0.841560, -0.440128,
		-0.408135, -0.537712, -0.737761,
		36.392094, 42.755718, 51.571190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131443, 43.422894, 51.577923>,  <36.677788, 43.132114, 52.087624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131443, 43.422894, 51.577923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074528, 43.027634, 51.600979>,  <36.040379, 42.790478, 51.614811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074528, 43.027634, 51.600979>,  <36.131443, 43.422894, 51.577923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074528, 43.027634, 51.600979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928742, 0.153423, 0.337489,
		-0.342331, -0.005508, -0.939563,
		-0.142292, -0.988145, 0.057637,
		36.031841, 42.731190, 51.618271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484879, 43.317303, 51.346313>,  <36.131443, 43.422894, 51.577923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484879, 43.317303, 51.346313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547699, 42.959137, 51.512955>,  <35.585392, 42.744236, 51.612938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547699, 42.959137, 51.512955>,  <35.484879, 43.317303, 51.346313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547699, 42.959137, 51.512955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981636, -0.095290, 0.165258,
		-0.108278, -0.434902, -0.893944,
		0.157054, -0.895422, 0.416598,
		35.594814, 42.690510, 51.637936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969330, 42.837494, 50.987244>,  <35.484879, 43.317303, 51.346313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969330, 42.837494, 50.987244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088623, 42.704514, 51.345135>,  <35.160198, 42.624725, 51.559868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088623, 42.704514, 51.345135>,  <34.969330, 42.837494, 50.987244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088623, 42.704514, 51.345135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954386, -0.117910, 0.274309,
		0.014304, -0.935723, -0.352447,
		0.298234, -0.332446, 0.894726,
		35.178093, 42.604778, 51.613552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459206, 42.456158, 51.100666>,  <34.969330, 42.837494, 50.987244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459206, 42.456158, 51.100666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629112, 42.515617, 51.457870>,  <34.731056, 42.551292, 51.672195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629112, 42.515617, 51.457870>,  <34.459206, 42.456158, 51.100666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629112, 42.515617, 51.457870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882617, -0.151434, 0.445032,
		0.201388, -0.977226, 0.066879,
		0.424769, 0.148653, 0.893014,
		34.756542, 42.560211, 51.725773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280907, 41.898010, 51.439732>,  <34.459206, 42.456158, 51.100666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280907, 41.898010, 51.439732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343609, 42.186722, 51.709389>,  <34.381229, 42.359947, 51.871181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343609, 42.186722, 51.709389>,  <34.280907, 41.898010, 51.439732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343609, 42.186722, 51.709389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837493, -0.264643, 0.478089,
		0.523480, -0.639532, 0.562999,
		0.156760, 0.721778, 0.674139,
		34.390636, 42.403255, 51.911629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005608, 41.594601, 52.001968>,  <34.280907, 41.898010, 51.439732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005608, 41.594601, 52.001968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033676, 41.970016, 52.137150>,  <34.050518, 42.195267, 52.218258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033676, 41.970016, 52.137150>,  <34.005608, 41.594601, 52.001968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033676, 41.970016, 52.137150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720603, -0.186576, 0.667772,
		0.689788, -0.290386, 0.663226,
		0.070169, 0.938544, 0.337951,
		34.054726, 42.251579, 52.238537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929554, 41.475487, 52.712780>,  <34.005608, 41.594601, 52.001968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929554, 41.475487, 52.712780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850250, 41.856491, 52.620327>,  <33.802666, 42.085094, 52.564854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850250, 41.856491, 52.620327>,  <33.929554, 41.475487, 52.712780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850250, 41.856491, 52.620327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889954, -0.076132, 0.449650,
		0.410699, 0.294845, 0.862782,
		-0.198263, 0.952507, -0.231131,
		33.790771, 42.142242, 52.550987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711628, 41.741955, 53.263550>,  <33.929554, 41.475487, 52.712780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711628, 41.741955, 53.263550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546345, 41.955452, 52.968422>,  <33.447174, 42.083549, 52.791348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546345, 41.955452, 52.968422>,  <33.711628, 41.741955, 53.263550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546345, 41.955452, 52.968422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907982, -0.179692, 0.378522,
		0.069453, 0.826334, 0.558881,
		-0.413212, 0.533743, -0.737817,
		33.422382, 42.115574, 52.747078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149017, 41.998878, 53.543499>,  <33.711628, 41.741955, 53.263550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149017, 41.998878, 53.543499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077290, 42.056709, 53.154255>,  <33.034252, 42.091408, 52.920708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077290, 42.056709, 53.154255>,  <33.149017, 41.998878, 53.543499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077290, 42.056709, 53.154255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983657, -0.042638, 0.174932,
		-0.016200, 0.988574, 0.149861,
		-0.179323, 0.144578, -0.973109,
		33.023491, 42.100082, 52.862324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607903, 42.545460, 53.636112>,  <33.149017, 41.998878, 53.543499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607903, 42.545460, 53.636112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611160, 42.341881, 53.291809>,  <32.613113, 42.219734, 53.085228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611160, 42.341881, 53.291809>,  <32.607903, 42.545460, 53.636112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611160, 42.341881, 53.291809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966126, -0.226046, 0.124517,
		-0.257943, 0.830585, -0.493552,
		0.008144, -0.508952, -0.860756,
		32.613602, 42.189194, 53.033581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020046, 42.823994, 53.348663>,  <32.607903, 42.545460, 53.636112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020046, 42.823994, 53.348663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110073, 42.491562, 53.145233>,  <32.164089, 42.292103, 53.023174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110073, 42.491562, 53.145233>,  <32.020046, 42.823994, 53.348663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110073, 42.491562, 53.145233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893921, -0.383781, 0.231553,
		-0.387625, 0.402529, -0.829287,
		0.225057, -0.831073, -0.508593,
		32.177593, 42.242237, 52.992661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433615, 42.696049, 52.874523>,  <32.020046, 42.823994, 53.348663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433615, 42.696049, 52.874523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647308, 42.365189, 52.944283>,  <31.775524, 42.166672, 52.986137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647308, 42.365189, 52.944283>,  <31.433615, 42.696049, 52.874523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647308, 42.365189, 52.944283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814152, -0.447934, 0.369475,
		-0.227490, -0.339376, -0.912728,
		0.534233, -0.827151, 0.174403,
		31.807579, 42.117043, 52.996605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072130, 42.129971, 52.376499>,  <31.433615, 42.696049, 52.874523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072130, 42.129971, 52.376499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282541, 41.940369, 52.658947>,  <31.408789, 41.826607, 52.828415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282541, 41.940369, 52.658947>,  <31.072130, 42.129971, 52.376499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282541, 41.940369, 52.658947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752530, -0.646237, 0.126792,
		0.396221, -0.598074, -0.696646,
		0.526030, -0.474009, 0.706121,
		31.440350, 41.798164, 52.870785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308899, 42.097965, 52.637009>,  <31.072130, 42.129971, 52.376499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308899, 42.097965, 52.637009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070513, 42.328697, 52.413548>,  <29.927481, 42.467136, 52.279469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070513, 42.328697, 52.413548>,  <30.308899, 42.097965, 52.637009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070513, 42.328697, 52.413548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783533, 0.265418, -0.561809,
		-0.175790, -0.772543, -0.610143,
		-0.595965, 0.576828, -0.558655,
		29.891724, 42.501747, 52.245953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562635, 41.914608, 51.892033>,  <30.308899, 42.097965, 52.637009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562635, 41.914608, 51.892033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365948, 42.262627, 51.878044>,  <30.247934, 42.471439, 51.869652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365948, 42.262627, 51.878044>,  <30.562635, 41.914608, 51.892033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365948, 42.262627, 51.878044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727189, 0.388224, -0.566108,
		-0.478964, -0.303800, -0.823589,
		-0.491720, 0.870050, -0.034975,
		30.218431, 42.523643, 51.867550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613522, 42.042912, 51.189480>,  <30.562635, 41.914608, 51.892033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613522, 42.042912, 51.189480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517582, 42.388351, 51.366867>,  <30.460018, 42.595615, 51.473297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517582, 42.388351, 51.366867>,  <30.613522, 42.042912, 51.189480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517582, 42.388351, 51.366867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596884, 0.491442, -0.634204,
		-0.765638, 0.112584, -0.633343,
		-0.239851, 0.863603, 0.443466,
		30.445627, 42.647430, 51.499908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366774, 42.442001, 50.640793>,  <30.613522, 42.042912, 51.189480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366774, 42.442001, 50.640793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498882, 42.654968, 50.952549>,  <30.578148, 42.782749, 51.139603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498882, 42.654968, 50.952549>,  <30.366774, 42.442001, 50.640793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498882, 42.654968, 50.952549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586645, 0.531086, -0.611388,
		-0.739437, 0.659153, -0.136935,
		0.330274, 0.532415, 0.779393,
		30.597965, 42.814693, 51.186367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316418, 43.123543, 50.369362>,  <30.366774, 42.442001, 50.640793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316418, 43.123543, 50.369362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555628, 43.142899, 50.689369>,  <30.699154, 43.154510, 50.881374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555628, 43.142899, 50.689369>,  <30.316418, 43.123543, 50.369362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555628, 43.142899, 50.689369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586761, 0.653524, -0.478140,
		-0.545967, 0.755357, 0.362430,
		0.598023, 0.048388, 0.800017,
		30.735035, 43.157413, 50.929375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568935, 43.869850, 50.450470>,  <30.316418, 43.123543, 50.369362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568935, 43.869850, 50.450470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836361, 43.667892, 50.668869>,  <30.996817, 43.546719, 50.799908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836361, 43.667892, 50.668869>,  <30.568935, 43.869850, 50.450470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836361, 43.667892, 50.668869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727359, 0.596823, -0.338750,
		-0.154830, 0.623609, 0.766250,
		0.668563, -0.504890, 0.545994,
		31.036930, 43.516426, 50.832668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169613, 44.317871, 50.628799>,  <30.568935, 43.869850, 50.450470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169613, 44.317871, 50.628799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325809, 43.958931, 50.711044>,  <31.419527, 43.743568, 50.760391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325809, 43.958931, 50.711044>,  <31.169613, 44.317871, 50.628799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325809, 43.958931, 50.711044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887826, 0.308008, -0.341900,
		0.243475, 0.316055, 0.916967,
		0.390493, -0.897352, 0.205610,
		31.442957, 43.689724, 50.772728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858450, 44.360897, 50.857281>,  <31.169613, 44.317871, 50.628799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858450, 44.360897, 50.857281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852051, 43.975342, 50.750946>,  <31.848211, 43.744011, 50.687145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852051, 43.975342, 50.750946>,  <31.858450, 44.360897, 50.857281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852051, 43.975342, 50.750946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867696, 0.118728, -0.482710,
		0.496839, -0.238388, 0.834459,
		-0.015999, -0.963885, -0.265837,
		31.847252, 43.686176, 50.671196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459908, 44.038654, 51.155251>,  <31.858450, 44.360897, 50.857281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459908, 44.038654, 51.155251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340595, 43.846642, 50.825256>,  <32.269009, 43.731434, 50.627262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340595, 43.846642, 50.825256>,  <32.459908, 44.038654, 51.155251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340595, 43.846642, 50.825256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894987, 0.159712, -0.416522,
		0.331705, -0.862588, 0.381986,
		-0.298280, -0.480035, -0.824982,
		32.251110, 43.702633, 50.577763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007904, 43.707771, 51.023399>,  <32.459908, 44.038654, 51.155251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007904, 43.707771, 51.023399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828140, 43.659386, 50.669357>,  <32.720284, 43.630356, 50.456932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828140, 43.659386, 50.669357>,  <33.007904, 43.707771, 51.023399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828140, 43.659386, 50.669357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888435, 0.043037, -0.456980,
		0.093369, -0.991724, 0.088125,
		-0.449405, -0.120961, -0.885100,
		32.693317, 43.623096, 50.403828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410427, 43.250370, 50.619614>,  <33.007904, 43.707771, 51.023399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410427, 43.250370, 50.619614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181503, 43.425743, 50.342415>,  <33.044151, 43.530968, 50.176098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181503, 43.425743, 50.342415>,  <33.410427, 43.250370, 50.619614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181503, 43.425743, 50.342415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786972, 0.056088, -0.614434,
		-0.230521, -0.897011, -0.377136,
		-0.572307, 0.438435, -0.692993,
		33.009811, 43.557274, 50.134518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563511, 42.851471, 50.137428>,  <33.410427, 43.250370, 50.619614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563511, 42.851471, 50.137428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397816, 43.178749, 49.977951>,  <33.298401, 43.375118, 49.882263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397816, 43.178749, 49.977951>,  <33.563511, 42.851471, 50.137428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397816, 43.178749, 49.977951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785824, 0.100490, -0.610232,
		-0.459227, -0.566083, -0.684588,
		-0.414236, 0.818200, -0.398694,
		33.273544, 43.424210, 49.858341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630341, 42.734764, 49.472595>,  <33.563511, 42.851471, 50.137428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630341, 42.734764, 49.472595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580093, 43.130157, 49.506340>,  <33.549946, 43.367393, 49.526585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580093, 43.130157, 49.506340>,  <33.630341, 42.734764, 49.472595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580093, 43.130157, 49.506340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747848, 0.150226, -0.646649,
		-0.651876, -0.018144, -0.758108,
		-0.125620, 0.988485, 0.084359,
		33.542408, 43.426704, 49.531647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595661, 42.910759, 48.772552>,  <33.630341, 42.734764, 49.472595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595661, 42.910759, 48.772552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683270, 43.233253, 48.992374>,  <33.735836, 43.426750, 49.124268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683270, 43.233253, 48.992374>,  <33.595661, 42.910759, 48.772552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683270, 43.233253, 48.992374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782240, 0.191564, -0.592793,
		-0.583206, 0.559722, -0.588712,
		0.219024, 0.806234, 0.549559,
		33.748978, 43.475124, 49.157242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631901, 43.310108, 48.312057>,  <33.595661, 42.910759, 48.772552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631901, 43.310108, 48.312057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827820, 43.483948, 48.614376>,  <33.945370, 43.588249, 48.795765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827820, 43.483948, 48.614376>,  <33.631901, 43.310108, 48.312057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827820, 43.483948, 48.614376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768368, 0.194445, -0.609755,
		-0.411957, 0.879385, -0.238691,
		0.489797, 0.434596, 0.755794,
		33.974758, 43.614326, 48.841114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871193, 43.927074, 48.051502>,  <33.631901, 43.310108, 48.312057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871193, 43.927074, 48.051502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121712, 43.864105, 48.356915>,  <34.272022, 43.826324, 48.540161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121712, 43.864105, 48.356915>,  <33.871193, 43.927074, 48.051502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121712, 43.864105, 48.356915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770838, 0.271362, -0.576343,
		-0.116464, 0.949516, 0.291298,
		0.626294, -0.157420, 0.763528,
		34.309601, 43.816879, 48.585972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226879, 44.571346, 48.136951>,  <33.871193, 43.927074, 48.051502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226879, 44.571346, 48.136951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447933, 44.277092, 48.293633>,  <34.580566, 44.100540, 48.387642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447933, 44.277092, 48.293633>,  <34.226879, 44.571346, 48.136951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447933, 44.277092, 48.293633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760790, 0.253384, -0.597490,
		0.340286, 0.628197, 0.699696,
		0.552633, -0.735640, 0.391703,
		34.613724, 44.056400, 48.411144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832355, 44.774345, 48.219009>,  <34.226879, 44.571346, 48.136951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832355, 44.774345, 48.219009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929718, 44.387772, 48.251873>,  <34.988136, 44.155827, 48.271591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929718, 44.387772, 48.251873>,  <34.832355, 44.774345, 48.219009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929718, 44.387772, 48.251873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777912, 0.143926, -0.611668,
		0.579314, 0.212800, 0.786836,
		0.243410, -0.966437, 0.082161,
		35.002743, 44.097839, 48.276520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493553, 44.732616, 48.429371>,  <34.832355, 44.774345, 48.219009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493553, 44.732616, 48.429371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428558, 44.367340, 48.279873>,  <35.389561, 44.148174, 48.190174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428558, 44.367340, 48.279873>,  <35.493553, 44.732616, 48.429371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428558, 44.367340, 48.279873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808870, 0.093654, -0.580481,
		0.565091, -0.396629, 0.723434,
		-0.162483, -0.913189, -0.373745,
		35.379814, 44.093384, 48.167751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159332, 44.305916, 48.492107>,  <35.493553, 44.732616, 48.429371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159332, 44.305916, 48.492107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958752, 44.143181, 48.186684>,  <35.838402, 44.045540, 48.003429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958752, 44.143181, 48.186684>,  <36.159332, 44.305916, 48.492107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958752, 44.143181, 48.186684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764960, 0.203829, -0.610974,
		0.404205, -0.890469, 0.209006,
		-0.501452, -0.406840, -0.763562,
		35.808315, 44.021130, 47.957615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657261, 43.865219, 48.246017>,  <36.159332, 44.305916, 48.492107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657261, 43.865219, 48.246017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366638, 43.914261, 47.975586>,  <36.192265, 43.943687, 47.813328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366638, 43.914261, 47.975586>,  <36.657261, 43.865219, 48.246017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366638, 43.914261, 47.975586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674962, 0.311508, -0.668871,
		0.128595, -0.942301, -0.309084,
		-0.726560, 0.122606, -0.676076,
		36.148670, 43.951042, 47.772762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893818, 43.507568, 47.629524>,  <36.657261, 43.865219, 48.246017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893818, 43.507568, 47.629524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640907, 43.795868, 47.515858>,  <36.489159, 43.968845, 47.447659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640907, 43.795868, 47.515858>,  <36.893818, 43.507568, 47.629524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640907, 43.795868, 47.515858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708298, 0.389154, -0.588960,
		-0.313906, -0.573661, -0.756556,
		-0.632280, 0.720745, -0.284165,
		36.451225, 44.012093, 47.430607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113953, 43.651905, 46.914345>,  <36.893818, 43.507568, 47.629524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113953, 43.651905, 46.914345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883949, 43.963913, 47.013077>,  <36.745945, 44.151119, 47.072315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883949, 43.963913, 47.013077>,  <37.113953, 43.651905, 46.914345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883949, 43.963913, 47.013077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533659, 0.586269, -0.609505,
		-0.620138, -0.218748, -0.753377,
		-0.575010, 0.780024, 0.246831,
		36.711445, 44.197922, 47.087128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747562, 43.989906, 46.231182>,  <37.113953, 43.651905, 46.914345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747562, 43.989906, 46.231182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779526, 44.250420, 46.533028>,  <36.798702, 44.406727, 46.714134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779526, 44.250420, 46.533028>,  <36.747562, 43.989906, 46.231182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779526, 44.250420, 46.533028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505187, 0.626153, -0.593901,
		-0.859303, 0.428678, -0.278987,
		0.079904, 0.651282, 0.754617,
		36.803497, 44.445805, 46.759415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575104, 44.523918, 45.910679>,  <36.747562, 43.989906, 46.231182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575104, 44.523918, 45.910679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750931, 44.664429, 46.241348>,  <36.856426, 44.748734, 46.439751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750931, 44.664429, 46.241348>,  <36.575104, 44.523918, 45.910679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750931, 44.664429, 46.241348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490276, 0.677321, -0.548512,
		-0.752600, 0.646406, 0.125507,
		0.439570, 0.351277, 0.826669,
		36.882801, 44.769814, 46.489349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615578, 45.262180, 45.810230>,  <36.575104, 44.523918, 45.910679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615578, 45.262180, 45.810230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872459, 45.196426, 46.109711>,  <37.026588, 45.156975, 46.289398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872459, 45.196426, 46.109711>,  <36.615578, 45.262180, 45.810230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872459, 45.196426, 46.109711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671563, 0.591564, -0.446156,
		-0.369559, 0.789322, 0.490304,
		0.642207, -0.164389, 0.748697,
		37.065121, 45.147110, 46.334320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940186, 45.946644, 46.089603>,  <36.615578, 45.262180, 45.810230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940186, 45.946644, 46.089603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198212, 45.655556, 46.182823>,  <37.353027, 45.480904, 46.238754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198212, 45.655556, 46.182823>,  <36.940186, 45.946644, 46.089603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198212, 45.655556, 46.182823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745671, 0.532862, -0.400042,
		0.166939, 0.431828, 0.886373,
		0.645063, -0.727725, 0.233046,
		37.391731, 45.437237, 46.252735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461529, 46.245911, 46.366299>,  <36.940186, 45.946644, 46.089603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461529, 46.245911, 46.366299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622314, 45.908287, 46.224316>,  <37.718784, 45.705715, 46.139126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622314, 45.908287, 46.224316>,  <37.461529, 46.245911, 46.366299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622314, 45.908287, 46.224316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617149, 0.536111, -0.575945,
		0.676426, 0.012448, 0.736405,
		0.401964, -0.844056, -0.354957,
		37.742905, 45.655071, 46.117828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190567, 46.285843, 46.355736>,  <37.461529, 46.245911, 46.366299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190567, 46.285843, 46.355736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107613, 45.996361, 46.092449>,  <38.057838, 45.822670, 45.934479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107613, 45.996361, 46.092449>,  <38.190567, 46.285843, 46.355736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107613, 45.996361, 46.092449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650060, 0.400852, -0.645554,
		0.731035, -0.561756, 0.387320,
		-0.207386, -0.723704, -0.658212,
		38.045395, 45.779251, 45.894985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924076, 45.952034, 46.149948>,  <38.190567, 46.285843, 46.355736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924076, 45.952034, 46.149948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626869, 45.896500, 45.888065>,  <38.448544, 45.863178, 45.730934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626869, 45.896500, 45.888065>,  <38.924076, 45.952034, 46.149948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626869, 45.896500, 45.888065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604754, 0.279778, -0.745652,
		0.286684, -0.949975, -0.123930,
		-0.743024, -0.138820, -0.654710,
		38.403961, 45.854851, 45.691650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389221, 45.833412, 45.570881>,  <38.924076, 45.952034, 46.149948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389221, 45.833412, 45.570881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028236, 45.864380, 45.401382>,  <38.811646, 45.882961, 45.299683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028236, 45.864380, 45.401382>,  <39.389221, 45.833412, 45.570881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028236, 45.864380, 45.401382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429035, 0.249527, -0.868139,
		0.038528, -0.965268, -0.258405,
		-0.902466, 0.077417, -0.423748,
		38.757496, 45.887604, 45.274258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430061, 45.608971, 44.960033>,  <39.389221, 45.833412, 45.570881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430061, 45.608971, 44.960033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103920, 45.838615, 44.930119>,  <38.908234, 45.976402, 44.912170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103920, 45.838615, 44.930119>,  <39.430061, 45.608971, 44.960033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103920, 45.838615, 44.930119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287988, 0.290122, -0.912629,
		-0.502253, -0.765655, -0.401889,
		-0.815356, 0.574110, -0.074785,
		38.859314, 46.010849, 44.907684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288094, 45.517815, 44.283993>,  <39.430061, 45.608971, 44.960033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288094, 45.517815, 44.283993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101795, 45.854698, 44.392635>,  <38.990017, 46.056828, 44.457821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101795, 45.854698, 44.392635>,  <39.288094, 45.517815, 44.283993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101795, 45.854698, 44.392635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404709, 0.475669, -0.780992,
		-0.786952, -0.253820, -0.562389,
		-0.465743, 0.842208, 0.271606,
		38.962070, 46.107361, 44.474117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231274, 45.771923, 43.704018>,  <39.288094, 45.517815, 44.283993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231274, 45.771923, 43.704018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162666, 46.081085, 43.948380>,  <39.121502, 46.266582, 44.094997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162666, 46.081085, 43.948380>,  <39.231274, 45.771923, 43.704018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162666, 46.081085, 43.948380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562208, 0.586000, -0.583547,
		-0.809014, 0.243366, -0.535042,
		-0.171519, 0.772902, 0.610904,
		39.111210, 46.312954, 44.131649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863857, 46.319374, 43.298702>,  <39.231274, 45.771923, 43.704018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863857, 46.319374, 43.298702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035896, 46.490967, 43.616444>,  <39.139118, 46.593922, 43.807087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035896, 46.490967, 43.616444>,  <38.863857, 46.319374, 43.298702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035896, 46.490967, 43.616444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427101, 0.678506, -0.597674,
		-0.795363, 0.596325, 0.108604,
		0.430097, 0.428983, 0.794349,
		39.164925, 46.619663, 43.854748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697414, 47.046703, 43.219742>,  <38.863857, 46.319374, 43.298702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697414, 47.046703, 43.219742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013649, 46.984879, 43.456753>,  <39.203388, 46.947784, 43.598961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013649, 46.984879, 43.456753>,  <38.697414, 47.046703, 43.219742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013649, 46.984879, 43.456753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562214, 0.566688, -0.602313,
		-0.242681, 0.809305, 0.534912,
		0.790583, -0.154564, 0.592527,
		39.250824, 46.938511, 43.634510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888512, 47.673290, 43.466331>,  <38.697414, 47.046703, 43.219742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888512, 47.673290, 43.466331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211998, 47.439018, 43.488083>,  <39.406090, 47.298454, 43.501133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211998, 47.439018, 43.488083>,  <38.888512, 47.673290, 43.466331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211998, 47.439018, 43.488083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480302, 0.604174, -0.635833,
		0.339545, 0.540324, 0.769909,
		0.808715, -0.585683, 0.054374,
		39.454613, 47.263313, 43.504395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463478, 48.127674, 43.699734>,  <38.888512, 47.673290, 43.466331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463478, 48.127674, 43.699734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632217, 47.809837, 43.525070>,  <39.733459, 47.619137, 43.420273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632217, 47.809837, 43.525070>,  <39.463478, 48.127674, 43.699734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632217, 47.809837, 43.525070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527508, 0.606800, -0.594583,
		0.737414, 0.020484, 0.675131,
		0.421848, -0.794591, -0.436657,
		39.758774, 47.571461, 43.394073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018162, 48.358109, 43.523708>,  <39.463478, 48.127674, 43.699734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018162, 48.358109, 43.523708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043930, 48.014114, 43.321213>,  <40.059391, 47.807716, 43.199715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043930, 48.014114, 43.321213>,  <40.018162, 48.358109, 43.523708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043930, 48.014114, 43.321213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510057, 0.464396, -0.724002,
		0.857725, -0.211571, 0.468557,
		0.064418, -0.859985, -0.506237,
		40.063255, 47.756119, 43.169342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725163, 48.213898, 43.435982>,  <40.018162, 48.358109, 43.523708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725163, 48.213898, 43.435982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535973, 47.999306, 43.156414>,  <40.422459, 47.870552, 42.988674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535973, 47.999306, 43.156414>,  <40.725163, 48.213898, 43.435982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535973, 47.999306, 43.156414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733650, 0.199472, -0.649592,
		0.487907, -0.820000, 0.299244,
		-0.472975, -0.536480, -0.698916,
		40.394081, 47.838360, 42.946739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.547785, 43.035187, 45.559727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.845417, 42.768204, 45.548138>,  <32.023994, 42.608013, 45.541183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.845417, 42.768204, 45.548138>,  <31.547785, 43.035187, 45.559727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845417, 42.768204, 45.548138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465069, 0.548614, -0.694790,
		0.479641, 0.503504, 0.718629,
		0.744080, -0.667462, -0.028974,
		32.068642, 42.567966, 45.539444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142509, 43.421753, 45.484467>,  <31.547785, 43.035187, 45.559727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142509, 43.421753, 45.484467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.244835, 43.047958, 45.385441>,  <32.306229, 42.823681, 45.326023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.244835, 43.047958, 45.385441>,  <32.142509, 43.421753, 45.484467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244835, 43.047958, 45.385441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523032, 0.349159, -0.777512,
		0.813017, 0.069414, 0.578088,
		0.255815, -0.934489, -0.247567,
		32.321579, 42.767612, 45.311172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807178, 43.496075, 45.467567>,  <32.142509, 43.421753, 45.484467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807178, 43.496075, 45.467567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.701164, 43.176308, 45.251904>,  <32.637554, 42.984447, 45.122505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.701164, 43.176308, 45.251904>,  <32.807178, 43.496075, 45.467567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701164, 43.176308, 45.251904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586937, 0.309876, -0.747985,
		0.765023, -0.514695, 0.387077,
		-0.265038, -0.799416, -0.539156,
		32.621655, 42.936481, 45.090157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471329, 43.283749, 45.229755>,  <32.807178, 43.496075, 45.467567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471329, 43.283749, 45.229755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221214, 43.075447, 44.997261>,  <33.071148, 42.950466, 44.857765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221214, 43.075447, 44.997261>,  <33.471329, 43.283749, 45.229755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221214, 43.075447, 44.997261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557760, 0.222712, -0.799564,
		0.545824, -0.824145, 0.151197,
		-0.625284, -0.520754, -0.581237,
		33.033630, 42.919220, 44.822891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922974, 42.734005, 44.948669>,  <33.471329, 43.283749, 45.229755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922974, 42.734005, 44.948669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.600868, 42.801239, 44.721233>,  <33.407604, 42.841579, 44.584774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.600868, 42.801239, 44.721233>,  <33.922974, 42.734005, 44.948669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600868, 42.801239, 44.721233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577638, 0.006155, -0.816270,
		-0.133706, -0.985753, -0.102051,
		-0.805268, 0.168089, -0.568586,
		33.359287, 42.851665, 44.550659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963779, 42.225437, 44.412334>,  <33.922974, 42.734005, 44.948669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963779, 42.225437, 44.412334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.728165, 42.518036, 44.274960>,  <33.586796, 42.693596, 44.192535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.728165, 42.518036, 44.274960>,  <33.963779, 42.225437, 44.412334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728165, 42.518036, 44.274960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522499, 0.020541, -0.852392,
		-0.616470, -0.681533, -0.394307,
		-0.589033, 0.731499, -0.343438,
		33.551456, 42.737484, 44.171928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811996, 42.118752, 43.720734>,  <33.963779, 42.225437, 44.412334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811996, 42.118752, 43.720734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765640, 42.513138, 43.768787>,  <33.737827, 42.749771, 43.797619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765640, 42.513138, 43.768787>,  <33.811996, 42.118752, 43.720734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765640, 42.513138, 43.768787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523269, 0.163412, -0.836353,
		-0.844250, -0.034065, -0.534865,
		-0.115894, 0.985970, 0.120135,
		33.730873, 42.808929, 43.804829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569370, 42.441341, 43.041328>,  <33.811996, 42.118752, 43.720734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569370, 42.441341, 43.041328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.733673, 42.739136, 43.251858>,  <33.832253, 42.917812, 43.378178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.733673, 42.739136, 43.251858>,  <33.569370, 42.441341, 43.041328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733673, 42.739136, 43.251858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576877, 0.234816, -0.782352,
		-0.706041, 0.624980, -0.333026,
		0.410754, 0.744487, 0.526327,
		33.856899, 42.962482, 43.409756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624691, 42.953903, 42.474319>,  <33.569370, 42.441341, 43.041328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624691, 42.953903, 42.474319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828720, 43.110657, 42.780590>,  <33.951138, 43.204708, 42.964352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828720, 43.110657, 42.780590>,  <33.624691, 42.953903, 42.474319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828720, 43.110657, 42.780590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673824, 0.371215, -0.638875,
		-0.534594, 0.841799, -0.074715,
		0.510069, 0.391884, 0.765674,
		33.981739, 43.228222, 43.010292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808968, 43.653000, 42.270824>,  <33.624691, 42.953903, 42.474319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808968, 43.653000, 42.270824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.070839, 43.542732, 42.552364>,  <34.227962, 43.476570, 42.721287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.070839, 43.542732, 42.552364>,  <33.808968, 43.653000, 42.270824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070839, 43.542732, 42.552364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741087, 0.417539, -0.525786,
		-0.148942, 0.865834, 0.477648,
		0.654680, -0.275668, 0.703848,
		34.267242, 43.460033, 42.763519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126690, 44.212414, 42.460987>,  <33.808968, 43.653000, 42.270824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126690, 44.212414, 42.460987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366280, 43.908577, 42.562378>,  <34.510033, 43.726276, 42.623215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366280, 43.908577, 42.562378>,  <34.126690, 44.212414, 42.460987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366280, 43.908577, 42.562378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753618, 0.427702, -0.499131,
		0.270720, 0.489995, 0.828622,
		0.598975, -0.759589, 0.253482,
		34.545971, 43.680698, 42.638424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716011, 44.592693, 42.678043>,  <34.126690, 44.212414, 42.460987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716011, 44.592693, 42.678043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.815708, 44.207451, 42.637444>,  <34.875526, 43.976307, 42.613083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.815708, 44.207451, 42.637444>,  <34.716011, 44.592693, 42.678043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815708, 44.207451, 42.637444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934198, 0.266729, -0.236918,
		0.255251, -0.035770, 0.966213,
		0.249242, -0.963108, -0.101498,
		34.890480, 43.918518, 42.606995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442665, 44.500271, 43.078884>,  <34.716011, 44.592693, 42.678043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442665, 44.500271, 43.078884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422050, 44.196823, 42.819084>,  <35.409683, 44.014755, 42.663204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422050, 44.196823, 42.819084>,  <35.442665, 44.500271, 43.078884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422050, 44.196823, 42.819084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875452, 0.278631, -0.394905,
		0.480551, -0.588953, 0.649773,
		-0.051534, -0.758616, -0.649497,
		35.406590, 43.969238, 42.624233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085541, 44.205719, 43.188629>,  <35.442665, 44.500271, 43.078884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085541, 44.205719, 43.188629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945683, 44.057022, 42.844639>,  <35.861767, 43.967804, 42.638245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945683, 44.057022, 42.844639>,  <36.085541, 44.205719, 43.188629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945683, 44.057022, 42.844639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867020, 0.219428, -0.447357,
		0.355003, -0.902032, 0.245584,
		-0.349642, -0.371739, -0.859977,
		35.840790, 43.945499, 42.586647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665710, 43.853561, 42.939720>,  <36.085541, 44.205719, 43.188629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665710, 43.853561, 42.939720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427528, 43.915245, 42.624340>,  <36.284618, 43.952255, 42.435112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427528, 43.915245, 42.624340>,  <36.665710, 43.853561, 42.939720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427528, 43.915245, 42.624340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803320, 0.101823, -0.586778,
		-0.010207, -0.982777, -0.184513,
		-0.595460, 0.154212, -0.788446,
		36.248890, 43.961510, 42.387806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976128, 43.444614, 42.446568>,  <36.665710, 43.853561, 42.939720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976128, 43.444614, 42.446568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769070, 43.721588, 42.245541>,  <36.644836, 43.887772, 42.124924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769070, 43.721588, 42.245541>,  <36.976128, 43.444614, 42.446568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769070, 43.721588, 42.245541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817130, 0.225952, -0.530325,
		-0.253660, -0.685185, -0.682773,
		-0.517645, 0.692436, -0.502570,
		36.613777, 43.929317, 42.094769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080353, 43.365067, 41.749229>,  <36.976128, 43.444614, 42.446568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080353, 43.365067, 41.749229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955528, 43.745049, 41.743572>,  <36.880634, 43.973038, 41.740177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955528, 43.745049, 41.743572>,  <37.080353, 43.365067, 41.749229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955528, 43.745049, 41.743572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780457, 0.247831, -0.573992,
		-0.541762, -0.190160, -0.818739,
		-0.312059, 0.949957, -0.014146,
		36.861912, 44.030037, 41.739326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967457, 43.508621, 41.034302>,  <37.080353, 43.365067, 41.749229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967457, 43.508621, 41.034302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007462, 43.849434, 41.239841>,  <37.031464, 44.053921, 41.363167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007462, 43.849434, 41.239841>,  <36.967457, 43.508621, 41.034302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007462, 43.849434, 41.239841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799017, 0.238980, -0.551779,
		-0.592932, 0.465759, -0.656886,
		0.100013, 0.852031, 0.513849,
		37.037464, 44.105042, 41.393997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310688, 43.839077, 40.544010>,  <36.967457, 43.508621, 41.034302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310688, 43.839077, 40.544010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343334, 44.081993, 40.860119>,  <37.362923, 44.227745, 41.049786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343334, 44.081993, 40.860119>,  <37.310688, 43.839077, 40.544010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343334, 44.081993, 40.860119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812023, 0.419240, -0.406025,
		-0.577891, 0.674859, -0.458920,
		0.081612, 0.607292, 0.790276,
		37.367817, 44.264179, 41.097202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174782, 44.554771, 40.360340>,  <37.310688, 43.839077, 40.544010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174782, 44.554771, 40.360340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414036, 44.529327, 40.679886>,  <37.557587, 44.514061, 40.871613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414036, 44.529327, 40.679886>,  <37.174782, 44.554771, 40.360340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414036, 44.529327, 40.679886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763326, 0.348814, -0.543749,
		-0.244065, 0.935031, 0.257196,
		0.598136, -0.063614, 0.798866,
		37.593475, 44.510242, 40.919544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558037, 45.183353, 40.302879>,  <37.174782, 44.554771, 40.360340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558037, 45.183353, 40.302879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779003, 44.946709, 40.537769>,  <37.911583, 44.804722, 40.678703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779003, 44.946709, 40.537769>,  <37.558037, 45.183353, 40.302879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779003, 44.946709, 40.537769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824796, 0.285993, -0.487770,
		0.120630, 0.753790, 0.645948,
		0.552412, -0.591615, 0.587224,
		37.944725, 44.769222, 40.713936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113327, 45.636044, 40.525150>,  <37.558037, 45.183353, 40.302879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113327, 45.636044, 40.525150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210716, 45.249229, 40.554989>,  <38.269150, 45.017139, 40.572891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210716, 45.249229, 40.554989>,  <38.113327, 45.636044, 40.525150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210716, 45.249229, 40.554989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913025, 0.202564, -0.354052,
		0.327270, 0.154310, 0.932246,
		0.243473, -0.967035, 0.074596,
		38.283760, 44.959118, 40.577366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276512, 45.967152, 41.158684>,  <38.113327, 45.636044, 40.525150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276512, 45.967152, 41.158684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193512, 46.318573, 41.330769>,  <38.143711, 46.529427, 41.434021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193512, 46.318573, 41.330769>,  <38.276512, 45.967152, 41.158684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193512, 46.318573, 41.330769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371393, -0.477608, 0.796215,
		0.904992, 0.005436, 0.425393,
		-0.207499, 0.878556, 0.430213,
		38.131264, 46.582138, 41.459831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254299, 45.827095, 41.896313>,  <38.276512, 45.967152, 41.158684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254299, 45.827095, 41.896313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.095154, 46.193802, 41.882240>,  <37.999664, 46.413826, 41.873798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.095154, 46.193802, 41.882240>,  <38.254299, 45.827095, 41.896313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095154, 46.193802, 41.882240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532769, -0.199662, 0.822370,
		0.746899, 0.345935, 0.567865,
		-0.397868, 0.916768, -0.035176,
		37.975792, 46.468834, 41.871689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237652, 46.080978, 42.614986>,  <38.254299, 45.827095, 41.896313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237652, 46.080978, 42.614986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967461, 46.277100, 42.394680>,  <37.805347, 46.394772, 42.262497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967461, 46.277100, 42.394680>,  <38.237652, 46.080978, 42.614986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967461, 46.277100, 42.394680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682316, -0.132375, 0.718972,
		0.279604, 0.861443, 0.423955,
		-0.675475, 0.490299, -0.550764,
		37.764820, 46.424191, 42.229450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980583, 46.630268, 43.087109>,  <38.237652, 46.080978, 42.614986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980583, 46.630268, 43.087109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685543, 46.591644, 42.819790>,  <37.508518, 46.568470, 42.659397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685543, 46.591644, 42.819790>,  <37.980583, 46.630268, 43.087109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685543, 46.591644, 42.819790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660875, -0.099826, 0.743827,
		-0.138535, 0.990309, 0.009820,
		-0.737599, -0.096556, -0.668300,
		37.464264, 46.562675, 42.619301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475456, 47.063908, 43.326630>,  <37.980583, 46.630268, 43.087109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475456, 47.063908, 43.326630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284985, 46.827179, 43.066475>,  <37.170704, 46.685143, 42.910381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284985, 46.827179, 43.066475>,  <37.475456, 47.063908, 43.326630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284985, 46.827179, 43.066475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795164, -0.026004, 0.605837,
		-0.375460, 0.805650, -0.458212,
		-0.476177, -0.591821, -0.650387,
		37.142132, 46.649632, 42.871357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801582, 47.413017, 43.254425>,  <37.475456, 47.063908, 43.326630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801582, 47.413017, 43.254425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.762821, 47.025185, 43.164513>,  <36.739567, 46.792484, 43.110565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.762821, 47.025185, 43.164513>,  <36.801582, 47.413017, 43.254425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762821, 47.025185, 43.164513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784786, -0.064470, 0.616404,
		-0.612145, 0.236133, -0.754666,
		-0.096900, -0.969580, -0.224779,
		36.733749, 46.734310, 43.097080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052242, 47.344326, 43.183495>,  <36.801582, 47.413017, 43.254425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052242, 47.344326, 43.183495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193771, 46.973000, 43.229164>,  <36.278690, 46.750202, 43.256565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193771, 46.973000, 43.229164>,  <36.052242, 47.344326, 43.183495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193771, 46.973000, 43.229164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766227, -0.217684, 0.604574,
		-0.536383, -0.301396, -0.788323,
		0.353822, -0.928318, 0.114175,
		36.299919, 46.694504, 43.263416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506107, 46.892849, 43.077747>,  <36.052242, 47.344326, 43.183495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506107, 46.892849, 43.077747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757469, 46.655838, 43.279350>,  <35.908287, 46.513630, 43.400311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757469, 46.655838, 43.279350>,  <35.506107, 46.892849, 43.077747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757469, 46.655838, 43.279350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757152, -0.317297, 0.571002,
		-0.178416, -0.740427, -0.648025,
		0.628402, -0.592529, 0.504005,
		35.945988, 46.478077, 43.430550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137039, 46.199329, 43.157429>,  <35.506107, 46.892849, 43.077747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137039, 46.199329, 43.157429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.408607, 46.226883, 43.449818>,  <35.571548, 46.243416, 43.625252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.408607, 46.226883, 43.449818>,  <35.137039, 46.199329, 43.157429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408607, 46.226883, 43.449818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646543, -0.415681, 0.639681,
		0.347916, -0.906898, -0.237677,
		0.678924, 0.068887, 0.730971,
		35.612286, 46.247547, 43.669109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082451, 45.566185, 43.562149>,  <35.137039, 46.199329, 43.157429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082451, 45.566185, 43.562149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269737, 45.824211, 43.803699>,  <35.382111, 45.979027, 43.948631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269737, 45.824211, 43.803699>,  <35.082451, 45.566185, 43.562149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269737, 45.824211, 43.803699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556646, -0.315427, 0.768539,
		0.686236, -0.695986, 0.211385,
		0.468216, 0.645066, 0.603875,
		35.410202, 46.017731, 43.984863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070190, 45.234383, 44.318291>,  <35.082451, 45.566185, 43.562149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070190, 45.234383, 44.318291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144028, 45.626282, 44.349308>,  <35.188328, 45.861423, 44.367920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144028, 45.626282, 44.349308>,  <35.070190, 45.234383, 44.318291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144028, 45.626282, 44.349308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510703, 0.028208, 0.859294,
		0.839708, -0.198219, 0.505569,
		0.184590, 0.979752, 0.077545,
		35.199406, 45.920208, 44.372570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523346, 45.355103, 44.920151>,  <35.070190, 45.234383, 44.318291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523346, 45.355103, 44.920151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.299366, 45.672226, 44.823898>,  <35.164978, 45.862499, 44.766148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.299366, 45.672226, 44.823898>,  <35.523346, 45.355103, 44.920151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299366, 45.672226, 44.823898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611758, -0.199765, 0.765406,
		0.558752, 0.575800, 0.596867,
		-0.559954, 0.792810, -0.240631,
		35.131378, 45.910069, 44.751709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406223, 45.669224, 45.564060>,  <35.523346, 45.355103, 44.920151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406223, 45.669224, 45.564060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139389, 45.832993, 45.315105>,  <34.979290, 45.931252, 45.165733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139389, 45.832993, 45.315105>,  <35.406223, 45.669224, 45.564060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139389, 45.832993, 45.315105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711788, -0.103682, 0.694699,
		0.219893, 0.906435, 0.360585,
		-0.667086, 0.409420, -0.622391,
		34.939262, 45.955818, 45.128387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020313, 46.061272, 45.992577>,  <35.406223, 45.669224, 45.564060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020313, 46.061272, 45.992577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.783230, 46.019402, 45.673141>,  <34.640980, 45.994278, 45.481480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.783230, 46.019402, 45.673141>,  <35.020313, 46.061272, 45.992577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783230, 46.019402, 45.673141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802055, -0.013825, 0.597090,
		-0.073544, 0.994410, -0.075764,
		-0.592705, -0.104679, -0.798588,
		34.605419, 45.987999, 45.433563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507866, 46.530270, 46.158566>,  <35.020313, 46.061272, 45.992577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507866, 46.530270, 46.158566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.375984, 46.265030, 45.889763>,  <34.296856, 46.105885, 45.728481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.375984, 46.265030, 45.889763>,  <34.507866, 46.530270, 46.158566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375984, 46.265030, 45.889763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661773, -0.345331, 0.665435,
		-0.673316, 0.664111, -0.324966,
		-0.329702, -0.663102, -0.672007,
		34.277073, 46.066101, 45.688160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776466, 46.539108, 46.251831>,  <34.507866, 46.530270, 46.158566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776466, 46.539108, 46.251831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.834831, 46.210327, 46.031612>,  <33.869850, 46.013058, 45.899483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.834831, 46.210327, 46.031612>,  <33.776466, 46.539108, 46.251831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834831, 46.210327, 46.031612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756574, -0.451274, 0.473231,
		-0.637421, 0.347475, -0.687718,
		0.145913, -0.821957, -0.550542,
		33.878605, 45.963741, 45.866451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111195, 46.332771, 46.209415>,  <33.776466, 46.539108, 46.251831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111195, 46.332771, 46.209415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.349411, 46.034485, 46.089924>,  <33.492340, 45.855515, 46.018227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.349411, 46.034485, 46.089924>,  <33.111195, 46.332771, 46.209415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349411, 46.034485, 46.089924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662704, -0.666240, 0.341977,
		-0.454044, -0.005691, -0.890961,
		0.595540, -0.745716, -0.298731,
		33.528072, 45.810772, 46.000305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733883, 45.780037, 45.782688>,  <33.111195, 46.332771, 46.209415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733883, 45.780037, 45.782688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045769, 45.599129, 45.955891>,  <33.232899, 45.490585, 46.059814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045769, 45.599129, 45.955891>,  <32.733883, 45.780037, 45.782688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045769, 45.599129, 45.955891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624635, -0.609678, 0.487979,
		0.043300, -0.650958, -0.757877,
		0.779715, -0.452267, 0.433011,
		33.279682, 45.463448, 46.085793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.597507, 45.092831, 45.657375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870071, 45.067841, 45.949066>,  <33.033611, 45.052849, 46.124081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870071, 45.067841, 45.949066>,  <32.597507, 45.092831, 45.657375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870071, 45.067841, 45.949066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612225, -0.594643, 0.521134,
		0.401076, -0.801559, -0.443442,
		0.681409, -0.062472, 0.729232,
		33.074493, 45.049099, 46.167835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780785, 44.393841, 45.730724>,  <32.597507, 45.092831, 45.657375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780785, 44.393841, 45.730724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.880703, 44.550583, 46.084911>,  <32.940655, 44.644627, 46.297424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.880703, 44.550583, 46.084911>,  <32.780785, 44.393841, 45.730724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880703, 44.550583, 46.084911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686549, -0.573186, 0.447335,
		0.682829, -0.719657, 0.125851,
		0.249791, 0.391856, 0.885468,
		32.955639, 44.668140, 46.350552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817532, 43.791534, 46.183643>,  <32.780785, 44.393841, 45.730724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817532, 43.791534, 46.183643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787971, 44.117676, 46.413338>,  <32.770233, 44.313358, 46.551155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787971, 44.117676, 46.413338>,  <32.817532, 43.791534, 46.183643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787971, 44.117676, 46.413338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668412, -0.467827, 0.578241,
		0.740110, -0.341091, 0.579563,
		-0.073903, 0.815349, 0.574234,
		32.765800, 44.362282, 46.585609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909603, 43.643898, 46.902889>,  <32.817532, 43.791534, 46.183643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909603, 43.643898, 46.902889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.686737, 43.975990, 46.909718>,  <32.553017, 44.175243, 46.913815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.686737, 43.975990, 46.909718>,  <32.909603, 43.643898, 46.902889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686737, 43.975990, 46.909718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641519, -0.443394, 0.625984,
		0.527277, 0.337826, 0.779649,
		-0.557165, 0.830226, 0.017070,
		32.519588, 44.225060, 46.914837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584984, 43.708290, 47.567322>,  <32.909603, 43.643898, 46.902889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584984, 43.708290, 47.567322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363827, 43.983994, 47.380035>,  <32.231133, 44.149418, 47.267662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363827, 43.983994, 47.380035>,  <32.584984, 43.708290, 47.567322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363827, 43.983994, 47.380035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791908, -0.259847, 0.552595,
		0.259217, 0.676313, 0.689498,
		-0.552892, 0.689261, -0.468221,
		32.197960, 44.190773, 47.239571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147850, 43.993946, 47.997047>,  <32.584984, 43.708290, 47.567322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147850, 43.993946, 47.997047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.958279, 44.088898, 47.657864>,  <31.844536, 44.145870, 47.454353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.958279, 44.088898, 47.657864>,  <32.147850, 43.993946, 47.997047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958279, 44.088898, 47.657864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880319, -0.105059, 0.462603,
		0.020727, 0.965719, 0.258761,
		-0.473930, 0.237381, -0.847963,
		31.816099, 44.160110, 47.403473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659739, 44.523682, 48.180515>,  <32.147850, 43.993946, 47.997047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659739, 44.523682, 48.180515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.516647, 44.354256, 47.847618>,  <31.430794, 44.252598, 47.647881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.516647, 44.354256, 47.847618>,  <31.659739, 44.523682, 48.180515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516647, 44.354256, 47.847618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913130, -0.027927, 0.406710,
		-0.195511, 0.905434, -0.376783,
		-0.357727, -0.423568, -0.832239,
		31.409328, 44.227184, 47.597946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982529, 44.852497, 48.124702>,  <31.659739, 44.523682, 48.180515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982529, 44.852497, 48.124702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959129, 44.512802, 47.914799>,  <30.945089, 44.308987, 47.788857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959129, 44.512802, 47.914799>,  <30.982529, 44.852497, 48.124702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959129, 44.512802, 47.914799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971861, -0.071702, 0.224376,
		-0.228175, 0.523119, -0.821147,
		-0.058498, -0.849238, -0.524760,
		30.941580, 44.258030, 47.757370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381056, 44.986221, 47.768349>,  <30.982529, 44.852497, 48.124702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381056, 44.986221, 47.768349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436064, 44.591049, 47.739834>,  <30.469069, 44.353947, 47.722725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436064, 44.591049, 47.739834>,  <30.381056, 44.986221, 47.768349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436064, 44.591049, 47.739834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929532, -0.153578, 0.335237,
		-0.342139, 0.020159, -0.939433,
		0.137519, -0.987931, -0.071284,
		30.477320, 44.294670, 47.718449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763430, 44.728561, 47.485256>,  <30.381056, 44.986221, 47.768349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763430, 44.728561, 47.485256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.918156, 44.392296, 47.636864>,  <30.010992, 44.190536, 47.727829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.918156, 44.392296, 47.636864>,  <29.763430, 44.728561, 47.485256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918156, 44.392296, 47.636864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912520, -0.289685, 0.288773,
		-0.132967, -0.457563, -0.879179,
		0.386816, -0.840666, 0.379017,
		30.034201, 44.140095, 47.750568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357004, 44.098053, 47.180035>,  <29.763430, 44.728561, 47.485256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357004, 44.098053, 47.180035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543222, 44.020531, 47.525452>,  <29.654953, 43.974018, 47.732700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543222, 44.020531, 47.525452>,  <29.357004, 44.098053, 47.180035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543222, 44.020531, 47.525452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803522, -0.501548, 0.320628,
		0.370968, -0.843143, -0.389221,
		0.465548, -0.193804, 0.863542,
		29.682886, 43.962391, 47.784515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097513, 43.495457, 47.273869>,  <29.357004, 44.098053, 47.180035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097513, 43.495457, 47.273869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.235983, 43.595680, 47.635506>,  <29.319065, 43.655815, 47.852489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.235983, 43.595680, 47.635506>,  <29.097513, 43.495457, 47.273869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235983, 43.595680, 47.635506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801932, -0.421108, 0.423761,
		0.486898, -0.871715, 0.055156,
		0.346173, 0.250560, 0.904093,
		29.339834, 43.670849, 47.906734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970022, 42.890865, 47.643211>,  <29.097513, 43.495457, 47.273869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970022, 42.890865, 47.643211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.038490, 43.176193, 47.915058>,  <29.079571, 43.347389, 48.078167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.038490, 43.176193, 47.915058>,  <28.970022, 42.890865, 47.643211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038490, 43.176193, 47.915058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728867, -0.372442, 0.574491,
		0.662913, -0.593683, 0.456165,
		0.171171, 0.713321, 0.679613,
		29.089842, 43.390190, 48.118942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937567, 42.535671, 48.250797>,  <28.970022, 42.890865, 47.643211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937567, 42.535671, 48.250797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.873413, 42.915550, 48.358391>,  <28.834921, 43.143478, 48.422947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.873413, 42.915550, 48.358391>,  <28.937567, 42.535671, 48.250797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873413, 42.915550, 48.358391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467317, -0.313090, 0.826795,
		0.869421, 0.006906, 0.494025,
		-0.160384, 0.949698, 0.268980,
		28.825298, 43.200459, 48.439083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246618, 42.656929, 48.874435>,  <28.937567, 42.535671, 48.250797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246618, 42.656929, 48.874435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.970411, 42.946243, 48.871933>,  <28.804688, 43.119831, 48.870430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.970411, 42.946243, 48.871933>,  <29.246618, 42.656929, 48.874435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970411, 42.946243, 48.871933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436836, -0.410115, 0.800612,
		0.576506, 0.555572, 0.599150,
		-0.690518, 0.723288, -0.006260,
		28.763256, 43.163231, 48.870056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319462, 42.847187, 49.461544>,  <29.246618, 42.656929, 48.874435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319462, 42.847187, 49.461544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.964260, 43.011032, 49.377956>,  <28.751139, 43.109341, 49.327805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.964260, 43.011032, 49.377956>,  <29.319462, 42.847187, 49.461544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964260, 43.011032, 49.377956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383264, -0.408188, 0.828548,
		0.254088, 0.815842, 0.519462,
		-0.888003, 0.409615, -0.208967,
		28.697859, 43.133915, 49.315266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105635, 43.107529, 50.001675>,  <29.319462, 42.847187, 49.461544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105635, 43.107529, 50.001675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.754576, 43.079407, 49.812027>,  <28.543940, 43.062534, 49.698238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.754576, 43.079407, 49.812027>,  <29.105635, 43.107529, 50.001675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754576, 43.079407, 49.812027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435963, -0.293969, 0.850599,
		-0.199178, 0.953226, 0.227351,
		-0.877647, -0.070304, -0.474123,
		28.491282, 43.058315, 49.669788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660505, 43.391640, 50.508362>,  <29.105635, 43.107529, 50.001675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660505, 43.391640, 50.508362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.417126, 43.190407, 50.262859>,  <28.271097, 43.069668, 50.115559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.417126, 43.190407, 50.262859>,  <28.660505, 43.391640, 50.508362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417126, 43.190407, 50.262859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534582, -0.311771, 0.785507,
		-0.586523, 0.806047, -0.079239,
		-0.608451, -0.503078, -0.613759,
		28.234591, 43.039482, 50.078732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944120, 43.549545, 50.681503>,  <28.660505, 43.391640, 50.508362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944120, 43.549545, 50.681503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.950144, 43.199951, 50.487213>,  <27.953758, 42.990196, 50.370640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.950144, 43.199951, 50.487213>,  <27.944120, 43.549545, 50.681503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950144, 43.199951, 50.487213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485642, -0.431028, 0.760504,
		-0.874028, 0.224437, -0.430933,
		0.015059, -0.873981, -0.485726,
		27.954662, 42.937756, 50.341496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250772, 43.268978, 50.600544>,  <27.944120, 43.549545, 50.681503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250772, 43.268978, 50.600544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.465591, 42.937057, 50.539871>,  <27.594482, 42.737904, 50.503468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.465591, 42.937057, 50.539871>,  <27.250772, 43.268978, 50.600544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465591, 42.937057, 50.539871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493361, -0.454831, 0.741434,
		-0.684232, -0.323353, -0.653658,
		0.537049, -0.829802, -0.151680,
		27.626707, 42.688118, 50.494366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818281, 42.653328, 50.512115>,  <27.250772, 43.268978, 50.600544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818281, 42.653328, 50.512115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.158955, 42.456116, 50.583176>,  <27.363358, 42.337788, 50.625813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.158955, 42.456116, 50.583176>,  <26.818281, 42.653328, 50.512115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158955, 42.456116, 50.583176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508878, -0.697040, 0.505153,
		-0.125227, -0.520631, -0.844548,
		0.851682, -0.493030, 0.177649,
		27.414459, 42.308208, 50.636471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741140, 41.907852, 50.240822>,  <26.818281, 42.653328, 50.512115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741140, 41.907852, 50.240822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.986538, 41.955376, 50.553104>,  <27.133776, 41.983891, 50.740475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.986538, 41.955376, 50.553104>,  <26.741140, 41.907852, 50.240822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986538, 41.955376, 50.553104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559149, -0.632767, 0.535685,
		0.557654, -0.765173, -0.321765,
		0.613494, 0.118812, 0.780710,
		27.170586, 41.991020, 50.787319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422766, 41.275414, 50.071236>,  <26.741140, 41.907852, 50.240822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422766, 41.275414, 50.071236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.260578, 41.639923, 50.042442>,  <26.163265, 41.858627, 50.025166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.260578, 41.639923, 50.042442>,  <26.422766, 41.275414, 50.071236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260578, 41.639923, 50.042442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822844, -0.398151, -0.405467,
		-0.398151, -0.105171, 0.911271,
		0.405467, -0.911271, 0.071985,
		26.138939, 41.913303, 50.020847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561380, 41.198032, 50.814438>,  <26.422766, 41.275414, 50.071236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561380, 41.198032, 50.814438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.673828, 40.876823, 51.024628>,  <26.741297, 40.684097, 51.150742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.673828, 40.876823, 51.024628>,  <26.561380, 41.198032, 50.814438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673828, 40.876823, 51.024628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843883, -0.053889, -0.533814,
		0.456982, 0.593508, 0.662507,
		0.281121, -0.803022, 0.525477,
		26.758165, 40.635918, 51.182270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254805, 41.328194, 51.061150>,  <26.561380, 41.198032, 50.814438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254805, 41.328194, 51.061150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.197586, 40.932480, 51.049469>,  <27.163256, 40.695053, 51.042461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.197586, 40.932480, 51.049469>,  <27.254805, 41.328194, 51.061150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197586, 40.932480, 51.049469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875062, -0.112634, -0.470724,
		0.462391, -0.092888, 0.881797,
		-0.143045, -0.989285, -0.029202,
		27.154673, 40.635693, 51.040707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775377, 41.014225, 51.522789>,  <27.254805, 41.328194, 51.061150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775377, 41.014225, 51.522789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.652397, 40.765251, 51.234886>,  <27.578609, 40.615868, 51.062145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.652397, 40.765251, 51.234886>,  <27.775377, 41.014225, 51.522789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652397, 40.765251, 51.234886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941581, -0.089723, -0.324613,
		0.137471, -0.777513, 0.613657,
		-0.307450, -0.622433, -0.719758,
		27.560162, 40.578522, 51.018959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249882, 40.528194, 51.515491>,  <27.775377, 41.014225, 51.522789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249882, 40.528194, 51.515491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.087788, 40.446564, 51.159035>,  <27.990530, 40.397587, 50.945160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.087788, 40.446564, 51.159035>,  <28.249882, 40.528194, 51.515491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087788, 40.446564, 51.159035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911363, -0.013291, -0.411388,
		0.072109, -0.978866, 0.191370,
		-0.405237, -0.204072, -0.891144,
		27.966217, 40.385342, 50.891693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772535, 40.162167, 51.119671>,  <28.249882, 40.528194, 51.515491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772535, 40.162167, 51.119671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.540005, 40.238205, 50.803211>,  <28.400486, 40.283829, 50.613335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.540005, 40.238205, 50.803211>,  <28.772535, 40.162167, 51.119671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540005, 40.238205, 50.803211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763386, -0.209087, -0.611166,
		-0.281600, -0.959243, -0.023568,
		-0.581329, 0.190096, -0.791152,
		28.365606, 40.295235, 50.565865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914976, 39.586174, 50.665356>,  <28.772535, 40.162167, 51.119671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914976, 39.586174, 50.665356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.749321, 39.859276, 50.424580>,  <28.649927, 40.023136, 50.280113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.749321, 39.859276, 50.424580>,  <28.914976, 39.586174, 50.665356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749321, 39.859276, 50.424580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672499, -0.216134, -0.707836,
		-0.613378, -0.697948, -0.369642,
		-0.414140, 0.682755, -0.601941,
		28.625078, 40.064102, 50.243996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888287, 39.281372, 49.981915>,  <28.914976, 39.586174, 50.665356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888287, 39.281372, 49.981915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.896959, 39.676743, 49.921860>,  <28.902163, 39.913967, 49.885826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.896959, 39.676743, 49.921860>,  <28.888287, 39.281372, 49.981915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896959, 39.676743, 49.921860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609565, -0.132096, -0.781652,
		-0.792439, -0.074570, -0.605376,
		0.021680, 0.988428, -0.150133,
		28.903463, 39.973270, 49.876820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027658, 39.389172, 49.289379>,  <28.888287, 39.281372, 49.981915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027658, 39.389172, 49.289379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.095839, 39.756210, 49.433025>,  <29.136745, 39.976433, 49.519211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.095839, 39.756210, 49.433025>,  <29.027658, 39.389172, 49.289379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095839, 39.756210, 49.433025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754872, 0.112647, -0.646126,
		-0.633337, 0.381215, -0.673469,
		0.170448, 0.917598, 0.359112,
		29.146973, 40.031490, 49.540760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073460, 39.755508, 48.721031>,  <29.027658, 39.389172, 49.289379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073460, 39.755508, 48.721031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.246140, 39.980537, 49.003067>,  <29.349747, 40.115555, 49.172287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.246140, 39.980537, 49.003067>,  <29.073460, 39.755508, 48.721031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246140, 39.980537, 49.003067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715850, 0.261917, -0.647270,
		-0.548811, 0.784162, -0.289650,
		0.431700, 0.562574, 0.705085,
		29.375650, 40.149311, 49.214592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215614, 40.383167, 48.415386>,  <29.073460, 39.755508, 48.721031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215614, 40.383167, 48.415386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456282, 40.371513, 48.734673>,  <29.600681, 40.364521, 48.926243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456282, 40.371513, 48.734673>,  <29.215614, 40.383167, 48.415386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456282, 40.371513, 48.734673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755636, 0.344641, -0.556990,
		-0.258868, 0.938282, 0.229377,
		0.601666, -0.029138, 0.798216,
		29.636782, 40.362770, 48.974136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504986, 40.958767, 48.290043>,  <29.215614, 40.383167, 48.415386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504986, 40.958767, 48.290043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.746260, 40.830231, 48.582047>,  <29.891024, 40.753109, 48.757248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.746260, 40.830231, 48.582047>,  <29.504986, 40.958767, 48.290043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746260, 40.830231, 48.582047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737740, 0.572654, -0.357501,
		-0.303161, 0.754193, 0.582482,
		0.603186, -0.321340, 0.730005,
		29.927216, 40.733829, 48.801048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834059, 41.563969, 48.712200>,  <29.504986, 40.958767, 48.290043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834059, 41.563969, 48.712200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050655, 41.228004, 48.697590>,  <30.180613, 41.026424, 48.688824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050655, 41.228004, 48.697590>,  <29.834059, 41.563969, 48.712200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050655, 41.228004, 48.697590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768307, 0.512029, -0.384098,
		0.341310, 0.179924, 0.922570,
		0.541491, -0.839913, -0.036524,
		30.213102, 40.976032, 48.686634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500843, 41.740242, 49.097996>,  <29.834059, 41.563969, 48.712200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500843, 41.740242, 49.097996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551140, 41.419525, 48.864307>,  <30.581318, 41.227097, 48.724094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551140, 41.419525, 48.864307>,  <30.500843, 41.740242, 49.097996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551140, 41.419525, 48.864307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753500, 0.460250, -0.469476,
		0.645311, -0.381181, 0.662023,
		0.125740, -0.801792, -0.584224,
		30.588861, 41.178986, 48.689041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239304, 41.732040, 48.910599>,  <30.500843, 41.740242, 49.097996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239304, 41.732040, 48.910599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088568, 41.490547, 48.629601>,  <30.998127, 41.345650, 48.461002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088568, 41.490547, 48.629601>,  <31.239304, 41.732040, 48.910599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088568, 41.490547, 48.629601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696268, 0.315561, -0.644695,
		0.610904, -0.732071, 0.301444,
		-0.376839, -0.603732, -0.702496,
		30.975515, 41.309429, 48.418854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872166, 41.473747, 48.495037>,  <31.239304, 41.732040, 48.910599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872166, 41.473747, 48.495037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.545862, 41.412094, 48.272049>,  <31.350080, 41.375103, 48.138256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.545862, 41.412094, 48.272049>,  <31.872166, 41.473747, 48.495037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545862, 41.412094, 48.272049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512186, 0.255263, -0.820065,
		0.268707, -0.954506, -0.129285,
		-0.815759, -0.154140, -0.557476,
		31.301134, 41.365852, 48.104805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098389, 41.184917, 47.833664>,  <31.872166, 41.473747, 48.495037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098389, 41.184917, 47.833664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.736830, 41.333832, 47.749405>,  <31.519896, 41.423180, 47.698849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.736830, 41.333832, 47.749405>,  <32.098389, 41.184917, 47.833664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736830, 41.333832, 47.749405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303195, 0.210233, -0.929449,
		-0.301738, -0.903993, -0.302904,
		-0.903896, 0.372289, -0.210651,
		31.465660, 41.445518, 47.686211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993034, 40.865013, 47.129398>,  <32.098389, 41.184917, 47.833664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993034, 40.865013, 47.129398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.764151, 41.192009, 47.155563>,  <31.626820, 41.388206, 47.171261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.764151, 41.192009, 47.155563>,  <31.993034, 40.865013, 47.129398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764151, 41.192009, 47.155563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245795, 0.247043, -0.937313,
		-0.782407, -0.520263, -0.342296,
		-0.572211, 0.817495, 0.065410,
		31.592487, 41.437256, 47.175186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682709, 40.855927, 46.554176>,  <31.993034, 40.865013, 47.129398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682709, 40.855927, 46.554176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.663252, 41.233833, 46.683823>,  <31.651577, 41.460575, 46.761612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.663252, 41.233833, 46.683823>,  <31.682709, 40.855927, 46.554176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663252, 41.233833, 46.683823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203025, 0.327083, -0.922929,
		-0.977964, 0.020910, -0.207722,
		-0.048644, 0.944764, 0.324120,
		31.648659, 41.517262, 46.781059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333525, 41.231010, 45.999271>,  <31.682709, 40.855927, 46.554176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333525, 41.231010, 45.999271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492025, 41.536903, 46.202511>,  <31.587126, 41.720440, 46.324455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492025, 41.536903, 46.202511>,  <31.333525, 41.231010, 45.999271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492025, 41.536903, 46.202511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262163, 0.436122, -0.860853,
		-0.879917, 0.474321, -0.027670,
		0.396253, 0.764734, 0.508100,
		31.610901, 41.766323, 46.354942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119072, 41.792152, 45.614128>,  <31.333525, 41.231010, 45.999271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119072, 41.792152, 45.614128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421894, 41.934059, 45.833588>,  <31.603586, 42.019203, 45.965263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421894, 41.934059, 45.833588>,  <31.119072, 41.792152, 45.614128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421894, 41.934059, 45.833588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352046, 0.485911, -0.799971,
		-0.550393, 0.798770, 0.242968,
		0.757054, 0.354763, 0.548646,
		31.649010, 42.040489, 45.998180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130861, 42.407963, 45.426365>,  <31.119072, 41.792152, 45.614128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130861, 42.407963, 45.426365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.494907, 42.355919, 45.583725>,  <31.713335, 42.324692, 45.678139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.494907, 42.355919, 45.583725>,  <31.130861, 42.407963, 45.426365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494907, 42.355919, 45.583725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398785, 0.532858, -0.746347,
		-0.112520, 0.836143, 0.536847,
		0.910115, -0.130108, 0.393398,
		31.767942, 42.316887, 45.701744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.580513, 47.112274, 44.495552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.739647, 46.755608, 44.581959>,  <34.835129, 46.541607, 44.633804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.739647, 46.755608, 44.581959>,  <34.580513, 47.112274, 44.495552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739647, 46.755608, 44.581959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866998, 0.288383, -0.406386,
		0.300063, 0.348962, 0.887799,
		0.397839, -0.891662, 0.216016,
		34.858997, 46.488110, 44.646763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217987, 47.221611, 44.522095>,  <34.580513, 47.112274, 44.495552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217987, 47.221611, 44.522095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.227802, 46.824623, 44.474102>,  <35.233692, 46.586430, 44.445305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.227802, 46.824623, 44.474102>,  <35.217987, 47.221611, 44.522095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227802, 46.824623, 44.474102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851346, 0.083658, -0.517892,
		0.524031, -0.089437, 0.846990,
		0.024539, -0.992473, -0.119982,
		35.235165, 46.526882, 44.438107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973282, 46.990871, 44.696323>,  <35.217987, 47.221611, 44.522095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973282, 46.990871, 44.696323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.797554, 46.694374, 44.493324>,  <35.692116, 46.516476, 44.371525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.797554, 46.694374, 44.493324>,  <35.973282, 46.990871, 44.696323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797554, 46.694374, 44.493324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793234, -0.054935, -0.606434,
		0.421639, -0.668980, 0.612117,
		-0.439319, -0.741248, -0.507495,
		35.665760, 46.472000, 44.341076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456593, 46.443085, 44.624142>,  <35.973282, 46.990871, 44.696323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456593, 46.443085, 44.624142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198048, 46.366188, 44.328777>,  <36.042919, 46.320049, 44.151558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198048, 46.366188, 44.328777>,  <36.456593, 46.443085, 44.624142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198048, 46.366188, 44.328777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759203, -0.065237, -0.647577,
		0.076322, -0.979176, 0.188121,
		-0.646364, -0.192246, -0.738414,
		36.004139, 46.308514, 44.107254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733894, 45.829792, 44.182327>,  <36.456593, 46.443085, 44.624142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733894, 45.829792, 44.182327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.492302, 46.053871, 43.955566>,  <36.347347, 46.188320, 43.819511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.492302, 46.053871, 43.955566>,  <36.733894, 45.829792, 44.182327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492302, 46.053871, 43.955566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692429, 0.016627, -0.721294,
		-0.394645, -0.828189, -0.397943,
		-0.603984, 0.560202, -0.566901,
		36.311108, 46.221931, 43.785496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757675, 45.492943, 43.487888>,  <36.733894, 45.829792, 44.182327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757675, 45.492943, 43.487888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608688, 45.856300, 43.411911>,  <36.519295, 46.074314, 43.366325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608688, 45.856300, 43.411911>,  <36.757675, 45.492943, 43.487888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608688, 45.856300, 43.411911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500454, 0.024243, -0.865423,
		-0.781544, -0.417402, -0.463642,
		-0.372470, 0.908398, -0.189943,
		36.496948, 46.128819, 43.354927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562637, 45.482796, 42.720169>,  <36.757675, 45.492943, 43.487888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562637, 45.482796, 42.720169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608685, 45.867844, 42.818241>,  <36.636314, 46.098873, 42.877087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608685, 45.867844, 42.818241>,  <36.562637, 45.482796, 42.720169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608685, 45.867844, 42.818241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548765, 0.144114, -0.823461,
		-0.828012, 0.229345, -0.511660,
		0.115119, 0.962617, 0.245185,
		36.643219, 46.156628, 42.891796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445774, 45.872513, 42.088387>,  <36.562637, 45.482796, 42.720169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445774, 45.872513, 42.088387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.663422, 46.106377, 42.329086>,  <36.794010, 46.246696, 42.473507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.663422, 46.106377, 42.329086>,  <36.445774, 45.872513, 42.088387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663422, 46.106377, 42.329086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572709, 0.265307, -0.775639,
		-0.613135, 0.766669, -0.190482,
		0.544123, 0.584662, 0.601747,
		36.826660, 46.281776, 42.509609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509335, 46.546204, 41.762527>,  <36.445774, 45.872513, 42.088387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509335, 46.546204, 41.762527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.797256, 46.538506, 42.040092>,  <36.970009, 46.533886, 42.206631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.797256, 46.538506, 42.040092>,  <36.509335, 46.546204, 41.762527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797256, 46.538506, 42.040092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688732, 0.144780, -0.710413,
		-0.086796, 0.989277, 0.117465,
		0.719801, -0.019241, 0.693913,
		37.013195, 46.532734, 42.248268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905651, 47.136711, 41.584164>,  <36.509335, 46.546204, 41.762527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905651, 47.136711, 41.584164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.167042, 46.912476, 41.787621>,  <37.323875, 46.777935, 41.909695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.167042, 46.912476, 41.787621>,  <36.905651, 47.136711, 41.584164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167042, 46.912476, 41.787621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743228, 0.347816, -0.571520,
		0.143472, 0.751510, 0.643932,
		0.653473, -0.560585, 0.508642,
		37.363083, 46.744301, 41.940212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393066, 47.570873, 41.687565>,  <36.905651, 47.136711, 41.584164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393066, 47.570873, 41.687565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.563118, 47.213593, 41.746166>,  <37.665150, 46.999226, 41.781326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.563118, 47.213593, 41.746166>,  <37.393066, 47.570873, 41.687565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563118, 47.213593, 41.746166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705426, 0.225541, -0.671942,
		0.567135, 0.389007, 0.725969,
		0.425126, -0.893199, 0.146503,
		37.690655, 46.945633, 41.790115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009327, 47.756798, 41.921757>,  <37.393066, 47.570873, 41.687565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009327, 47.756798, 41.921757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054142, 47.389427, 41.769997>,  <38.081032, 47.169006, 41.678940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054142, 47.389427, 41.769997>,  <38.009327, 47.756798, 41.921757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054142, 47.389427, 41.769997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566272, 0.372752, -0.735114,
		0.816569, -0.132485, 0.561839,
		0.112035, -0.918424, -0.379401,
		38.087753, 47.113899, 41.656178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756073, 47.703823, 41.764301>,  <38.009327, 47.756798, 41.921757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756073, 47.703823, 41.764301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555061, 47.432884, 41.549393>,  <38.434456, 47.270321, 41.420448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555061, 47.432884, 41.549393>,  <38.756073, 47.703823, 41.764301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555061, 47.432884, 41.549393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479999, 0.298282, -0.825002,
		0.719073, -0.672479, 0.175231,
		-0.502528, -0.677348, -0.537276,
		38.404305, 47.229679, 41.388210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213936, 47.173298, 41.551498>,  <38.756073, 47.703823, 41.764301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213936, 47.173298, 41.551498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.913620, 47.219505, 41.291355>,  <38.733429, 47.247231, 41.135269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.913620, 47.219505, 41.291355>,  <39.213936, 47.173298, 41.551498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913620, 47.219505, 41.291355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658673, 0.056960, -0.750270,
		-0.049629, -0.991670, -0.118857,
		-0.750791, 0.115523, -0.650359,
		38.688381, 47.254162, 41.096249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636288, 47.079277, 42.151302>,  <39.213936, 47.173298, 41.551498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636288, 47.079277, 42.151302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.894165, 47.287346, 42.375374>,  <40.048893, 47.412186, 42.509815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.894165, 47.287346, 42.375374>,  <39.636288, 47.079277, 42.151302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894165, 47.287346, 42.375374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364371, -0.435094, 0.823363,
		0.672016, -0.734928, -0.090968,
		0.644692, 0.520167, 0.560177,
		40.087574, 47.443398, 42.543427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092728, 46.633301, 42.501400>,  <39.636288, 47.079277, 42.151302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092728, 46.633301, 42.501400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.062119, 46.972412, 42.711319>,  <40.043755, 47.175880, 42.837273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.062119, 46.972412, 42.711319>,  <40.092728, 46.633301, 42.501400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062119, 46.972412, 42.711319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108030, -0.530295, 0.840902,
		0.991198, 0.007654, 0.132165,
		-0.076523, 0.847779, 0.524801,
		40.039162, 47.226746, 42.868759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300732, 46.413567, 43.115303>,  <40.092728, 46.633301, 42.501400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300732, 46.413567, 43.115303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146957, 46.773361, 43.198380>,  <40.054695, 46.989239, 43.248226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146957, 46.773361, 43.198380>,  <40.300732, 46.413567, 43.115303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146957, 46.773361, 43.198380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284572, -0.329496, 0.900250,
		0.878197, 0.286982, 0.382637,
		-0.384433, 0.899485, 0.207696,
		40.031628, 47.043205, 43.260689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442333, 46.476753, 43.763035>,  <40.300732, 46.413567, 43.115303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442333, 46.476753, 43.763035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147102, 46.734428, 43.682770>,  <39.969963, 46.889034, 43.634609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147102, 46.734428, 43.682770>,  <40.442333, 46.476753, 43.763035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147102, 46.734428, 43.682770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439965, -0.234024, 0.866985,
		0.511544, 0.728183, 0.456149,
		-0.738074, 0.644191, -0.200661,
		39.925682, 46.927685, 43.622570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296162, 46.940102, 44.398811>,  <40.442333, 46.476753, 43.763035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296162, 46.940102, 44.398811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.965286, 46.942841, 44.174061>,  <39.766762, 46.944485, 44.039211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.965286, 46.942841, 44.174061>,  <40.296162, 46.940102, 44.398811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965286, 46.942841, 44.174061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552415, -0.193035, 0.810910,
		-0.102908, 0.981168, 0.163461,
		-0.827193, 0.006849, -0.561877,
		39.717129, 46.944897, 44.005497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835320, 47.112930, 44.846119>,  <40.296162, 46.940102, 44.398811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835320, 47.112930, 44.846119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601604, 46.976791, 44.551426>,  <39.461376, 46.895107, 44.374611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601604, 46.976791, 44.551426>,  <39.835320, 47.112930, 44.846119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601604, 46.976791, 44.551426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697225, -0.254059, 0.670322,
		-0.415318, 0.905326, -0.088859,
		-0.584285, -0.340351, -0.736731,
		39.426319, 46.874687, 44.330406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152527, 47.308968, 44.927464>,  <39.835320, 47.112930, 44.846119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152527, 47.308968, 44.927464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.118999, 46.979111, 44.703697>,  <39.098885, 46.781197, 44.569439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.118999, 46.979111, 44.703697>,  <39.152527, 47.308968, 44.927464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118999, 46.979111, 44.703697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653870, -0.378110, 0.655352,
		-0.751950, 0.420715, -0.507514,
		-0.083820, -0.824640, -0.559412,
		39.093853, 46.731720, 44.535873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420341, 47.213181, 44.853790>,  <39.152527, 47.308968, 44.927464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420341, 47.213181, 44.853790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596550, 46.866615, 44.759750>,  <38.702274, 46.658676, 44.703327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596550, 46.866615, 44.759750>,  <38.420341, 47.213181, 44.853790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596550, 46.866615, 44.759750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584463, -0.475569, 0.657447,
		-0.681425, -0.152213, -0.715884,
		0.440525, -0.866409, -0.235102,
		38.728706, 46.606693, 44.689220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852497, 46.807766, 44.846352>,  <38.420341, 47.213181, 44.853790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852497, 46.807766, 44.846352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.163513, 46.556274, 44.850876>,  <38.350124, 46.405380, 44.853592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.163513, 46.556274, 44.850876>,  <37.852497, 46.807766, 44.846352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163513, 46.556274, 44.850876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448050, -0.541298, 0.711511,
		-0.441226, -0.558297, -0.702584,
		0.777541, -0.628730, 0.011310,
		38.396774, 46.367657, 44.854267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602222, 46.159836, 44.739815>,  <37.852497, 46.807766, 44.846352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602222, 46.159836, 44.739815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951683, 46.084923, 44.919437>,  <38.161362, 46.039974, 45.027210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951683, 46.084923, 44.919437>,  <37.602222, 46.159836, 44.739815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951683, 46.084923, 44.919437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440934, -0.694934, 0.568018,
		0.205685, -0.694256, -0.689712,
		0.873654, -0.187285, 0.449059,
		38.213779, 46.028736, 45.054153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738358, 45.444855, 44.704258>,  <37.602222, 46.159836, 44.739815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738358, 45.444855, 44.704258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934921, 45.572067, 45.028572>,  <38.052860, 45.648396, 45.223160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934921, 45.572067, 45.028572>,  <37.738358, 45.444855, 44.704258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934921, 45.572067, 45.028572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394525, -0.748665, 0.532777,
		0.776448, -0.581685, -0.242428,
		0.491406, 0.318030, 0.810788,
		38.082344, 45.667477, 45.271809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908302, 44.795986, 45.063072>,  <37.738358, 45.444855, 44.704258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908302, 44.795986, 45.063072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943810, 45.101036, 45.319363>,  <37.965115, 45.284065, 45.473137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943810, 45.101036, 45.319363>,  <37.908302, 44.795986, 45.063072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943810, 45.101036, 45.319363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511959, -0.516856, 0.686118,
		0.854411, -0.388929, 0.344551,
		0.088768, 0.762623, 0.640723,
		37.970440, 45.329823, 45.511581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043255, 44.444393, 45.712700>,  <37.908302, 44.795986, 45.063072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043255, 44.444393, 45.712700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927139, 44.813164, 45.815292>,  <37.857471, 45.034428, 45.876846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927139, 44.813164, 45.815292>,  <38.043255, 44.444393, 45.712700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927139, 44.813164, 45.815292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469467, -0.370755, 0.801337,
		0.833866, 0.112210, 0.540440,
		-0.290289, 0.921927, 0.256482,
		37.840054, 45.089741, 45.892239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173649, 44.482948, 46.525074>,  <38.043255, 44.444393, 45.712700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173649, 44.482948, 46.525074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923599, 44.785034, 46.446220>,  <37.773567, 44.966286, 46.398907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923599, 44.785034, 46.446220>,  <38.173649, 44.482948, 46.525074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923599, 44.785034, 46.446220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668932, -0.388242, 0.633876,
		0.402177, 0.528124, 0.747889,
		-0.625127, 0.755217, -0.197137,
		37.736061, 45.011600, 46.387077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730480, 44.444935, 47.004879>,  <38.173649, 44.482948, 46.525074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730480, 44.444935, 47.004879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960548, 44.219193, 47.241753>,  <39.098591, 44.083748, 47.383877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960548, 44.219193, 47.241753>,  <38.730480, 44.444935, 47.004879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960548, 44.219193, 47.241753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750203, 0.075283, -0.656908,
		0.326145, 0.822095, 0.466679,
		0.575174, -0.564351, 0.592184,
		39.133102, 44.049889, 47.419407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380611, 44.767773, 46.888271>,  <38.730480, 44.444935, 47.004879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380611, 44.767773, 46.888271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443344, 44.401199, 47.035542>,  <39.480984, 44.181255, 47.123905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443344, 44.401199, 47.035542>,  <39.380611, 44.767773, 46.888271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443344, 44.401199, 47.035542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835510, -0.075667, -0.544240,
		0.526620, 0.392966, 0.753824,
		0.156828, -0.916435, 0.368175,
		39.490391, 44.126270, 47.145992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098289, 44.728336, 47.111137>,  <39.380611, 44.767773, 46.888271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098289, 44.728336, 47.111137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.946987, 44.366013, 47.034782>,  <39.856205, 44.148621, 46.988968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.946987, 44.366013, 47.034782>,  <40.098289, 44.728336, 47.111137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946987, 44.366013, 47.034782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724421, -0.161264, -0.670230,
		0.576315, -0.391802, 0.717183,
		-0.378253, -0.905807, -0.190891,
		39.833511, 44.094269, 46.977516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655041, 44.225288, 47.190739>,  <40.098289, 44.728336, 47.111137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655041, 44.225288, 47.190739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.395935, 44.024261, 46.961712>,  <40.240471, 43.903645, 46.824295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.395935, 44.024261, 46.961712>,  <40.655041, 44.225288, 47.190739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395935, 44.024261, 46.961712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741971, -0.245635, -0.623812,
		0.172866, -0.828909, 0.532004,
		-0.647762, -0.502567, -0.572564,
		40.201607, 43.873493, 46.789944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999172, 43.693287, 47.122879>,  <40.655041, 44.225288, 47.190739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999172, 43.693287, 47.122879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717091, 43.658463, 46.841423>,  <40.547844, 43.637569, 46.672550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717091, 43.658463, 46.841423>,  <40.999172, 43.693287, 47.122879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717091, 43.658463, 46.841423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690417, -0.310099, -0.653576,
		-0.161298, -0.946710, 0.278790,
		-0.705200, -0.087061, -0.703643,
		40.505531, 43.632343, 46.630329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219517, 43.060780, 46.725475>,  <40.999172, 43.693287, 47.122879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219517, 43.060780, 46.725475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.967155, 43.237518, 46.470371>,  <40.815739, 43.343563, 46.317310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.967155, 43.237518, 46.470371>,  <41.219517, 43.060780, 46.725475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967155, 43.237518, 46.470371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641502, -0.165272, -0.749106,
		-0.436394, -0.881735, -0.179176,
		-0.630900, 0.441847, -0.637758,
		40.777885, 43.370071, 46.279045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063507, 42.600941, 46.079765>,  <41.219517, 43.060780, 46.725475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063507, 42.600941, 46.079765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.981697, 42.980667, 45.984295>,  <40.932610, 43.208504, 45.927013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.981697, 42.980667, 45.984295>,  <41.063507, 42.600941, 46.079765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981697, 42.980667, 45.984295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585082, -0.076922, -0.807318,
		-0.784759, -0.304765, -0.539695,
		-0.204528, 0.949316, -0.238678,
		40.920338, 43.265461, 45.912693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923386, 42.645386, 45.374714>,  <41.063507, 42.600941, 46.079765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923386, 42.645386, 45.374714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.010357, 43.031715, 45.431145>,  <41.062542, 43.263515, 45.465004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.010357, 43.031715, 45.431145>,  <40.923386, 42.645386, 45.374714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010357, 43.031715, 45.431145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569528, -0.008153, -0.821932,
		-0.792692, 0.259064, -0.551837,
		0.217432, 0.965826, 0.141081,
		41.075588, 43.321465, 45.473469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745743, 43.058086, 44.748737>,  <40.923386, 42.645386, 45.374714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745743, 43.058086, 44.748737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.010368, 43.289917, 44.939075>,  <41.169144, 43.429016, 45.053276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.010368, 43.289917, 44.939075>,  <40.745743, 43.058086, 44.748737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010368, 43.289917, 44.939075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549237, 0.057536, -0.833684,
		-0.510563, 0.812883, -0.280262,
		0.661562, 0.579579, 0.475841,
		41.208836, 43.463791, 45.081829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865021, 43.619858, 44.359272>,  <40.745743, 43.058086, 44.748737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865021, 43.619858, 44.359272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182541, 43.606438, 44.602173>,  <41.373055, 43.598385, 44.747913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182541, 43.606438, 44.602173>,  <40.865021, 43.619858, 44.359272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182541, 43.606438, 44.602173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600202, 0.204379, -0.773296,
		-0.098167, 0.978317, 0.182372,
		0.793801, -0.033548, 0.607251,
		41.420681, 43.596375, 44.784348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231884, 44.130890, 43.967682>,  <40.865021, 43.619858, 44.359272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231884, 44.130890, 43.967682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.478638, 43.929298, 44.209496>,  <41.626690, 43.808342, 44.354584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.478638, 43.929298, 44.209496>,  <41.231884, 44.130890, 43.967682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478638, 43.929298, 44.209496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741644, 0.115092, -0.660846,
		0.263479, 0.856011, 0.444774,
		0.616881, -0.503983, 0.604531,
		41.663704, 43.778103, 44.390854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816353, 44.486568, 43.870796>,  <41.231884, 44.130890, 43.967682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816353, 44.486568, 43.870796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.923706, 44.127953, 44.011761>,  <41.988117, 43.912785, 44.096340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.923706, 44.127953, 44.011761>,  <41.816353, 44.486568, 43.870796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923706, 44.127953, 44.011761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856419, 0.054566, -0.513389,
		0.441043, 0.439597, 0.782455,
		0.268379, -0.896536, 0.352413,
		42.004219, 43.858994, 44.117485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.275074, 43.917557, 50.717693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292290, 43.540047, 50.586578>,  <37.302620, 43.313541, 50.507912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292290, 43.540047, 50.586578>,  <37.275074, 43.917557, 50.717693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292290, 43.540047, 50.586578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761993, 0.243201, -0.600183,
		0.646153, -0.223940, 0.729614,
		0.043038, -0.943771, -0.327786,
		37.305202, 43.256916, 50.488243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025467, 43.762600, 50.606583>,  <37.275074, 43.917557, 50.717693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025467, 43.762600, 50.606583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845398, 43.468048, 50.404552>,  <37.737358, 43.291317, 50.283337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845398, 43.468048, 50.404552>,  <38.025467, 43.762600, 50.606583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845398, 43.468048, 50.404552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707451, 0.051011, -0.704920,
		0.544850, -0.674646, 0.497987,
		-0.450168, -0.736377, -0.505072,
		37.710346, 43.247135, 50.253033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641567, 43.296379, 50.499352>,  <38.025467, 43.762600, 50.606583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641567, 43.296379, 50.499352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329475, 43.252052, 50.253113>,  <38.142220, 43.225456, 50.105370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329475, 43.252052, 50.253113>,  <38.641567, 43.296379, 50.499352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329475, 43.252052, 50.253113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599869, 0.146230, -0.786622,
		0.177188, -0.983025, -0.047619,
		-0.780231, -0.110815, -0.615596,
		38.095406, 43.218807, 50.068436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911556, 42.902584, 49.938923>,  <38.641567, 43.296379, 50.499352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911556, 42.902584, 49.938923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582779, 43.022530, 49.745224>,  <38.385513, 43.094498, 49.629005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582779, 43.022530, 49.745224>,  <38.911556, 42.902584, 49.938923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582779, 43.022530, 49.745224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564581, 0.316646, -0.762223,
		-0.075228, -0.899899, -0.429561,
		-0.821942, 0.299862, -0.484245,
		38.336197, 43.112488, 49.599949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988010, 42.708645, 49.207867>,  <38.911556, 42.902584, 49.938923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988010, 42.708645, 49.207867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707432, 42.993706, 49.211716>,  <38.539085, 43.164742, 49.214027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707432, 42.993706, 49.211716>,  <38.988010, 42.708645, 49.207867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707432, 42.993706, 49.211716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363945, 0.369770, -0.854876,
		-0.612791, -0.596149, -0.518742,
		-0.701449, 0.712654, 0.009626,
		38.496998, 43.207500, 49.214603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754276, 42.667793, 48.610943>,  <38.988010, 42.708645, 49.207867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754276, 42.667793, 48.610943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649414, 43.029366, 48.746105>,  <38.586494, 43.246307, 48.827202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649414, 43.029366, 48.746105>,  <38.754276, 42.667793, 48.610943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649414, 43.029366, 48.746105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192389, 0.392080, -0.899589,
		-0.945653, -0.170825, -0.276694,
		-0.262159, 0.903931, 0.337907,
		38.570766, 43.300545, 48.847477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211262, 42.942299, 48.225021>,  <38.754276, 42.667793, 48.610943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211262, 42.942299, 48.225021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429420, 43.237259, 48.384411>,  <38.560314, 43.414234, 48.480045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429420, 43.237259, 48.384411>,  <38.211262, 42.942299, 48.225021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429420, 43.237259, 48.384411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176734, 0.363545, -0.914658,
		-0.819336, 0.569272, 0.067950,
		0.545393, 0.737403, 0.398476,
		38.593037, 43.458481, 48.503952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067608, 43.410439, 47.810272>,  <38.211262, 42.942299, 48.225021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067608, 43.410439, 47.810272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379303, 43.589035, 47.986195>,  <38.566322, 43.696194, 48.091747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379303, 43.589035, 47.986195>,  <38.067608, 43.410439, 47.810272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379303, 43.589035, 47.986195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344328, 0.281343, -0.895703,
		-0.523661, 0.849405, 0.065494,
		0.779242, 0.446494, 0.439802,
		38.613075, 43.722984, 48.118134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140255, 44.155586, 47.563824>,  <38.067608, 43.410439, 47.810272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140255, 44.155586, 47.563824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505096, 44.079887, 47.709286>,  <38.724003, 44.034466, 47.796562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505096, 44.079887, 47.709286>,  <38.140255, 44.155586, 47.563824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505096, 44.079887, 47.709286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409651, 0.386798, -0.826180,
		0.015694, 0.902536, 0.430328,
		0.912107, -0.189250, 0.363655,
		38.778728, 44.023113, 47.818382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890396, 44.897537, 47.327168>,  <38.140255, 44.155586, 47.563824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890396, 44.897537, 47.327168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635742, 44.976845, 47.029068>,  <37.482952, 45.024429, 46.850208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635742, 44.976845, 47.029068>,  <37.890396, 44.897537, 47.327168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635742, 44.976845, 47.029068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745363, -0.406106, 0.528689,
		-0.197828, 0.892058, 0.406320,
		-0.636631, 0.198267, -0.745246,
		37.444752, 45.036324, 46.805492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323471, 45.353935, 47.604042>,  <37.890396, 44.897537, 47.327168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323471, 45.353935, 47.604042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202721, 45.163643, 47.273575>,  <37.130272, 45.049469, 47.075294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202721, 45.163643, 47.273575>,  <37.323471, 45.353935, 47.604042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202721, 45.163643, 47.273575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783133, -0.370451, 0.499469,
		-0.543668, 0.797775, -0.260732,
		-0.301875, -0.475732, -0.826166,
		37.112160, 45.020924, 47.025726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582287, 45.389721, 47.644127>,  <37.323471, 45.353935, 47.604042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582287, 45.389721, 47.644127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679428, 45.108513, 47.376759>,  <36.737713, 44.939789, 47.216335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679428, 45.108513, 47.376759>,  <36.582287, 45.389721, 47.644127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679428, 45.108513, 47.376759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735335, -0.582828, 0.345824,
		-0.632695, 0.407529, -0.658496,
		0.242856, -0.703016, -0.668423,
		36.752285, 44.897610, 47.176231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972160, 45.198982, 47.505222>,  <36.582287, 45.389721, 47.644127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972160, 45.198982, 47.505222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199066, 44.902840, 47.360954>,  <36.335209, 44.725155, 47.274395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199066, 44.902840, 47.360954>,  <35.972160, 45.198982, 47.505222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199066, 44.902840, 47.360954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735736, -0.652365, 0.181966,
		-0.370008, 0.162135, -0.914771,
		0.567262, -0.740360, -0.360669,
		36.369244, 44.680733, 47.252754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545135, 44.853672, 47.047318>,  <35.972160, 45.198982, 47.505222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545135, 44.853672, 47.047318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833405, 44.591805, 47.138573>,  <36.006367, 44.434685, 47.193325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833405, 44.591805, 47.138573>,  <35.545135, 44.853672, 47.047318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833405, 44.591805, 47.138573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689971, -0.645186, 0.328139,
		-0.067631, -0.393887, -0.916667,
		0.720670, -0.654666, 0.228137,
		36.049606, 44.395405, 47.207012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239483, 44.138481, 46.793556>,  <35.545135, 44.853672, 47.047318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239483, 44.138481, 46.793556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500206, 44.092163, 47.093349>,  <35.656639, 44.064373, 47.273228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500206, 44.092163, 47.093349>,  <35.239483, 44.138481, 46.793556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500206, 44.092163, 47.093349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688720, -0.504131, 0.521073,
		0.317500, -0.855828, -0.408352,
		0.651812, -0.115799, 0.749487,
		35.695751, 44.057423, 47.318195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230682, 43.353127, 46.998207>,  <35.239483, 44.138481, 46.793556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230682, 43.353127, 46.998207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378090, 43.587852, 47.286606>,  <35.466534, 43.728687, 47.459644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378090, 43.587852, 47.286606>,  <35.230682, 43.353127, 46.998207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378090, 43.587852, 47.286606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660810, -0.380153, 0.647159,
		0.653853, -0.714934, 0.247680,
		0.368519, 0.586816, 0.721000,
		35.488647, 43.763897, 47.502907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105846, 42.963593, 47.558228>,  <35.230682, 43.353127, 46.998207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105846, 42.963593, 47.558228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182213, 43.308655, 47.745575>,  <35.228035, 43.515694, 47.857983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182213, 43.308655, 47.745575>,  <35.105846, 42.963593, 47.558228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182213, 43.308655, 47.745575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659561, -0.240649, 0.712087,
		0.727000, -0.444871, 0.523030,
		0.190920, 0.862657, 0.468371,
		35.239491, 43.567451, 47.886086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128128, 42.819542, 48.298531>,  <35.105846, 42.963593, 47.558228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128128, 42.819542, 48.298531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066483, 43.214119, 48.275978>,  <35.029495, 43.450867, 48.262447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066483, 43.214119, 48.275978>,  <35.128128, 42.819542, 48.298531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066483, 43.214119, 48.275978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534307, -0.035202, 0.844557,
		0.831124, 0.160280, 0.532489,
		-0.154110, 0.986444, -0.056381,
		35.020248, 43.510052, 48.259064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317162, 43.037666, 48.910969>,  <35.128128, 42.819542, 48.298531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317162, 43.037666, 48.910969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083267, 43.328224, 48.766502>,  <34.942932, 43.502560, 48.679821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083267, 43.328224, 48.766502>,  <35.317162, 43.037666, 48.910969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083267, 43.328224, 48.766502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553212, -0.031432, 0.832447,
		0.593330, 0.686562, 0.420227,
		-0.584736, 0.726391, -0.361165,
		34.907848, 43.546143, 48.658154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122620, 43.587730, 49.509007>,  <35.317162, 43.037666, 48.910969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122620, 43.587730, 49.509007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859245, 43.666084, 49.218330>,  <34.701221, 43.713097, 49.043922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859245, 43.666084, 49.218330>,  <35.122620, 43.587730, 49.509007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859245, 43.666084, 49.218330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672492, 0.280426, 0.684921,
		0.337953, 0.939675, -0.052910,
		-0.658440, 0.195889, -0.726694,
		34.661713, 43.724850, 49.000320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670952, 44.170612, 49.787094>,  <35.122620, 43.587730, 49.509007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670952, 44.170612, 49.787094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453110, 44.003944, 49.495945>,  <34.322407, 43.903942, 49.321255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453110, 44.003944, 49.495945>,  <34.670952, 44.170612, 49.787094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453110, 44.003944, 49.495945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830940, 0.150310, 0.535673,
		-0.113795, 0.896543, -0.428090,
		-0.544600, -0.416674, -0.727869,
		34.289730, 43.878941, 49.277584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112377, 44.594921, 49.685753>,  <34.670952, 44.170612, 49.787094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112377, 44.594921, 49.685753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999733, 44.239365, 49.541214>,  <33.932144, 44.026031, 49.454491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999733, 44.239365, 49.541214>,  <34.112377, 44.594921, 49.685753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999733, 44.239365, 49.541214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795899, 0.006051, 0.605399,
		-0.535947, 0.458080, -0.709171,
		-0.281613, -0.888891, -0.361343,
		33.915249, 43.972698, 49.432812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345726, 44.684490, 49.508343>,  <34.112377, 44.594921, 49.685753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345726, 44.684490, 49.508343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417191, 44.291786, 49.534355>,  <33.460068, 44.056164, 49.549961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417191, 44.291786, 49.534355>,  <33.345726, 44.684490, 49.508343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417191, 44.291786, 49.534355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837700, -0.117113, 0.533426,
		-0.516080, -0.149778, -0.843344,
		0.178662, -0.981759, 0.065030,
		33.470791, 43.997257, 49.553864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.893242, 39.245251, 47.633724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.164974, 39.436394, 47.856491>,  <33.328014, 39.551079, 47.990150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.164974, 39.436394, 47.856491>,  <32.893242, 39.245251, 47.633724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164974, 39.436394, 47.856491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342267, 0.464989, -0.816479,
		-0.649124, 0.745275, 0.152326,
		0.679331, 0.477860, 0.556919,
		33.368774, 39.579750, 48.023567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942444, 39.919056, 47.253899>,  <32.893242, 39.245251, 47.633724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942444, 39.919056, 47.253899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.249825, 39.920013, 47.509861>,  <33.434254, 39.920589, 47.663441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.249825, 39.920013, 47.509861>,  <32.942444, 39.919056, 47.253899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249825, 39.920013, 47.509861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449652, 0.709484, -0.542628,
		-0.455305, 0.704717, 0.544125,
		0.768447, 0.002394, 0.639909,
		33.480358, 39.920731, 47.701832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183578, 40.626419, 47.482391>,  <32.942444, 39.919056, 47.253899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183578, 40.626419, 47.482391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.491089, 40.376991, 47.539154>,  <33.675594, 40.227333, 47.573212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.491089, 40.376991, 47.539154>,  <33.183578, 40.626419, 47.482391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491089, 40.376991, 47.539154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590958, 0.607883, -0.530327,
		0.244437, 0.491563, 0.835833,
		0.768777, -0.623574, 0.141904,
		33.721722, 40.189919, 47.581726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762352, 41.043793, 47.608376>,  <33.183578, 40.626419, 47.482391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762352, 41.043793, 47.608376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.930290, 40.706238, 47.474758>,  <34.031052, 40.503704, 47.394588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.930290, 40.706238, 47.474758>,  <33.762352, 41.043793, 47.608376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930290, 40.706238, 47.474758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686490, 0.536028, -0.491330,
		0.593685, -0.023036, 0.804368,
		0.419846, -0.843886, -0.334046,
		34.056244, 40.453072, 47.374546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518162, 41.278313, 47.489243>,  <33.762352, 41.043793, 47.608376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518162, 41.278313, 47.489243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.507881, 40.921852, 47.308052>,  <34.501713, 40.707977, 47.199337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.507881, 40.921852, 47.308052>,  <34.518162, 41.278313, 47.489243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507881, 40.921852, 47.308052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711186, 0.302146, -0.634761,
		0.702534, -0.338465, 0.626009,
		-0.025698, -0.891151, -0.452979,
		34.500172, 40.654507, 47.172157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151989, 41.240211, 47.259125>,  <34.518162, 41.278313, 47.489243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151989, 41.240211, 47.259125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960266, 40.958153, 47.050114>,  <34.845230, 40.788918, 46.924706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960266, 40.958153, 47.050114>,  <35.151989, 41.240211, 47.259125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960266, 40.958153, 47.050114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470983, 0.295718, -0.831099,
		0.740564, -0.644457, 0.190370,
		-0.479312, -0.705143, -0.522526,
		34.816471, 40.746609, 46.893356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640171, 40.770344, 46.903778>,  <35.151989, 41.240211, 47.259125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640171, 40.770344, 46.903778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.283684, 40.769691, 46.722347>,  <35.069794, 40.769299, 46.613487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.283684, 40.769691, 46.722347>,  <35.640171, 40.770344, 46.903778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283684, 40.769691, 46.722347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435349, 0.277585, -0.856398,
		0.127304, -0.960700, -0.246678,
		-0.891215, -0.001632, -0.453577,
		35.016319, 40.769203, 46.586273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852402, 40.651924, 46.319134>,  <35.640171, 40.770344, 46.903778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852402, 40.651924, 46.319134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483421, 40.765724, 46.214722>,  <35.262032, 40.834003, 46.152073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483421, 40.765724, 46.214722>,  <35.852402, 40.651924, 46.319134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483421, 40.765724, 46.214722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323032, 0.198363, -0.925366,
		-0.211491, -0.937929, -0.274884,
		-0.922454, 0.284503, -0.261029,
		35.206684, 40.851074, 46.136414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698833, 40.307190, 45.822136>,  <35.852402, 40.651924, 46.319134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698833, 40.307190, 45.822136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448509, 40.613953, 45.765278>,  <35.298313, 40.798012, 45.731163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448509, 40.613953, 45.765278>,  <35.698833, 40.307190, 45.822136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448509, 40.613953, 45.765278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410130, 0.168537, -0.896319,
		-0.663440, -0.619227, -0.420006,
		-0.625812, 0.766911, -0.142149,
		35.260765, 40.844025, 45.722633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427895, 40.250950, 45.125523>,  <35.698833, 40.307190, 45.822136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427895, 40.250950, 45.125523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368179, 40.632309, 45.230404>,  <35.332348, 40.861122, 45.293331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368179, 40.632309, 45.230404>,  <35.427895, 40.250950, 45.125523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368179, 40.632309, 45.230404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189912, 0.287886, -0.938645,
		-0.970384, -0.090335, -0.224040,
		-0.149291, 0.953395, 0.262205,
		35.323391, 40.918327, 45.309067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073856, 40.518433, 44.524887>,  <35.427895, 40.250950, 45.125523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073856, 40.518433, 44.524887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.214725, 40.832603, 44.728485>,  <35.299248, 41.021107, 44.850643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.214725, 40.832603, 44.728485>,  <35.073856, 40.518433, 44.524887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214725, 40.832603, 44.728485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246075, 0.447003, -0.860020,
		-0.903007, 0.428127, -0.035852,
		0.352172, 0.785426, 0.508999,
		35.320377, 41.068230, 44.881184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824974, 41.118843, 44.184330>,  <35.073856, 40.518433, 44.524887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824974, 41.118843, 44.184330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.136864, 41.243591, 44.401501>,  <35.323997, 41.318439, 44.531803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.136864, 41.243591, 44.401501>,  <34.824974, 41.118843, 44.184330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136864, 41.243591, 44.401501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361146, 0.484335, -0.796865,
		-0.511477, 0.817409, 0.265016,
		0.779722, 0.311868, 0.542929,
		35.370781, 41.337151, 44.564381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960842, 41.886375, 44.082890>,  <34.824974, 41.118843, 44.184330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960842, 41.886375, 44.082890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.311329, 41.736809, 44.204498>,  <35.521622, 41.647068, 44.277462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.311329, 41.736809, 44.204498>,  <34.960842, 41.886375, 44.082890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311329, 41.736809, 44.204498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471475, 0.534530, -0.701419,
		0.099760, 0.757936, 0.644656,
		0.876219, -0.373913, 0.304023,
		35.574196, 41.624634, 44.295704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459736, 42.449116, 43.951569>,  <34.960842, 41.886375, 44.082890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459736, 42.449116, 43.951569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713207, 42.140739, 43.977158>,  <35.865292, 41.955711, 43.992512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713207, 42.140739, 43.977158>,  <35.459736, 42.449116, 43.951569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713207, 42.140739, 43.977158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412828, 0.267073, -0.870773,
		0.654234, 0.578201, 0.487506,
		0.633681, -0.770945, 0.063969,
		35.903313, 41.909454, 43.996349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095215, 43.077473, 43.677849>,  <35.459736, 42.449116, 43.951569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095215, 43.077473, 43.677849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.833534, 43.212738, 43.407242>,  <34.676525, 43.293896, 43.244877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.833534, 43.212738, 43.407242>,  <35.095215, 43.077473, 43.677849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833534, 43.212738, 43.407242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715920, 0.011575, 0.698086,
		0.243895, 0.941018, 0.234522,
		-0.654197, 0.338159, -0.676517,
		34.637276, 43.314186, 43.204288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748886, 43.659328, 44.014187>,  <35.095215, 43.077473, 43.677849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748886, 43.659328, 44.014187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514259, 43.537659, 43.713940>,  <34.373486, 43.464657, 43.533791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514259, 43.537659, 43.713940>,  <34.748886, 43.659328, 44.014187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514259, 43.537659, 43.713940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782736, -0.025127, 0.621846,
		-0.208009, 0.952286, -0.223347,
		-0.586563, -0.304171, -0.750616,
		34.338291, 43.446407, 43.488754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137608, 44.075459, 44.022064>,  <34.748886, 43.659328, 44.014187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137608, 44.075459, 44.022064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.074905, 43.722664, 43.844292>,  <34.037285, 43.510986, 43.737629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.074905, 43.722664, 43.844292>,  <34.137608, 44.075459, 44.022064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074905, 43.722664, 43.844292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746467, -0.188845, 0.638063,
		-0.646694, 0.431775, -0.628774,
		-0.156758, -0.881991, -0.444431,
		34.027878, 43.458065, 43.710964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471180, 44.061104, 44.034233>,  <34.137608, 44.075459, 44.022064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471180, 44.061104, 44.034233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.568161, 43.678925, 43.966908>,  <33.626350, 43.449615, 43.926514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.568161, 43.678925, 43.966908>,  <33.471180, 44.061104, 44.034233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568161, 43.678925, 43.966908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778720, -0.295130, 0.553619,
		-0.578630, -0.003160, -0.815584,
		0.242453, -0.955452, -0.168310,
		33.640896, 43.392288, 43.916416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830299, 43.797245, 43.919704>,  <33.471180, 44.061104, 44.034233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830299, 43.797245, 43.919704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.055168, 43.471992, 43.980080>,  <33.190090, 43.276840, 44.016304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.055168, 43.471992, 43.980080>,  <32.830299, 43.797245, 43.919704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055168, 43.471992, 43.980080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749220, -0.423458, 0.509266,
		-0.350184, -0.399381, -0.847270,
		0.562174, -0.813128, 0.150935,
		33.223820, 43.228054, 44.025360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337688, 43.286594, 43.924652>,  <32.830299, 43.797245, 43.919704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337688, 43.286594, 43.924652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.657448, 43.120575, 44.098408>,  <32.849304, 43.020962, 44.202660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.657448, 43.120575, 44.098408>,  <32.337688, 43.286594, 43.924652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657448, 43.120575, 44.098408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600794, -0.555673, 0.574695,
		0.002852, -0.720389, -0.693564,
		0.799399, -0.415050, 0.434390,
		32.897266, 42.996059, 44.228725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303444, 42.464916, 43.886707>,  <32.337688, 43.286594, 43.924652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303444, 42.464916, 43.886707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526695, 42.602562, 44.188721>,  <32.660648, 42.685150, 44.369930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526695, 42.602562, 44.188721>,  <32.303444, 42.464916, 43.886707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526695, 42.602562, 44.188721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483254, -0.604888, 0.632911,
		0.674502, -0.718121, -0.171315,
		0.558133, 0.344112, 0.755033,
		32.694134, 42.705795, 44.415230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300308, 41.934826, 44.327610>,  <32.303444, 42.464916, 43.886707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300308, 41.934826, 44.327610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.422466, 42.234299, 44.562965>,  <32.495762, 42.413982, 44.704178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.422466, 42.234299, 44.562965>,  <32.300308, 41.934826, 44.327610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422466, 42.234299, 44.562965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400107, -0.459825, 0.792764,
		0.864087, -0.477527, 0.159125,
		0.305397, 0.748685, 0.588391,
		32.514084, 42.458904, 44.739483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686119, 41.635311, 44.863976>,  <32.300308, 41.934826, 44.327610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686119, 41.635311, 44.863976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596764, 41.996071, 45.011856>,  <32.543148, 42.212524, 45.100586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596764, 41.996071, 45.011856>,  <32.686119, 41.635311, 44.863976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596764, 41.996071, 45.011856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198470, -0.413428, 0.888643,
		0.954309, 0.125143, 0.271356,
		-0.223393, 0.901896, 0.369702,
		32.529747, 42.266640, 45.122768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067352, 41.737984, 45.521099>,  <32.686119, 41.635311, 44.863976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067352, 41.737984, 45.521099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.740288, 41.968262, 45.521721>,  <32.544048, 42.106430, 45.522095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.740288, 41.968262, 45.521721>,  <33.067352, 41.737984, 45.521099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740288, 41.968262, 45.521721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315537, -0.450414, 0.835203,
		0.481522, 0.682424, 0.549940,
		-0.817663, 0.575695, 0.001554,
		32.494987, 42.140968, 45.522186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961952, 41.896580, 46.236252>,  <33.067352, 41.737984, 45.521099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961952, 41.896580, 46.236252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.620239, 42.002411, 46.057278>,  <32.415211, 42.065910, 45.949894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.620239, 42.002411, 46.057278>,  <32.961952, 41.896580, 46.236252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620239, 42.002411, 46.057278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494045, -0.145671, 0.857146,
		0.161602, 0.953299, 0.255157,
		-0.854286, 0.264575, -0.447433,
		32.363953, 42.081783, 45.923046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677593, 42.363525, 46.663837>,  <32.961952, 41.896580, 46.236252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677593, 42.363525, 46.663837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.353374, 42.273590, 46.447521>,  <32.158844, 42.219627, 46.317730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.353374, 42.273590, 46.447521>,  <32.677593, 42.363525, 46.663837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353374, 42.273590, 46.447521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537279, -0.082068, 0.839402,
		-0.233111, 0.970934, -0.054280,
		-0.810550, -0.224838, -0.540793,
		32.110210, 42.206139, 46.285282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146534, 42.792542, 46.918701>,  <32.677593, 42.363525, 46.663837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146534, 42.792542, 46.918701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.987341, 42.464012, 46.755222>,  <31.891825, 42.266895, 46.657135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.987341, 42.464012, 46.755222>,  <32.146534, 42.792542, 46.918701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987341, 42.464012, 46.755222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529681, -0.158014, 0.833349,
		-0.749031, 0.548137, -0.372154,
		-0.397984, -0.821327, -0.408695,
		31.867947, 42.217613, 46.632614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425829, 42.774551, 47.009094>,  <32.146534, 42.792542, 46.918701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425829, 42.774551, 47.009094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.507484, 42.387207, 46.951683>,  <31.556479, 42.154800, 46.917236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.507484, 42.387207, 46.951683>,  <31.425829, 42.774551, 47.009094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507484, 42.387207, 46.951683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558760, -0.235647, 0.795146,
		-0.803812, -0.082121, -0.589187,
		0.204138, -0.968363, -0.143530,
		31.568726, 42.096699, 46.908623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938467, 43.262672, 46.949345>,  <31.425829, 42.774551, 47.009094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938467, 43.262672, 46.949345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.921267, 43.591782, 47.176041>,  <30.910946, 43.789249, 47.312057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.921267, 43.591782, 47.176041>,  <30.938467, 43.262672, 46.949345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921267, 43.591782, 47.176041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767015, 0.390678, -0.508977,
		-0.640186, 0.412809, -0.647881,
		-0.043002, 0.822775, 0.566738,
		30.908365, 43.838615, 47.346062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897379, 43.796638, 46.533394>,  <30.938467, 43.262672, 46.949345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897379, 43.796638, 46.533394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.072014, 43.933662, 46.866150>,  <31.176796, 44.015877, 47.065804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.072014, 43.933662, 46.866150>,  <30.897379, 43.796638, 46.533394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072014, 43.933662, 46.866150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829816, 0.203885, -0.519458,
		-0.347556, 0.917106, -0.195249,
		0.436589, 0.342561, 0.831890,
		31.202991, 44.036430, 47.115719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227613, 44.428867, 46.318607>,  <30.897379, 43.796638, 46.533394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227613, 44.428867, 46.318607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.411776, 44.337555, 46.661751>,  <31.522274, 44.282768, 46.867638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.411776, 44.337555, 46.661751>,  <31.227613, 44.428867, 46.318607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411776, 44.337555, 46.661751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812782, 0.496981, -0.303967,
		-0.356948, 0.837197, 0.414355,
		0.460407, -0.228280, 0.857854,
		31.549898, 44.269070, 46.919106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443737, 45.065224, 46.621185>,  <31.227613, 44.428867, 46.318607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443737, 45.065224, 46.621185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.684626, 44.804184, 46.805115>,  <31.829159, 44.647560, 46.915474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.684626, 44.804184, 46.805115>,  <31.443737, 45.065224, 46.621185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684626, 44.804184, 46.805115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789704, 0.571406, -0.223300,
		-0.117023, 0.497605, 0.859474,
		0.602224, -0.652599, 0.459828,
		31.865294, 44.608406, 46.943062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976305, 45.372112, 46.952274>,  <31.443737, 45.065224, 46.621185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976305, 45.372112, 46.952274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.150715, 45.012810, 46.930298>,  <32.255360, 44.797230, 46.917110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.150715, 45.012810, 46.930298>,  <31.976305, 45.372112, 46.952274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150715, 45.012810, 46.930298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836527, 0.427060, -0.343282,
		0.331820, 0.103716, 0.937624,
		0.436025, -0.898255, -0.054945,
		32.281521, 44.743332, 46.913815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623795, 45.450317, 47.322475>,  <31.976305, 45.372112, 46.952274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623795, 45.450317, 47.322475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.675301, 45.133377, 47.083946>,  <32.706203, 44.943214, 46.940826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.675301, 45.133377, 47.083946>,  <32.623795, 45.450317, 47.322475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675301, 45.133377, 47.083946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905019, 0.339728, -0.255979,
		0.405412, -0.506724, 0.760836,
		0.128767, -0.792349, -0.596325,
		32.713932, 44.895672, 46.905048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299931, 45.073486, 47.510609>,  <32.623795, 45.450317, 47.322475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299931, 45.073486, 47.510609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.197025, 44.962624, 47.140312>,  <33.135281, 44.896107, 46.918133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.197025, 44.962624, 47.140312>,  <33.299931, 45.073486, 47.510609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197025, 44.962624, 47.140312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823862, 0.437768, -0.360016,
		0.505042, -0.855302, 0.115720,
		-0.257264, -0.277161, -0.925742,
		33.119846, 44.879475, 46.862591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916885, 45.022228, 47.149059>,  <33.299931, 45.073486, 47.510609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916885, 45.022228, 47.149059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655815, 45.038818, 46.846458>,  <33.499172, 45.048775, 46.664898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655815, 45.038818, 46.846458>,  <33.916885, 45.022228, 47.149059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655815, 45.038818, 46.846458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698372, 0.420087, -0.579485,
		0.293762, -0.906536, -0.303145,
		-0.652672, 0.041477, -0.756505,
		33.460014, 45.051262, 46.619507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283241, 44.822937, 46.500614>,  <33.916885, 45.022228, 47.149059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283241, 44.822937, 46.500614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.957024, 45.017311, 46.374916>,  <33.761292, 45.133938, 46.299496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.957024, 45.017311, 46.374916>,  <34.283241, 44.822937, 46.500614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957024, 45.017311, 46.374916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505854, 0.334883, -0.794962,
		-0.281066, -0.807291, -0.518925,
		-0.815545, 0.485937, -0.314248,
		33.712360, 45.163094, 46.280643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140984, 44.637436, 45.793613>,  <34.283241, 44.822937, 46.500614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140984, 44.637436, 45.793613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.986057, 45.001373, 45.853180>,  <33.893101, 45.219734, 45.888920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.986057, 45.001373, 45.853180>,  <34.140984, 44.637436, 45.793613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986057, 45.001373, 45.853180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498839, 0.342649, -0.796085,
		-0.775335, -0.234055, -0.586578,
		-0.387318, 0.909841, 0.148912,
		33.869862, 45.274326, 45.897854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950897, 44.871502, 45.135326>,  <34.140984, 44.637436, 45.793613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950897, 44.871502, 45.135326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.948807, 45.206627, 45.353699>,  <33.947552, 45.407703, 45.484722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.948807, 45.206627, 45.353699>,  <33.950897, 44.871502, 45.135326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948807, 45.206627, 45.353699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383124, 0.505960, -0.772800,
		-0.923682, 0.205121, -0.323631,
		-0.005227, 0.837813, 0.545933,
		33.947239, 45.457970, 45.517479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748455, 45.357471, 44.669704>,  <33.950897, 44.871502, 45.135326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748455, 45.357471, 44.669704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.916229, 45.554214, 44.974899>,  <34.016895, 45.672260, 45.158016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.916229, 45.554214, 44.974899>,  <33.748455, 45.357471, 44.669704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916229, 45.554214, 44.974899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359102, 0.682032, -0.637086,
		-0.833737, 0.541207, 0.109442,
		0.419439, 0.491861, 0.762984,
		34.042061, 45.701775, 45.203793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775177, 45.958008, 44.429558>,  <33.748455, 45.357471, 44.669704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775177, 45.958008, 44.429558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.022594, 45.990799, 44.742142>,  <34.171043, 46.010475, 44.929691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.022594, 45.990799, 44.742142>,  <33.775177, 45.958008, 44.429558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022594, 45.990799, 44.742142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608785, 0.578782, -0.542579,
		-0.496776, 0.811351, 0.308095,
		0.618542, 0.081976, 0.781464,
		34.208157, 46.015392, 44.976582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040657, 46.600971, 44.424644>,  <33.775177, 45.958008, 44.429558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040657, 46.600971, 44.424644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.316307, 46.432297, 44.660370>,  <34.481697, 46.331093, 44.801804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.316307, 46.432297, 44.660370>,  <34.040657, 46.600971, 44.424644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316307, 46.432297, 44.660370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721688, 0.472740, -0.505652,
		-0.065366, 0.773757, 0.630101,
		0.689126, -0.421684, 0.589312,
		34.523045, 46.305790, 44.837162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.741333, 44.407066, 49.216949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.899876, 44.090187, 49.402561>,  <32.995003, 43.900059, 49.513927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.899876, 44.090187, 49.402561>,  <32.741333, 44.407066, 49.216949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899876, 44.090187, 49.402561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881726, -0.187607, 0.432855,
		-0.255853, -0.580709, -0.772862,
		0.396357, -0.792200, 0.464026,
		33.018784, 43.852528, 49.541771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150829, 44.074875, 49.327625>,  <32.741333, 44.407066, 49.216949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150829, 44.074875, 49.327625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431595, 43.919533, 49.566452>,  <32.600056, 43.826328, 49.709747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431595, 43.919533, 49.566452>,  <32.150829, 44.074875, 49.327625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431595, 43.919533, 49.566452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712238, -0.389255, 0.584122,
		0.005567, -0.835261, -0.549825,
		0.701917, -0.388354, 0.597071,
		32.642170, 43.803028, 49.745575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041958, 43.392029, 49.280151>,  <32.150829, 44.074875, 49.327625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041958, 43.392029, 49.280151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.226173, 43.457367, 49.629143>,  <32.336704, 43.496571, 49.838539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.226173, 43.457367, 49.629143>,  <32.041958, 43.392029, 49.280151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226173, 43.457367, 49.629143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778669, -0.397516, 0.485444,
		0.426120, -0.902939, -0.055881,
		0.460540, 0.163345, 0.872480,
		32.364334, 43.506371, 49.890888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939877, 42.814354, 49.670700>,  <32.041958, 43.392029, 49.280151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939877, 42.814354, 49.670700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.030502, 43.080261, 49.955444>,  <32.084877, 43.239807, 50.126293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.030502, 43.080261, 49.955444>,  <31.939877, 42.814354, 49.670700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030502, 43.080261, 49.955444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713894, -0.383857, 0.585670,
		0.662590, -0.640887, 0.387606,
		0.226563, 0.664769, 0.711865,
		32.098473, 43.279694, 50.169003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847942, 42.479015, 50.237873>,  <31.939877, 42.814354, 49.670700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847942, 42.479015, 50.237873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838051, 42.853767, 50.377384>,  <31.832117, 43.078617, 50.461090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838051, 42.853767, 50.377384>,  <31.847942, 42.479015, 50.237873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838051, 42.853767, 50.377384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765155, -0.242268, 0.596526,
		0.643371, -0.252118, 0.722849,
		-0.024728, 0.936879, 0.348778,
		31.830633, 43.134830, 50.482018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824751, 42.454136, 50.968533>,  <31.847942, 42.479015, 50.237873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824751, 42.454136, 50.968533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706091, 42.829002, 50.895081>,  <31.634895, 43.053921, 50.851009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706091, 42.829002, 50.895081>,  <31.824751, 42.454136, 50.968533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706091, 42.829002, 50.895081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730369, -0.098757, 0.675876,
		0.615272, 0.334619, 0.713772,
		-0.296651, 0.937165, -0.183633,
		31.617096, 43.110153, 50.839993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836712, 42.784485, 51.558262>,  <31.824751, 42.454136, 50.968533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836712, 42.784485, 51.558262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587576, 42.995300, 51.326988>,  <31.438093, 43.121792, 51.188225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587576, 42.995300, 51.326988>,  <31.836712, 42.784485, 51.558262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587576, 42.995300, 51.326988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758008, -0.223624, 0.612713,
		0.193630, 0.819890, 0.538784,
		-0.622842, 0.527042, -0.578183,
		31.400723, 43.153412, 51.153534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527586, 43.209450, 52.032238>,  <31.836712, 42.784485, 51.558262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527586, 43.209450, 52.032238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.302599, 43.208351, 51.701511>,  <31.167606, 43.207691, 51.503075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.302599, 43.208351, 51.701511>,  <31.527586, 43.209450, 52.032238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302599, 43.208351, 51.701511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819927, -0.126997, 0.558203,
		-0.106538, 0.991899, 0.069176,
		-0.562467, -0.002750, -0.826815,
		31.133860, 43.207527, 51.453468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994720, 43.715275, 52.054790>,  <31.527586, 43.209450, 52.032238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994720, 43.715275, 52.054790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.876085, 43.419487, 51.813057>,  <30.804905, 43.242012, 51.668018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.876085, 43.419487, 51.813057>,  <30.994720, 43.715275, 52.054790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876085, 43.419487, 51.813057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815258, -0.133527, 0.563494,
		-0.497383, 0.659810, -0.563259,
		-0.296589, -0.739474, -0.604330,
		30.787109, 43.197643, 51.631760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206873, 43.785862, 52.069439>,  <30.994720, 43.715275, 52.054790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206873, 43.785862, 52.069439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.259497, 43.445984, 51.865204>,  <30.291071, 43.242058, 51.742661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.259497, 43.445984, 51.865204>,  <30.206873, 43.785862, 52.069439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259497, 43.445984, 51.865204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871987, -0.344186, 0.348101,
		-0.471520, 0.399433, -0.786208,
		0.131559, -0.849700, -0.510591,
		30.298964, 43.191074, 51.712029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566437, 43.705338, 51.782829>,  <30.206873, 43.785862, 52.069439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566437, 43.705338, 51.782829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.748203, 43.349129, 51.791557>,  <29.857264, 43.135403, 51.796795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.748203, 43.349129, 51.791557>,  <29.566437, 43.705338, 51.782829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748203, 43.349129, 51.791557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859447, -0.431856, 0.273589,
		-0.234212, -0.143079, -0.961599,
		0.454417, -0.890522, 0.021823,
		29.884529, 43.081974, 51.798103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116217, 43.200130, 51.441048>,  <29.566437, 43.705338, 51.782829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116217, 43.200130, 51.441048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.361668, 43.019310, 51.700005>,  <29.508938, 42.910816, 51.855377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.361668, 43.019310, 51.700005>,  <29.116217, 43.200130, 51.441048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361668, 43.019310, 51.700005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775583, -0.498856, 0.386799,
		0.148102, -0.739455, -0.656713,
		0.613626, -0.452050, 0.647390,
		29.545755, 42.883694, 51.894222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896130, 42.547138, 51.511711>,  <29.116217, 43.200130, 51.441048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896130, 42.547138, 51.511711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.085667, 42.612442, 51.857849>,  <29.199389, 42.651627, 52.065533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.085667, 42.612442, 51.857849>,  <28.896130, 42.547138, 51.511711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085667, 42.612442, 51.857849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677702, -0.559871, 0.476722,
		0.562312, -0.812336, -0.154647,
		0.473841, 0.163262, 0.865344,
		29.227819, 42.661419, 52.117451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085546, 41.905746, 51.782631>,  <28.896130, 42.547138, 51.511711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085546, 41.905746, 51.782631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.043497, 42.193718, 52.057045>,  <29.018269, 42.366501, 52.221695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.043497, 42.193718, 52.057045>,  <29.085546, 41.905746, 51.782631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043497, 42.193718, 52.057045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681045, -0.554815, 0.477869,
		0.724657, -0.416988, 0.548629,
		-0.105122, 0.719932, 0.686038,
		29.011961, 42.409698, 52.262856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312737, 42.027145, 51.580044>,  <29.085546, 41.905746, 51.782631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312737, 42.027145, 51.580044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.020090, 41.948547, 51.318932>,  <27.844501, 41.901386, 51.162262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.020090, 41.948547, 51.318932>,  <28.312737, 42.027145, 51.580044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020090, 41.948547, 51.318932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429237, 0.611132, -0.665036,
		0.529614, -0.766750, -0.362771,
		-0.731618, -0.196497, -0.652781,
		27.800606, 41.889599, 51.123096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501602, 41.695862, 50.941238>,  <28.312737, 42.027145, 51.580044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501602, 41.695862, 50.941238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.169022, 41.901466, 50.856884>,  <27.969473, 42.024830, 50.806271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.169022, 41.901466, 50.856884>,  <28.501602, 41.695862, 50.941238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169022, 41.901466, 50.856884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457196, 0.417324, -0.785374,
		-0.315685, -0.749420, -0.581991,
		-0.831453, 0.514014, -0.210889,
		27.919586, 42.055672, 50.793617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380583, 41.606533, 50.289032>,  <28.501602, 41.695862, 50.941238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380583, 41.606533, 50.289032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.147469, 41.924347, 50.357235>,  <28.007601, 42.115036, 50.398155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.147469, 41.924347, 50.357235>,  <28.380583, 41.606533, 50.289032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147469, 41.924347, 50.357235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341757, 0.430001, -0.835644,
		-0.737268, -0.428730, -0.522137,
		-0.582785, 0.794538, 0.170504,
		27.972633, 42.162708, 50.408386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925076, 41.849434, 49.652382>,  <28.380583, 41.606533, 50.289032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925076, 41.849434, 49.652382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.976517, 42.174774, 49.879333>,  <28.007381, 42.369980, 50.015507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.976517, 42.174774, 49.879333>,  <27.925076, 41.849434, 49.652382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976517, 42.174774, 49.879333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229178, 0.532273, -0.814962,
		-0.964852, 0.234837, -0.117951,
		0.128601, 0.813350, 0.567384,
		28.015097, 42.418777, 50.049549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483940, 42.297867, 49.251266>,  <27.925076, 41.849434, 49.652382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483940, 42.297867, 49.251266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.701843, 42.532417, 49.491066>,  <27.832584, 42.673149, 49.634945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.701843, 42.532417, 49.491066>,  <27.483940, 42.297867, 49.251266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701843, 42.532417, 49.491066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206373, 0.599159, -0.773575,
		-0.812804, 0.545131, 0.205384,
		0.544757, 0.586379, 0.599499,
		27.865271, 42.708332, 49.670918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322807, 42.986355, 49.059494>,  <27.483940, 42.297867, 49.251266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322807, 42.986355, 49.059494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.673981, 43.016327, 49.248650>,  <27.884684, 43.034309, 49.362141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.673981, 43.016327, 49.248650>,  <27.322807, 42.986355, 49.059494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673981, 43.016327, 49.248650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275617, 0.728522, -0.627130,
		-0.391497, 0.680913, 0.618941,
		0.877933, 0.074929, 0.472885,
		27.937361, 43.038807, 49.390514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492094, 43.707600, 49.080700>,  <27.322807, 42.986355, 49.059494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492094, 43.707600, 49.080700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.842777, 43.525131, 49.141747>,  <28.053186, 43.415649, 49.178375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.842777, 43.525131, 49.141747>,  <27.492094, 43.707600, 49.080700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842777, 43.525131, 49.141747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391406, 0.492080, -0.777598,
		0.279622, 0.741459, 0.609959,
		0.876706, -0.456175, 0.152615,
		28.105789, 43.388279, 49.187531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032175, 44.231716, 48.920288>,  <27.492094, 43.707600, 49.080700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032175, 44.231716, 48.920288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.232458, 43.887520, 48.882664>,  <28.352627, 43.681004, 48.860088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.232458, 43.887520, 48.882664>,  <28.032175, 44.231716, 48.920288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232458, 43.887520, 48.882664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576988, 0.412781, -0.704767,
		0.645274, 0.298607, 0.703176,
		0.500706, -0.860491, -0.094064,
		28.382669, 43.629372, 48.854443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665237, 44.439213, 48.731552>,  <28.032175, 44.231716, 48.920288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665237, 44.439213, 48.731552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.713297, 44.054146, 48.634521>,  <28.742132, 43.823105, 48.576302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.713297, 44.054146, 48.634521>,  <28.665237, 44.439213, 48.731552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713297, 44.054146, 48.634521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805021, 0.237466, -0.543646,
		0.580952, -0.129961, 0.803495,
		0.120150, -0.962663, -0.242578,
		28.749342, 43.765347, 48.561749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271217, 44.286987, 48.990250>,  <28.665237, 44.439213, 48.731552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271217, 44.286987, 48.990250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.209524, 43.994507, 48.724453>,  <29.172508, 43.819019, 48.564976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.209524, 43.994507, 48.724453>,  <29.271217, 44.286987, 48.990250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209524, 43.994507, 48.724453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868639, 0.220136, -0.443854,
		0.470827, -0.645661, 0.601202,
		-0.154233, -0.731206, -0.664492,
		29.163254, 43.775146, 48.525105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848278, 43.978470, 49.055820>,  <29.271217, 44.286987, 48.990250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848278, 43.978470, 49.055820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.685591, 43.887505, 48.701904>,  <29.587978, 43.832924, 48.489555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.685591, 43.887505, 48.701904>,  <29.848278, 43.978470, 49.055820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685591, 43.887505, 48.701904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880710, 0.159753, -0.445902,
		0.242753, -0.960605, 0.135311,
		-0.406720, -0.227414, -0.884795,
		29.563576, 43.819279, 48.436466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261505, 43.479839, 48.795429>,  <29.848278, 43.978470, 49.055820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261505, 43.479839, 48.795429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.075523, 43.666702, 48.494610>,  <29.963934, 43.778820, 48.314117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.075523, 43.666702, 48.494610>,  <30.261505, 43.479839, 48.795429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075523, 43.666702, 48.494610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871396, 0.091343, -0.482002,
		-0.156478, -0.879441, -0.449552,
		-0.464956, 0.467161, -0.752048,
		29.936037, 43.806850, 48.268997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617168, 43.109756, 48.335468>,  <30.261505, 43.479839, 48.795429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617168, 43.109756, 48.335468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.439661, 43.428001, 48.170509>,  <30.333157, 43.618950, 48.071533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.439661, 43.428001, 48.170509>,  <30.617168, 43.109756, 48.335468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439661, 43.428001, 48.170509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830636, 0.192474, -0.522491,
		-0.336325, -0.574416, -0.746278,
		-0.443767, 0.795613, -0.412397,
		30.306532, 43.666687, 48.046791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761364, 43.031841, 47.641304>,  <30.617168, 43.109756, 48.335468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761364, 43.031841, 47.641304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.652857, 43.416496, 47.657639>,  <30.587753, 43.647289, 47.667439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.652857, 43.416496, 47.657639>,  <30.761364, 43.031841, 47.641304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652857, 43.416496, 47.657639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886734, 0.266189, -0.377950,
		-0.374321, -0.066314, -0.924925,
		-0.271268, 0.961637, 0.040837,
		30.571476, 43.704987, 47.669891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860048, 42.485714, 47.418430>,  <30.761364, 43.031841, 47.641304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860048, 42.485714, 47.418430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.059292, 42.151573, 47.325413>,  <31.178839, 41.951088, 47.269604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.059292, 42.151573, 47.325413>,  <30.860048, 42.485714, 47.418430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059292, 42.151573, 47.325413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451696, -0.478891, 0.752751,
		-0.740175, -0.269911, -0.615864,
		0.498108, -0.835351, -0.232546,
		31.208725, 41.900967, 47.255650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352203, 41.951252, 47.393600>,  <30.860048, 42.485714, 47.418430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352203, 41.951252, 47.393600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.697550, 41.755791, 47.443909>,  <30.904758, 41.638515, 47.474094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.697550, 41.755791, 47.443909>,  <30.352203, 41.951252, 47.393600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697550, 41.755791, 47.443909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426896, -0.574506, 0.698357,
		-0.268995, -0.656630, -0.704612,
		0.863366, -0.488651, 0.125773,
		30.956560, 41.609196, 47.481640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300764, 41.263367, 47.263760>,  <30.352203, 41.951252, 47.393600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300764, 41.263367, 47.263760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.606514, 41.287392, 47.520546>,  <30.789965, 41.301807, 47.674618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.606514, 41.287392, 47.520546>,  <30.300764, 41.263367, 47.263760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606514, 41.287392, 47.520546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545851, -0.469664, 0.693875,
		0.343184, -0.880800, -0.326215,
		0.764377, 0.060063, 0.641966,
		30.835827, 41.305408, 47.713135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521687, 40.534389, 47.532040>,  <30.300764, 41.263367, 47.263760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521687, 40.534389, 47.532040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.641802, 40.784012, 47.820591>,  <30.713871, 40.933784, 47.993721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.641802, 40.784012, 47.820591>,  <30.521687, 40.534389, 47.532040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641802, 40.784012, 47.820591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490421, -0.547650, 0.677913,
		0.818115, -0.557349, 0.141595,
		0.300290, 0.624053, 0.721377,
		30.731890, 40.971230, 48.037003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859566, 40.090084, 47.974373>,  <30.521687, 40.534389, 47.532040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859566, 40.090084, 47.974373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.764521, 40.409805, 48.195152>,  <30.707495, 40.601639, 48.327621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.764521, 40.409805, 48.195152>,  <30.859566, 40.090084, 47.974373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764521, 40.409805, 48.195152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333382, -0.600816, 0.726551,
		0.912358, -0.011374, 0.409234,
		-0.237611, 0.799306, 0.551951,
		30.693237, 40.649597, 48.360737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989010, 39.970203, 48.751804>,  <30.859566, 40.090084, 47.974373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989010, 39.970203, 48.751804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.756170, 40.295319, 48.742584>,  <30.616467, 40.490387, 48.737053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.756170, 40.295319, 48.742584>,  <30.989010, 39.970203, 48.751804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756170, 40.295319, 48.742584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531927, -0.359201, 0.766830,
		0.614991, 0.458635, 0.641436,
		-0.582100, 0.812791, -0.023055,
		30.581541, 40.539154, 48.735668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867010, 40.149723, 49.481365>,  <30.989010, 39.970203, 48.751804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867010, 40.149723, 49.481365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.570232, 40.323051, 49.276718>,  <30.392166, 40.427048, 49.153931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.570232, 40.323051, 49.276718>,  <30.867010, 40.149723, 49.481365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570232, 40.323051, 49.276718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634535, -0.207377, 0.744553,
		0.216534, 0.877055, 0.428820,
		-0.741942, 0.433322, -0.511618,
		30.347651, 40.453049, 49.123234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407101, 40.210518, 50.075203>,  <30.867010, 40.149723, 49.481365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407101, 40.210518, 50.075203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.527266, 39.839874, 50.165665>,  <31.599365, 39.617489, 50.219940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.527266, 39.839874, 50.165665>,  <31.407101, 40.210518, 50.075203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527266, 39.839874, 50.165665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825782, 0.134017, -0.547836,
		0.477322, 0.351329, 0.805439,
		0.300413, -0.926611, 0.226151,
		31.617390, 39.561890, 50.233509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131245, 40.270267, 50.218399>,  <31.407101, 40.210518, 50.075203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131245, 40.270267, 50.218399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050003, 39.889641, 50.126076>,  <32.001259, 39.661266, 50.070683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050003, 39.889641, 50.126076>,  <32.131245, 40.270267, 50.218399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050003, 39.889641, 50.126076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869362, -0.066793, -0.489641,
		0.450509, -0.300106, 0.840820,
		-0.203105, -0.951565, -0.230809,
		31.989071, 39.604172, 50.056831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770714, 39.948769, 50.170498>,  <32.131245, 40.270267, 50.218399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770714, 39.948769, 50.170498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.548073, 39.673874, 49.983780>,  <32.414486, 39.508938, 49.871750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.548073, 39.673874, 49.983780>,  <32.770714, 39.948769, 50.170498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548073, 39.673874, 49.983780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779612, -0.237947, -0.579297,
		0.287043, -0.686357, 0.668222,
		-0.556606, -0.687238, -0.466791,
		32.381092, 39.467701, 49.843742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162628, 39.295963, 50.148758>,  <32.770714, 39.948769, 50.170498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162628, 39.295963, 50.148758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895660, 39.331902, 49.853062>,  <32.735477, 39.353462, 49.675644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895660, 39.331902, 49.853062>,  <33.162628, 39.295963, 50.148758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895660, 39.331902, 49.853062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743402, 0.022238, -0.668475,
		-0.043618, -0.995708, -0.081631,
		-0.667421, 0.089843, -0.739241,
		32.695435, 39.358852, 49.631290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416744, 38.879562, 49.545929>,  <33.162628, 39.295963, 50.148758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416744, 38.879562, 49.545929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162964, 39.132393, 49.367962>,  <33.010696, 39.284092, 49.261181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162964, 39.132393, 49.367962>,  <33.416744, 38.879562, 49.545929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162964, 39.132393, 49.367962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737695, 0.323260, -0.592713,
		-0.230815, -0.704262, -0.671371,
		-0.634454, 0.632074, -0.444917,
		32.972630, 39.322014, 49.234486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390526, 38.685390, 48.834610>,  <33.416744, 38.879562, 49.545929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390526, 38.685390, 48.834610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252193, 39.060631, 48.842266>,  <33.169193, 39.285774, 48.846859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252193, 39.060631, 48.842266>,  <33.390526, 38.685390, 48.834610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252193, 39.060631, 48.842266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583622, 0.231033, -0.778466,
		-0.734703, -0.258047, -0.627395,
		-0.345829, 0.938102, 0.019139,
		33.148445, 39.342060, 48.848007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132095, 38.764507, 48.163902>,  <33.390526, 38.685390, 48.834610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132095, 38.764507, 48.163902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.213654, 39.120651, 48.326721>,  <33.262589, 39.334339, 48.424412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.213654, 39.120651, 48.326721>,  <33.132095, 38.764507, 48.163902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213654, 39.120651, 48.326721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520765, 0.253439, -0.815213,
		-0.828995, 0.378193, -0.411993,
		0.203892, 0.890359, 0.407049,
		33.274822, 39.387760, 48.448837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.110973, 41.142513, 53.776604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.902527, 41.353127, 53.507919>,  <31.777458, 41.479496, 53.346710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.902527, 41.353127, 53.507919>,  <32.110973, 41.142513, 53.776604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902527, 41.353127, 53.507919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847778, 0.228480, -0.478611,
		-0.098533, -0.818876, -0.565450,
		-0.521117, 0.526535, -0.671712,
		31.746191, 41.511086, 53.306404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258331, 40.930782, 53.077003>,  <32.110973, 41.142513, 53.776604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258331, 40.930782, 53.077003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.122307, 41.305275, 53.041607>,  <32.040691, 41.529968, 53.020367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.122307, 41.305275, 53.041607>,  <32.258331, 40.930782, 53.077003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122307, 41.305275, 53.041607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837488, 0.258702, -0.481339,
		-0.427749, -0.237801, -0.872056,
		-0.340065, 0.936229, -0.088496,
		32.020287, 41.586143, 53.015057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380043, 41.066116, 52.430958>,  <32.258331, 40.930782, 53.077003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380043, 41.066116, 52.430958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323334, 41.429245, 52.588825>,  <32.289310, 41.647121, 52.683544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323334, 41.429245, 52.588825>,  <32.380043, 41.066116, 52.430958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323334, 41.429245, 52.588825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866350, 0.306669, -0.394197,
		-0.478893, 0.286037, -0.829966,
		-0.141770, 0.907820, 0.394670,
		32.280804, 41.701591, 52.707226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534573, 41.566399, 51.830059>,  <32.380043, 41.066116, 52.430958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534573, 41.566399, 51.830059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.562553, 41.775551, 52.169868>,  <32.579342, 41.901043, 52.373756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.562553, 41.775551, 52.169868>,  <32.534573, 41.566399, 51.830059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562553, 41.775551, 52.169868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865887, 0.391034, -0.311981,
		-0.495324, 0.757419, -0.425406,
		0.069952, 0.522885, 0.849528,
		32.583538, 41.932415, 52.424728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627014, 42.294853, 51.678307>,  <32.534573, 41.566399, 51.830059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627014, 42.294853, 51.678307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.770599, 42.223335, 52.044735>,  <32.856750, 42.180424, 52.264591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.770599, 42.223335, 52.044735>,  <32.627014, 42.294853, 51.678307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770599, 42.223335, 52.044735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822781, 0.523993, -0.220142,
		-0.440653, 0.832746, 0.335200,
		0.358965, -0.178790, 0.916067,
		32.878288, 42.169697, 52.319553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018597, 42.829601, 51.747952>,  <32.627014, 42.294853, 51.678307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018597, 42.829601, 51.747952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.129120, 42.619064, 52.069599>,  <33.195435, 42.492741, 52.262589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.129120, 42.619064, 52.069599>,  <33.018597, 42.829601, 51.747952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129120, 42.619064, 52.069599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896884, 0.441860, -0.018964,
		-0.345328, 0.726445, 0.594160,
		0.276312, -0.526343, 0.804124,
		33.212013, 42.461163, 52.310837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385098, 43.345062, 52.359455>,  <33.018597, 42.829601, 51.747952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385098, 43.345062, 52.359455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.524250, 42.975136, 52.421028>,  <33.607742, 42.753181, 52.457973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.524250, 42.975136, 52.421028>,  <33.385098, 43.345062, 52.359455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524250, 42.975136, 52.421028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937340, 0.339691, -0.077483,
		0.019367, 0.171245, 0.985038,
		0.347877, -0.924816, 0.153936,
		33.628613, 42.697689, 52.467209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996178, 43.453266, 52.741314>,  <33.385098, 43.345062, 52.359455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996178, 43.453266, 52.741314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.035446, 43.082336, 52.596851>,  <34.059006, 42.859779, 52.510174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.035446, 43.082336, 52.596851>,  <33.996178, 43.453266, 52.741314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035446, 43.082336, 52.596851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915736, 0.226254, -0.332020,
		0.389603, -0.298129, 0.871395,
		0.098171, -0.927323, -0.361157,
		34.064899, 42.804138, 52.488503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688633, 43.201271, 52.897396>,  <33.996178, 43.453266, 52.741314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688633, 43.201271, 52.897396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.571609, 42.945320, 52.613155>,  <34.501396, 42.791748, 52.442612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.571609, 42.945320, 52.613155>,  <34.688633, 43.201271, 52.897396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571609, 42.945320, 52.613155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918399, 0.018978, -0.395200,
		0.266366, -0.768240, 0.582114,
		-0.292561, -0.639881, -0.710606,
		34.483841, 42.753357, 52.399975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226875, 42.746181, 52.948162>,  <34.688633, 43.201271, 52.897396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226875, 42.746181, 52.948162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.085648, 42.703667, 52.576347>,  <35.000912, 42.678158, 52.353256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.085648, 42.703667, 52.576347>,  <35.226875, 42.746181, 52.948162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085648, 42.703667, 52.576347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927092, -0.173402, -0.332314,
		-0.125861, -0.979098, 0.159765,
		-0.353072, -0.106291, -0.929539,
		34.979725, 42.671780, 52.297485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477276, 42.074753, 52.754795>,  <35.226875, 42.746181, 52.948162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477276, 42.074753, 52.754795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.397018, 42.265770, 52.412640>,  <35.348866, 42.380383, 52.207344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.397018, 42.265770, 52.412640>,  <35.477276, 42.074753, 52.754795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397018, 42.265770, 52.412640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896124, -0.263355, -0.357220,
		-0.395860, -0.838208, -0.375102,
		-0.200640, 0.477547, -0.855390,
		35.336826, 42.409035, 52.156021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695709, 41.594219, 52.272583>,  <35.477276, 42.074753, 52.754795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695709, 41.594219, 52.272583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.685036, 41.943336, 52.077637>,  <35.678631, 42.152805, 51.960670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.685036, 41.943336, 52.077637>,  <35.695709, 41.594219, 52.272583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685036, 41.943336, 52.077637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896865, -0.194422, -0.397282,
		-0.441498, -0.447703, -0.777587,
		-0.026685, 0.872790, -0.487366,
		35.677029, 42.205173, 51.931427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206432, 41.120533, 52.092487>,  <35.695709, 41.594219, 52.272583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206432, 41.120533, 52.092487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.171482, 40.722298, 52.106163>,  <35.150513, 40.483356, 52.114368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.171482, 40.722298, 52.106163>,  <35.206432, 41.120533, 52.092487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171482, 40.722298, 52.106163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776848, 0.089579, 0.623284,
		-0.623597, 0.027903, -0.781248,
		-0.087375, -0.995589, 0.034185,
		35.145271, 40.423622, 52.116417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461201, 40.949009, 52.143372>,  <35.206432, 41.120533, 52.092487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461201, 40.949009, 52.143372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.599716, 40.587090, 52.242512>,  <34.682827, 40.369938, 52.301994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.599716, 40.587090, 52.242512>,  <34.461201, 40.949009, 52.143372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599716, 40.587090, 52.242512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840163, -0.181565, 0.511039,
		-0.417386, -0.385198, -0.823050,
		0.346288, -0.904797, 0.247846,
		34.703602, 40.315651, 52.316864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949501, 40.482220, 51.921291>,  <34.461201, 40.949009, 52.143372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949501, 40.482220, 51.921291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.168674, 40.328377, 52.218437>,  <34.300179, 40.236073, 52.396725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.168674, 40.328377, 52.218437>,  <33.949501, 40.482220, 51.921291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168674, 40.328377, 52.218437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836006, -0.282939, 0.470148,
		0.029362, -0.878648, -0.476566,
		0.547933, -0.384608, 0.742863,
		34.333054, 40.212994, 52.441296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571434, 39.876167, 52.133045>,  <33.949501, 40.482220, 51.921291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571434, 39.876167, 52.133045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.818008, 39.915436, 52.445549>,  <33.965954, 39.938995, 52.633049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.818008, 39.915436, 52.445549>,  <33.571434, 39.876167, 52.133045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818008, 39.915436, 52.445549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690706, -0.408967, 0.596382,
		0.378057, -0.907253, -0.184296,
		0.616440, 0.098172, 0.781258,
		34.002941, 39.944889, 52.679928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507641, 39.248638, 52.514114>,  <33.571434, 39.876167, 52.133045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507641, 39.248638, 52.514114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.665768, 39.514580, 52.767632>,  <33.760643, 39.674145, 52.919743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.665768, 39.514580, 52.767632>,  <33.507641, 39.248638, 52.514114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665768, 39.514580, 52.767632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487979, -0.432566, 0.758132,
		0.778205, -0.608979, 0.153434,
		0.395316, 0.664854, 0.633794,
		33.784363, 39.714035, 52.957771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818649, 38.903259, 53.103062>,  <33.507641, 39.248638, 52.514114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818649, 38.903259, 53.103062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.722534, 39.272690, 53.222576>,  <33.664864, 39.494347, 53.294285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.722534, 39.272690, 53.222576>,  <33.818649, 38.903259, 53.103062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722534, 39.272690, 53.222576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651217, -0.381638, 0.655949,
		0.719846, -0.036959, 0.693149,
		-0.240289, 0.923573, 0.298789,
		33.650448, 39.549763, 53.312214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713284, 38.787975, 53.774204>,  <33.818649, 38.903259, 53.103062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713284, 38.787975, 53.774204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.537487, 39.138779, 53.696533>,  <33.432011, 39.349262, 53.649929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.537487, 39.138779, 53.696533>,  <33.713284, 38.787975, 53.774204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537487, 39.138779, 53.696533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763140, -0.250534, 0.595693,
		0.473778, 0.409990, 0.779386,
		-0.439490, 0.877007, -0.194182,
		33.405640, 39.401882, 53.638279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251766, 38.840954, 54.300934>,  <33.713284, 38.787975, 53.774204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251766, 38.840954, 54.300934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.123600, 39.153511, 54.086735>,  <33.046700, 39.341045, 53.958214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.123600, 39.153511, 54.086735>,  <33.251766, 38.840954, 54.300934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123600, 39.153511, 54.086735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891912, -0.058433, 0.448418,
		0.319100, 0.621299, 0.715656,
		-0.320419, 0.781392, -0.535498,
		33.027473, 39.387928, 53.926086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961914, 39.224331, 54.774479>,  <33.251766, 38.840954, 54.300934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961914, 39.224331, 54.774479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.785477, 39.351448, 54.438755>,  <32.679615, 39.427719, 54.237320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.785477, 39.351448, 54.438755>,  <32.961914, 39.224331, 54.774479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785477, 39.351448, 54.438755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888041, -0.019407, 0.459354,
		0.129691, 0.947962, 0.290773,
		-0.441093, 0.317792, -0.839312,
		32.653149, 39.446785, 54.186962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517094, 39.786934, 54.983124>,  <32.961914, 39.224331, 54.774479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517094, 39.786934, 54.983124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.379574, 39.639931, 54.637466>,  <32.297062, 39.551731, 54.430073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.379574, 39.639931, 54.637466>,  <32.517094, 39.786934, 54.983124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379574, 39.639931, 54.637466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934475, 0.043233, 0.353395,
		-0.092515, 0.929016, -0.358287,
		-0.343800, -0.367504, -0.864143,
		32.276432, 39.529678, 54.378223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909685, 40.178291, 54.817310>,  <32.517094, 39.786934, 54.983124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909685, 40.178291, 54.817310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.881548, 39.814423, 54.653580>,  <31.864666, 39.596100, 54.555340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.881548, 39.814423, 54.653580>,  <31.909685, 40.178291, 54.817310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881548, 39.814423, 54.653580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984610, -0.002494, 0.174748,
		-0.159984, 0.415322, -0.895495,
		-0.070343, -0.909671, -0.409330,
		31.860445, 39.541523, 54.530781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407019, 40.247677, 54.406796>,  <31.909685, 40.178291, 54.817310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407019, 40.247677, 54.406796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409744, 39.848114, 54.425289>,  <31.411381, 39.608376, 54.436386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409744, 39.848114, 54.425289>,  <31.407019, 40.247677, 54.406796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409744, 39.848114, 54.425289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987609, 0.000525, 0.156934,
		-0.156787, -0.046730, -0.986526,
		0.006816, -0.998907, 0.046233,
		31.411789, 39.548443, 54.439159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915585, 39.984924, 53.896679>,  <31.407019, 40.247677, 54.406796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915585, 39.984924, 53.896679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975775, 39.679314, 54.147633>,  <31.011889, 39.495945, 54.298206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975775, 39.679314, 54.147633>,  <30.915585, 39.984924, 53.896679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975775, 39.679314, 54.147633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974141, -0.006394, 0.225852,
		-0.168546, -0.645149, -0.745235,
		0.150474, -0.764030, 0.627388,
		31.020916, 39.450104, 54.335850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478004, 39.460445, 53.645668>,  <30.915585, 39.984924, 53.896679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478004, 39.460445, 53.645668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.552080, 39.421974, 54.036861>,  <30.596525, 39.398891, 54.271580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.552080, 39.421974, 54.036861>,  <30.478004, 39.460445, 53.645668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552080, 39.421974, 54.036861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982188, -0.050331, 0.181034,
		0.031812, -0.994091, -0.103781,
		0.185188, -0.096173, 0.977986,
		30.607635, 39.393120, 54.330257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931726, 38.930099, 53.286034>,  <30.478004, 39.460445, 53.645668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931726, 38.930099, 53.286034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.586647, 38.974709, 53.088726>,  <30.379601, 39.001472, 52.970341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.586647, 38.974709, 53.088726>,  <30.931726, 38.930099, 53.286034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586647, 38.974709, 53.088726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505538, 0.163973, -0.847080,
		-0.013585, -0.980141, -0.197838,
		-0.862698, 0.111522, -0.493271,
		30.327837, 39.008163, 52.940746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998560, 38.523243, 52.705883>,  <30.931726, 38.930099, 53.286034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998560, 38.523243, 52.705883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.713636, 38.779808, 52.591896>,  <30.542683, 38.933746, 52.523502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.713636, 38.779808, 52.591896>,  <30.998560, 38.523243, 52.705883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713636, 38.779808, 52.591896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504980, 0.186366, -0.842771,
		-0.487454, -0.744217, -0.456650,
		-0.712309, 0.641411, -0.284970,
		30.499943, 38.972233, 52.506405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704805, 38.229530, 52.164093>,  <30.998560, 38.523243, 52.705883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704805, 38.229530, 52.164093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.613039, 38.617920, 52.137012>,  <30.557980, 38.850952, 52.120766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.613039, 38.617920, 52.137012>,  <30.704805, 38.229530, 52.164093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613039, 38.617920, 52.137012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454372, 0.045325, -0.889658,
		-0.860764, -0.234863, -0.451581,
		-0.229415, 0.970971, -0.067701,
		30.544214, 38.909210, 52.116703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362267, 38.280750, 51.500652>,  <30.704805, 38.229530, 52.164093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362267, 38.280750, 51.500652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504608, 38.647438, 51.573311>,  <30.590014, 38.867451, 51.616905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504608, 38.647438, 51.573311>,  <30.362267, 38.280750, 51.500652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504608, 38.647438, 51.573311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419124, 0.017178, -0.907766,
		-0.835287, 0.399163, -0.378106,
		0.355852, 0.916719, 0.181648,
		30.611364, 38.922455, 51.627804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260471, 38.722488, 50.833576>,  <30.362267, 38.280750, 51.500652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260471, 38.722488, 50.833576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555305, 38.864212, 51.063766>,  <30.732206, 38.949245, 51.201881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555305, 38.864212, 51.063766>,  <30.260471, 38.722488, 50.833576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555305, 38.864212, 51.063766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568967, 0.134157, -0.811343,
		-0.364668, 0.925456, -0.102703,
		0.737084, 0.354305, 0.575477,
		30.776430, 38.970505, 51.236408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413771, 39.185753, 50.311909>,  <30.260471, 38.722488, 50.833576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413771, 39.185753, 50.311909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.718531, 39.210564, 50.569794>,  <30.901386, 39.225449, 50.724525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.718531, 39.210564, 50.569794>,  <30.413771, 39.185753, 50.311909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718531, 39.210564, 50.569794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582391, 0.369970, -0.723839,
		-0.283421, 0.926971, 0.245759,
		0.761901, 0.062024, 0.644717,
		30.947102, 39.229172, 50.763210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790180, 39.823158, 50.131863>,  <30.413771, 39.185753, 50.311909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790180, 39.823158, 50.131863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.031332, 39.552841, 50.301498>,  <31.176023, 39.390652, 50.403278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.031332, 39.552841, 50.301498>,  <30.790180, 39.823158, 50.131863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031332, 39.552841, 50.301498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746164, 0.289404, -0.599570,
		0.282451, 0.677905, 0.678724,
		0.602877, -0.675789, 0.424085,
		31.212194, 39.350105, 50.428722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385157, 40.463615, 49.992004>,  <30.790180, 39.823158, 50.131863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385157, 40.463615, 49.992004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156631, 40.419800, 49.666649>,  <30.019516, 40.393509, 49.471436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156631, 40.419800, 49.666649>,  <30.385157, 40.463615, 49.992004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156631, 40.419800, 49.666649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809203, -0.090343, 0.580541,
		-0.137075, 0.989869, -0.037024,
		-0.571314, -0.109538, -0.813389,
		29.985237, 40.386940, 49.422634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881887, 40.871586, 50.140903>,  <30.385157, 40.463615, 49.992004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881887, 40.871586, 50.140903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721497, 40.657127, 49.843781>,  <29.625261, 40.528450, 49.665508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721497, 40.657127, 49.843781>,  <29.881887, 40.871586, 50.140903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721497, 40.657127, 49.843781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893486, 0.049883, 0.446312,
		-0.202237, 0.842648, -0.499044,
		-0.400977, -0.536150, -0.742806,
		29.601204, 40.496281, 49.620937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370016, 41.217064, 49.955116>,  <29.881887, 40.871586, 50.140903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370016, 41.217064, 49.955116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281075, 40.859184, 49.800156>,  <29.227711, 40.644459, 49.707180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281075, 40.859184, 49.800156>,  <29.370016, 41.217064, 49.955116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281075, 40.859184, 49.800156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887095, 0.020802, 0.461118,
		-0.404501, 0.446191, -0.798306,
		-0.222353, -0.894696, -0.387399,
		29.214369, 40.590775, 49.683937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796370, 41.316929, 49.703674>,  <29.370016, 41.217064, 49.955116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796370, 41.316929, 49.703674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.795200, 40.918388, 49.737808>,  <28.794498, 40.679264, 49.758289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.795200, 40.918388, 49.737808>,  <28.796370, 41.316929, 49.703674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795200, 40.918388, 49.737808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830333, 0.049975, 0.555022,
		-0.557259, -0.069235, -0.827447,
		-0.002924, -0.996348, 0.085337,
		28.794323, 40.619484, 49.763409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164602, 41.048119, 49.543110>,  <28.796370, 41.316929, 49.703674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164602, 41.048119, 49.543110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.318371, 40.741943, 49.749535>,  <28.410633, 40.558239, 49.873390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.318371, 40.741943, 49.749535>,  <28.164602, 41.048119, 49.543110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318371, 40.741943, 49.749535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876614, -0.127411, 0.464020,
		-0.289426, -0.630770, -0.719973,
		0.384423, -0.765438, 0.516066,
		28.433699, 40.512314, 49.904354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749868, 40.479065, 49.423237>,  <28.164602, 41.048119, 49.543110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749868, 40.479065, 49.423237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915459, 40.435318, 49.784714>,  <28.014812, 40.409069, 50.001602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915459, 40.435318, 49.784714>,  <27.749868, 40.479065, 49.423237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915459, 40.435318, 49.784714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910280, -0.053740, 0.410489,
		0.003674, -0.992549, -0.121794,
		0.413976, -0.109358, 0.903695,
		28.039652, 40.402508, 50.055820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266834, 40.215801, 49.784084>,  <27.749868, 40.479065, 49.423237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266834, 40.215801, 49.784084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.486469, 40.293541, 50.109226>,  <27.618250, 40.340187, 50.304310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.486469, 40.293541, 50.109226>,  <27.266834, 40.215801, 49.784084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486469, 40.293541, 50.109226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814224, -0.094998, 0.572725,
		0.188531, -0.976320, 0.106087,
		0.549085, 0.194355, 0.812854,
		27.651196, 40.351849, 50.353081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167154, 39.648857, 50.225548>,  <27.266834, 40.215801, 49.784084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167154, 39.648857, 50.225548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275209, 39.958641, 50.454365>,  <27.340042, 40.144512, 50.591656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275209, 39.958641, 50.454365>,  <27.167154, 39.648857, 50.225548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275209, 39.958641, 50.454365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732524, -0.220262, 0.644123,
		0.624849, -0.593035, 0.507812,
		0.270136, 0.774464, 0.572042,
		27.356251, 40.190979, 50.625977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112076, 39.373276, 50.884789>,  <27.167154, 39.648857, 50.225548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112076, 39.373276, 50.884789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.101250, 39.769691, 50.937107>,  <27.094753, 40.007542, 50.968498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.101250, 39.769691, 50.937107>,  <27.112076, 39.373276, 50.884789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101250, 39.769691, 50.937107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664130, -0.115619, 0.738623,
		0.747127, -0.066871, 0.661308,
		-0.027067, 0.991040, 0.130793,
		27.093130, 40.067005, 50.976345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.683384, 43.818653, 40.859058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.597363, 44.203430, 40.791630>,  <38.545750, 44.434296, 40.751171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.597363, 44.203430, 40.791630>,  <38.683384, 43.818653, 40.859058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597363, 44.203430, 40.791630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797085, -0.073156, 0.599420,
		0.564275, 0.263279, 0.782482,
		-0.215058, 0.961942, -0.168575,
		38.532845, 44.492012, 40.741058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790218, 44.162273, 41.487526>,  <38.683384, 43.818653, 40.859058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790218, 44.162273, 41.487526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.521133, 44.345718, 41.255272>,  <38.359680, 44.455784, 41.115921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.521133, 44.345718, 41.255272>,  <38.790218, 44.162273, 41.487526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521133, 44.345718, 41.255272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719631, -0.223110, 0.657536,
		0.172008, 0.860173, 0.480120,
		-0.672714, 0.458611, -0.580630,
		38.319321, 44.483303, 41.081081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400177, 44.583099, 41.899094>,  <38.790218, 44.162273, 41.487526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400177, 44.583099, 41.899094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.138489, 44.531395, 41.601025>,  <37.981476, 44.500374, 41.422184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.138489, 44.531395, 41.601025>,  <38.400177, 44.583099, 41.899094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138489, 44.531395, 41.601025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748199, -0.033220, 0.662643,
		-0.110409, 0.991054, -0.074980,
		-0.654224, -0.129262, -0.745173,
		37.942223, 44.492615, 41.377472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799633, 44.940098, 42.128502>,  <38.400177, 44.583099, 41.899094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799633, 44.940098, 42.128502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660614, 44.732262, 41.816288>,  <37.577202, 44.607559, 41.628960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660614, 44.732262, 41.816288>,  <37.799633, 44.940098, 42.128502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660614, 44.732262, 41.816288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876069, -0.116788, 0.467830,
		-0.334239, 0.846394, -0.414610,
		-0.347546, -0.519594, -0.780534,
		37.556351, 44.576382, 41.582127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139790, 45.196312, 41.998314>,  <37.799633, 44.940098, 42.128502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139790, 45.196312, 41.998314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096043, 44.862991, 41.781555>,  <37.069794, 44.662998, 41.651501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096043, 44.862991, 41.781555>,  <37.139790, 45.196312, 41.998314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096043, 44.862991, 41.781555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931164, -0.104874, 0.349191,
		-0.347811, 0.542784, -0.764469,
		-0.109363, -0.833299, -0.541898,
		37.063232, 44.613003, 41.618984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387409, 45.214584, 41.737770>,  <37.139790, 45.196312, 41.998314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387409, 45.214584, 41.737770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.527927, 44.840393, 41.722393>,  <36.612236, 44.615879, 41.713165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.527927, 44.840393, 41.722393>,  <36.387409, 45.214584, 41.737770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527927, 44.840393, 41.722393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911253, -0.351047, 0.215369,
		-0.214969, -0.040623, -0.975776,
		0.351292, -0.935476, -0.038446,
		36.633316, 44.559750, 41.710857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882793, 44.789062, 41.472340>,  <36.387409, 45.214584, 41.737770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882793, 44.789062, 41.472340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113255, 44.531105, 41.673203>,  <36.251530, 44.376331, 41.793720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113255, 44.531105, 41.673203>,  <35.882793, 44.789062, 41.472340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113255, 44.531105, 41.673203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817331, -0.457976, 0.349612,
		0.004515, -0.611860, -0.790953,
		0.576151, -0.644892, 0.502160,
		36.286098, 44.337639, 41.823849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745155, 44.127747, 41.247959>,  <35.882793, 44.789062, 41.472340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745155, 44.127747, 41.247959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870956, 44.053925, 41.620415>,  <35.946438, 44.009632, 41.843887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870956, 44.053925, 41.620415>,  <35.745155, 44.127747, 41.247959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870956, 44.053925, 41.620415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849050, -0.493349, 0.188998,
		0.424498, -0.850028, -0.311855,
		0.314507, -0.184552, 0.931142,
		35.965309, 43.998558, 41.899757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483871, 43.515343, 41.374199>,  <35.745155, 44.127747, 41.247959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483871, 43.515343, 41.374199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572598, 43.666252, 41.733856>,  <35.625835, 43.756798, 41.949650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572598, 43.666252, 41.733856>,  <35.483871, 43.515343, 41.374199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572598, 43.666252, 41.733856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838469, -0.396922, 0.373394,
		0.497761, -0.836732, 0.228285,
		0.221820, 0.377271, 0.899145,
		35.639145, 43.779434, 42.003601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309528, 42.986755, 41.764370>,  <35.483871, 43.515343, 41.374199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309528, 42.986755, 41.764370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314579, 43.286224, 42.029495>,  <35.317612, 43.465908, 42.188572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314579, 43.286224, 42.029495>,  <35.309528, 42.986755, 41.764370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314579, 43.286224, 42.029495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730285, -0.445886, 0.517562,
		0.683026, -0.490580, 0.541116,
		0.012630, 0.748677, 0.662815,
		35.318367, 43.510826, 42.228340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290546, 42.681156, 42.448360>,  <35.309528, 42.986755, 41.764370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290546, 42.681156, 42.448360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.174484, 43.062607, 42.480389>,  <35.104847, 43.291477, 42.499607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.174484, 43.062607, 42.480389>,  <35.290546, 42.681156, 42.448360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174484, 43.062607, 42.480389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773778, -0.283015, 0.566719,
		0.563099, 0.102476, 0.820011,
		-0.290151, 0.953625, 0.080071,
		35.087440, 43.348694, 42.504410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334507, 42.718559, 43.116344>,  <35.290546, 42.681156, 42.448360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334507, 42.718559, 43.116344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110374, 43.015785, 42.969978>,  <34.975895, 43.194118, 42.882160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110374, 43.015785, 42.969978>,  <35.334507, 42.718559, 43.116344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110374, 43.015785, 42.969978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671812, -0.149328, 0.725513,
		0.484460, 0.652351, 0.582870,
		-0.560328, 0.743061, -0.365914,
		34.942276, 43.238705, 42.860203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017487, 42.639164, 43.492138>,  <35.334507, 42.718559, 43.116344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017487, 42.639164, 43.492138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069859, 42.251083, 43.573681>,  <36.101284, 42.018234, 43.622608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069859, 42.251083, 43.573681>,  <36.017487, 42.639164, 43.492138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069859, 42.251083, 43.573681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705852, -0.053164, -0.706362,
		0.696154, 0.236379, 0.677860,
		0.130932, -0.970205, 0.203859,
		36.109138, 41.960022, 43.634838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768734, 42.571095, 43.546310>,  <36.017487, 42.639164, 43.492138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768734, 42.571095, 43.546310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.620201, 42.207367, 43.471214>,  <36.531082, 41.989132, 43.426155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.620201, 42.207367, 43.471214>,  <36.768734, 42.571095, 43.546310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620201, 42.207367, 43.471214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688988, -0.134311, -0.712219,
		0.622419, -0.393826, 0.676384,
		-0.371336, -0.909319, -0.187744,
		36.508801, 41.934570, 43.414890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257549, 42.151699, 43.601490>,  <36.768734, 42.571095, 43.546310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257549, 42.151699, 43.601490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004967, 41.957855, 43.359360>,  <36.853416, 41.841549, 43.214081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004967, 41.957855, 43.359360>,  <37.257549, 42.151699, 43.601490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004967, 41.957855, 43.359360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760749, -0.236081, -0.604588,
		0.150085, -0.842269, 0.517743,
		-0.631455, -0.484612, -0.605323,
		36.815529, 41.812473, 43.177761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318783, 41.496319, 43.730160>,  <37.257549, 42.151699, 43.601490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318783, 41.496319, 43.730160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.212341, 41.499763, 43.344597>,  <37.148476, 41.501831, 43.113258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.212341, 41.499763, 43.344597>,  <37.318783, 41.496319, 43.730160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212341, 41.499763, 43.344597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786841, -0.575704, -0.222367,
		-0.556840, -0.817613, 0.146419,
		-0.266104, 0.008615, -0.963906,
		37.132511, 41.502350, 43.055424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504456, 40.755192, 43.514355>,  <37.318783, 41.496319, 43.730160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504456, 40.755192, 43.514355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458027, 40.982849, 43.188751>,  <37.430172, 41.119442, 42.993389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458027, 40.982849, 43.188751>,  <37.504456, 40.755192, 43.514355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458027, 40.982849, 43.188751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721847, -0.514605, -0.462729,
		-0.682250, -0.641297, -0.351101,
		-0.116068, 0.569139, -0.814008,
		37.423206, 41.153591, 42.944550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570763, 40.253944, 43.050358>,  <37.504456, 40.755192, 43.514355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570763, 40.253944, 43.050358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644009, 40.610413, 42.884331>,  <37.687958, 40.824295, 42.784714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644009, 40.610413, 42.884331>,  <37.570763, 40.253944, 43.050358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644009, 40.610413, 42.884331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903857, -0.318678, -0.285457,
		-0.386665, -0.322891, -0.863847,
		0.183118, 0.891171, -0.415069,
		37.698944, 40.877766, 42.759811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898010, 40.036106, 42.439022>,  <37.570763, 40.253944, 43.050358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898010, 40.036106, 42.439022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991486, 40.415024, 42.526676>,  <38.047569, 40.642376, 42.579269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991486, 40.415024, 42.526676>,  <37.898010, 40.036106, 42.439022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991486, 40.415024, 42.526676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939872, -0.162351, -0.300470,
		-0.249058, 0.276174, -0.928277,
		0.233689, 0.947296, 0.219133,
		38.061592, 40.699211, 42.592415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433743, 40.176788, 42.004761>,  <37.898010, 40.036106, 42.439022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433743, 40.176788, 42.004761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485291, 40.511093, 42.218262>,  <38.516220, 40.711678, 42.346363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485291, 40.511093, 42.218262>,  <38.433743, 40.176788, 42.004761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485291, 40.511093, 42.218262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984788, -0.044595, -0.167938,
		-0.116554, 0.547273, -0.828799,
		0.128868, 0.835766, 0.533750,
		38.523952, 40.761822, 42.378387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877666, 40.534706, 41.592762>,  <38.433743, 40.176788, 42.004761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877666, 40.534706, 41.592762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.915882, 40.680008, 41.963474>,  <38.938812, 40.767189, 42.185902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.915882, 40.680008, 41.963474>,  <38.877666, 40.534706, 41.592762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915882, 40.680008, 41.963474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992836, 0.032331, -0.115024,
		-0.071747, 0.931129, -0.357562,
		0.095542, 0.363253, 0.926779,
		38.944546, 40.788982, 42.241508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242699, 41.116310, 41.541668>,  <38.877666, 40.534706, 41.592762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242699, 41.116310, 41.541668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288712, 41.002342, 41.922318>,  <39.316319, 40.933964, 42.150707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288712, 41.002342, 41.922318>,  <39.242699, 41.116310, 41.541668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288712, 41.002342, 41.922318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993358, 0.035767, -0.109368,
		-0.002876, 0.957885, 0.287137,
		0.115032, -0.284915, 0.951625,
		39.323219, 40.916866, 42.207806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714645, 41.581219, 41.823460>,  <39.242699, 41.116310, 41.541668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714645, 41.581219, 41.823460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.709099, 41.275063, 42.080826>,  <39.705772, 41.091370, 42.235245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.709099, 41.275063, 42.080826>,  <39.714645, 41.581219, 41.823460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709099, 41.275063, 42.080826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981832, 0.111365, 0.153633,
		-0.189243, 0.633853, 0.749945,
		-0.013863, -0.765394, 0.643413,
		39.704941, 41.045444, 42.273849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187271, 41.835693, 42.309574>,  <39.714645, 41.581219, 41.823460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187271, 41.835693, 42.309574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.182472, 41.438896, 42.359863>,  <40.179592, 41.200817, 42.390038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.182472, 41.438896, 42.359863>,  <40.187271, 41.835693, 42.309574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182472, 41.438896, 42.359863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994660, 0.001052, 0.103203,
		-0.102509, 0.126290, 0.986683,
		-0.011995, -0.991993, 0.125723,
		40.178875, 41.141300, 42.397579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582699, 41.618267, 42.930443>,  <40.187271, 41.835693, 42.309574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582699, 41.618267, 42.930443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.575584, 41.274857, 42.725460>,  <40.571316, 41.068810, 42.602470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.575584, 41.274857, 42.725460>,  <40.582699, 41.618267, 42.930443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575584, 41.274857, 42.725460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994604, -0.067587, 0.078705,
		-0.102206, -0.508295, 0.855097,
		-0.017788, -0.858527, -0.512460,
		40.570248, 41.017300, 42.571724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770660, 40.998829, 43.469131>,  <40.582699, 41.618267, 42.930443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770660, 40.998829, 43.469131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863552, 40.963577, 43.081669>,  <40.919289, 40.942425, 42.849190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863552, 40.963577, 43.081669>,  <40.770660, 40.998829, 43.469131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863552, 40.963577, 43.081669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959988, -0.139466, 0.242843,
		-0.156497, -0.986297, 0.052216,
		0.232233, -0.088131, -0.968659,
		40.933224, 40.937138, 42.791073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429024, 41.315006, 43.530647>,  <40.770660, 40.998829, 43.469131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429024, 41.315006, 43.530647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.403999, 41.556755, 43.212952>,  <41.388985, 41.701805, 43.022335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.403999, 41.556755, 43.212952>,  <41.429024, 41.315006, 43.530647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403999, 41.556755, 43.212952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241187, -0.781371, -0.575577,
		-0.968460, 0.155552, 0.194650,
		-0.062561, 0.604370, -0.794243,
		41.385231, 41.738068, 42.974678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433403, 40.603245, 43.791794>,  <41.429024, 41.315006, 43.530647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433403, 40.603245, 43.791794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.771690, 40.727028, 43.965687>,  <41.974663, 40.801300, 44.070023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.771690, 40.727028, 43.965687>,  <41.433403, 40.603245, 43.791794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771690, 40.727028, 43.965687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500405, 0.176934, 0.847520,
		0.185367, -0.934302, 0.304498,
		0.845715, 0.309475, 0.434731,
		42.025406, 40.819866, 44.096107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613064, 40.266327, 44.405415>,  <41.433403, 40.603245, 43.791794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613064, 40.266327, 44.405415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.788383, 40.618637, 44.477119>,  <41.893574, 40.830021, 44.520142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.788383, 40.618637, 44.477119>,  <41.613064, 40.266327, 44.405415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788383, 40.618637, 44.477119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602048, 0.139593, 0.786163,
		0.667407, -0.452497, 0.591451,
		0.438298, 0.880773, 0.179260,
		41.919872, 40.882870, 44.530899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053776, 40.209293, 44.976452>,  <41.613064, 40.266327, 44.405415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053776, 40.209293, 44.976452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.906319, 40.577103, 44.921932>,  <41.817844, 40.797791, 44.889221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.906319, 40.577103, 44.921932>,  <42.053776, 40.209293, 44.976452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906319, 40.577103, 44.921932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619343, -0.133614, 0.773667,
		0.693195, 0.369621, 0.618757,
		-0.368638, 0.919526, -0.136301,
		41.795727, 40.852959, 44.881042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138119, 40.625885, 45.535824>,  <42.053776, 40.209293, 44.976452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138119, 40.625885, 45.535824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.826389, 40.797379, 45.353027>,  <41.639351, 40.900272, 45.243347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.826389, 40.797379, 45.353027>,  <42.138119, 40.625885, 45.535824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826389, 40.797379, 45.353027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570094, -0.182401, 0.801076,
		0.260089, 0.884828, 0.386566,
		-0.779324, 0.428730, -0.456995,
		41.592590, 40.925999, 45.215927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817917, 40.995602, 46.078846>,  <42.138119, 40.625885, 45.535824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817917, 40.995602, 46.078846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.539185, 40.970047, 45.793091>,  <41.371944, 40.954716, 45.621639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.539185, 40.970047, 45.793091>,  <41.817917, 40.995602, 46.078846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539185, 40.970047, 45.793091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693423, -0.194518, 0.693778,
		-0.183284, 0.978816, 0.091245,
		-0.696830, -0.063887, -0.714386,
		41.330135, 40.950882, 45.578773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280457, 41.415997, 46.294819>,  <41.817917, 40.995602, 46.078846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280457, 41.415997, 46.294819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.088409, 41.167099, 46.047497>,  <40.973179, 41.017761, 45.899105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.088409, 41.167099, 46.047497>,  <41.280457, 41.415997, 46.294819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088409, 41.167099, 46.047497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672268, -0.191791, 0.715033,
		-0.563508, 0.758969, -0.326229,
		-0.480120, -0.622240, -0.618306,
		40.944374, 40.980427, 45.862003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549503, 41.635590, 46.331547>,  <41.280457, 41.415997, 46.294819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549503, 41.635590, 46.331547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.566475, 41.265831, 46.179920>,  <40.576656, 41.043976, 46.088943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.566475, 41.265831, 46.179920>,  <40.549503, 41.635590, 46.331547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566475, 41.265831, 46.179920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815089, -0.251437, 0.521928,
		-0.577780, 0.286826, -0.764134,
		0.042429, -0.924398, -0.379064,
		40.579205, 40.988510, 46.066200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883781, 41.565601, 46.033428>,  <40.549503, 41.635590, 46.331547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883781, 41.565601, 46.033428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.045620, 41.207794, 46.109482>,  <40.142723, 40.993111, 46.155113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.045620, 41.207794, 46.109482>,  <39.883781, 41.565601, 46.033428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045620, 41.207794, 46.109482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865865, -0.307805, 0.394378,
		-0.294250, -0.324197, -0.899062,
		0.404592, -0.894512, 0.190140,
		40.166996, 40.939442, 46.166523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340225, 41.122520, 45.839851>,  <39.883781, 41.565601, 46.033428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340225, 41.122520, 45.839851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.577553, 40.899559, 46.072151>,  <39.719952, 40.765781, 46.211533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.577553, 40.899559, 46.072151>,  <39.340225, 41.122520, 45.839851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577553, 40.899559, 46.072151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795743, -0.297249, 0.527671,
		-0.121499, -0.775205, -0.619915,
		0.593323, -0.557405, 0.580748,
		39.755550, 40.732338, 46.246376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022190, 40.573586, 45.969048>,  <39.340225, 41.122520, 45.839851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022190, 40.573586, 45.969048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288174, 40.571777, 46.267792>,  <39.447765, 40.570694, 46.447041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288174, 40.571777, 46.267792>,  <39.022190, 40.573586, 45.969048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288174, 40.571777, 46.267792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740743, -0.131908, 0.658711,
		0.095544, -0.991252, -0.091057,
		0.664960, -0.004514, 0.746865,
		39.487663, 40.570423, 46.491852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708565, 40.052876, 46.400497>,  <39.022190, 40.573586, 45.969048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708565, 40.052876, 46.400497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.968109, 40.261444, 46.622166>,  <39.123837, 40.386585, 46.755169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.968109, 40.261444, 46.622166>,  <38.708565, 40.052876, 46.400497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968109, 40.261444, 46.622166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648397, -0.002250, 0.761299,
		0.398202, -0.853298, 0.336627,
		0.648858, 0.521418, 0.554172,
		39.162766, 40.417870, 46.788418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785900, 39.670868, 46.983360>,  <38.708565, 40.052876, 46.400497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785900, 39.670868, 46.983360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.921944, 40.029076, 47.098160>,  <39.003571, 40.243999, 47.167042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.921944, 40.029076, 47.098160>,  <38.785900, 39.670868, 46.983360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921944, 40.029076, 47.098160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578119, -0.041599, 0.814891,
		0.741690, -0.443074, 0.503569,
		0.340109, 0.895519, 0.287003,
		39.023975, 40.297729, 47.184261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037838, 39.577068, 47.633427>,  <38.785900, 39.670868, 46.983360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037838, 39.577068, 47.633427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.940411, 39.963806, 47.602715>,  <38.881954, 40.195847, 47.584286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.940411, 39.963806, 47.602715>,  <39.037838, 39.577068, 47.633427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940411, 39.963806, 47.602715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617551, -0.093554, 0.780947,
		0.747868, 0.237629, 0.619860,
		-0.243566, 0.966840, -0.076782,
		38.867340, 40.253857, 47.579681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062046, 39.913254, 48.316086>,  <39.037838, 39.577068, 47.633427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062046, 39.913254, 48.316086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.824493, 40.155571, 48.104305>,  <38.681961, 40.300961, 47.977238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.824493, 40.155571, 48.104305>,  <39.062046, 39.913254, 48.316086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824493, 40.155571, 48.104305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626723, 0.064325, 0.776583,
		0.504506, 0.793018, 0.341463,
		-0.593879, 0.605793, -0.529454,
		38.646328, 40.337311, 47.945469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826958, 40.321487, 48.780186>,  <39.062046, 39.913254, 48.316086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826958, 40.321487, 48.780186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.574692, 40.415291, 48.484276>,  <38.423332, 40.471573, 48.306728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.574692, 40.415291, 48.484276>,  <38.826958, 40.321487, 48.780186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574692, 40.415291, 48.484276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739448, 0.107729, 0.664539,
		0.235534, 0.966127, 0.105465,
		-0.630667, 0.234507, -0.739774,
		38.385490, 40.485641, 48.262344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366364, 40.889217, 48.915302>,  <38.826958, 40.321487, 48.780186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366364, 40.889217, 48.915302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.174084, 40.666595, 48.644253>,  <38.058716, 40.533024, 48.481625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.174084, 40.666595, 48.644253>,  <38.366364, 40.889217, 48.915302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174084, 40.666595, 48.644253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829476, 0.037960, 0.557251,
		-0.284418, 0.829943, -0.479896,
		-0.480704, -0.556555, -0.677622,
		38.029873, 40.499630, 48.440968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896603, 41.327888, 48.962318>,  <38.366364, 40.889217, 48.915302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896603, 41.327888, 48.962318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774860, 40.984344, 48.797523>,  <37.701813, 40.778217, 48.698647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774860, 40.984344, 48.797523>,  <37.896603, 41.327888, 48.962318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774860, 40.984344, 48.797523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837579, 0.035304, 0.545174,
		-0.453682, 0.510996, -0.730106,
		-0.304358, -0.858857, -0.411983,
		37.683552, 40.726688, 48.673927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153774, 41.328800, 49.037716>,  <37.896603, 41.327888, 48.962318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153774, 41.328800, 49.037716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184601, 40.949554, 48.914337>,  <37.203094, 40.722008, 48.840309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184601, 40.949554, 48.914337>,  <37.153774, 41.328800, 49.037716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184601, 40.949554, 48.914337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797309, -0.244351, 0.551898,
		-0.598632, 0.203396, -0.774771,
		0.077062, -0.948115, -0.308446,
		37.207718, 40.665119, 48.821804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476273, 41.175282, 48.762508>,  <37.153774, 41.328800, 49.037716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476273, 41.175282, 48.762508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660942, 40.834229, 48.860386>,  <36.771744, 40.629597, 48.919113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660942, 40.834229, 48.860386>,  <36.476273, 41.175282, 48.762508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660942, 40.834229, 48.860386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770889, -0.249177, 0.586209,
		-0.438848, -0.459271, -0.772323,
		0.461674, -0.852632, 0.244696,
		36.799446, 40.578438, 48.933796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918293, 40.679615, 48.702827>,  <36.476273, 41.175282, 48.762508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918293, 40.679615, 48.702827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193489, 40.502136, 48.932541>,  <36.358608, 40.395649, 49.070370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193489, 40.502136, 48.932541>,  <35.918293, 40.679615, 48.702827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193489, 40.502136, 48.932541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714256, -0.273875, 0.644074,
		-0.128487, -0.853305, -0.505333,
		0.687990, -0.443692, 0.574288,
		36.399887, 40.369026, 49.104828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590729, 40.062889, 48.949440>,  <35.918293, 40.679615, 48.702827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590729, 40.062889, 48.949440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883698, 40.142105, 49.210003>,  <36.059479, 40.189636, 49.366341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883698, 40.142105, 49.210003>,  <35.590729, 40.062889, 48.949440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883698, 40.142105, 49.210003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599461, -0.266046, 0.754895,
		0.322806, -0.943398, -0.076140,
		0.732422, 0.198042, 0.651412,
		36.103424, 40.201519, 49.405426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617786, 39.463619, 49.447788>,  <35.590729, 40.062889, 48.949440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617786, 39.463619, 49.447788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787331, 39.790176, 49.604687>,  <35.889057, 39.986111, 49.698826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787331, 39.790176, 49.604687>,  <35.617786, 39.463619, 49.447788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787331, 39.790176, 49.604687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436207, -0.195537, 0.878344,
		0.793768, -0.543392, 0.273234,
		0.423858, 0.816388, 0.392243,
		35.914490, 40.035091, 49.722359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922318, 39.244011, 50.138695>,  <35.617786, 39.463619, 49.447788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922318, 39.244011, 50.138695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.884529, 39.641678, 50.159523>,  <35.861855, 39.880276, 50.172020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.884529, 39.641678, 50.159523>,  <35.922318, 39.244011, 50.138695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884529, 39.641678, 50.159523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274711, -0.076307, 0.958494,
		0.956874, 0.076247, 0.280317,
		-0.094473, 0.994165, 0.052071,
		35.856186, 39.939926, 50.175144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295200, 39.383125, 50.683941>,  <35.922318, 39.244011, 50.138695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295200, 39.383125, 50.683941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.061996, 39.704163, 50.633438>,  <35.922073, 39.896786, 50.603138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.061996, 39.704163, 50.633438>,  <36.295200, 39.383125, 50.683941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061996, 39.704163, 50.633438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278894, -0.051743, 0.958927,
		0.763099, 0.594274, 0.254006,
		-0.583008, 0.802597, -0.126255,
		35.887093, 39.944942, 50.595562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478596, 39.871208, 51.232346>,  <36.295200, 39.383125, 50.683941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478596, 39.871208, 51.232346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106285, 39.958664, 51.115143>,  <35.882900, 40.011139, 51.044819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106285, 39.958664, 51.115143>,  <36.478596, 39.871208, 51.232346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106285, 39.958664, 51.115143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312010, -0.057336, 0.948347,
		0.190545, 0.974120, 0.121584,
		-0.930775, 0.218639, -0.293010,
		35.827053, 40.024254, 51.027241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287678, 40.266506, 51.751839>,  <36.478596, 39.871208, 51.232346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287678, 40.266506, 51.751839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930187, 40.226204, 51.576977>,  <35.715694, 40.202023, 51.472061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930187, 40.226204, 51.576977>,  <36.287678, 40.266506, 51.751839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930187, 40.226204, 51.576977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446019, 0.094893, 0.889979,
		-0.048187, 0.990376, -0.129747,
		-0.893725, -0.100755, -0.437154,
		35.662071, 40.195976, 51.445831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989471, 40.815742, 51.945610>,  <36.287678, 40.266506, 51.751839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989471, 40.815742, 51.945610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711655, 40.542938, 51.853981>,  <35.544964, 40.379257, 51.799004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711655, 40.542938, 51.853981>,  <35.989471, 40.815742, 51.945610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711655, 40.542938, 51.853981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545434, 0.291514, 0.785825,
		-0.469164, 0.670731, -0.574460,
		-0.694540, -0.682011, -0.229072,
		35.503292, 40.338333, 51.785259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926960, 41.459629, 51.555012>,  <35.989471, 40.815742, 51.945610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926960, 41.459629, 51.555012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953773, 41.855301, 51.607204>,  <35.969860, 42.092705, 51.638519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953773, 41.855301, 51.607204>,  <35.926960, 41.459629, 51.555012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953773, 41.855301, 51.607204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679637, 0.050472, -0.731810,
		-0.730479, 0.137733, -0.668902,
		0.067033, 0.989183, 0.130477,
		35.973885, 42.152054, 51.646347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916744, 41.820904, 50.837929>,  <35.926960, 41.459629, 51.555012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916744, 41.820904, 50.837929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050606, 42.125175, 51.060413>,  <36.130920, 42.307739, 51.193905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050606, 42.125175, 51.060413>,  <35.916744, 41.820904, 50.837929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050606, 42.125175, 51.060413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410107, 0.413855, -0.812734,
		-0.848423, 0.500088, -0.173464,
		0.334650, 0.760681, 0.556214,
		36.151001, 42.353378, 51.227276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803478, 42.429031, 50.435333>,  <35.916744, 41.820904, 50.837929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803478, 42.429031, 50.435333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102825, 42.493881, 50.692600>,  <36.282433, 42.532791, 50.846958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102825, 42.493881, 50.692600>,  <35.803478, 42.429031, 50.435333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102825, 42.493881, 50.692600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576322, 0.321051, -0.751518,
		-0.328330, 0.933082, 0.146827,
		0.748367, 0.162127, 0.643166,
		36.327335, 42.542519, 50.885551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220989, 43.120831, 50.182384>,  <35.803478, 42.429031, 50.435333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220989, 43.120831, 50.182384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457527, 42.929764, 50.442276>,  <36.599449, 42.815125, 50.598213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457527, 42.929764, 50.442276>,  <36.220989, 43.120831, 50.182384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457527, 42.929764, 50.442276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803887, 0.285351, -0.521863,
		0.063873, 0.830911, 0.552728,
		0.591343, -0.477663, 0.649732,
		36.634930, 42.786465, 50.637196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581490, 43.679707, 50.414127>,  <36.220989, 43.120831, 50.182384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581490, 43.679707, 50.414127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772095, 43.336487, 50.490742>,  <36.886456, 43.130554, 50.536709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772095, 43.336487, 50.490742>,  <36.581490, 43.679707, 50.414127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772095, 43.336487, 50.490742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823674, 0.359532, -0.438517,
		0.307407, 0.366721, 0.878076,
		0.476509, -0.858052, 0.191536,
		36.915047, 43.079071, 50.548203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
