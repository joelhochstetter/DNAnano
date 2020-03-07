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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.763428, 52.279594, 49.584904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776005, 52.581909, 49.846531>,  <36.783550, 52.763298, 50.003506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776005, 52.581909, 49.846531>,  <36.763428, 52.279594, 49.584904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776005, 52.581909, 49.846531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891894, -0.316587, 0.322951,
		0.451150, 0.573201, -0.684035,
		0.031441, 0.755786, 0.654064,
		36.785439, 52.808643, 50.042751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272804, 52.733139, 49.561440>,  <36.763428, 52.279594, 49.584904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272804, 52.733139, 49.561440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200291, 52.726479, 49.954754>,  <37.156784, 52.722481, 50.190742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200291, 52.726479, 49.954754>,  <37.272804, 52.733139, 49.561440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200291, 52.726479, 49.954754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976850, -0.118524, 0.178089,
		0.113578, 0.992812, 0.037752,
		-0.181283, -0.016651, 0.983290,
		37.145905, 52.721481, 50.249741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628510, 53.356113, 49.286736>,  <37.272804, 52.733139, 49.561440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628510, 53.356113, 49.286736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545055, 53.582504, 49.605770>,  <37.494984, 53.718338, 49.797192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545055, 53.582504, 49.605770>,  <37.628510, 53.356113, 49.286736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545055, 53.582504, 49.605770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656483, -0.523446, 0.543170,
		0.724916, 0.636922, -0.262349,
		-0.208632, 0.565981, 0.797583,
		37.482468, 53.752300, 49.845043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257523, 53.698334, 49.672707>,  <37.628510, 53.356113, 49.286736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257523, 53.698334, 49.672707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956467, 53.655815, 49.932625>,  <37.775833, 53.630306, 50.088577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956467, 53.655815, 49.932625>,  <38.257523, 53.698334, 49.672707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956467, 53.655815, 49.932625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645194, -0.315977, 0.695617,
		0.131383, 0.942794, 0.306395,
		-0.752638, -0.106292, 0.649799,
		37.730675, 53.623928, 50.127563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594624, 53.189236, 50.178185>,  <38.257523, 53.698334, 49.672707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594624, 53.189236, 50.178185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680473, 53.579777, 50.167824>,  <38.731983, 53.814102, 50.161606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680473, 53.579777, 50.167824>,  <38.594624, 53.189236, 50.178185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680473, 53.579777, 50.167824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937518, -0.213384, -0.274823,
		-0.273852, 0.034698, -0.961146,
		0.214629, 0.976352, -0.025905,
		38.744862, 53.872681, 50.160053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060089, 53.326817, 49.608242>,  <38.594624, 53.189236, 50.178185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060089, 53.326817, 49.608242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128334, 53.600887, 49.891487>,  <39.169281, 53.765331, 50.061432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128334, 53.600887, 49.891487>,  <39.060089, 53.326817, 49.608242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128334, 53.600887, 49.891487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967760, 0.018620, -0.251184,
		-0.185292, 0.728135, -0.659914,
		0.170608, 0.685181, 0.708110,
		39.179516, 53.806442, 50.103920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443291, 53.927456, 49.340714>,  <39.060089, 53.326817, 49.608242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443291, 53.927456, 49.340714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494106, 53.861893, 49.732018>,  <39.524597, 53.822556, 49.966801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494106, 53.861893, 49.732018>,  <39.443291, 53.927456, 49.340714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494106, 53.861893, 49.732018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976502, 0.193755, -0.094349,
		-0.174079, 0.967261, 0.184667,
		0.127041, -0.163904, 0.978262,
		39.532219, 53.812721, 50.025497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906170, 54.531704, 49.715836>,  <39.443291, 53.927456, 49.340714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906170, 54.531704, 49.715836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965073, 54.164650, 49.863487>,  <40.000416, 53.944416, 49.952080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965073, 54.164650, 49.863487>,  <39.906170, 54.531704, 49.715836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965073, 54.164650, 49.863487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984848, 0.170592, 0.031201,
		-0.091602, 0.358942, 0.928854,
		0.147255, -0.917638, 0.369130,
		40.009251, 53.889359, 49.974228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203705, 54.586609, 50.390778>,  <39.906170, 54.531704, 49.715836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203705, 54.586609, 50.390778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302349, 54.243736, 50.209923>,  <40.361534, 54.038013, 50.101410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302349, 54.243736, 50.209923>,  <40.203705, 54.586609, 50.390778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302349, 54.243736, 50.209923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969002, 0.210955, 0.128580,
		-0.014835, -0.469835, 0.882630,
		0.246606, -0.857177, -0.452141,
		40.376331, 53.986584, 50.074280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683369, 54.277409, 50.769012>,  <40.203705, 54.586609, 50.390778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683369, 54.277409, 50.769012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743355, 54.125912, 50.403706>,  <40.779346, 54.035015, 50.184521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743355, 54.125912, 50.403706>,  <40.683369, 54.277409, 50.769012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743355, 54.125912, 50.403706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988245, 0.029696, 0.149965,
		-0.029678, -0.925025, 0.378744,
		0.149969, -0.378743, -0.913271,
		40.788345, 54.012287, 50.129723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157509, 53.671768, 50.820564>,  <40.683369, 54.277409, 50.769012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157509, 53.671768, 50.820564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159325, 53.864540, 50.470085>,  <41.160416, 53.980202, 50.259796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159325, 53.864540, 50.470085>,  <41.157509, 53.671768, 50.820564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159325, 53.864540, 50.470085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987540, -0.139994, -0.071882,
		-0.157304, -0.864955, -0.476558,
		0.004540, 0.481927, -0.876199,
		41.160686, 54.009117, 50.207226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764446, 53.212910, 50.559914>,  <41.157509, 53.671768, 50.820564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764446, 53.212910, 50.559914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725357, 52.816433, 50.595654>,  <41.701904, 52.578545, 50.617096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725357, 52.816433, 50.595654>,  <41.764446, 53.212910, 50.559914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725357, 52.816433, 50.595654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922804, -0.056625, 0.381085,
		-0.372670, 0.119693, 0.920212,
		-0.097721, -0.991195, 0.089351,
		41.696041, 52.519073, 50.622459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363247, 53.180866, 50.921371>,  <41.764446, 53.212910, 50.559914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363247, 53.180866, 50.921371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627453, 53.254166, 51.212612>,  <42.785976, 53.298145, 51.387356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627453, 53.254166, 51.212612>,  <42.363247, 53.180866, 50.921371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627453, 53.254166, 51.212612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523743, -0.582393, 0.621701,
		0.537969, -0.791984, -0.288705,
		0.660517, 0.183249, 0.728105,
		42.825607, 53.309139, 51.431046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828373, 52.606995, 51.187996>,  <42.363247, 53.180866, 50.921371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828373, 52.606995, 51.187996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734879, 52.836956, 51.501644>,  <42.678780, 52.974934, 51.689835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734879, 52.836956, 51.501644>,  <42.828373, 52.606995, 51.187996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734879, 52.836956, 51.501644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123764, -0.817496, 0.562479,
		0.964390, 0.034428, 0.262234,
		-0.233740, 0.574904, 0.784124,
		42.664757, 53.009426, 51.736881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083569, 52.330036, 51.814724>,  <42.828373, 52.606995, 51.187996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083569, 52.330036, 51.814724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805683, 52.576675, 51.962875>,  <42.638950, 52.724659, 52.051765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805683, 52.576675, 51.962875>,  <43.083569, 52.330036, 51.814724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805683, 52.576675, 51.962875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407825, -0.761816, 0.503304,
		0.592496, 0.198602, 0.780708,
		-0.694713, 0.616598, 0.370378,
		42.597271, 52.761654, 52.073990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049965, 52.106411, 52.521084>,  <43.083569, 52.330036, 51.814724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049965, 52.106411, 52.521084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689617, 52.217415, 52.387566>,  <42.473408, 52.284016, 52.307453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689617, 52.217415, 52.387566>,  <43.049965, 52.106411, 52.521084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689617, 52.217415, 52.387566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400932, -0.826674, 0.394795,
		-0.166386, 0.489490, 0.855988,
		-0.900871, 0.277505, -0.333799,
		42.419357, 52.300667, 52.287426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403378, 52.476284, 53.066448>,  <43.049965, 52.106411, 52.521084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403378, 52.476284, 53.066448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469090, 52.396950, 52.679939>,  <43.508518, 52.349350, 52.448036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469090, 52.396950, 52.679939>,  <43.403378, 52.476284, 53.066448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469090, 52.396950, 52.679939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977905, -0.161128, -0.133187,
		-0.129276, 0.966799, -0.220425,
		0.164281, -0.198337, -0.966268,
		43.518375, 52.337448, 52.390060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897633, 52.824562, 53.545631>,  <43.403378, 52.476284, 53.066448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897633, 52.824562, 53.545631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117611, 52.998734, 53.830719>,  <44.249599, 53.103237, 54.001770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117611, 52.998734, 53.830719>,  <43.897633, 52.824562, 53.545631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117611, 52.998734, 53.830719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829836, -0.381428, -0.407291,
		0.094506, 0.815425, -0.571096,
		0.549947, 0.435424, 0.712716,
		44.282597, 53.129360, 54.044533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542656, 53.184731, 53.265862>,  <43.897633, 52.824562, 53.545631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542656, 53.184731, 53.265862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618130, 53.109310, 53.651367>,  <44.663414, 53.064056, 53.882671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618130, 53.109310, 53.651367>,  <44.542656, 53.184731, 53.265862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618130, 53.109310, 53.651367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838316, -0.480229, -0.258081,
		0.511491, 0.856637, 0.067453,
		0.188689, -0.188553, 0.963766,
		44.674736, 53.052746, 53.940498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119213, 53.503342, 53.458199>,  <44.542656, 53.184731, 53.265862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119213, 53.503342, 53.458199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045002, 53.157593, 53.645153>,  <45.000473, 52.950146, 53.757324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045002, 53.157593, 53.645153>,  <45.119213, 53.503342, 53.458199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045002, 53.157593, 53.645153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893122, -0.346680, -0.286612,
		0.409770, 0.364254, 0.836305,
		-0.185531, -0.864368, 0.467383,
		44.989342, 52.898281, 53.785366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168610, 53.924267, 54.047375>,  <45.119213, 53.503342, 53.458199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168610, 53.924267, 54.047375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869015, 54.187801, 54.019226>,  <44.689259, 54.345924, 54.002335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869015, 54.187801, 54.019226>,  <45.168610, 53.924267, 54.047375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869015, 54.187801, 54.019226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614664, -0.730541, -0.297486,
		-0.247408, -0.179555, 0.952129,
		-0.748985, 0.658840, -0.070376,
		44.644318, 54.385452, 53.998112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794636, 54.002670, 54.721321>,  <45.168610, 53.924267, 54.047375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.794636, 54.002670, 54.721321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794090, 53.611084, 54.639717>,  <44.793762, 53.376133, 54.590755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794090, 53.611084, 54.639717>,  <44.794636, 54.002670, 54.721321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794090, 53.611084, 54.639717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994717, 0.019614, -0.100769,
		0.102651, -0.203068, 0.973769,
		-0.001364, -0.978968, -0.204008,
		44.793682, 53.317394, 54.578514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393154, 53.823769, 54.811687>,  <44.794636, 54.002670, 54.721321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393154, 53.823769, 54.811687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311901, 53.482033, 54.620335>,  <45.263149, 53.276993, 54.505524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311901, 53.482033, 54.620335>,  <45.393154, 53.823769, 54.811687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311901, 53.482033, 54.620335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926149, -0.009080, -0.377049,
		0.317783, -0.519639, 0.793088,
		-0.203131, -0.854337, -0.478378,
		45.250961, 53.225731, 54.476822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994820, 53.313908, 54.918900>,  <45.393154, 53.823769, 54.811687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994820, 53.313908, 54.918900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816746, 53.254013, 54.565765>,  <45.709904, 53.218079, 54.353886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816746, 53.254013, 54.565765>,  <45.994820, 53.313908, 54.918900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816746, 53.254013, 54.565765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848895, 0.243159, -0.469310,
		0.284940, -0.958360, 0.018859,
		-0.445182, -0.149734, -0.882832,
		45.683189, 53.209091, 54.300915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.781311, 53.486897, 54.827034>,  <45.994820, 53.313908, 54.918900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.781311, 53.486897, 54.827034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890209, 53.223522, 54.546364>,  <46.955547, 53.065498, 54.377960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890209, 53.223522, 54.546364>,  <46.781311, 53.486897, 54.827034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.890209, 53.223522, 54.546364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227091, -0.664655, 0.711803,
		-0.935046, -0.353130, -0.031427,
		0.272247, -0.658432, -0.701676,
		46.971882, 53.025993, 54.335861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.965763, 54.188622, 55.195293>,  <46.781311, 53.486897, 54.827034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.965763, 54.188622, 55.195293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.987926, 53.893143, 55.463997>,  <47.001225, 53.715855, 55.625217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.987926, 53.893143, 55.463997>,  <46.965763, 54.188622, 55.195293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.987926, 53.893143, 55.463997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801219, 0.434357, 0.411559,
		-0.595800, 0.515423, 0.615923,
		0.055404, -0.738697, 0.671757,
		47.004547, 53.671535, 55.665524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210117, 54.526344, 55.853271>,  <46.965763, 54.188622, 55.195293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210117, 54.526344, 55.853271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280796, 54.140209, 55.930099>,  <47.323204, 53.908527, 55.976196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280796, 54.140209, 55.930099>,  <47.210117, 54.526344, 55.853271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.280796, 54.140209, 55.930099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723902, 0.259678, 0.639166,
		-0.666892, 0.026105, 0.744697,
		0.176696, -0.965342, 0.192075,
		47.333805, 53.850605, 55.987720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031849, 54.244770, 56.663754>,  <47.210117, 54.526344, 55.853271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031849, 54.244770, 56.663754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.353527, 54.093628, 56.480232>,  <47.546532, 54.002941, 56.370121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.353527, 54.093628, 56.480232>,  <47.031849, 54.244770, 56.663754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.353527, 54.093628, 56.480232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590240, 0.416869, 0.691258,
		-0.069937, -0.826707, 0.558270,
		0.804192, -0.377857, -0.458801,
		47.594784, 53.980270, 56.342590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.627850, 54.169270, 57.096695>,  <47.031849, 54.244770, 56.663754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.627850, 54.169270, 57.096695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.838303, 54.126030, 56.759293>,  <47.964577, 54.100086, 56.556850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.838303, 54.126030, 56.759293>,  <47.627850, 54.169270, 57.096695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.838303, 54.126030, 56.759293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804459, 0.384877, 0.452456,
		0.275733, -0.916615, 0.289462,
		0.526135, -0.108103, -0.843502,
		47.996143, 54.093597, 56.506241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.114792, 53.819889, 57.244022>,  <47.627850, 54.169270, 57.096695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.114792, 53.819889, 57.244022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.250320, 54.027863, 56.930367>,  <48.331638, 54.152649, 56.742172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.250320, 54.027863, 56.930367>,  <48.114792, 53.819889, 57.244022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.250320, 54.027863, 56.930367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880873, 0.117509, 0.458535,
		0.330552, -0.846084, -0.418183,
		0.338819, 0.519936, -0.784136,
		48.351967, 54.183842, 56.695126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.768864, 53.572685, 57.035568>,  <48.114792, 53.819889, 57.244022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.768864, 53.572685, 57.035568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.724220, 53.954529, 56.925102>,  <48.697433, 54.183636, 56.858822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.724220, 53.954529, 56.925102>,  <48.768864, 53.572685, 57.035568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.724220, 53.954529, 56.925102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875421, 0.225965, 0.427292,
		0.470300, -0.194074, -0.860902,
		-0.111607, 0.954607, -0.276168,
		48.690739, 54.240910, 56.842251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.373985, 53.832516, 56.748917>,  <48.768864, 53.572685, 57.035568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.373985, 53.832516, 56.748917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.171982, 54.133537, 56.917976>,  <49.050781, 54.314152, 57.019413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.171982, 54.133537, 56.917976>,  <49.373985, 53.832516, 56.748917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.171982, 54.133537, 56.917976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814339, 0.253148, 0.522272,
		0.286044, 0.607931, -0.740674,
		-0.505006, 0.752553, 0.422651,
		49.020481, 54.359303, 57.044773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.662819, 54.512840, 56.568375>,  <49.373985, 53.832516, 56.748917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.662819, 54.512840, 56.568375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.490528, 54.581207, 56.922836>,  <49.387154, 54.622227, 57.135513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.490528, 54.581207, 56.922836>,  <49.662819, 54.512840, 56.568375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.490528, 54.581207, 56.922836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782814, 0.559361, 0.272614,
		-0.449084, 0.811113, -0.374726,
		-0.430727, 0.170914, 0.886150,
		49.361309, 54.632481, 57.188683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.451336, 55.223957, 56.852505>,  <49.662819, 54.512840, 56.568375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.451336, 55.223957, 56.852505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.581196, 54.965496, 57.128792>,  <49.659111, 54.810417, 57.294563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.581196, 54.965496, 57.128792>,  <49.451336, 55.223957, 56.852505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.581196, 54.965496, 57.128792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712355, 0.647445, 0.270859,
		-0.622218, 0.404102, 0.670482,
		0.324646, -0.646155, 0.690716,
		49.678589, 54.771648, 57.336006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.317375, 55.315418, 57.712276>,  <49.451336, 55.223957, 56.852505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.317375, 55.315418, 57.712276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.655457, 55.117310, 57.631935>,  <49.858303, 54.998444, 57.583729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.655457, 55.117310, 57.631935>,  <49.317375, 55.315418, 57.712276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.655457, 55.117310, 57.631935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534445, 0.781348, 0.322280,
		-0.002679, -0.379736, 0.925091,
		0.845199, -0.495274, -0.200855,
		49.909016, 54.968727, 57.571678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.717701, 55.397484, 58.326061>,  <49.317375, 55.315418, 57.712276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.717701, 55.397484, 58.326061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.942131, 55.348293, 57.998627>,  <50.076790, 55.318779, 57.802166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.942131, 55.348293, 57.998627>,  <49.717701, 55.397484, 58.326061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.942131, 55.348293, 57.998627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663661, 0.657860, 0.356052,
		0.494725, -0.743031, 0.450723,
		0.561071, -0.122979, -0.818582,
		50.110451, 55.311401, 57.753052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.358574, 55.635105, 58.515270>,  <49.717701, 55.397484, 58.326061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.358574, 55.635105, 58.515270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.451813, 55.525398, 58.142082>,  <50.507755, 55.459572, 57.918167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.451813, 55.525398, 58.142082>,  <50.358574, 55.635105, 58.515270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.451813, 55.525398, 58.142082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925108, 0.358253, 0.125814,
		0.299734, -0.892429, 0.337239,
		0.233097, -0.274272, -0.932974,
		50.521740, 55.443115, 57.862190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.050728, 55.489677, 58.590973>,  <50.358574, 55.635105, 58.515270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.050728, 55.489677, 58.590973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.992149, 55.556168, 58.200912>,  <50.957005, 55.596062, 57.966877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.992149, 55.556168, 58.200912>,  <51.050728, 55.489677, 58.590973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.992149, 55.556168, 58.200912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937884, 0.336767, -0.083438,
		0.314529, -0.926799, -0.205221,
		-0.146442, 0.166230, -0.975152,
		50.948215, 55.606037, 57.908367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.429924, 54.971413, 58.127167>,  <51.050728, 55.489677, 58.590973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.429924, 54.971413, 58.127167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.411556, 55.329735, 57.950340>,  <51.400536, 55.544727, 57.844246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.411556, 55.329735, 57.950340>,  <51.429924, 54.971413, 58.127167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.411556, 55.329735, 57.950340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998894, 0.045673, -0.011204,
		0.010154, -0.442087, -0.896915,
		-0.045918, 0.895809, -0.442062,
		51.397781, 55.598476, 57.817722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.962460, 55.063572, 57.657978>,  <51.429924, 54.971413, 58.127167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.962460, 55.063572, 57.657978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.861767, 55.443951, 57.729912>,  <51.801353, 55.672176, 57.773071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.861767, 55.443951, 57.729912>,  <51.962460, 55.063572, 57.657978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.861767, 55.443951, 57.729912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963826, 0.263148, -0.042345,
		-0.087591, 0.162671, -0.982785,
		-0.251729, 0.950942, 0.179836,
		51.786247, 55.729233, 57.783863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.355793, 55.375256, 57.195309>,  <51.962460, 55.063572, 57.657978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.355793, 55.375256, 57.195309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.299065, 55.630177, 57.498291>,  <52.265030, 55.783131, 57.680080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.299065, 55.630177, 57.498291>,  <52.355793, 55.375256, 57.195309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.299065, 55.630177, 57.498291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935409, 0.336637, -0.108102,
		-0.323880, 0.693196, -0.643880,
		-0.141818, 0.637303, 0.757452,
		52.256519, 55.821369, 57.725525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.443924, 56.059998, 56.906830>,  <52.355793, 55.375256, 57.195309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.443924, 56.059998, 56.906830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.549744, 56.023746, 57.290871>,  <52.613235, 56.001995, 57.521297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.549744, 56.023746, 57.290871>,  <52.443924, 56.059998, 56.906830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.549744, 56.023746, 57.290871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915727, 0.335815, -0.220619,
		-0.302424, 0.937558, 0.171829,
		0.264546, -0.090628, 0.960105,
		52.629108, 55.996559, 57.578903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.796833, 56.626030, 57.040905>,  <52.443924, 56.059998, 56.906830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.796833, 56.626030, 57.040905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.940689, 56.386509, 57.327148>,  <53.027004, 56.242798, 57.498894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.940689, 56.386509, 57.327148>,  <52.796833, 56.626030, 57.040905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.940689, 56.386509, 57.327148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932226, 0.263581, -0.247951,
		-0.040146, 0.756280, 0.653015,
		0.359643, -0.598804, 0.715605,
		53.048580, 56.206867, 57.541832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.360016, 57.017349, 57.501328>,  <52.796833, 56.626030, 57.040905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.360016, 57.017349, 57.501328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.421635, 56.622490, 57.484322>,  <53.458607, 56.385574, 57.474117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.421635, 56.622490, 57.484322>,  <53.360016, 57.017349, 57.501328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.421635, 56.622490, 57.484322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962906, 0.159637, -0.217551,
		0.221542, -0.007427, 0.975122,
		0.154050, -0.987148, -0.042518,
		53.467850, 56.326347, 57.471565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.781178, 56.715775, 58.138107>,  <53.360016, 57.017349, 57.501328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.781178, 56.715775, 58.138107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.811172, 56.558315, 57.771629>,  <53.829170, 56.463840, 57.551743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.811172, 56.558315, 57.771629>,  <53.781178, 56.715775, 58.138107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.811172, 56.558315, 57.771629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990523, 0.135430, 0.022887,
		0.115071, -0.909230, 0.400075,
		0.074992, -0.393650, -0.916197,
		53.833672, 56.440220, 57.496769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.212425, 56.091553, 58.100533>,  <53.781178, 56.715775, 58.138107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.212425, 56.091553, 58.100533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.239418, 56.250244, 57.734352>,  <54.255615, 56.345459, 57.514645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.239418, 56.250244, 57.734352>,  <54.212425, 56.091553, 58.100533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.239418, 56.250244, 57.734352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988246, -0.152726, 0.006665,
		-0.137168, -0.905140, -0.402377,
		0.067486, 0.396733, -0.915450,
		54.259663, 56.369263, 57.459717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.654339, 55.645535, 57.570976>,  <54.212425, 56.091553, 58.100533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.654339, 55.645535, 57.570976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.674530, 56.040966, 57.514183>,  <54.686646, 56.278225, 57.480106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.674530, 56.040966, 57.514183>,  <54.654339, 55.645535, 57.570976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.674530, 56.040966, 57.514183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995346, -0.061478, -0.074205,
		-0.082087, -0.137578, -0.987084,
		0.050475, 0.988581, -0.141984,
		54.689674, 56.337540, 57.471588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.075642, 55.721645, 56.983532>,  <54.654339, 55.645535, 57.570976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.075642, 55.721645, 56.983532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.106384, 56.076729, 57.165108>,  <55.124828, 56.289780, 57.274055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.106384, 56.076729, 57.165108>,  <55.075642, 55.721645, 56.983532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.106384, 56.076729, 57.165108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985070, 0.002740, -0.172132,
		-0.154047, 0.460396, -0.874246,
		0.076853, 0.887710, 0.453944,
		55.129440, 56.343040, 57.301292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.495907, 56.180649, 56.510735>,  <55.075642, 55.721645, 56.983532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.495907, 56.180649, 56.510735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.504227, 56.321236, 56.885124>,  <55.509220, 56.405586, 57.109756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.504227, 56.321236, 56.885124>,  <55.495907, 56.180649, 56.510735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.504227, 56.321236, 56.885124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991106, 0.115829, -0.065518,
		-0.131440, 0.929009, -0.345928,
		0.020798, 0.351463, 0.935971,
		55.510468, 56.426674, 57.165916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.689819, 56.914536, 56.557861>,  <55.495907, 56.180649, 56.510735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.689819, 56.914536, 56.557861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.812927, 56.685524, 56.861832>,  <55.886791, 56.548119, 57.044216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.812927, 56.685524, 56.861832>,  <55.689819, 56.914536, 56.557861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.812927, 56.685524, 56.861832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909453, 0.411722, -0.058138,
		-0.279594, 0.709012, 0.647402,
		0.307770, -0.572526, 0.759929,
		55.905258, 56.513767, 57.089809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.049236, 57.283226, 57.028881>,  <55.689819, 56.914536, 56.557861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.049236, 57.283226, 57.028881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.215385, 56.921303, 57.066360>,  <56.315075, 56.704147, 57.088848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.215385, 56.921303, 57.066360>,  <56.049236, 57.283226, 57.028881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.215385, 56.921303, 57.066360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888406, 0.425647, 0.171929,
		-0.195446, 0.011828, 0.980643,
		0.415374, -0.904812, 0.093699,
		56.339996, 56.649860, 57.094471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.400219, 57.182587, 57.735809>,  <56.049236, 57.283226, 57.028881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.400219, 57.182587, 57.735809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.577728, 56.953114, 57.460434>,  <56.684235, 56.815430, 57.295208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.577728, 56.953114, 57.460434>,  <56.400219, 57.182587, 57.735809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.577728, 56.953114, 57.460434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896126, 0.288055, 0.337613,
		0.004627, -0.766755, 0.641923,
		0.443776, -0.573681, -0.688442,
		56.710861, 56.781010, 57.253902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.750332, 56.555443, 57.932297>,  <56.400219, 57.182587, 57.735809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.750332, 56.555443, 57.932297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.947624, 56.681923, 57.608139>,  <57.065998, 56.757812, 57.413643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.947624, 56.681923, 57.608139>,  <56.750332, 56.555443, 57.932297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.947624, 56.681923, 57.608139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775409, 0.262446, 0.574337,
		0.394292, -0.911668, -0.115740,
		0.493229, 0.316202, -0.810396,
		57.095592, 56.776783, 57.365021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.435493, 56.238270, 57.952694>,  <56.750332, 56.555443, 57.932297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.435493, 56.238270, 57.952694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.443520, 56.583267, 57.750427>,  <57.448338, 56.790268, 57.629066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.443520, 56.583267, 57.750427>,  <57.435493, 56.238270, 57.952694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.443520, 56.583267, 57.750427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659305, 0.368800, 0.655213,
		0.751608, -0.346538, -0.561246,
		0.020069, 0.862495, -0.505667,
		57.449539, 56.842014, 57.598728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.017868, 56.223602, 57.609451>,  <57.435493, 56.238270, 57.952694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.017868, 56.223602, 57.609451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.905403, 56.600491, 57.682304>,  <57.837925, 56.826622, 57.726017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.905403, 56.600491, 57.682304>,  <58.017868, 56.223602, 57.609451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.905403, 56.600491, 57.682304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889688, 0.184782, 0.417506,
		0.359726, 0.279432, -0.890233,
		-0.281163, 0.942217, 0.182136,
		57.821053, 56.883156, 57.736946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.540375, 56.690624, 57.349785>,  <58.017868, 56.223602, 57.609451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.540375, 56.690624, 57.349785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.339119, 56.848972, 57.657066>,  <58.218365, 56.943981, 57.841434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.339119, 56.848972, 57.657066>,  <58.540375, 56.690624, 57.349785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.339119, 56.848972, 57.657066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825048, -0.044512, 0.563307,
		0.257190, 0.917228, -0.304214,
		-0.503140, 0.395868, 0.768205,
		58.188175, 56.967731, 57.887527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.850735, 57.298183, 57.575470>,  <58.540375, 56.690624, 57.349785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.850735, 57.298183, 57.575470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.706345, 57.096806, 57.889473>,  <58.619709, 56.975979, 58.077877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.706345, 57.096806, 57.889473>,  <58.850735, 57.298183, 57.575470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.706345, 57.096806, 57.889473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904131, 0.017387, 0.426901,
		-0.228570, 0.863853, 0.448904,
		-0.360975, -0.503445, 0.785010,
		58.598053, 56.945770, 58.124977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.994560, 57.744011, 58.219357>,  <58.850735, 57.298183, 57.575470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.994560, 57.744011, 58.219357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.978493, 57.344604, 58.234024>,  <58.968853, 57.104961, 58.242825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.978493, 57.344604, 58.234024>,  <58.994560, 57.744011, 58.219357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.978493, 57.344604, 58.234024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895364, -0.019680, 0.444901,
		-0.443521, 0.050698, 0.894829,
		-0.040165, -0.998520, 0.036664,
		58.966442, 57.045048, 58.245022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.336288, 57.398239, 58.835194>,  <58.994560, 57.744011, 58.219357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.336288, 57.398239, 58.835194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.370926, 57.098030, 58.573135>,  <59.391708, 56.917904, 58.415901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.370926, 57.098030, 58.573135>,  <59.336288, 57.398239, 58.835194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.370926, 57.098030, 58.573135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879278, -0.251594, 0.404439,
		-0.468372, -0.611077, 0.638132,
		0.086593, -0.750524, -0.655146,
		59.396904, 56.872871, 58.376591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.687988, 56.748711, 59.180099>,  <59.336288, 57.398239, 58.835194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.687988, 56.748711, 59.180099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.760086, 56.724476, 58.787399>,  <59.803345, 56.709934, 58.551777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.760086, 56.724476, 58.787399>,  <59.687988, 56.748711, 59.180099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.760086, 56.724476, 58.787399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916027, -0.353274, 0.189981,
		-0.358338, -0.933556, -0.008176,
		0.180246, -0.060588, -0.981754,
		59.814159, 56.706299, 58.492874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.955284, 56.184803, 58.933029>,  <59.687988, 56.748711, 59.180099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.955284, 56.184803, 58.933029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.089325, 56.420547, 58.638992>,  <60.169750, 56.561993, 58.462570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.089325, 56.420547, 58.638992>,  <59.955284, 56.184803, 58.933029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.089325, 56.420547, 58.638992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913578, -0.394037, 0.100553,
		-0.230390, -0.705258, -0.670471,
		0.335106, 0.589360, -0.735091,
		60.189857, 56.597355, 58.418465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.825981, 56.030174, 59.706898>,  <59.955284, 56.184803, 58.933029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.825981, 56.030174, 59.706898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.674965, 55.828735, 59.396065>,  <59.584354, 55.707870, 59.209564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.674965, 55.828735, 59.396065>,  <59.825981, 56.030174, 59.706898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.674965, 55.828735, 59.396065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060438, -0.850795, 0.522011,
		-0.924020, 0.150113, 0.351643,
		-0.377536, -0.503601, -0.777079,
		59.561703, 55.677654, 59.162941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.462467, 55.474998, 60.104023>,  <59.825981, 56.030174, 59.706898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.462467, 55.474998, 60.104023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.541122, 55.339375, 59.736031>,  <59.588318, 55.257999, 59.515236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.541122, 55.339375, 59.736031>,  <59.462467, 55.474998, 60.104023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.541122, 55.339375, 59.736031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024656, -0.936297, 0.350344,
		-0.980166, -0.091574, -0.175753,
		0.196640, -0.339062, -0.919984,
		59.600113, 55.237656, 59.460037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.606865, 54.964607, 60.697018>,  <59.462467, 55.474998, 60.104023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.606865, 54.964607, 60.697018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.799728, 54.802437, 60.386368>,  <59.915447, 54.705135, 60.199978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.799728, 54.802437, 60.386368>,  <59.606865, 54.964607, 60.697018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.799728, 54.802437, 60.386368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754528, 0.642660, 0.132949,
		0.445204, -0.650088, 0.615775,
		0.482163, -0.405430, -0.776624,
		59.944378, 54.680809, 60.153381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.291122, 54.828098, 60.969292>,  <59.606865, 54.964607, 60.697018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.291122, 54.828098, 60.969292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.271744, 54.872639, 60.572250>,  <60.260117, 54.899361, 60.334026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.271744, 54.872639, 60.572250>,  <60.291122, 54.828098, 60.969292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.271744, 54.872639, 60.572250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746940, 0.663804, 0.038005,
		0.663124, -0.739571, -0.115330,
		-0.048450, 0.111347, -0.992600,
		60.257210, 54.906044, 60.274471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.013950, 54.792755, 60.673298>,  <60.291122, 54.828098, 60.969292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.013950, 54.792755, 60.673298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.763695, 55.005775, 60.445274>,  <60.613541, 55.133587, 60.308460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.763695, 55.005775, 60.445274>,  <61.013950, 54.792755, 60.673298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.763695, 55.005775, 60.445274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644064, 0.764932, 0.007745,
		0.440182, -0.362309, -0.821567,
		-0.625637, 0.532551, -0.570059,
		60.576004, 55.165543, 60.274258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.371094, 55.098667, 60.057083>,  <61.013950, 54.792755, 60.673298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.371094, 55.098667, 60.057083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.046906, 55.320198, 60.133415>,  <60.852394, 55.453117, 60.179214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.046906, 55.320198, 60.133415>,  <61.371094, 55.098667, 60.057083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.046906, 55.320198, 60.133415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584515, 0.786006, 0.201337,
		-0.038490, 0.274722, -0.960753,
		-0.810469, 0.553825, 0.190833,
		60.803764, 55.486347, 60.190666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.621418, 55.774475, 59.976864>,  <61.371094, 55.098667, 60.057083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.621418, 55.774475, 59.976864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.285316, 55.887306, 60.162079>,  <61.083656, 55.955006, 60.273209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.285316, 55.887306, 60.162079>,  <61.621418, 55.774475, 59.976864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.285316, 55.887306, 60.162079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405929, 0.893431, 0.192360,
		-0.359431, 0.349591, -0.865214,
		-0.840257, 0.282075, 0.463036,
		61.033241, 55.971928, 60.300991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.182331, 56.308098, 59.645241>,  <61.621418, 55.774475, 59.976864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.182331, 56.308098, 59.645241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.785484, 56.330029, 59.600151>,  <61.547379, 56.343189, 59.573097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.785484, 56.330029, 59.600151>,  <62.182331, 56.308098, 59.645241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.785484, 56.330029, 59.600151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003732, 0.911784, 0.410652,
		0.125295, 0.406992, -0.904797,
		-0.992112, 0.054829, -0.112723,
		61.487850, 56.346478, 59.566334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.012962, 56.990223, 59.376804>,  <62.182331, 56.308098, 59.645241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.012962, 56.990223, 59.376804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.706657, 56.850803, 59.592995>,  <61.522873, 56.767151, 59.722710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.706657, 56.850803, 59.592995>,  <62.012962, 56.990223, 59.376804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.706657, 56.850803, 59.592995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028419, 0.857918, 0.513001,
		-0.642493, 0.377478, -0.666869,
		-0.765765, -0.348551, 0.540478,
		61.476929, 56.746239, 59.755138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.294071, 57.402725, 59.313416>,  <62.012962, 56.990223, 59.376804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.294071, 57.402725, 59.313416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.355675, 57.235062, 59.671318>,  <61.392635, 57.134464, 59.886059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.355675, 57.235062, 59.671318>,  <61.294071, 57.402725, 59.313416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.355675, 57.235062, 59.671318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028424, 0.907064, 0.420032,
		-0.987661, -0.039255, 0.151607,
		0.154006, -0.419159, 0.894756,
		61.401878, 57.109314, 59.939743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.862511, 57.696041, 58.907127>,  <61.294071, 57.402725, 59.313416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.862511, 57.696041, 58.907127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.497734, 57.687138, 58.743240>,  <61.278870, 57.681793, 58.644909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.497734, 57.687138, 58.743240>,  <61.862511, 57.696041, 58.907127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.497734, 57.687138, 58.743240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366241, 0.494399, 0.788313,
		0.185014, 0.868950, -0.459016,
		-0.911942, -0.022262, -0.409716,
		61.224152, 57.680458, 58.620327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.717873, 57.693165, 58.951546>,  <61.862511, 57.696041, 58.907127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.717873, 57.693165, 58.951546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.645317, 57.306904, 58.877121>,  <62.601784, 57.075150, 58.832466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.645317, 57.306904, 58.877121>,  <62.717873, 57.693165, 58.951546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.645317, 57.306904, 58.877121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630930, 0.259403, -0.731189,
		0.754336, -0.015241, -0.656311,
		-0.181393, -0.965649, -0.186062,
		62.590900, 57.017208, 58.821304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.870392, 57.454903, 58.247471>,  <62.717873, 57.693165, 58.951546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.870392, 57.454903, 58.247471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.553719, 57.273453, 58.411163>,  <62.363716, 57.164585, 58.509377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.553719, 57.273453, 58.411163>,  <62.870392, 57.454903, 58.247471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.553719, 57.273453, 58.411163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570047, 0.307556, -0.761877,
		0.219740, -0.836444, -0.502071,
		-0.791683, -0.453619, 0.409230,
		62.316216, 57.137367, 58.533932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.183144, 57.929699, 57.870220>,  <62.870392, 57.454903, 58.247471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.183144, 57.929699, 57.870220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.404839, 57.855217, 58.194725>,  <63.537857, 57.810528, 58.389427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.404839, 57.855217, 58.194725>,  <63.183144, 57.929699, 57.870220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.404839, 57.855217, 58.194725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796049, 0.403309, -0.451274,
		-0.243158, 0.895918, 0.371760,
		0.554238, -0.186209, 0.811262,
		63.571110, 57.799355, 58.438103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.425777, 58.569672, 58.166954>,  <63.183144, 57.929699, 57.870220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.425777, 58.569672, 58.166954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.679901, 58.268593, 58.236046>,  <63.832375, 58.087948, 58.277500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.679901, 58.268593, 58.236046>,  <63.425777, 58.569672, 58.166954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.679901, 58.268593, 58.236046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758840, 0.566943, -0.320526,
		0.143329, 0.334708, 0.931358,
		0.635310, -0.752692, 0.172731,
		63.870495, 58.042786, 58.287865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.979763, 58.916203, 58.545975>,  <63.425777, 58.569672, 58.166954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.979763, 58.916203, 58.545975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.129318, 58.585442, 58.377960>,  <64.219055, 58.386986, 58.277149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.129318, 58.585442, 58.377960>,  <63.979763, 58.916203, 58.545975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.129318, 58.585442, 58.377960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649329, 0.556760, -0.518064,
		0.662251, -0.079044, 0.745101,
		0.373892, -0.826904, -0.420041,
		64.241486, 58.337372, 58.251949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.560677, 59.200588, 58.102325>,  <63.979763, 58.916203, 58.545975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.560677, 59.200588, 58.102325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.639023, 58.881985, 58.331131>,  <64.686028, 58.690823, 58.468414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.639023, 58.881985, 58.331131>,  <64.560677, 59.200588, 58.102325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.639023, 58.881985, 58.331131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869981, 0.410311, 0.273455,
		-0.452516, 0.444085, 0.773316,
		0.195863, -0.796513, 0.572018,
		64.697784, 58.643032, 58.502735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.258850, 59.465061, 57.885437>,  <64.560677, 59.200588, 58.102325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.258850, 59.465061, 57.885437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.330627, 59.349930, 58.261726>,  <65.373695, 59.280849, 58.487499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.330627, 59.349930, 58.261726>,  <65.258850, 59.465061, 57.885437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.330627, 59.349930, 58.261726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983409, 0.026613, -0.179440,
		0.026613, 0.957311, 0.287833,
		0.179440, -0.287833, 0.940720,
		65.384460, 59.263580, 58.543941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.832703, 59.935829, 58.298409>,  <65.258850, 59.465061, 57.885437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.832703, 59.935829, 58.298409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.811554, 59.548950, 58.397789>,  <65.798866, 59.316822, 58.457417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.811554, 59.548950, 58.397789>,  <65.832703, 59.935829, 58.298409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.811554, 59.548950, 58.397789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965821, -0.112753, -0.233403,
		0.253761, 0.227614, 0.940105,
		-0.052874, -0.967201, 0.248447,
		65.795692, 59.258789, 58.472324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.226059, 59.862740, 58.977177>,  <65.832703, 59.935829, 58.298409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.226059, 59.862740, 58.977177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.198303, 59.560936, 58.716133>,  <66.181648, 59.379852, 58.559509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.198303, 59.560936, 58.716133>,  <66.226059, 59.862740, 58.977177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.198303, 59.560936, 58.716133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986834, 0.043881, -0.155672,
		0.146094, -0.654817, 0.741533,
		-0.069398, -0.754513, -0.652606,
		66.177483, 59.334583, 58.520351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.665314, 59.430126, 59.275047>,  <66.226059, 59.862740, 58.977177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.665314, 59.430126, 59.275047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.667610, 59.254066, 58.915886>,  <66.668991, 59.148430, 58.700390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.667610, 59.254066, 58.915886>,  <66.665314, 59.430126, 59.275047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.667610, 59.254066, 58.915886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954981, -0.263921, 0.135486,
		-0.296610, -0.858262, 0.418818,
		0.005748, -0.440150, -0.897906,
		66.669334, 59.122021, 58.646515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.937309, 58.685776, 59.305977>,  <66.665314, 59.430126, 59.275047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.937309, 58.685776, 59.305977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.990479, 58.829193, 58.936378>,  <67.022377, 58.915245, 58.714619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.990479, 58.829193, 58.936378>,  <66.937309, 58.685776, 59.305977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.990479, 58.829193, 58.936378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986926, -0.133630, 0.090116,
		-0.091164, -0.923898, -0.371621,
		0.132918, 0.358547, -0.924001,
		67.030357, 58.936756, 58.659180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.240540, 58.099255, 58.778412>,  <66.937309, 58.685776, 59.305977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.240540, 58.099255, 58.778412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.323929, 58.486267, 58.721260>,  <67.373962, 58.718475, 58.686970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.323929, 58.486267, 58.721260>,  <67.240540, 58.099255, 58.778412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.323929, 58.486267, 58.721260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969098, -0.184655, 0.163557,
		0.131863, -0.172563, -0.976132,
		0.208471, 0.967535, -0.142882,
		67.386467, 58.776527, 58.678394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.896255, 58.187908, 58.396069>,  <67.240540, 58.099255, 58.778412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.896255, 58.187908, 58.396069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.845146, 58.501812, 58.638664>,  <67.814484, 58.690155, 58.784222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.845146, 58.501812, 58.638664>,  <67.896255, 58.187908, 58.396069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.845146, 58.501812, 58.638664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903899, -0.159555, 0.396874,
		0.408219, 0.598912, -0.688957,
		-0.127766, 0.784759, 0.606489,
		67.806816, 58.737240, 58.820610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.497543, 58.795662, 58.354897>,  <67.896255, 58.187908, 58.396069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.497543, 58.795662, 58.354897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.322922, 58.748470, 58.711662>,  <68.218147, 58.720158, 58.925720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.322922, 58.748470, 58.711662>,  <68.497543, 58.795662, 58.354897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.322922, 58.748470, 58.711662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887532, 0.105880, 0.448415,
		-0.147338, 0.987355, 0.058486,
		-0.436553, -0.117977, 0.891910,
		68.191956, 58.713078, 58.979237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.645027, 59.402718, 58.872555>,  <68.497543, 58.795662, 58.354897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.645027, 59.402718, 58.872555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.580734, 59.055428, 59.060318>,  <68.542160, 58.847054, 59.172977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.580734, 59.055428, 59.060318>,  <68.645027, 59.402718, 58.872555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.580734, 59.055428, 59.060318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880758, 0.088472, 0.465229,
		-0.445455, 0.488214, 0.750478,
		-0.160735, -0.868228, 0.469408,
		68.532516, 58.794960, 59.201141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.967636, 59.438560, 59.562984>,  <68.645027, 59.402718, 58.872555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.967636, 59.438560, 59.562984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.954926, 59.054211, 59.452919>,  <68.947304, 58.823601, 59.386879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.954926, 59.054211, 59.452919>,  <68.967636, 59.438560, 59.562984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.954926, 59.054211, 59.452919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890344, -0.152309, 0.429057,
		-0.454179, -0.231362, 0.860345,
		-0.031771, -0.960871, -0.275167,
		68.945396, 58.765949, 59.370369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.077629, 59.010918, 60.113571>,  <68.967636, 59.438560, 59.562984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.077629, 59.010918, 60.113571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.194229, 58.855564, 59.763901>,  <69.264191, 58.762352, 59.554096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.194229, 58.855564, 59.763901>,  <69.077629, 59.010918, 60.113571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.194229, 58.855564, 59.763901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953896, 0.049693, 0.295996,
		-0.071520, -0.920157, 0.384962,
		0.291493, -0.388383, -0.874180,
		69.281677, 58.739048, 59.501648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.359428, 58.299976, 60.167629>,  <69.077629, 59.010918, 60.113571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.359428, 58.299976, 60.167629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.539742, 58.507629, 59.877167>,  <69.647926, 58.632221, 59.702888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.539742, 58.507629, 59.877167>,  <69.359428, 58.299976, 60.167629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.539742, 58.507629, 59.877167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872479, -0.084356, 0.481315,
		0.188609, -0.850523, -0.490956,
		0.450785, 0.519129, -0.726153,
		69.674980, 58.663368, 59.659321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.931664, 58.050350, 60.122005>,  <69.359428, 58.299976, 60.167629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.931664, 58.050350, 60.122005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.997055, 58.389793, 59.920753>,  <70.036285, 58.593460, 59.800003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.997055, 58.389793, 59.920753>,  <69.931664, 58.050350, 60.122005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.997055, 58.389793, 59.920753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857673, 0.129773, 0.497550,
		0.487518, -0.512856, -0.706615,
		0.163472, 0.848609, -0.503130,
		70.046097, 58.644375, 59.769814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.446846, 58.117561, 59.501236>,  <69.931664, 58.050350, 60.122005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.446846, 58.117561, 59.501236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.405952, 58.436146, 59.739632>,  <70.381416, 58.627296, 59.882668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.405952, 58.436146, 59.739632>,  <70.446846, 58.117561, 59.501236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.405952, 58.436146, 59.739632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904141, -0.175447, 0.389549,
		0.414824, 0.578683, -0.702173,
		-0.102231, 0.796457, 0.595990,
		70.375282, 58.675083, 59.918430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.830849, 58.608196, 59.267414>,  <70.446846, 58.117561, 59.501236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.830849, 58.608196, 59.267414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.796036, 58.685036, 59.658417>,  <70.775146, 58.731140, 59.893021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.796036, 58.685036, 59.658417>,  <70.830849, 58.608196, 59.267414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.796036, 58.685036, 59.658417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995509, -0.019934, 0.092542,
		0.037262, 0.981173, -0.189500,
		-0.087023, 0.192097, 0.977510,
		70.769928, 58.742664, 59.951672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.384117, 59.093693, 59.273243>,  <70.830849, 58.608196, 59.267414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.384117, 59.093693, 59.273243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.338089, 58.946674, 59.642387>,  <71.310471, 58.858463, 59.863873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.338089, 58.946674, 59.642387>,  <71.384117, 59.093693, 59.273243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.338089, 58.946674, 59.642387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988732, -0.131936, 0.070730,
		0.095763, 0.920600, 0.378582,
		-0.115062, -0.367543, 0.922861,
		71.303574, 58.836411, 59.919247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.841156, 59.508976, 59.654701>,  <71.384117, 59.093693, 59.273243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.841156, 59.508976, 59.654701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.769379, 59.171989, 59.857895>,  <71.726311, 58.969799, 59.979813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.769379, 59.171989, 59.857895>,  <71.841156, 59.508976, 59.654701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.769379, 59.171989, 59.857895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972771, -0.074950, 0.219316,
		-0.146693, 0.533508, 0.832977,
		-0.179438, -0.842467, 0.507987,
		71.715546, 58.919250, 60.010292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.132011, 59.545357, 60.373268>,  <71.841156, 59.508976, 59.654701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.132011, 59.545357, 60.373268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.144218, 59.176491, 60.219032>,  <72.151543, 58.955170, 60.126492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.144218, 59.176491, 60.219032>,  <72.132011, 59.545357, 60.373268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.144218, 59.176491, 60.219032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999293, 0.019674, 0.032044,
		-0.021964, -0.386298, 0.922113,
		0.030520, -0.922164, -0.385593,
		72.153374, 58.899841, 60.103355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.511162, 59.032433, 60.800056>,  <72.132011, 59.545357, 60.373268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.511162, 59.032433, 60.800056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.527443, 58.921661, 60.416046>,  <72.537209, 58.855198, 60.185638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.527443, 58.921661, 60.416046>,  <72.511162, 59.032433, 60.800056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.527443, 58.921661, 60.416046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999170, 0.012547, 0.038743,
		0.001316, -0.960808, 0.277213,
		0.040703, -0.276932, -0.960027,
		72.539650, 58.838581, 60.128036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.886742, 58.346283, 60.696587>,  <72.511162, 59.032433, 60.800056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.886742, 58.346283, 60.696587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.906326, 58.557362, 60.357376>,  <72.918076, 58.684010, 60.153851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.906326, 58.557362, 60.357376>,  <72.886742, 58.346283, 60.696587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.906326, 58.557362, 60.357376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982136, -0.179882, -0.055235,
		-0.181692, -0.830171, -0.527072,
		0.048956, 0.527692, -0.848024,
		72.921013, 58.715668, 60.102970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.845207, 57.594528, 60.799484>,  <72.886742, 58.346283, 60.696587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.845207, 57.594528, 60.799484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.918861, 57.684853, 60.416840>,  <72.963051, 57.739048, 60.187252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.918861, 57.684853, 60.416840>,  <72.845207, 57.594528, 60.799484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.918861, 57.684853, 60.416840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578793, -0.761706, -0.291208,
		-0.794414, 0.607301, -0.009557,
		0.184130, 0.225808, -0.956612,
		72.974098, 57.752594, 60.129856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.252327, 57.832199, 60.259926>,  <72.845207, 57.594528, 60.799484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.252327, 57.832199, 60.259926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.553940, 57.633606, 60.087906>,  <72.734909, 57.514450, 59.984695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.553940, 57.633606, 60.087906>,  <72.252327, 57.832199, 60.259926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.553940, 57.633606, 60.087906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656779, -0.561290, -0.503582,
		0.008639, 0.662163, -0.749311,
		0.754034, -0.496482, -0.430046,
		72.780151, 57.484661, 59.958893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
