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
	<36.980145, 52.520309, 50.120678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882660, 52.858181, 49.930046>,  <36.824169, 53.060902, 49.815666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882660, 52.858181, 49.930046>,  <36.980145, 52.520309, 50.120678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882660, 52.858181, 49.930046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852112, 0.421157, 0.310695,
		0.463150, -0.330376, -0.822401,
		-0.243714, 0.844677, -0.476576,
		36.809547, 53.111584, 49.787075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520203, 52.732452, 49.803371>,  <36.980145, 52.520309, 50.120678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520203, 52.732452, 49.803371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312210, 53.071220, 49.847824>,  <37.187416, 53.274479, 49.874496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312210, 53.071220, 49.847824>,  <37.520203, 52.732452, 49.803371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312210, 53.071220, 49.847824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824356, 0.463488, 0.324986,
		0.223729, 0.260596, -0.939167,
		-0.519982, 0.846917, 0.111128,
		37.156216, 53.325294, 49.881161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720100, 53.387489, 49.364925>,  <37.520203, 52.732452, 49.803371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720100, 53.387489, 49.364925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574665, 53.317623, 49.730942>,  <37.487404, 53.275703, 49.950550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574665, 53.317623, 49.730942>,  <37.720100, 53.387489, 49.364925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574665, 53.317623, 49.730942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918030, 0.099629, 0.383790,
		-0.158199, 0.979575, 0.124122,
		-0.363584, -0.174663, 0.915041,
		37.465591, 53.265224, 50.005455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812469, 54.083622, 49.776157>,  <37.720100, 53.387489, 49.364925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812469, 54.083622, 49.776157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881710, 53.741150, 49.970886>,  <37.923252, 53.535667, 50.087723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881710, 53.741150, 49.970886>,  <37.812469, 54.083622, 49.776157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881710, 53.741150, 49.970886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890170, 0.347518, 0.294668,
		-0.421468, 0.382349, 0.822298,
		0.173097, -0.856178, 0.486824,
		37.933640, 53.484295, 50.116932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174416, 54.165897, 50.477013>,  <37.812469, 54.083622, 49.776157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174416, 54.165897, 50.477013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264507, 53.796360, 50.353210>,  <38.318562, 53.574638, 50.278931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264507, 53.796360, 50.353210>,  <38.174416, 54.165897, 50.477013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264507, 53.796360, 50.353210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954688, 0.145837, 0.259426,
		-0.194532, -0.353907, 0.914826,
		0.225228, -0.923841, -0.309501,
		38.332077, 53.519207, 50.260361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555912, 53.962425, 50.926910>,  <38.174416, 54.165897, 50.477013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555912, 53.962425, 50.926910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671993, 53.754391, 50.605591>,  <38.741642, 53.629570, 50.412800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671993, 53.754391, 50.605591>,  <38.555912, 53.962425, 50.926910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671993, 53.754391, 50.605591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955275, 0.207299, 0.210893,
		0.056841, -0.828576, 0.556983,
		0.290203, -0.520085, -0.803302,
		38.759056, 53.598366, 50.364601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202606, 53.775646, 51.169937>,  <38.555912, 53.962425, 50.926910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202606, 53.775646, 51.169937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233589, 53.742371, 50.772530>,  <39.252178, 53.722404, 50.534084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233589, 53.742371, 50.772530>,  <39.202606, 53.775646, 51.169937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233589, 53.742371, 50.772530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971303, 0.231066, 0.056379,
		0.224878, -0.969375, 0.098702,
		0.077459, -0.083191, -0.993519,
		39.256828, 53.717415, 50.474476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725346, 53.398373, 51.118500>,  <39.202606, 53.775646, 51.169937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725346, 53.398373, 51.118500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657761, 53.627029, 50.797333>,  <39.617210, 53.764225, 50.604633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657761, 53.627029, 50.797333>,  <39.725346, 53.398373, 51.118500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657761, 53.627029, 50.797333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933063, 0.355238, 0.056560,
		0.317559, -0.739614, -0.593403,
		-0.168967, 0.571644, -0.802916,
		39.607071, 53.798523, 50.556458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104023, 53.341221, 50.516426>,  <39.725346, 53.398373, 51.118500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104023, 53.341221, 50.516426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968941, 53.711143, 50.586487>,  <39.887890, 53.933098, 50.628525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968941, 53.711143, 50.586487>,  <40.104023, 53.341221, 50.516426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968941, 53.711143, 50.586487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939951, 0.341128, 0.011126,
		-0.049461, 0.168395, -0.984478,
		-0.337706, 0.924811, 0.175156,
		39.867630, 53.988586, 50.639034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322453, 53.931732, 49.997803>,  <40.104023, 53.341221, 50.516426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322453, 53.931732, 49.997803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248886, 54.070057, 50.365845>,  <40.204746, 54.153049, 50.586670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248886, 54.070057, 50.365845>,  <40.322453, 53.931732, 49.997803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248886, 54.070057, 50.365845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944249, 0.322206, 0.067648,
		-0.273070, 0.881248, -0.385790,
		-0.183919, 0.345809, 0.920103,
		40.193710, 54.173801, 50.641876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404369, 54.641598, 50.023560>,  <40.322453, 53.931732, 49.997803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404369, 54.641598, 50.023560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447029, 54.497284, 50.394173>,  <40.472626, 54.410694, 50.616539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447029, 54.497284, 50.394173>,  <40.404369, 54.641598, 50.023560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447029, 54.497284, 50.394173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989286, 0.131943, -0.062491,
		-0.099703, 0.923269, 0.370991,
		0.106645, -0.360785, 0.926532,
		40.479023, 54.389050, 50.672131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951683, 55.031181, 50.457466>,  <40.404369, 54.641598, 50.023560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951683, 55.031181, 50.457466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905243, 54.676987, 50.637436>,  <40.877380, 54.464470, 50.745419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905243, 54.676987, 50.637436>,  <40.951683, 55.031181, 50.457466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905243, 54.676987, 50.637436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991347, -0.075377, 0.107464,
		-0.061244, 0.458506, 0.886579,
		-0.116100, -0.885489, 0.449922,
		40.870415, 54.411339, 50.772411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478275, 55.079117, 50.846951>,  <40.951683, 55.031181, 50.457466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478275, 55.079117, 50.846951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386189, 54.691803, 50.885788>,  <41.330936, 54.459415, 50.909088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386189, 54.691803, 50.885788>,  <41.478275, 55.079117, 50.846951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386189, 54.691803, 50.885788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951690, -0.203190, 0.230220,
		-0.203190, 0.145401, 0.968283,
		-0.230220, -0.968283, 0.097090,
		41.317123, 54.401318, 50.914913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481358, 54.877548, 51.563210>,  <41.478275, 55.079117, 50.846951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481358, 54.877548, 51.563210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579826, 54.593185, 51.299690>,  <41.638908, 54.422569, 51.141579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579826, 54.593185, 51.299690>,  <41.481358, 54.877548, 51.563210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579826, 54.593185, 51.299690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934869, -0.005213, 0.354955,
		-0.255774, -0.703269, 0.663319,
		0.246171, -0.710904, -0.658798,
		41.653679, 54.379913, 51.102051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796322, 54.308636, 51.897144>,  <41.481358, 54.877548, 51.563210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796322, 54.308636, 51.897144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928341, 54.336769, 51.520607>,  <42.007553, 54.353649, 51.294685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928341, 54.336769, 51.520607>,  <41.796322, 54.308636, 51.897144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928341, 54.336769, 51.520607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907020, 0.252621, 0.336894,
		0.261497, -0.965006, 0.019584,
		0.330051, 0.070334, -0.941339,
		42.027355, 54.357868, 51.238205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499973, 54.109032, 51.969257>,  <41.796322, 54.308636, 51.897144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499973, 54.109032, 51.969257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481255, 54.323395, 51.632065>,  <42.470024, 54.452011, 51.429749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481255, 54.323395, 51.632065>,  <42.499973, 54.109032, 51.969257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481255, 54.323395, 51.632065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866420, 0.441758, 0.232738,
		0.497119, -0.719483, -0.484992,
		-0.046798, 0.535905, -0.842980,
		42.467216, 54.484165, 51.379169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044872, 53.959599, 51.513351>,  <42.499973, 54.109032, 51.969257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044872, 53.959599, 51.513351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914738, 54.336372, 51.480064>,  <42.836658, 54.562435, 51.460091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914738, 54.336372, 51.480064>,  <43.044872, 53.959599, 51.513351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914738, 54.336372, 51.480064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920682, 0.335603, 0.199290,
		0.215645, -0.011781, -0.976401,
		-0.325335, 0.941930, -0.083217,
		42.817139, 54.618950, 51.455101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516582, 54.306938, 51.047775>,  <43.044872, 53.959599, 51.513351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516582, 54.306938, 51.047775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369690, 54.599022, 51.278229>,  <43.281555, 54.774273, 51.416500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369690, 54.599022, 51.278229>,  <43.516582, 54.306938, 51.047775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369690, 54.599022, 51.278229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919184, 0.379650, 0.104717,
		-0.142264, 0.568027, -0.810621,
		-0.367234, 0.730213, 0.576132,
		43.259521, 54.818085, 51.451069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620491, 54.950497, 50.761261>,  <43.516582, 54.306938, 51.047775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620491, 54.950497, 50.761261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615852, 54.959511, 51.161133>,  <43.613071, 54.964920, 51.401054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615852, 54.959511, 51.161133>,  <43.620491, 54.950497, 50.761261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615852, 54.959511, 51.161133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947017, 0.321161, 0.003744,
		-0.320973, 0.946756, -0.025064,
		-0.011594, 0.022534, 0.999679,
		43.612373, 54.966270, 51.461037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118595, 55.443783, 51.095188>,  <43.620491, 54.950497, 50.761261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118595, 55.443783, 51.095188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012825, 55.263802, 51.436390>,  <43.949364, 55.155811, 51.641113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012825, 55.263802, 51.436390>,  <44.118595, 55.443783, 51.095188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012825, 55.263802, 51.436390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871156, 0.267994, 0.411420,
		-0.413720, 0.851893, 0.321113,
		-0.264429, -0.449952, 0.853006,
		43.933495, 55.128815, 51.692291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376957, 55.865208, 51.621731>,  <44.118595, 55.443783, 51.095188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376957, 55.865208, 51.621731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341419, 55.496799, 51.773426>,  <44.320099, 55.275753, 51.864445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341419, 55.496799, 51.773426>,  <44.376957, 55.865208, 51.621731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341419, 55.496799, 51.773426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807502, 0.156308, 0.568778,
		-0.583136, 0.356767, 0.729842,
		-0.088841, -0.921024, 0.379239,
		44.314766, 55.220493, 51.887199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574524, 56.062649, 52.242828>,  <44.376957, 55.865208, 51.621731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574524, 56.062649, 52.242828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603889, 55.663757, 52.238174>,  <44.621510, 55.424423, 52.235382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603889, 55.663757, 52.238174>,  <44.574524, 56.062649, 52.242828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603889, 55.663757, 52.238174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827436, 0.054394, 0.558920,
		-0.556740, -0.050665, 0.829140,
		0.073418, -0.997233, -0.011639,
		44.625916, 55.364586, 52.234684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689365, 55.846050, 53.038132>,  <44.574524, 56.062649, 52.242828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689365, 55.846050, 53.038132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834351, 55.556553, 52.803246>,  <44.921341, 55.382854, 52.662312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834351, 55.556553, 52.803246>,  <44.689365, 55.846050, 53.038132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834351, 55.556553, 52.803246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900748, 0.110236, 0.420120,
		-0.239325, -0.681212, 0.691863,
		0.362459, -0.723739, -0.587218,
		44.943089, 55.339432, 52.627079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202492, 55.553402, 53.487732>,  <44.689365, 55.846050, 53.038132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202492, 55.553402, 53.487732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247047, 55.417755, 53.114082>,  <45.273781, 55.336369, 52.889893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247047, 55.417755, 53.114082>,  <45.202492, 55.553402, 53.487732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247047, 55.417755, 53.114082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946605, -0.249957, 0.203620,
		-0.302541, -0.906931, 0.293164,
		0.111391, -0.339114, -0.934128,
		45.280464, 55.316021, 52.833843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909081, 55.281189, 53.625214>,  <45.202492, 55.553402, 53.487732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909081, 55.281189, 53.625214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.827385, 55.209496, 53.240265>,  <45.778370, 55.166481, 53.009296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.827385, 55.209496, 53.240265>,  <45.909081, 55.281189, 53.625214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827385, 55.209496, 53.240265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962856, -0.214155, -0.164455,
		-0.176621, -0.960216, 0.216313,
		-0.204237, -0.179232, -0.962374,
		45.766113, 55.155727, 52.951553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288651, 54.675144, 53.437897>,  <45.909081, 55.281189, 53.625214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288651, 54.675144, 53.437897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241966, 54.916710, 53.122513>,  <46.213955, 55.061649, 52.933281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241966, 54.916710, 53.122513>,  <46.288651, 54.675144, 53.437897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241966, 54.916710, 53.122513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958811, -0.138490, -0.247997,
		-0.258962, -0.784925, -0.562878,
		-0.116706, 0.603915, -0.788458,
		46.206955, 55.097885, 52.885975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569767, 54.374775, 52.862823>,  <46.288651, 54.675144, 53.437897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569767, 54.374775, 52.862823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601120, 54.773331, 52.875832>,  <46.619934, 55.012466, 52.883636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601120, 54.773331, 52.875832>,  <46.569767, 54.374775, 52.862823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.601120, 54.773331, 52.875832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996662, -0.077575, -0.025439,
		-0.022824, 0.034409, -0.999147,
		0.078385, 0.996392, 0.032524,
		46.624634, 55.072250, 52.885590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019379, 54.690990, 52.207653>,  <46.569767, 54.374775, 52.862823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019379, 54.690990, 52.207653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028004, 54.859985, 52.570099>,  <47.033176, 54.961384, 52.787567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028004, 54.859985, 52.570099>,  <47.019379, 54.690990, 52.207653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.028004, 54.859985, 52.570099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997465, -0.070564, 0.009168,
		0.067812, 0.903618, -0.422937,
		0.021559, 0.422487, 0.906113,
		47.034473, 54.986732, 52.841934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.457558, 55.216717, 52.211002>,  <47.019379, 54.690990, 52.207653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.457558, 55.216717, 52.211002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.420010, 55.091248, 52.588955>,  <47.397480, 55.015965, 52.815727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.420010, 55.091248, 52.588955>,  <47.457558, 55.216717, 52.211002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.420010, 55.091248, 52.588955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995582, -0.027177, 0.089881,
		-0.002514, 0.949142, 0.314837,
		-0.093866, -0.313672, 0.944880,
		47.391850, 54.997147, 52.872417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054634, 55.541897, 52.550472>,  <47.457558, 55.216717, 52.211002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054634, 55.541897, 52.550472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.914791, 55.261803, 52.799454>,  <47.830887, 55.093746, 52.948841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.914791, 55.261803, 52.799454>,  <48.054634, 55.541897, 52.550472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.914791, 55.261803, 52.799454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897129, -0.058694, 0.437853,
		-0.270067, 0.711492, 0.648723,
		-0.349605, -0.700238, 0.622449,
		47.809910, 55.051731, 52.986187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.178726, 55.603340, 53.325169>,  <48.054634, 55.541897, 52.550472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.178726, 55.603340, 53.325169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.175289, 55.236446, 53.165863>,  <48.173225, 55.016312, 53.070278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.175289, 55.236446, 53.165863>,  <48.178726, 55.603340, 53.325169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.175289, 55.236446, 53.165863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974852, -0.096379, 0.200936,
		-0.222689, -0.386520, 0.894993,
		-0.008593, -0.917231, -0.398263,
		48.172710, 54.961277, 53.046383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.238514, 55.627922, 54.049458>,  <48.178726, 55.603340, 53.325169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.238514, 55.627922, 54.049458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.210255, 55.961212, 54.268814>,  <48.193298, 56.161186, 54.400429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.210255, 55.961212, 54.268814>,  <48.238514, 55.627922, 54.049458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.210255, 55.961212, 54.268814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963913, 0.084441, -0.252470,
		-0.256672, -0.546442, 0.797196,
		-0.070644, 0.833229, 0.548396,
		48.189060, 56.211182, 54.433334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.944366, 55.659958, 54.194981>,  <48.238514, 55.627922, 54.049458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.944366, 55.659958, 54.194981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.290764, 55.593491, 54.383636>,  <49.498604, 55.553612, 54.496830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.290764, 55.593491, 54.383636>,  <48.944366, 55.659958, 54.194981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.290764, 55.593491, 54.383636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330084, 0.898448, -0.289545,
		-0.375627, 0.406424, 0.832901,
		0.865996, -0.166166, 0.471635,
		49.550564, 55.543640, 54.525127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.105789, 56.199162, 54.759712>,  <48.944366, 55.659958, 54.194981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.105789, 56.199162, 54.759712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.414906, 56.046963, 54.556534>,  <49.600376, 55.955643, 54.434628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.414906, 56.046963, 54.556534>,  <49.105789, 56.199162, 54.759712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.414906, 56.046963, 54.556534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169838, 0.895144, -0.412154,
		0.611510, 0.232242, 0.756386,
		0.772794, -0.380500, -0.507946,
		49.646744, 55.932812, 54.404148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.709366, 56.528358, 55.099911>,  <49.105789, 56.199162, 54.759712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.709366, 56.528358, 55.099911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.735142, 56.401779, 54.721344>,  <49.750607, 56.325832, 54.494205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.735142, 56.401779, 54.721344>,  <49.709366, 56.528358, 55.099911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.735142, 56.401779, 54.721344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140012, 0.941875, -0.305399,
		0.988051, -0.112830, 0.105002,
		0.064440, -0.316451, -0.946418,
		49.754475, 56.306843, 54.437420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.240013, 56.786728, 54.766209>,  <49.709366, 56.528358, 55.099911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.240013, 56.786728, 54.766209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.986958, 56.732647, 54.461189>,  <49.835125, 56.700199, 54.278175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.986958, 56.732647, 54.461189>,  <50.240013, 56.786728, 54.766209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.986958, 56.732647, 54.461189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386414, 0.798210, -0.462109,
		0.671156, -0.587010, -0.452735,
		-0.632640, -0.135203, -0.762553,
		49.797165, 56.692085, 54.232422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.434990, 56.885021, 54.066246>,  <50.240013, 56.786728, 54.766209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.434990, 56.885021, 54.066246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.045570, 56.973091, 54.041828>,  <49.811920, 57.025932, 54.027180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.045570, 56.973091, 54.041828>,  <50.434990, 56.885021, 54.066246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.045570, 56.973091, 54.041828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218599, 0.819863, -0.529186,
		-0.066468, -0.528532, -0.846307,
		-0.973548, 0.220176, -0.061042,
		49.753506, 57.039143, 54.023514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.438473, 57.368916, 53.515667>,  <50.434990, 56.885021, 54.066246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.438473, 57.368916, 53.515667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.782177, 57.470463, 53.693306>,  <50.988400, 57.531391, 53.799889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.782177, 57.470463, 53.693306>,  <50.438473, 57.368916, 53.515667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.782177, 57.470463, 53.693306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502212, -0.253692, -0.826694,
		-0.097206, 0.933378, -0.345482,
		0.859264, 0.253865, 0.444093,
		51.039955, 57.546623, 53.826534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.792206, 57.689819, 52.995716>,  <50.438473, 57.368916, 53.515667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.792206, 57.689819, 52.995716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.037247, 57.550400, 53.279472>,  <51.184273, 57.466747, 53.449726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.037247, 57.550400, 53.279472>,  <50.792206, 57.689819, 52.995716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.037247, 57.550400, 53.279472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517556, -0.501444, -0.693318,
		0.597372, 0.791878, -0.126795,
		0.612603, -0.348545, 0.709389,
		51.221027, 57.445835, 53.492290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.384815, 57.552467, 52.615345>,  <50.792206, 57.689819, 52.995716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.384815, 57.552467, 52.615345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.419823, 57.330788, 52.946453>,  <51.440826, 57.197781, 53.145119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.419823, 57.330788, 52.946453>,  <51.384815, 57.552467, 52.615345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.419823, 57.330788, 52.946453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554830, -0.663021, -0.502560,
		0.827347, 0.503256, 0.249458,
		0.087521, -0.554199, 0.827771,
		51.446079, 57.164528, 53.194786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.072311, 57.505695, 52.659630>,  <51.384815, 57.552467, 52.615345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.072311, 57.505695, 52.659630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.901993, 57.180973, 52.819462>,  <51.799801, 56.986141, 52.915359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.901993, 57.180973, 52.819462>,  <52.072311, 57.505695, 52.659630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.901993, 57.180973, 52.819462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544928, -0.582621, -0.602998,
		0.722321, -0.039015, 0.690457,
		-0.425801, -0.811807, 0.399579,
		51.774254, 56.937431, 52.939335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.587128, 57.027996, 52.911972>,  <52.072311, 57.505695, 52.659630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.587128, 57.027996, 52.911972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.246746, 56.867661, 52.776207>,  <52.042515, 56.771461, 52.694748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.246746, 56.867661, 52.776207>,  <52.587128, 57.027996, 52.911972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.246746, 56.867661, 52.776207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497990, -0.410321, -0.763965,
		0.166959, -0.819125, 0.548779,
		-0.850959, -0.400837, -0.339409,
		51.991459, 56.747410, 52.674385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.631210, 57.698414, 53.212955>,  <52.587128, 57.027996, 52.911972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.631210, 57.698414, 53.212955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.500450, 57.484493, 53.524628>,  <52.421993, 57.356140, 53.711632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.500450, 57.484493, 53.524628>,  <52.631210, 57.698414, 53.212955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.500450, 57.484493, 53.524628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843951, 0.205838, 0.495356,
		-0.425302, 0.819524, 0.384056,
		-0.326903, -0.534800, 0.779181,
		52.402378, 57.324055, 53.758381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.731220, 58.139400, 53.850243>,  <52.631210, 57.698414, 53.212955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.731220, 58.139400, 53.850243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.737617, 57.745914, 53.921844>,  <52.741455, 57.509823, 53.964806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.737617, 57.745914, 53.921844>,  <52.731220, 58.139400, 53.850243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.737617, 57.745914, 53.921844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899537, 0.092319, 0.426978,
		-0.436552, 0.154191, 0.886368,
		0.015993, -0.983719, 0.179003,
		52.742416, 57.450798, 53.975544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.809105, 57.924534, 54.642693>,  <52.731220, 58.139400, 53.850243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.809105, 57.924534, 54.642693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.975430, 57.665516, 54.387257>,  <53.075222, 57.510105, 54.233997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.975430, 57.665516, 54.387257>,  <52.809105, 57.924534, 54.642693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.975430, 57.665516, 54.387257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819460, -0.037779, 0.571890,
		-0.394447, -0.761094, 0.514925,
		0.415808, -0.647541, -0.638588,
		53.100170, 57.471252, 54.195679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.099068, 57.286407, 54.983650>,  <52.809105, 57.924534, 54.642693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.099068, 57.286407, 54.983650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.286274, 57.315872, 54.631393>,  <53.398598, 57.333549, 54.420040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.286274, 57.315872, 54.631393>,  <53.099068, 57.286407, 54.983650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.286274, 57.315872, 54.631393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883093, -0.076472, 0.462923,
		-0.033245, -0.994347, -0.100840,
		0.468018, 0.073661, -0.880644,
		53.426678, 57.337971, 54.367199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.596519, 56.795322, 54.938835>,  <53.099068, 57.286407, 54.983650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.596519, 56.795322, 54.938835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.696785, 57.107777, 54.710098>,  <53.756943, 57.295250, 54.572857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.696785, 57.107777, 54.710098>,  <53.596519, 56.795322, 54.938835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.696785, 57.107777, 54.710098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861546, 0.089379, 0.499749,
		0.441480, -0.617936, -0.650577,
		0.250665, 0.781132, -0.571839,
		53.771984, 57.342117, 54.538548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.271767, 56.685413, 54.763119>,  <53.596519, 56.795322, 54.938835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.271767, 56.685413, 54.763119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.186996, 57.076263, 54.770229>,  <54.136135, 57.310772, 54.774498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.186996, 57.076263, 54.770229>,  <54.271767, 56.685413, 54.763119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.186996, 57.076263, 54.770229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854581, 0.176462, 0.488418,
		0.474108, 0.118703, -0.872428,
		-0.211928, 0.977124, 0.017780,
		54.123417, 57.369400, 54.775562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.889557, 56.993668, 54.878407>,  <54.271767, 56.685413, 54.763119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.889557, 56.993668, 54.878407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.627609, 57.259918, 55.021568>,  <54.470440, 57.419666, 55.107464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.627609, 57.259918, 55.021568>,  <54.889557, 56.993668, 54.878407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.627609, 57.259918, 55.021568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662082, 0.276942, 0.696384,
		0.364411, 0.693000, -0.622058,
		-0.654868, 0.665623, 0.357902,
		54.431149, 57.459606, 55.128941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.169334, 57.739368, 54.751022>,  <54.889557, 56.993668, 54.878407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.169334, 57.739368, 54.751022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.977989, 57.590759, 55.069305>,  <54.863182, 57.501595, 55.260273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.977989, 57.590759, 55.069305>,  <55.169334, 57.739368, 54.751022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.977989, 57.590759, 55.069305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835156, 0.087616, 0.542989,
		-0.271448, 0.924282, 0.268364,
		-0.478362, -0.371519, 0.795703,
		54.834480, 57.479305, 55.308018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.513752, 58.112877, 55.182312>,  <55.169334, 57.739368, 54.751022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.513752, 58.112877, 55.182312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.330666, 57.792255, 55.336197>,  <55.220814, 57.599884, 55.428528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.330666, 57.792255, 55.336197>,  <55.513752, 58.112877, 55.182312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.330666, 57.792255, 55.336197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754910, -0.121790, 0.644421,
		-0.469684, 0.585386, 0.660848,
		-0.457720, -0.801555, 0.384711,
		55.193348, 57.551788, 55.451611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.372025, 58.111973, 56.018372>,  <55.513752, 58.112877, 55.182312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.372025, 58.111973, 56.018372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.448990, 57.754532, 55.856163>,  <55.495171, 57.540066, 55.758839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.448990, 57.754532, 55.856163>,  <55.372025, 58.111973, 56.018372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.448990, 57.754532, 55.856163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841428, -0.062405, 0.536754,
		-0.504951, -0.444499, 0.739895,
		0.192413, -0.893603, -0.405526,
		55.506714, 57.486450, 55.734505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.641705, 57.742237, 56.530304>,  <55.372025, 58.111973, 56.018372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.641705, 57.742237, 56.530304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.779221, 57.599930, 56.182686>,  <55.861729, 57.514545, 55.974113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.779221, 57.599930, 56.182686>,  <55.641705, 57.742237, 56.530304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.779221, 57.599930, 56.182686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936944, 0.068038, 0.342792,
		-0.062825, -0.932096, 0.356721,
		0.343786, -0.355763, -0.869047,
		55.882355, 57.493202, 55.921970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.127079, 57.134022, 56.736900>,  <55.641705, 57.742237, 56.530304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.127079, 57.134022, 56.736900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.172989, 57.304379, 56.377914>,  <56.200535, 57.406593, 56.162521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.172989, 57.304379, 56.377914>,  <56.127079, 57.134022, 56.736900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.172989, 57.304379, 56.377914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991652, 0.004336, 0.128874,
		0.058778, -0.904764, -0.421838,
		0.114772, 0.425891, -0.897465,
		56.207420, 57.432144, 56.108673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.640697, 56.737484, 56.308735>,  <56.127079, 57.134022, 56.736900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.640697, 56.737484, 56.308735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.647156, 57.104717, 56.150314>,  <56.651031, 57.325058, 56.055260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.647156, 57.104717, 56.150314>,  <56.640697, 56.737484, 56.308735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.647156, 57.104717, 56.150314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998173, 0.008265, 0.059859,
		0.058229, -0.396299, -0.916273,
		0.016149, 0.918084, -0.396056,
		56.652000, 57.380142, 56.031498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.293156, 56.751617, 56.069565>,  <56.640697, 56.737484, 56.308735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.293156, 56.751617, 56.069565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.199028, 57.139366, 56.041451>,  <57.142551, 57.372017, 56.024582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.199028, 57.139366, 56.041451>,  <57.293156, 56.751617, 56.069565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.199028, 57.139366, 56.041451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868544, 0.242198, 0.432401,
		0.436180, 0.040709, -0.898938,
		-0.235323, 0.969372, -0.070285,
		57.128429, 57.430180, 56.020367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.760845, 57.230247, 55.608906>,  <57.293156, 56.751617, 56.069565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.760845, 57.230247, 55.608906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.605522, 57.406391, 55.932709>,  <57.512329, 57.512077, 56.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.605522, 57.406391, 55.932709>,  <57.760845, 57.230247, 55.608906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.605522, 57.406391, 55.932709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914228, 0.073732, 0.398435,
		0.115770, 0.894787, -0.431223,
		-0.388309, 0.440363, 0.809503,
		57.489029, 57.538502, 56.175560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.053394, 57.839455, 55.746117>,  <57.760845, 57.230247, 55.608906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.053394, 57.839455, 55.746117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.933151, 57.661957, 56.083809>,  <57.861004, 57.555458, 56.286423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.933151, 57.661957, 56.083809>,  <58.053394, 57.839455, 55.746117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.933151, 57.661957, 56.083809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936333, 0.031070, 0.349735,
		-0.181423, 0.895615, 0.406153,
		-0.300608, -0.443744, 0.844231,
		57.842968, 57.528835, 56.337078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.263969, 58.267441, 56.338078>,  <58.053394, 57.839455, 55.746117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.263969, 58.267441, 56.338078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.280327, 57.874382, 56.410446>,  <58.290142, 57.638546, 56.453865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.280327, 57.874382, 56.410446>,  <58.263969, 58.267441, 56.338078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.280327, 57.874382, 56.410446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904522, 0.113330, 0.411091,
		-0.424461, 0.146833, 0.893461,
		0.040894, -0.982648, 0.180918,
		58.292595, 57.579586, 56.464722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.607445, 58.138306, 56.981022>,  <58.263969, 58.267441, 56.338078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.607445, 58.138306, 56.981022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.625343, 57.781918, 56.800278>,  <58.636082, 57.568085, 56.691833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.625343, 57.781918, 56.800278>,  <58.607445, 58.138306, 56.981022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.625343, 57.781918, 56.800278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889307, -0.170538, 0.424323,
		-0.455116, -0.420824, 0.784714,
		0.044742, -0.890968, -0.451857,
		58.638767, 57.514626, 56.664722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.861320, 57.660778, 57.504002>,  <58.607445, 58.138306, 56.981022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.861320, 57.660778, 57.504002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.953621, 57.589844, 57.121315>,  <59.009003, 57.547283, 56.891705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.953621, 57.589844, 57.121315>,  <58.861320, 57.660778, 57.504002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.953621, 57.589844, 57.121315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952284, -0.160717, 0.259472,
		-0.199774, -0.970939, 0.131788,
		0.230751, -0.177335, -0.956716,
		59.022846, 57.536644, 56.834301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.121265, 56.987785, 57.510464>,  <58.861320, 57.660778, 57.504002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.121265, 56.987785, 57.510464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.260323, 57.196083, 57.198570>,  <59.343758, 57.321060, 57.011436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.260323, 57.196083, 57.198570>,  <59.121265, 56.987785, 57.510464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.260323, 57.196083, 57.198570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937122, -0.165640, 0.307189,
		0.030811, -0.837492, -0.545579,
		0.347638, 0.520740, -0.779729,
		59.364613, 57.352306, 56.964653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.673035, 56.641022, 57.111950>,  <59.121265, 56.987785, 57.510464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.673035, 56.641022, 57.111950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.831673, 56.992023, 57.004097>,  <59.926857, 57.202625, 56.939384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.831673, 56.992023, 57.004097>,  <59.673035, 56.641022, 57.111950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.831673, 56.992023, 57.004097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917396, -0.368278, 0.150853,
		0.033075, -0.307185, -0.951075,
		0.396599, 0.877501, -0.269630,
		59.950653, 57.255276, 56.923206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.211090, 56.568317, 56.668285>,  <59.673035, 56.641022, 57.111950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.211090, 56.568317, 56.668285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.313728, 56.936356, 56.786659>,  <60.375313, 57.157181, 56.857681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.313728, 56.936356, 56.786659>,  <60.211090, 56.568317, 56.668285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.313728, 56.936356, 56.786659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862896, -0.356013, 0.358699,
		0.435394, 0.163316, -0.885302,
		0.256598, 0.920099, 0.295930,
		60.390709, 57.212387, 56.875439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.776821, 56.782463, 56.313549>,  <60.211090, 56.568317, 56.668285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.776821, 56.782463, 56.313549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.746773, 56.927895, 56.684959>,  <60.728745, 57.015156, 56.907806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.746773, 56.927895, 56.684959>,  <60.776821, 56.782463, 56.313549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.746773, 56.927895, 56.684959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818734, -0.509064, 0.265571,
		0.569237, 0.780168, -0.259434,
		-0.075121, 0.363580, 0.928529,
		60.724236, 57.036968, 56.963516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.257938, 57.205006, 56.573025>,  <60.776821, 56.782463, 56.313549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.257938, 57.205006, 56.573025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.128349, 56.989414, 56.884033>,  <61.050594, 56.860058, 57.070641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.128349, 56.989414, 56.884033>,  <61.257938, 57.205006, 56.573025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.128349, 56.989414, 56.884033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901857, -0.424238, 0.081703,
		0.285818, 0.727685, 0.623525,
		-0.323977, -0.538978, 0.777523,
		61.031155, 56.827721, 57.117290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.614201, 57.380604, 57.240894>,  <61.257938, 57.205006, 56.573025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.614201, 57.380604, 57.240894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.488907, 57.000736, 57.242584>,  <61.413731, 56.772816, 57.243599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.488907, 57.000736, 57.242584>,  <61.614201, 57.380604, 57.240894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.488907, 57.000736, 57.242584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949326, -0.312999, 0.028511,
		-0.025754, 0.012940, 0.999585,
		-0.313237, -0.949666, 0.004223,
		61.394936, 56.715836, 57.243851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.438625, 58.078915, 57.534554>,  <61.614201, 57.380604, 57.240894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.438625, 58.078915, 57.534554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.652420, 57.909565, 57.827148>,  <61.780697, 57.807953, 58.002705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.652420, 57.909565, 57.827148>,  <61.438625, 58.078915, 57.534554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.652420, 57.909565, 57.827148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425435, -0.613072, -0.665693,
		0.730295, 0.667005, -0.147559,
		0.534485, -0.423376, 0.731491,
		61.812767, 57.782551, 58.046597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.195484, 58.136936, 57.413811>,  <61.438625, 58.078915, 57.534554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.195484, 58.136936, 57.413811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.105042, 57.768932, 57.541847>,  <62.050777, 57.548130, 57.618668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.105042, 57.768932, 57.541847>,  <62.195484, 58.136936, 57.413811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.105042, 57.768932, 57.541847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483430, -0.391257, -0.783080,
		0.845678, -0.022319, 0.533226,
		-0.226106, -0.920011, 0.320088,
		62.037209, 57.492928, 57.637875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.861645, 58.217953, 57.369202>,  <62.195484, 58.136936, 57.413811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.861645, 58.217953, 57.369202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.824753, 57.954281, 57.667725>,  <62.802616, 57.796078, 57.846840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.824753, 57.954281, 57.667725>,  <62.861645, 58.217953, 57.369202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.824753, 57.954281, 57.667725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994917, -0.091433, 0.042201,
		0.040419, 0.746407, 0.664262,
		-0.092234, -0.659179, 0.746308,
		62.797081, 57.756527, 57.891617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.199970, 58.409962, 57.963612>,  <62.861645, 58.217953, 57.369202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.199970, 58.409962, 57.963612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.191086, 58.010254, 57.975998>,  <63.185757, 57.770428, 57.983429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.191086, 58.010254, 57.975998>,  <63.199970, 58.409962, 57.963612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.191086, 58.010254, 57.975998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972465, -0.014402, 0.232603,
		-0.231988, 0.035283, 0.972078,
		-0.022207, -0.999274, 0.030970,
		63.184425, 57.710472, 57.985291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.571785, 58.285324, 58.552250>,  <63.199970, 58.409962, 57.963612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.571785, 58.285324, 58.552250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.583313, 57.982044, 58.291695>,  <63.590229, 57.800076, 58.135361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.583313, 57.982044, 58.291695>,  <63.571785, 58.285324, 58.552250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.583313, 57.982044, 58.291695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998529, -0.008103, 0.053612,
		-0.045926, -0.651970, 0.756852,
		0.028821, -0.758201, -0.651384,
		63.591961, 57.754585, 58.096279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.881630, 57.648499, 58.864311>,  <63.571785, 58.285324, 58.552250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.881630, 57.648499, 58.864311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.944473, 57.718250, 58.475487>,  <63.982182, 57.760101, 58.242191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.944473, 57.718250, 58.475487>,  <63.881630, 57.648499, 58.864311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.944473, 57.718250, 58.475487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987170, -0.056121, 0.149487,
		-0.028486, -0.983078, -0.180961,
		0.157113, 0.174381, -0.972063,
		63.991608, 57.770565, 58.183868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.091797, 57.027660, 58.638714>,  <63.881630, 57.648499, 58.864311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.091797, 57.027660, 58.638714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.227371, 57.330902, 58.415863>,  <64.308716, 57.512848, 58.282150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.227371, 57.330902, 58.415863>,  <64.091797, 57.027660, 58.638714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.227371, 57.330902, 58.415863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939990, -0.297563, 0.166957,
		-0.039210, -0.580285, -0.813469,
		0.338941, 0.758106, -0.557130,
		64.329056, 57.558334, 58.248722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.811050, 56.766624, 58.207588>,  <64.091797, 57.027660, 58.638714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.811050, 56.766624, 58.207588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.796967, 57.161213, 58.271629>,  <64.788513, 57.397964, 58.310055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.796967, 57.161213, 58.271629>,  <64.811050, 56.766624, 58.207588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.796967, 57.161213, 58.271629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922381, -0.029582, 0.385147,
		0.384673, 0.161239, -0.908861,
		-0.035215, 0.986472, 0.160103,
		64.786400, 57.457153, 58.319660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.396591, 57.184841, 57.949581>,  <64.811050, 56.766624, 58.207588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.396591, 57.184841, 57.949581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.246429, 57.373001, 58.269028>,  <65.156334, 57.485897, 58.460697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.246429, 57.373001, 58.269028>,  <65.396591, 57.184841, 57.949581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.246429, 57.373001, 58.269028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886369, -0.069690, 0.457705,
		0.270961, 0.879697, -0.390786,
		-0.375408, 0.470400, 0.798619,
		65.133804, 57.514122, 58.508614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.918350, 57.730904, 58.083672>,  <65.396591, 57.184841, 57.949581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.918350, 57.730904, 58.083672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.692619, 57.634033, 58.399361>,  <65.557182, 57.575909, 58.588776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.692619, 57.634033, 58.399361>,  <65.918350, 57.730904, 58.083672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.692619, 57.634033, 58.399361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820388, -0.057808, 0.568877,
		-0.092147, 0.968508, 0.231305,
		-0.564333, -0.242180, 0.789225,
		65.523323, 57.561378, 58.636127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.817627, 58.255024, 58.725391>,  <65.918350, 57.730904, 58.083672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.817627, 58.255024, 58.725391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.826332, 57.857155, 58.765709>,  <65.831558, 57.618435, 58.789902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.826332, 57.857155, 58.765709>,  <65.817627, 58.255024, 58.725391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.826332, 57.857155, 58.765709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922048, 0.058944, 0.382562,
		-0.386464, 0.084614, 0.918415,
		0.021765, -0.994669, 0.100798,
		65.832863, 57.558754, 58.795948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.698181, 57.857254, 59.459759>,  <65.817627, 58.255024, 58.725391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.698181, 57.857254, 59.459759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.962677, 57.676849, 59.219978>,  <66.121376, 57.568607, 59.076111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.962677, 57.676849, 59.219978>,  <65.698181, 57.857254, 59.459759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.962677, 57.676849, 59.219978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744707, 0.298417, 0.596959,
		-0.090351, -0.841151, 0.533200,
		0.661248, -0.451013, -0.599449,
		66.161049, 57.541546, 59.040142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.137001, 57.268867, 59.710987>,  <65.698181, 57.857254, 59.459759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.137001, 57.268867, 59.710987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.325760, 57.493614, 59.439217>,  <66.439018, 57.628464, 59.276154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.325760, 57.493614, 59.439217>,  <66.137001, 57.268867, 59.710987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.325760, 57.493614, 59.439217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730948, 0.181564, 0.657836,
		0.492977, -0.807054, -0.325018,
		0.471898, 0.561870, -0.679422,
		66.467331, 57.662174, 59.235390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.830070, 57.081615, 59.780388>,  <66.137001, 57.268867, 59.710987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.830070, 57.081615, 59.780388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.801712, 57.447792, 59.621925>,  <66.784698, 57.667500, 59.526848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.801712, 57.447792, 59.621925>,  <66.830070, 57.081615, 59.780388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.801712, 57.447792, 59.621925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833949, 0.272303, 0.479979,
		0.547268, -0.296342, -0.782738,
		-0.070904, 0.915441, -0.396157,
		66.780441, 57.722424, 59.503078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.477493, 57.272823, 59.383949>,  <66.830070, 57.081615, 59.780388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.477493, 57.272823, 59.383949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.280113, 57.577522, 59.551880>,  <67.161690, 57.760342, 59.652637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.280113, 57.577522, 59.551880>,  <67.477493, 57.272823, 59.383949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.280113, 57.577522, 59.551880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694893, 0.054966, 0.717010,
		0.523103, 0.645541, -0.556454,
		-0.493445, 0.761745, 0.419829,
		67.132080, 57.806046, 59.677830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.022804, 57.802341, 59.624332>,  <67.477493, 57.272823, 59.383949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.022804, 57.802341, 59.624332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.702911, 57.854996, 59.858627>,  <67.510971, 57.886589, 59.999207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.702911, 57.854996, 59.858627>,  <68.022804, 57.802341, 59.624332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.702911, 57.854996, 59.858627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556907, -0.201728, 0.805705,
		0.224219, 0.970555, 0.088021,
		-0.799738, 0.131635, 0.585741,
		67.462990, 57.894485, 60.034351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.989449, 58.391834, 60.089256>,  <68.022804, 57.802341, 59.624332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.989449, 58.391834, 60.089256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.815659, 58.052757, 60.211006>,  <67.711380, 57.849312, 60.284058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.815659, 58.052757, 60.211006>,  <67.989449, 58.391834, 60.089256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.815659, 58.052757, 60.211006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626233, -0.041431, 0.778534,
		-0.647346, 0.528870, 0.548853,
		-0.434483, -0.847691, 0.304375,
		67.685310, 57.798450, 60.302319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.756813, 58.515640, 60.895580>,  <67.989449, 58.391834, 60.089256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.756813, 58.515640, 60.895580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.879875, 58.158562, 60.763863>,  <67.953712, 57.944313, 60.684830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.879875, 58.158562, 60.763863>,  <67.756813, 58.515640, 60.895580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.879875, 58.158562, 60.763863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679328, -0.036247, 0.732940,
		-0.666230, -0.449194, 0.595283,
		0.307655, -0.892699, -0.329299,
		67.972168, 57.890751, 60.665073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.087723, 58.041027, 61.451920>,  <67.756813, 58.515640, 60.895580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.087723, 58.041027, 61.451920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.211044, 57.834023, 61.132637>,  <68.285034, 57.709820, 60.941067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.211044, 57.834023, 61.132637>,  <68.087723, 58.041027, 61.451920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.211044, 57.834023, 61.132637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898048, -0.118438, 0.423655,
		-0.313784, -0.847440, 0.428235,
		0.308302, -0.517511, -0.798205,
		68.303535, 57.678768, 60.893177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.566978, 57.800125, 61.719517>,  <68.087723, 58.041027, 61.451920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.566978, 57.800125, 61.719517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.659225, 57.705025, 61.342094>,  <68.714577, 57.647964, 61.115643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.659225, 57.705025, 61.342094>,  <68.566978, 57.800125, 61.719517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.659225, 57.705025, 61.342094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941866, -0.188956, 0.277821,
		-0.244342, -0.952770, 0.180351,
		0.230621, -0.237749, -0.943551,
		68.728409, 57.633701, 61.059029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.032974, 57.267349, 61.770420>,  <68.566978, 57.800125, 61.719517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.032974, 57.267349, 61.770420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.080360, 57.491436, 61.442490>,  <69.108795, 57.625889, 61.245731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.080360, 57.491436, 61.442490>,  <69.032974, 57.267349, 61.770420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.080360, 57.491436, 61.442490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983153, 0.049561, 0.175938,
		0.139196, -0.826860, -0.544911,
		0.118470, 0.560220, -0.819828,
		69.115898, 57.659504, 61.196541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.565353, 56.933453, 61.274540>,  <69.032974, 57.267349, 61.770420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.565353, 56.933453, 61.274540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.516678, 57.327259, 61.325005>,  <69.487473, 57.563545, 61.355282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.516678, 57.327259, 61.325005>,  <69.565353, 56.933453, 61.274540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.516678, 57.327259, 61.325005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935722, 0.071388, 0.345437,
		0.331083, 0.160084, -0.929923,
		-0.121684, 0.984519, 0.126159,
		69.480171, 57.622616, 61.362854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.192924, 57.280258, 61.044559>,  <69.565353, 56.933453, 61.274540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.192924, 57.280258, 61.044559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.993286, 57.481098, 61.327065>,  <69.873505, 57.601601, 61.496567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.993286, 57.481098, 61.327065>,  <70.192924, 57.280258, 61.044559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.993286, 57.481098, 61.327065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864632, 0.234368, 0.444391,
		0.057603, 0.832447, -0.551102,
		-0.499092, 0.502099, 0.706260,
		69.843559, 57.631729, 61.538944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.574852, 57.840439, 60.992130>,  <70.192924, 57.280258, 61.044559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.574852, 57.840439, 60.992130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.374779, 57.832314, 61.338402>,  <70.254738, 57.827438, 61.546165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.374779, 57.832314, 61.338402>,  <70.574852, 57.840439, 60.992130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.374779, 57.832314, 61.338402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839905, 0.231833, 0.490727,
		-0.210662, 0.972544, -0.098897,
		-0.500181, -0.020313, 0.865683,
		70.224724, 57.826218, 61.598106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.645248, 58.461323, 61.365627>,  <70.574852, 57.840439, 60.992130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.645248, 58.461323, 61.365627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.593102, 58.134518, 61.590302>,  <70.561813, 57.938435, 61.725105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.593102, 58.134518, 61.590302>,  <70.645248, 58.461323, 61.365627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.593102, 58.134518, 61.590302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954212, 0.050438, 0.294848,
		-0.269225, 0.574411, 0.773027,
		-0.130373, -0.817012, 0.561689,
		70.553993, 57.889416, 61.758808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.926971, 58.615437, 61.945694>,  <70.645248, 58.461323, 61.365627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.926971, 58.615437, 61.945694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.952583, 58.222275, 61.876640>,  <70.967949, 57.986378, 61.835209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.952583, 58.222275, 61.876640>,  <70.926971, 58.615437, 61.945694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.952583, 58.222275, 61.876640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974313, 0.024140, 0.223898,
		-0.215902, -0.182539, 0.959200,
		0.064026, -0.982902, -0.172639,
		70.971794, 57.927402, 61.824848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.418602, 58.268177, 62.489441>,  <70.926971, 58.615437, 61.945694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.418602, 58.268177, 62.489441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.397629, 58.056358, 62.150780>,  <71.385048, 57.929268, 61.947582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.397629, 58.056358, 62.150780>,  <71.418602, 58.268177, 62.489441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.397629, 58.056358, 62.150780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998566, -0.036964, -0.038717,
		-0.010793, -0.847473, 0.530728,
		-0.052430, -0.529550, -0.846657,
		71.381897, 57.897495, 61.896782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.036285, 57.775867, 62.451218>,  <71.418602, 58.268177, 62.489441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.036285, 57.775867, 62.451218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.913109, 57.883541, 62.086205>,  <71.839203, 57.948147, 61.867195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.913109, 57.883541, 62.086205>,  <72.036285, 57.775867, 62.451218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.913109, 57.883541, 62.086205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949329, 0.023555, -0.313401,
		-0.062869, -0.962800, -0.262801,
		-0.307932, 0.269188, -0.912533,
		71.820732, 57.964298, 61.812447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.397774, 57.266083, 61.989120>,  <72.036285, 57.775867, 62.451218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.397774, 57.266083, 61.989120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.313644, 57.606102, 61.795959>,  <72.263168, 57.810112, 61.680065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.313644, 57.606102, 61.795959>,  <72.397774, 57.266083, 61.989120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.313644, 57.606102, 61.795959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961114, 0.089359, -0.261296,
		-0.178962, -0.519077, -0.835782,
		-0.210317, 0.850044, -0.482900,
		72.250549, 57.861115, 61.651089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.659225, 57.253922, 61.425255>,  <72.397774, 57.266083, 61.989120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.659225, 57.253922, 61.425255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.673317, 57.624287, 61.575691>,  <72.681770, 57.846504, 61.665955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.673317, 57.624287, 61.575691>,  <72.659225, 57.253922, 61.425255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.673317, 57.624287, 61.575691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992423, 0.011914, -0.122293,
		-0.117714, 0.377549, -0.918477,
		0.035229, 0.925913, 0.376090,
		72.683884, 57.902061, 61.688519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.054192, 57.665207, 60.920483>,  <72.659225, 57.253922, 61.425255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.054192, 57.665207, 60.920483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.077538, 57.843761, 61.277657>,  <73.091545, 57.950893, 61.491959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.077538, 57.843761, 61.277657>,  <73.054192, 57.665207, 60.920483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.077538, 57.843761, 61.277657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956405, 0.231383, -0.178190,
		-0.286152, 0.864406, -0.413423,
		0.058369, 0.446389, 0.892933,
		73.095047, 57.977676, 61.545536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.320915, 57.498894, 60.218899>,  <73.054192, 57.665207, 60.920483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.320915, 57.498894, 60.218899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.491035, 57.525261, 59.857841>,  <73.593109, 57.541080, 59.641205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.491035, 57.525261, 59.857841>,  <73.320915, 57.498894, 60.218899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.491035, 57.525261, 59.857841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851891, 0.365930, -0.374668,
		0.305608, 0.928305, 0.211788,
		0.425306, 0.065919, -0.902646,
		73.618629, 57.545036, 59.587048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.233978, 58.181644, 60.096615>,  <73.320915, 57.498894, 60.218899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.233978, 58.181644, 60.096615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.255219, 57.898396, 59.814980>,  <73.267960, 57.728447, 59.645996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.255219, 57.898396, 59.814980>,  <73.233978, 58.181644, 60.096615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.255219, 57.898396, 59.814980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816998, 0.374617, -0.438380,
		0.574191, 0.598520, -0.558641,
		0.053103, -0.708122, -0.704090,
		73.271149, 57.685959, 59.603752>
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
